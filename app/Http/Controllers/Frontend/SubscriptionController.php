<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use App\Http\Controllers\Controller;
use App\SubscriptionModel;
use App\Http\Requests\SubscriptionRequest;
use Mail;

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
            $message = 'Successfully Subscribed To Our Channel! Please Check Your Email.';
            SubscriptionModel::SaveSubscription($data);
        } else {
            $message = 'Already Subscribed To Our Channel!';
        }

        \Session::flash('message', $message);
        //send email to user
        $EmailSubject = "Subscription Request";
        $this->SendEmail($userEmail, $EmailSubject, 'emails.subscriptionApplicationEmail');
        return Redirect::back()->withErrors(['message', $message]);
    }

    public function SendEmail($EmailTo, $Subject, $body) {
        $data = array('email' => $EmailTo, 'subject' => $Subject);
        $result = Mail::send($body, $data, function ($message) use ($data) {
                    $message->from('umair.malik@purelogics.net', 'Youth Media');
                    $message->to($EmailTo);
                    $message->replyTo('umair.malik@purelogics.net', 'Youth Media');
                    $message->subject($data['subject']);
                });
        return $result;
    }

}
