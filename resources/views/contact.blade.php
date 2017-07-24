@extends('layouts.app')

@section('content')
<?php
$pageTitle = $pageSettings->pageTitle != '' ? $pageSettings->pageTitle : 'Contact Us';

$sendTo = $pageSettings->sendTo != '' ? $pageSettings->sendTo : '';
$locLong = $pageSettings->locLong != '' ? $pageSettings->locLong : '';
$locLat = $pageSettings->locLat != '' ? $pageSettings->locLat : '';
?>
<!-- Start Page Banner -->
<div class="page-banner-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-banner">
                    <div class="page-title">
                        <h1>{{$pageTitle}}</h1>
                    </div>
                    <div class="page-breadcrumb">
                        <p><a href="{{url('/')}}">home </a> / {{$pageTitle}}</p>
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
                    <h3>Send Message</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.</p>
                </div>
                <div class="row">
                    <div class="contact-form">
                        @include('admin.layouts.errorView')
                        <form id="contactForm" method="POST" action="{{ URL::route('contactApplication') }}">
                            {{ csrf_field() }}
                            <input type="hidden" name="sendTo" value="{{ $sendTo }}">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="name" id="name" class="form-control" placeholder="Name *" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="email" name="email" id="email" class="form-control" placeholder="Email *" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="phone" id="phone" class="form-control" placeholder="Phone">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="website" id="website" class="form-control" placeholder="Website">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <textarea name="message" id="message" class="form-control" cols="30" rows="10" placeholder="Message"></textarea>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <button type="submit" class="themeix-btn-danger text-uppercase">Send Message</button>
                                </div>
                            </div>
                        </form> 
                    </div>
                </div>
            </div>
            <!-- Start Contact Page Video -->
            <div class="col-md-6">
                <div class="contact-video">
                    <div id="map-id"></div>
                </div>
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
                                <img class="lazy" data-src="{{ $image }}" alt="{{$userUploadRow->postTitle}}" />
                                <noscript>
                                <img src="{{ $image }}" alt="{{$userUploadRow->postTitle}}" />
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
                                        <span>120</span>
                                    </div>
                                    <div class="video-like-counter">
                                        <span class="fa fa-thumbs-o-down dislike-icon"></span>
                                        <span>2140</span>
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
<script>
    var lat = '<?php echo $locLat ?>';
    var long = '<?php echo $locLong ?>';
</script>
@endsection