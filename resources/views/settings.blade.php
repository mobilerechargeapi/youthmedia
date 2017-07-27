@extends('layouts.app')

@section('content')
<?php $user = Auth::user(); ?>
<!-- Start Page Banner -->
<div class="page-banner-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-banner">
                    <div class="page-title">
                        <h1>{{$user['attributes']['name']}}</h1>
                    </div>
                    <div class="page-breadcrumb">
                        <p><a href="{{url('/')}}">home </a> / {{$user['attributes']['name']}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Page Banner -->
<!-- Start Contat Page -->
<div class="contact-page-area themeix-ptb bg-info"> 
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="themeix-section-h">
                    <span class="heading-icon"><i class="fa fa-envelope"></i></span>
                    <h3>Profile Settings</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.</p>
                </div>
                <div class="row">
                    <div class="contact-form">
                        @include('admin.layouts.errorView')
                        <form class="upload-form" enctype="multipart/form-data" method="POST" action="{{ URL::route('userSettings') }}">
                            {{ csrf_field() }}
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="name" id="name" class="form-control" placeholder="Name *" required value="{{$user['attributes']['name']}}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="email" name="email" id="email" class="form-control" placeholder="Email *" readonly="" value="{{$user['attributes']['email']}}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="password" name="password" id="password" class="form-control" placeholder="Leave Blank If Don't Want To Change">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="password" name="password_confirmation" id="password_confirmation" class="form-control" placeholder="Confirm Password">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="userProfileImg" class="custom-file-upload">Profile Image
                                        <input type="file" name="userProfileImg" id="userProfileImg">
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <button type="submit" class="themeix-btn-danger text-uppercase">Update Profile</button>
                                </div>
                            </div>
                        </form> 
                    </div>
                </div>
            </div>
            <!-- Start Contact Page Video -->
            <div class="col-md-6">
                @if($user['attributes']['profileImg'] != '')
                <div class="contact-video">
                    <div>
                        <img class="lazy" data-src="{{ asset('assets/images/users') }}/{{$user['attributes']['profileImg']}}" alt="{{$user['attributes']['name']}}" />
                    </div>
                </div>
                @endif
            </div>
            <!-- End Contact Page Video -->
        </div>
    </div>

</div>
<!-- End Contact Page -->
<!-- Start Video Carousel -->
<div class="video-carousel-area themeix-ptb bg-semi-white">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="themeix-section-h">
                    <span class="heading-icon"><i class="fa fa-copy"></i></span>
                    <h3>Users Uploaded</h3>
                </div>
                <div class="video-carousel">
                    @foreach ($userUpload as $userUploadRow)
                    <div class="single-video">
                        <div class="video-img">
                            <a href="{{url('video/'.base64_encode($userUploadRow->postId))}}">
                                @if ($userUploadRow->postThumbnail)
                                <?php $image = asset('assets/images/posts') . '/' . $userUploadRow->postThumbnail; ?>
                                @else
                                <?php $image = asset('frontend/images/thumbnails/41.jpg'); ?>
                                @endif
                                <img width="320px" height="180px" class="lazy" data-src="{{ $image }}" alt="{{$userUploadRow->postTitle}}" />
                                <noscript>
                                <img width="320px" height="180px" src="{{ $image }}" alt="{{$userUploadRow->postTitle}}" />
                                </noscript>
                            </a>
                            <span class="video-duration">8.17</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="{{url('video/'.base64_encode($userUploadRow->postId))}}" class="video-title">{{$userUploadRow->postTitle}}</a></h4>
                            <div class="video-counter">
                                <div class="video-viewers">
                                    <span class="fa fa-eye view-icon"></span>
                                    <span>{{$userUploadRow->postViewed}}</span>
                                </div>
                                <div class="video-feedback">
                                    <div class="video-like-counter">
                                        <span class="fa fa-thumbs-o-up like-icon"></span>
                                        <span>{{App\PostsModel::GetPostLikes(array('postId' => $userUploadRow->postId))}}</span>
                                    </div>
                                    <div class="video-like-counter">
                                        <span class="fa fa-thumbs-o-down dislike-icon"></span>
                                        <span>{{App\PostsModel::GetPostUnLikes(array('postId' => $userUploadRow->postId))}}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Video Carousel -->
<!-- Start Call To Action Area -->
<div class="call-to-action-area hover-bg">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="action-content">
                    <h2>Do you want to get the latest version documenter?</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="purchase-link text-right">
                    <a href="#" class="themeix-purchase-btn-3">purchase now</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Call To Action Area -->
@endsection