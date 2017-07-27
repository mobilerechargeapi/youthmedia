<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use App\Http\Controllers\Controller;
use App\SubscriptionModel;
use App\Http\Requests\SubscriptionRequest;

class SubscriptionController extends Controller {

    public function __construct() {
        
    }

    public function index(SubscriptionRequest $request) {
        $userId = 4;
        $userEmail = $request->email;
        $auth = Auth::guard();
        if ($auth->check()) {
            $user = Auth::user();
            $userId = $user['attributes']['id'];
            $userEmail = $user['attributes']['email'];
        }
        $data = array(
            'subscriptionEmail' => $userEmail,
            'subscriptionUserId' => $userId
        );
        $alreadySubscribe = SubscriptionModel::CheckSubscription($data);
        if (!$alreadySubscribe) {
            $message = 'Successfully Subscribed To Our Channel!';
            SubscriptionModel::SaveSubscription($data);
        } else {
            $message = 'Already Subscribed To Our Channel!';
        }
        
        \Session::flash('message', $message);
        return Redirect::back()->withErrors(['message', $message]);
    }

}
