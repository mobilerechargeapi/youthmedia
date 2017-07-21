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
 * Description of UserModel
 *
 * @author umair-malik
 */
class UserModel extends Model {

    protected $table = 'users';

    public static function GetAllUser() {
        return DB::table('users')
                        ->leftJoin('roles', 'roles.roleId', '=', 'users.userRole')
                        ->select('users.*', 'roles.name AS roleName')
                        ->get();
    }

    public static function GetSingleUser($data) {
        return DB::table('users')
                        ->leftJoin('roles', 'roles.roleId', '=', 'users.userRole')
                        ->select('users.*', 'roles.name AS roleName')
                        ->where('users.id', '=', $data['id'])
                        ->get();
    }

    public static function UpdateUser($data) {
        DB::table('users')->where('id', $data['id'])->update(['name' => $data['name'],
            'email' => $data['email'], 'userRole' => $data['userRole'], 'profileImg' => $data['profileImg']
        ]);
        if (isset($data['password']) && $data['password'] != '') {
            DB::table('users')->where('id', $data['id'])->update(['password' => $data['password']]);
        }
    }

    public static function GetUser($data) {
        return DB::table('users')
                        ->select('users.*')
                        ->where('users.id', '!=', $data['id'])
                        ->where('users.userName', '=', $data['userName'])
                        ->count();
    }

    public static function SaveUser($data) {
        return DB::table('users')->insertGetId(
                        ['name' => $data['name'], 'email' => $data['email'],
                            'password' => $data['password'], 'profileImg' => $data['profileImg'], 'userRole' => $data['userRole']]
        );
    }

    public static function DeleteUser($data) {
        DB::table('users')->where('id', '=', $data['id'])->delete();
    }

}
