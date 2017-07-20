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
 * Description of PostsModel
 *
 * @author umair-malik
 */
class PostsModel extends Model {

    protected $table = 'posts';

    public static function GetAllPosts() {
        return DB::table('posts')
                        ->leftJoin('websites', 'websites.websiteId', '=', 'posts.websiteId')
                        ->leftJoin('categories', 'categories.categoryId', '=', 'posts.categoryId')
                        ->select('posts.*', 'websites.websiteName', 'categories.categoryName')
                        ->where('posts.postStatus', '=', 1)
                        ->get();
    }

    public static function GetAllPendingPosts() {
        return DB::table('posts')
                        ->leftJoin('websites', 'websites.websiteId', '=', 'posts.websiteId')
                        ->leftJoin('categories', 'categories.categoryId', '=', 'posts.categoryId')
                        ->select('posts.*', 'websites.websiteName', 'categories.categoryName')
                        ->where('posts.postStatus', '=', 0)
                        ->get();
    }

    public static function GetSinglePost($data) {
        return DB::table('posts')
                        ->select('posts.*')
                        ->where('posts.postId', '=', $data['postId'])
                        ->get();
    }

    public static function UpdatePost($data) {
        DB::table('posts')->where('postId', $data['postId'])->update(['postTitle' => $data['postTitle'],
            'postDescription' => $data['postDescription'], 'websiteId' => $data['websiteId'], 'categoryId' => $data['categoryId'],
            'post' => $data['post'], 'userId' => $data['userId'], 'postStatus' => $data['postStatus'], 'postThumbnail' => $data['postThumbnail'],
            'isScrapped' => $data['isScrapped'], 'uniqueCustomKey' => $data['uniqueCustomKey']]);
    }

    public static function SavePost($data) {
        return DB::table('posts')->insertGetId(['postTitle' => $data['postTitle'], 'postDescription' => $data['postDescription'],
                    'websiteId' => $data['websiteId'], 'categoryId' => $data['categoryId'], 'post' => $data['post'], 'userId' => $data['userId'],
                    'postStatus' => $data['postStatus'], 'createdOn' => $data['createdOn'], 'postThumbnail' => $data['postThumbnail'],
                    'isScrapped' => $data['isScrapped'], 'uniqueCustomKey' => $data['uniqueCustomKey']]);
    }

    public static function DeletePost($data) {
        DB::table('posts')->where('postId', '=', $data)->delete();
    }

}
