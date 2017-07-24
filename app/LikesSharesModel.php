<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace App;

use \Illuminate\Database\Eloquent\Model;
use DB;

/**
 * Description of LikesSharesModel
 *
 * @author umair-malik
 */
class LikesSharesModel extends Model {

    protected $table = 'likes_shares';

    public static function DeleteVideoLikeUnlike($data) {
        DB::table('likes_shares')->where('postId', '=', $data['postId'])->where('userId', '=', $data['userId'])->delete();
    }

    public static function SaveVideoLikes($data) {
        return DB::table('likes_shares')->insertGetId(['postId' => $data['postId'], 'userId' => $data['userId'],
                    'liked' => 1, 'unliked' => 0]);
    }

    public static function SaveVideoUnLikes($data) {
        return DB::table('likes_shares')->insertGetId(['postId' => $data['postId'], 'userId' => $data['userId'],
                    'liked' => 0, 'unliked' => 1]);
    }

}
