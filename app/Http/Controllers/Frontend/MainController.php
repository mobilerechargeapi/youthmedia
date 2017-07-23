<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\NavigationModel;
use App\PostsModel;
use App\UserModel;

class MainController extends Controller {

    public $pageCode = 'home';
    public $settings;

    public function __construct() {
        $this->settings = productImagePath($this->pageCode);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $data = array(
            'pageCode' => $this->pageCode
        );
        $page = NavigationModel::GetPageSettings($data);
        $pageSettings = json_decode($page[0]->pageSettings);
        $sliderVid = PostsModel::GetAllSliderPost();
        $recentUpload = PostsModel::GetRecentUploadPost();
        $userUpload = PostsModel::GetUserUploadPost();
        $topUsers = UserModel::GetTopUsers();
//        echo '<pre>';
//        print_r($topUsers);
//        exit;
        return view('main')->with('pageSettings', $pageSettings)->with('settings', $this->settings)->with('sliderVid', $sliderVid)
                        ->with('recentUpload', $recentUpload)->with('userUpload', $userUpload)->with('topUsers', $topUsers);
    }

}
