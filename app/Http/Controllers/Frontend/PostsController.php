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
            $recentUpload = PostsModel::GetAllRecentUploadPost();
            echo 'in progress';exit;
        } else {
            return redirect()->route('pagenotfound');
        }
    }

}
