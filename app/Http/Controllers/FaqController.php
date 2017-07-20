<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use App\FaqModel;
use App\Permissions;

/**
 * Description of BlogController
 *
 * @author umair-malik
 */
class FaqController extends Controller {

    public $user;
    public $userName;
    public $userRoles;
    public $userImg;
    public $pageheader = 'Pages';

    public function __construct() {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::user();
            $this->userName = $this->user['attributes']['name'];
            $this->userImg = $this->user['attributes']['profileImg'];
            $this->userRoles = Permissions::GetUserRole($this->user['attributes']['userRole']);
            if ($this->userRoles[0]->pages != 1) {
                Redirect::to('admin')->send();
            }
            return $next($request);
        });
    }

    public function insertFaq($navId) {
        $faq = '';
        return view('admin.insertFaq')->with('pageheader', $this->pageheader)->with('userName', $this->userName)->with('userImg', $this->userImg)
                        ->with('userRoles', $this->userRoles)->with('navId', $navId)->with('faq', $faq);
    }

    public function addFaq(Request $request) {
        $data = array(
            'faqId' => $request->faqId,
            'faqQuestion' => $request->faqQuestion,
            'faqAnswer' => $request->faqAnswer
        );
        if ($request->faqId == 'add') {
            FaqModel::SaveFaq($data);
            $message = "FAQ Added Successfully";
        } else {
            FaqModel::UpdateFaq($data);
            $message = "FAQ Updated Successfully";
        }
        \Session::flash('message', $message);
        return redirect()->route('editPage', ['pageId' => $request->navId]);
    }

    public function deleteFaq(Request $request) {
        $data = array(
            'faqId' => $request->faqId
        );
        FaqModel::DeleteFaq($request->faqId);
        if ($request->ajax()) {
            return response()->json([
                        'status' => 1, 'message' => 'Faq Deleted'
            ]);
        }
    }

    public function getFaq($navId, $faqId) {
        $data = array(
            'faqId' => $faqId
        );
        $faq = FaqModel::GetSingleFaq($data);
        return view('admin.insertFaq')->with('pageheader', $this->pageheader)->with('userName', $this->userName)->with('userImg', $this->userImg)
                        ->with('userRoles', $this->userRoles)->with('navId', $navId)->with('faq', $faq);
    }

}
