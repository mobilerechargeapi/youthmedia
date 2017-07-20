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
 * Description of FaqModel
 *
 * @author umair-malik
 */
class FaqModel extends Model {

    protected $table = 'faq';

    public static function SaveFaq($data) {
        return DB::table('faq')->insertGetId([
                    'faqQuestion' => $data['faqQuestion'], 'faqAnswer' => $data['faqAnswer']
        ]);
    }

    public static function GetFaq() {
        return DB::table('faq')
                        ->select('faq.*')
                        ->get();
    }

    public static function DeleteFaq($data) {
        DB::table('faq')->where('faqId', '=', $data)->delete();
    }

    public static function UpdateFaq($data) {
        DB::table('faq')->where('faqId', $data['faqId'])->update(['faqQuestion' => $data['faqQuestion'],
            'faqAnswer' => $data['faqAnswer']
        ]);
    }

    public static function GetSingleFaq($data) {
        return DB::table('faq')
                        ->select('faq.*')
                        ->where('faq.faqId', '=', $data['faqId'])
                        ->get();
    }

    public static function SearchFaq($search) {
        return DB::table('faq')
                        ->select('faq.*')
                        ->where('faq.faqQuestion', 'LIKE', "%$search%")
                        ->orWhere('faq.faqAnswer', 'LIKE', "%$search%")
                        ->get();
    }

}
