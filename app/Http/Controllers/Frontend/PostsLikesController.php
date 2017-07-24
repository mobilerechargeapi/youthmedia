<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\LikesSharesModel;

class PostsLikesController extends Controller {

    public function __construct() {
        
    }

    public function updateVideoLikes(Request $request) {
        $data = array(
            'postId' => $request->postId,
            'userId' => $request->userId
        );
        LikesSharesModel::DeleteVideoLikeUnlike($data);
        LikesSharesModel::SaveVideoLikes($data);
    }

    public function updateVideoUnLikes(Request $request) {
        $data = array(
            'postId' => $request->postId,
            'userId' => $request->userId
        );
        LikesSharesModel::DeleteVideoLikeUnlike($data);
        LikesSharesModel::SaveVideoUnLikes($data);
    }

}
