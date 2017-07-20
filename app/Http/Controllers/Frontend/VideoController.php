<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use App\PostsModel;
use App\Http\Requests\UserPostRequest;
use Illuminate\Support\Facades\Input;
use Validator;
use Dawson\Youtube\Facades\Youtube as Youtube;

class VideoController extends Controller {

    public function __construct() {
        
    }

    public function uploadVideo(UserPostRequest $request) {
        $data = array(
            'postTitle' => $request->postTitle,
            'postDescription' => $request->postDescription,
            'websiteId' => 3,
            'categoryId' => $request->categoryId,
            'post' => '',
            'userId' => 1,
            'postStatus' => 0,
            'createdOn' => time(),
            'postThumbnail' => '',
            'isScrapped' => 0
        );

        $file = Input::file('postThumbnail');
        $result = $this->fileUpload($file);
        if ($result != '') {
            $data['postThumbnail'] = $result;
        }
        $file = Input::file('uploadVideo');
        $result = $this->fileUpload($file, 1);
        if ($result != '') {
            $fullPathToVideo = public_path('assets/videos/' . $result);
            $video = Youtube::upload($fullPathToVideo, [
                        'title' => $request->postTitle,
                        'description' => $request->postDescription,
                        'tags' => ['youthmedia', 'news', 'funny', 'information', 'social', 'pranks', 'songs', 'video', 'dance'],
                        'category_id' => 10
            ]);
            if ($video->getVideoId()) {
                $data['post'] = 'https://www.youtube.com/watch?v=' . $video->getVideoId();
            }
        }
        if ($data['post'] != '') {
            $message = "Video Submitted For Admin Review!";
            PostsModel::SavePost($data);
        } else {
            $message = "Upload Video!";
        }
        \Session::flash('message', $message);
        return Redirect::back()->withErrors(['message', $message]);
    }

    public function fileUpload($file, $isVideo = 0) {
        $rules = array('file' => 'required'); //'required|mimes:png,gif,jpeg,txt,pdf,doc'
        if (!$isVideo) {
            $destinationPath = 'assets/images/posts';
        } else {
            $destinationPath = 'assets/videos';
        }
        $validator = Validator::make(array('file' => $file), $rules);
        if ($validator->passes()) {
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move($destinationPath, $filename);
            return $filename;
        } else {
            return '';
        }
    }

}
