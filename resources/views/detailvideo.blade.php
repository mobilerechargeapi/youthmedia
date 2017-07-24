@extends('layouts.app')

@section('content')
<!-- Start Page Banner -->
<div class="page-banner-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="page-banner">
                    <div class="page-title">
                        <h1>{{$post[0]->postTitle}}</h1>
                    </div>
                    <div class="page-breadcrumb">
                        <p><a href="{{url('/')}}">home </a> / Watch Video</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Page Banner -->
<!-- Start Page Content Area -->
<div class="page-content-area themeix-ptb">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <!-- Start Video Post -->
                <div class="video-post-wrapper">
                    <div class="video-posts-video">
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe src="{{$post[0]->post}}" class="embed-responsive-item"></iframe>
                        </div>
                    </div>
                    <div class="video-posts-data">
                        <div class="video-post-title">
                            <span class="video-icons"><i class="fa fa-info-circle"></i></span>
                            <div class="video-post-info">
                                <h4><a href="#">{{$post[0]->postTitle}}</a></h4>
                                <div class="video-post-date">
                                    <span><i class="fa fa-calendar"></i></span>
                                    @if ($post[0]->createdOn != '')
                                    <p>{{date('F d, Y',$post[0]->createdOn)}}</p>
                                    @endif
                                    <span class="video-posts-author">
                                        <i class="fa fa-folder-o"></i>
                                        <a href="{{url('vidcategory/'.base64_encode($post[0]->categoryId))}}">{{$post[0]->categoryName}} Videos</a>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="video-post-counter">
                            <div class="video-post-viewers">
                                <h3>241,050 views</h3>
                            </div>
                            <div class="video-like">
                                <span><i class="fa fa-thumbs-o-up"></i></span>
                                <p>421825</p>
                            </div>
                            <div class="video-dislike">
                                <span><i class="fa fa-thumbs-o-down"></i></span>
                                <p>9694</p>
                            </div>
                        </div>
                    </div>
                    <div class="video-post-text">
                        {{$post[0]->postDescription}}
                    </div>
                    <!-- Start Tags And Share Options -->
                    <div class="tags-and-share video-share">
                        <div class="post-tags widget">
                            <ul class="tagcloud">
                                @if($post[0]->postTags != '')
                                <?php
                                $postTags = '';
                                $postTags = explode(',', $post[0]->postTags);
                                ?>
                                @foreach ($postTags as $postTagsRow)
                                <li><a href="{{url('videoTag/'.base64_encode($postTagsRow))}}">{{$postTagsRow}}</a></li>
                                @endforeach
                                @endif
                            </ul>
                        </div>
                        <div class="share-options">
                            <h4>Share On</h4>
                            <ul class="social-share">
                                <li class="twitter-bg"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="facebook-bg"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li class="google-bg"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Tags And Share Options -->
                    <!-- Start Comments -->
                    <div class="video-posts-comments">
                        <!-- Single Comment -->
                        <div id="comments">
                            <div class="themeix-section-h">
                                <span class="heading-icon"><i class="fa fa-comments" aria-hidden="true"></i></span>
                                <h3>3 comments</h3>
                            </div>
                            <ul class="comments-list">
                                <li>
                                    <div class="comment">
                                        <div class="comment-pic"><img src="images/comments.png" alt="comment"></div>
                                        <div class="comment-text">
                                            <h5><a href="#">Mr. Micle James</a></h5><span class="comment-date">Posted on 18:20 December 12, 2016</span>
                                            <p>Duis autem vel eum iriure dolor in hendrerit in vulput ateat vero eros accumsan et iustoa medio blandit raesent lutatum zzril delenit auue duis dolore tefeuai tnulla amer desh.</p>
                                            <a href="#" class="comment-reply">Reply</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="children">
                                    <div class="comment">
                                        <div class="comment-pic"><img src="images/comments.png" alt="comment"></div>
                                        <div class="comment-text">
                                            <h5><a href="#">Mr. Micle James</a></h5><span class="comment-date">Posted on 18:20 December 12, 2016</span>
                                            <p>Duis autem vel eum iriure dolor in hendrerit in vulput ateat vero eros accumsan et iustoa medio blandit raesent lutatum zzril delenit auue duis dolore tefeuai tnulla amer desh.</p>
                                            <a href="#" class="comment-reply">Reply</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="comment">
                                        <div class="comment-pic"><img src="images/comments.png" alt="comment"></div>
                                        <div class="comment-text">
                                            <h5><a href="#">Mr. Micle James</a></h5><span class="comment-date">Posted on 18:20 December 12, 2016</span>
                                            <p>Duis autem vel eum iriure dolor in hendrerit in vulput ateat vero eros accumsan et iustoa medio blandit raesent lutatum zzril delenit auue duis dolore tefeuai tnulla amer desh.</p>
                                            <a href="#" class="comment-reply">Reply</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- End Single Comment -->
                        <!-- Leave a Comment -->
                        <div id="respond">
                            <div class="comment-respond">
                                <div class="contact-form">
                                    <div class="themeix-section-h">
                                        <span class="heading-icon"><i class="fa fa-commenting-o" aria-hidden="true"></i></span>
                                        <h3>Leave a comment</h3>
                                    </div>
                                    <form action="#" method="post">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <input class="form-control" name="name" placeholder="Name *" type="text" required>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <input class="form-control" name="email" placeholder="Email *" type="email" required>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <input class="form-control" name="website" placeholder="Website" type="text" required>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <textarea rows="5" class="form-control" name="comment" placeholder="Comment" required></textarea>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <button type="submit" class="themeix-btn-danger text-uppercase">post comment</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- End Leave a Comment -->
                    </div>
                    <!-- End Comments -->
                </div>
                <!-- End Video Post -->
            </div>
            <!-- Start Sidebar -->
            <div class="col-md-offset-1 col-md-3">
                <!-- Start Popular Videos -->
                <div class="popular-videos">
                    <div class="themeix-section-h">
                        <span class="heading-icon"><i class="fa fa-fire" aria-hidden="true"></i></span>
                        <h3>Popular Videos</h3>
                    </div>
                    <div class="single-video">
                        <div class="video-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="{{ asset('frontend/images/thumbnails/6.jpg') }}" alt="Video" />
                                <noscript>
                                <img src="{{ asset('frontend/images/thumbnails/6.jpg') }}" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.28</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="single-video.html" class="video-title">Buffalo Chicken Potato Skins</a></h4>
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
                    <div class="single-video">
                        <div class="video-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="{{ asset('frontend/images/thumbnails/7.jpg') }}" alt="Video" />
                                <noscript>
                                <img src="{{ asset('frontend/images/thumbnails/7.jpg') }}" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.28</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="single-video.html" class="video-title">Cheesy Stuffed Plantain Tots</a></h4>
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
                    <div class="single-video">
                        <div class="video-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="{{ asset('frontend/images/thumbnails/8.jpg') }}" alt="Video" />
                                <noscript>
                                <img src="{{ asset('frontend/images/thumbnails/8.jpg') }}" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.28</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="single-video.html" class="video-title">French Cheese Puffs (Gougeres)</a></h4>
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
                    <div class="single-video">
                        <div class="video-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="{{ asset('frontend/images/thumbnails/10.jpg') }}" alt="Video" />
                                <noscript>
                                <img src="{{ asset('frontend/images/thumbnails/10.jpg') }}" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.28</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="single-video.html" class="video-title">Spicy Mango Chicken Wings</a></h4>
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
                    <div class="single-video">
                        <div class="video-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="{{ asset('frontend/images/thumbnails/11.jpg') }}" alt="Video" />
                                <noscript>
                                <img src="{{ asset('frontend/images/thumbnails/11.jpg') }}" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.28</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="single-video.html" class="video-title">Brick Oven-Style Pizza</a></h4>
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
                    <!-- Start Sidebar Adds -->
                    <div class="sidebar-adds">
                        <a href="#"><img alt="banner" src="{{ asset('frontend/images/banners/3.jpg') }}"></a>
                    </div>
                    <!-- End Sidebar Adds -->
                </div>
                <!-- Start Recent Videos -->
                <div class="popular-videos">
                    <div class="themeix-section-h">
                        <span class="heading-icon"><i class="fa fa-play" aria-hidden="true"></i></span>
                        <h3>Recent Videos</h3>
                    </div>
                    <?php $counter = 0; ?>
                    @foreach ($recentUpload as $recentUploadRow)
                    @if ($counter < 3)
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
                                <img class="lazy" data-src="{{$image}}" alt="{{$recentUploadRow->postTitle}}" />
                                <noscript>
                                <img src="{{$image}}" alt="{{$recentUploadRow->postTitle}}" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.28</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="{{url('video/'.base64_encode($recentUploadRow->postId))}}" class="video-title">{{$recentUploadRow->postTitle}} </a></h4>
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
                    <?php $counter++; ?>
                    @endif
                    @endforeach
                </div>
                <!-- End Recent Videos -->
            </div>
            <!-- End Sidebar -->
        </div>
    </div>
</div>
<!-- End Page Content Area -->
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
                    <h2>Do you want to get the latest version documenter ?</h2>
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