@extends('layouts.app')

@section('content')
<!-- Start Page Banner -->
<div class="page-banner-area-3">
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="page-title">
                    <h1>{{$bannerTitle}}</h1>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="page-breadcrumb">
                    <p><a href="{{url('/')}}">home</a> / {{$bannerTitle}}</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Page Banner -->

<!-- Start Video Carousel -->
<div class="video-carousel-area themeix-ptb bg-semi-white">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="themeix-section-h">
                    <span class="heading-icon"><i class="fa fa-bolt"></i></span>
                    <h3>Sponsored Videos</h3>
                </div>
                <div class="video-carousel">
                    <div class="single-video">
                        <div class="video-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="{{ asset('frontend/images/thumbnails/1.jpg') }}" alt="Video" />
                                <noscript>
                                <img src="{{ asset('frontend/images/thumbnails/1.jpg') }}" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">8.17</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="single-video.html" class="video-title">Greek-Style Pasta Bake (Pasticcio) - English Video</a></h4>
                            <div class="video-counter">
                                <div class="video-viewers">
                                    <span class="fa fa-eye view-icon"></span>
                                    <span>881,021</span>
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
                    <div class="single-video">
                        <div class="video-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="{{ asset('frontend/images/thumbnails/2.jpg') }}" alt="Video" />
                                <noscript>
                                <img src="{{ asset('frontend/images/thumbnails/2.jpg') }}" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">3.11</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="single-video.html" class="video-title">Double Chocolate-Stuffed Mini Churros </a></h4>
                            <div class="video-counter">
                                <div class="video-viewers">
                                    <span class="fa fa-eye view-icon"></span>
                                    <span>241,021</span>
                                </div>
                                <div class="video-feedback">
                                    <div class="video-like-counter">
                                        <span class="fa fa-thumbs-o-up like-icon"></span>
                                        <span>996</span>
                                    </div>
                                    <div class="video-like-counter">
                                        <span class="fa fa-thumbs-o-down dislike-icon"></span>
                                        <span>2140</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-video">
                        <div class="video-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="{{ asset('frontend/images/thumbnails/3.jpg') }}" alt="Video" />
                                <noscript>
                                <img src="{{ asset('frontend/images/thumbnails/3.jpg') }}" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.10</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="single-video.html" class="video-title">Greek-Style Pasta Bake (Pasticcio - English Recipe)</a></h4>
                            <div class="video-counter">
                                <div class="video-viewers">
                                    <span class="fa fa-eye view-icon"></span>
                                    <span>241,021</span>
                                </div>
                                <div class="video-feedback">
                                    <div class="video-like-counter">
                                        <span class="fa fa-thumbs-o-up like-icon"></span>
                                        <span>785</span>
                                    </div>
                                    <div class="video-like-counter">
                                        <span class="fa fa-thumbs-o-down dislike-icon"></span>
                                        <span>2140</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-video">
                        <div class="video-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="{{ asset('frontend/images/thumbnails/4.jpg') }}" alt="Video" />
                                <noscript>
                                <img src="{{ asset('frontend/images/thumbnails/4.jpg') }}" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">2.29</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="single-video.html" class="video-title">Rainbow Sprinkle Cinnamon Rolls (Gougeres Video)</a></h4>
                            <div class="video-counter">
                                <div class="video-viewers">
                                    <span class="fa fa-eye view-icon"></span>
                                    <span>991,021</span>
                                </div>
                                <div class="video-feedback">
                                    <div class="video-like-counter">
                                        <span class="fa fa-thumbs-o-up like-icon"></span>
                                        <span>7456</span>
                                    </div>
                                    <div class="video-like-counter">
                                        <span class="fa fa-thumbs-o-down dislike-icon"></span>
                                        <span>2140</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-video">
                        <div class="video-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="{{ asset('frontend/images/thumbnails/5.jpg') }}" alt="Video" />
                                <noscript>
                                <img src="{{ asset('frontend/images/thumbnails/5.jpg') }}" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.28</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="single-video.html" class="video-title">Buffalo Chicken Potato Skins  (Gougeres English Video)</a></h4>
                            <div class="video-counter">
                                <div class="video-viewers">
                                    <span class="fa fa-eye view-icon"></span>
                                    <span>241,021</span>
                                </div>
                                <div class="video-feedback">
                                    <div class="video-like-counter">
                                        <span class="fa fa-thumbs-o-up like-icon"></span>
                                        <span>2140</span>
                                    </div>
                                    <div class="video-like-counter">
                                        <span class="fa fa-thumbs-o-down dislike-icon"></span>
                                        <span>2140</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Video Carousel -->  
<!-- Start Wide Video Section -->
<div class="wide-video-section themeix-ptb">
    <div class="container">
        <div class="row">
            @foreach ($recentUpload as $recentUploadRow)
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="{{url('video/'.base64_encode($recentUploadRow->postId))}}">
                            <?php $image = ''; ?>
                            @if ($recentUploadRow->postThumbnail && !$recentUploadRow->isScrapped)
                            <?php $image = asset('assets/images/posts') . '/' . $recentUploadRow->postThumbnail; ?>
                            @elseif($recentUploadRow->postThumbnail)
                            <?php $image = $recentUploadRow->postThumbnail; ?>
                            @else
                            <?php $image = asset('frontend/images/thumbnails/6.jpg') ?>
                            @endif
                            <img width="320px" height="180px" class="lazy" data-src="{{$image}}" alt="{{$recentUploadRow->postTitle}}" />
                            <noscript>
                            <img width="320px" height="180px" src="{{$image}}" alt="{{$recentUploadRow->postTitle}}" />
                            </noscript>
                        </a>
                        <span class="video-duration">5.28</span>
                    </div>
                    <div class="video-content">
                        <h4>
                            <a href="{{url('video/'.base64_encode($recentUploadRow->postId))}}" class="video-title">
                                {{(strlen($recentUploadRow->postTitle) > 55) ? substr($recentUploadRow->postTitle, 0, 55) . ' ...' : $recentUploadRow->postTitle}}
                            </a>
                        </h4>
                        <div class="video-counter">
                            <div class="video-viewers">
                                <span class="fa fa-eye view-icon"></span>
                                <span>{{$recentUploadRow->postViewed}}</span>
                            </div>
                            <div class="video-feedback">
                                <div class="video-like-counter">
                                    <span class="fa fa-thumbs-o-up like-icon"></span>
                                    <span>{{App\PostsModel::GetPostLikes(array('postId' => $recentUploadRow->postId))}}</span>
                                </div>
                                <div class="video-like-counter">
                                    <span class="fa fa-thumbs-o-down dislike-icon"></span>
                                    <span>{{App\PostsModel::GetPostUnLikes(array('postId' => $recentUploadRow->postId))}}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
<!-- End Wide Video Section -->

<!-- Start Call To Action Area -->
<div class="call-to-action-area hover-bg">
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="action-content">
                    <h2>Do you want to get the latest version eTube?</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.</p>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="purchase-link text-right">
                    <a href="#" class="themeix-purchase-btn-3">purchase now</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Call To Action Area -->
@endsection