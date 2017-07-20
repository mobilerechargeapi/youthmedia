<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\NavigationModel;

class PrivacyPolicyController extends Controller {

    public $pageCode = 'privacypolicy';
    public $settings;

    public function __construct() {
        $this->settings = productImagePath($this->pageCode);
    }

    public function index() {
        $data = array(
            'pageCode' => $this->pageCode
        );
        $page = NavigationModel::GetPageSettings($data);
        $pageTitle = $page[0]->pageTitle;
        $pageSettings = json_decode($page[0]->pageSettings);
        return view('privacypolicy')->with('settings', $this->settings)->with('pageSettings', $pageSettings)
                ->with('pageTitle', $pageTitle);
    }

}
