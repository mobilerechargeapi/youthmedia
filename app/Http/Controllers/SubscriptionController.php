<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace App\Http\Controllers;

use App\Http\Requests\SubscriptionRequest;
use App\Permissions;
use App\SubscriptionModel;
use App\UserModel;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

/**
 * Description of SubscriptionController
 *
 * @author umair-malik
 */
class SubscriptionController extends Controller {

	public $user;
	public $userName;
	public $userRoles;
	public $userImg;
	public $pageheader = 'Subscription';

	public function __construct() {
		$this->middleware(function ($request, $next) {
			$this->user = Auth::user();
			$this->userName = $this->user['attributes']['name'];
			$this->userImg = $this->user['attributes']['profileImg'];
			$this->userRoles = Permissions::GetUserRole($this->user['attributes']['userRole']);
			if ($this->userRoles[0]->users != 1) {
				Redirect::to('admin')->send();
			}
			return $next($request);
		});
	}

	public function index() {
		$users = SubscriptionModel::GetAllUser();
		return view('admin.subscriptionList')->with('pageheader', $this->pageheader)->with('userName', $this->userName)->with('userImg', $this->userImg)
			->with('userRoles', $this->userRoles)->with('user', $users);
	}

	public function addSubscriber() {
		$subscriber = '';
		return view('admin.addSubscriber')->with('pageheader', $this->pageheader)->with('userName', $this->userName)->with('userImg', $this->userImg)
			->with('userRoles', $this->userRoles)->with('subscriber', $subscriber);
	}

	public function deleteSubscriber($subscriptionId) {
		$data = array(
			'subscriptionId' => $subscriptionId,
		);
		SubscriptionModel::DeleteSubscription($data);
		$message = "Deleted Successfully";
		\Session::flash('message', $message);
		return redirect()->route('usersubscription');
	}

	public function insertSubscriber(SubscriptionRequest $request) {
		$data = array(
			'subscriptionId' => $request->subscriptionId,
			'subscriptionEmail' => $request->email,
			'subscriptionUserId' => 4,
		);
		$existingUser = UserModel::CheckUserByEmail($data);
		if ($existingUser > 0) {
			$user = UserModel::GetUserByEmail($data);
			$data['subscriptionUserId'] = $user[0]->id;
		}
		if ($request->subscriptionId == 'add') {
			$alreadySubscribe = SubscriptionModel::CheckSubscription($data);
			if (!$alreadySubscribe) {
				$message = 'Successfully Subscribed To Our Channel!';
				SubscriptionModel::SaveSubscription($data);
			} else {
				$message = 'Already Subscribed To Our Channel!';
			}
		} else {
			SubscriptionModel::UpdateSubscription($data);
			$message = 'Successfully Updated!';
		}
		\Session::flash('message', $message);
		return redirect()->route('usersubscription');
	}

	public function getSubscriber($subscriptionId) {
		$data = array(
			'subscriptionId' => $subscriptionId,
		);
		$subscriber = SubscriptionModel::GetSingleSubscriber($data);
		return view('admin.addSubscriber')->with('pageheader', $this->pageheader)->with('userName', $this->userName)->with('userImg', $this->userImg)
			->with('userRoles', $this->userRoles)->with('subscriber', $subscriber);
	}

}
