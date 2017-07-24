<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\NavigationModel;
use App\PostsModel;

class PostsController extends Controller {

    public $pageCode = 'home';
    public $settings;

    public function __construct() {
        $this->settings = productImagePath($this->pageCode);
    }

    public function showAllVideos($videoType) {
        $data = array(
            'pageCode' => $this->pageCode
        );
        $page = NavigationModel::GetPageSettings($data);
        $pageSettings = json_decode($page[0]->pageSettings);
        if ($videoType == 'recent-videos') {
            $recentUpload = PostsModel::GetAllRecentUploadPost();
            $bannerTitle = 'Recent Videos';
            return view('showallvideos')->with('pageSettings', $pageSettings)->with('settings', $this->settings)->with('pageSettings', $pageSettings)
                            ->with('recentUpload', $recentUpload)->with('bannerTitle', $bannerTitle);
        } else if ($videoType == 'trending-videos') {
            $recentUpload = PostsModel::GetAllTrendingPost();
            $bannerTitle = 'Trending Videos';
            return view('showallvideos')->with('pageSettings', $pageSettings)->with('settings', $this->settings)->with('pageSettings', $pageSettings)
                            ->with('recentUpload', $recentUpload)->with('bannerTitle', $bannerTitle);
        } else {
            return redirect()->route('pagenotfound');
        }
    }

    public function video($postId) {
        $data = array(
            'pageCode' => $this->pageCode,
            'postId' => base64_decode($postId)
        );
        $page = NavigationModel::GetPageSettings($data);
        $pageSettings = json_decode($page[0]->pageSettings);
        $post = PostsModel::GetSinglePostDetail($data);
        $userUpload = PostsModel::GetAllUserUploadPost();
        $recentUpload = PostsModel::GetRecentUploadPost();
        if (count($post) > 0) {
            return view('detailvideo')->with('pageSettings', $pageSettings)->with('settings', $this->settings)->with('pageSettings', $pageSettings)
                            ->with('post', $post)->with('userUpload', $userUpload)->with('recentUpload', $recentUpload);
        } else {
            return redirect()->route('pagenotfound');
        }
    }

    public function showuservideos($userId) {
        $data = array(
            'pageCode' => $this->pageCode,
            'id' => base64_decode($userId)
        );
        $page = NavigationModel::GetPageSettings($data);
        $pageSettings = json_decode($page[0]->pageSettings);
        $userUpload = PostsModel::GetUserPosts($data);
        if (count($userUpload) > 0) {
            $recentUpload = $userUpload;
            $bannerTitle = $userUpload[0]->name;
            return view('showallvideos')->with('pageSettings', $pageSettings)->with('settings', $this->settings)->with('pageSettings', $pageSettings)
                            ->with('recentUpload', $recentUpload)->with('bannerTitle', $bannerTitle);
        } else {
            return redirect()->route('pagenotfound');
        }
    }

    public function showtagvideos($tag) {
        $data = array(
            'pageCode' => $this->pageCode,
            'postTags' => base64_decode($tag)
        );
        $page = NavigationModel::GetPageSettings($data);
        $pageSettings = json_decode($page[0]->pageSettings);
        $recentUpload = PostsModel::GetPostsByTags($data);
        $bannerTitle = base64_decode($tag);
        return view('showallvideos')->with('pageSettings', $pageSettings)->with('settings', $this->settings)->with('pageSettings', $pageSettings)
                        ->with('recentUpload', $recentUpload)->with('bannerTitle', $bannerTitle);
    }

    public function showcatvideos($catId) {
        $data = array(
            'pageCode' => $this->pageCode,
            'categoryId' => base64_decode($catId)
        );
        $page = NavigationModel::GetPageSettings($data);
        $pageSettings = json_decode($page[0]->pageSettings);
        $recentUpload = PostsModel::GetPostsByCategory($data);
        $bannerTitle = '';
        if (count($recentUpload) > 0) {
            $bannerTitle = $recentUpload[0]->categoryName;
        }
        return view('showallvideos')->with('pageSettings', $pageSettings)->with('settings', $this->settings)->with('pageSettings', $pageSettings)
                        ->with('recentUpload', $recentUpload)->with('bannerTitle', $bannerTitle);
    }

}
