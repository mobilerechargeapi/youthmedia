<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CommentRequest extends FormRequest {

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize() {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules() {
        return [
            'name' => 'required',
            'postId' => 'required',
            'comment' => 'required',
            'website' => 'required'
        ];
    }

    /**
     * Get the error messages for the defined validation rules.
     *
     * @return array
     */
    public function messages() {
        return [
            'postId.required' => 'Something Went Wrong Please Try Again!',
            'comment.required' => 'Please Add Your Comment!',
            'website.required' => 'Please Add Your website!',
            'name.required' => 'Please Add Your name!'
        ];
    }

}
