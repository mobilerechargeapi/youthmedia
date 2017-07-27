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
 * Description of CommentModel
 *
 * @author umair-malik
 */
class CommentModel extends Model {

    protected $table = 'comments';

    public static function DeleteSubscription($data) {
        DB::table('subscription')->where('subscriptionId', '=', $data['subscriptionId'])->delete();
    }

    public static function SaveComment($data) {
        return DB::table('comments')->insertGetId(['userId' => $data['userId'], 'postId' => $data['postId'], 'parent' => $data['parent'],
            'commentText' => $data['commentText'], 'createdAt' => $data['createdAt']]);
    }

    public static function GetAllUser() {
        return DB::table('subscription')
                        ->select('subscription.*')
                        ->get();
    }

    public static function GetSingleSubscriber($data) {
        return DB::table('subscription')
                        ->select('subscription.*')
                        ->where('subscription.subscriptionId', '=', $data['subscriptionId'])
                        ->get();
    }

    public static function UpdateSubscription($data) {
        DB::table('subscription')->where('subscriptionId', $data['subscriptionId'])->update(['subscriptionEmail' => $data['subscriptionEmail'],
            'subscriptionUserId' => $data['subscriptionUserId']]);
    }

}
