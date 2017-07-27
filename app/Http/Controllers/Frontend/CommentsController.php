<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use App\Http\Controllers\Controller;
use App\CommentModel;
use App\Http\Requests\CommentRequest;

class CommentsController extends Controller {

    public function __construct() {
        
    }

    public function postComment(CommentRequest $request) {
        $user = Auth::user();
        $userId = $user['attributes']['id'];
        $data = array(
            'userId' => $userId,
            'postId' => $request->postId,
            'parent' => $request->parent,
            'commentText' => $request->comment,
            'createdAt' => date("Y-m-d")
        );
        $message = 'Comment Added!';
        CommentModel::SaveComment($data);

        \Session::flash('message', $message);
        return Redirect::back()->withErrors(['message', $message]);
    }

}
