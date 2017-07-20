<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Mail;
use App\NavigationModel;

class ContactController extends Controller {

    public $pageCode = 'contact';
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
        return view('contact')->with('settings', $this->settings)->with('pageSettings', $pageSettings)->with('pageTitle', $pageTitle);
    }

    public function contactApplication(Request $request) {
        $data = array(
            'name' => $request->name,
            'userEmail' => $request->email,
            'phone' => $request->phone,
            'website' => $request->website,
            'message' => $request->message,
            'sendTo' => $request->sendTo
        );
        //send email to user
        $EmailSubject = "Contact Request";
        $this->SendEmail($request->sendTo, $EmailSubject, 'emails.contactApplicationEmail', $data);
        \Session::flash('message', 'Email Has Been Sent!');
        return redirect()->route('contact');
    }

    public function SendEmail($EmailTo, $Subject, $body, $data) {
        $userEmail = $data['userEmail'] != '' ? $data['userEmail'] : 'umair.malik@purelogics.net';
        $data = array('data' => $data, 'email' => $EmailTo, 'subject' => $Subject, 'userEmail' => $userEmail);
        $result = Mail::send($body, $data, function ($message) use ($data) {
                    $message->from('umair.malik@purelogics.net', 'Youth Media');
                    $message->to($data['email']);
                    $message->replyTo($data['userEmail'], $data['userEmail'] != '' ? $data['userEmail'] : 'Youth Media');
                    $message->subject($data['subject']);
                });
        return $result;
    }

}
