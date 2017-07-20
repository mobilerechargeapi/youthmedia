@extends('layouts.app')

@section('content')
<!-- Start Slider Area -->
<div class="slider-area pt-40">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="slider-wrapper">
                    <ul class="slider">
                        <li>
                            <img src="<?php echo asset('frontend/images/slider/1.jpg') ?>" alt="Slider One">
                            <span>
                                Take Your Selfie <br>
                                <i class="fa fa-eye"> 89,587</i>
                                <i class=" fa fa-thumbs-o-up"> 9,550</i> 
                                <i class="fa fa-thumbs-o-down"> 104</i> 
                            </span>
                        </li>
                        <li>
                            <img src="<?php echo asset('frontend/images/slider/2.jpg') ?>" alt="Slider Two">
                            <span>
                                Smart American Game <br>
                                <i class="fa fa-eye"> 94,007</i>
                                <i class="fa fa-thumbs-o-up"> 1,780</i> 
                                <i class="fa fa-thumbs-o-down"> 218</i>                                    
                            </span>
                        </li>
                        <li>
                            <img src="<?php echo asset('frontend/images/slider/3.jpg') ?>" alt="Slider Three">
                            <span>
                                Jump Ride <br>
                                <i class="fa fa-eye"> 7,141</i>
                                <i class=" fa fa-thumbs-o-up"> 5,350</i> 
                                <i class="fa fa-thumbs-o-down"> 234</i>  
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Slider Area -->
<!-- Start Video Carousel -->
<div class="video-carousel-area themeix-ptb">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="themeix-section-h">
                    <span class="heading-icon"><i class="fa fa-bolt"></i></span>
                    <h3>Trending Videos</h3>
                </div>
                <div class="video-carousel">
                    <div class="single-video">
                        <div class="video-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/28.jpg') ?>" alt="Video" />
                                <noscript>
                                <img src="<?php echo asset('frontend/images/thumbnails/28.jpg') ?>" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.28</span>
                        </div>
                        <div class="video-content">
                            <h4><a href="single-video.html" class="video-title">Funny videos 2016 funny pranks try not to laugh challenge</a></h4>
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
                                <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/2.jpg') ?>" alt="Video" />
                                <noscript>
                                <img src="<?php echo asset('frontend/images/thumbnails/2.jpg') ?>" alt="video" />
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
                                <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/23.jpg') ?>" alt="Video" />
                                <noscript>
                                <img src="<?php echo asset('frontend/images/thumbnails/23.jpg') ?>" alt="video" />
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
                                <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/4.jpg') ?>" alt="Video" />
                                <noscript>
                                <img src="<?php echo asset('frontend/images/thumbnails/4.jpg') ?>" alt="video" />
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
                                <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/5.jpg') ?>" alt="Video" />
                                <noscript>
                                <img src="<?php echo asset('frontend/images/thumbnails/5.jpg') ?>" alt="video" />
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
<div class="wide-video-section themeix-ptb bg-info">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="themeix-section-h">
                    <span class="heading-icon"><i class="fa fa-book"></i></span>
                    <h3>Appetizers Recipe</h3> 
                    <a href="#" class="see-all-link">See all videos</a>
                </div>
            </div>   
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/6.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/6.jpg') ?>" alt="video" />
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
            </div>
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/7.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/7.jpg') ?>" alt="video" />
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
            </div>
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/8.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/8.jpg') ?>" alt="video" />
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
            </div>
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/9.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/9.jpg') ?>" alt="video" />
                            </noscript>
                        </a>
                        <span class="video-duration">5.28</span>
                    </div>
                    <div class="video-content">
                        <h4><a href="single-video.html" class="video-title">Cheesy Pretzel Ring Dip</a></h4>
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
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/10.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/10.jpg') ?>" alt="video" />
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
            </div>
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/11.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/11.jpg') ?>" alt="video" />
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
            </div>
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/12.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/12.jpg') ?>" alt="video" />
                            </noscript>
                        </a>
                        <span class="video-duration">5.28</span>
                    </div>
                    <div class="video-content">
                        <h4><a href="single-video.html" class="video-title">Avocado Chickpea Salad </a></h4>
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
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/13.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/13.jpg') ?>" alt="video" />
                            </noscript>
                        </a>
                        <span class="video-duration">5.28</span>
                    </div>
                    <div class="video-content">
                        <h4><a href="single-video.html" class="video-title">Honey Lime Sriracha</a></h4>
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
<!-- End Wide Video Section -->
<!-- Start Review And Contribute Section -->
<div class="review-and-contribute themeix-ptb">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-md-8">
                <div class="review-area">
                    <div class="themeix-section-h">
                        <span class="heading-icon"><i class="fa fa-html5" aria-hidden="true"></i></span>
                        <h3>Animal Plannet</h3>
                    </div>
                    <div class="single-review">
                        <div class="review-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/41.jpg') ?>" alt="Video" />
                                <noscript>
                                <img src="<?php echo asset('frontend/images/thumbnails/41.jpg') ?>" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.28</span>
                        </div>
                        <div class="review-content">
                            <h4><a href="single-video.html" class="video-title">Funny pranks try not to laugh challenge</a></h4>
                            <div class="video-counter-plan">
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
                            <div class="reviwe-text">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s </p>
                            </div>
                            <div class="review-btn">
                                <a href="#" class="view-btn">View Details</a>
                                <a href="#" class="watch-btn">Watch Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="single-review">
                        <div class="review-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/42.jpg') ?>" alt="Video" />
                                <noscript>
                                <img src="<?php echo asset('frontend/images/thumbnails/42.jpg') ?>" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.28</span>
                        </div>
                        <div class="review-content">
                            <h4><a href="single-video.html" class="video-title">Funny videos 2016</a></h4>
                            <div class="video-counter-plan">
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
                            <div class="reviwe-text">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s </p>
                            </div>
                            <div class="review-btn">
                                <a href="#" class="view-btn">View Details</a>
                                <a href="#" class="watch-btn">Watch Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="single-review">
                        <div class="review-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/43.jpg') ?>" alt="Video" />
                                <noscript>
                                <img src="<?php echo asset('frontend/images/thumbnails/43.jpg') ?>" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.28</span>
                        </div>
                        <div class="review-content">
                            <h4><a href="single-video.html" class="video-title">Funny videos 2016 funny pranks.</a></h4>
                            <div class="video-counter-plan">
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
                            <div class="reviwe-text">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s </p>
                            </div>
                            <div class="review-btn">
                                <a href="#" class="view-btn">View Details</a>
                                <a href="#" class="watch-btn">Watch Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="single-review">
                        <div class="review-img">
                            <a href="single-video.html">
                                <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/44.jpg') ?>" alt="Video" />
                                <noscript>
                                <img src="<?php echo asset('frontend/images/thumbnails/44.jpg') ?>" alt="video" />
                                </noscript>
                            </a>
                            <span class="video-duration">5.28</span>
                        </div>
                        <div class="review-content">
                            <h4><a href="single-video.html" class="video-title">Funny videos 2016 funny pranks try not to laugh</a></h4>
                            <div class="video-counter-plan">
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
                            <div class="reviwe-text">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s </p>
                            </div>
                            <div class="review-btn">
                                <a href="#" class="view-btn">View Details</a>
                                <a href="#" class="watch-btn">Watch Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Start Top Contribute -->
            <div class="col-md-offset-1 col-md-3 col-sm-4">
                <div class="right-sidebar">
                    <div class="themeix-section-h">
                        <span class="heading-icon"><i class="fa fa-html5"></i></span>
                        <h3>Top 5 Contributor</h3>
                    </div>
                    <div class="single-contributor">
                        <div class="contributor-img">
                            <a href="#"><img src="<?php echo asset('frontend/images/team/1.jpg') ?>" alt="team"></a>
                        </div>
                        <div class="contributor-content">
                            <h4><a href="#" class="heading-link">James Combap</a></h4>
                            <p>100 videos</p>
                            <p>joined 2015</p>
                        </div>
                    </div>
                    <div class="single-contributor">
                        <div class="contributor-img">
                            <a href="#"><img src="<?php echo asset('frontend/images/team/2.jpg') ?>" alt="team"></a>
                        </div>
                        <div class="contributor-content">
                            <h4><a href="#" class="heading-link">Matthew S. Villanueva</a></h4>
                            <p>100 videos</p>
                            <p>joined 2015</p>
                        </div>
                    </div>
                    <div class="single-contributor">
                        <div class="contributor-img">
                            <a href="#"><img src="<?php echo asset('frontend/images/team/3.jpg') ?>" alt="team"></a>
                        </div>
                        <div class="contributor-content">
                            <h4><a href="#" class="heading-link">Arden E. Halpern</a></h4>
                            <p>210 videos</p>
                            <p>joined 2015</p>
                        </div>
                    </div>
                    <div class="single-contributor">
                        <div class="contributor-img">
                            <a href="#"><img src="<?php echo asset('frontend/images/team/4.jpg') ?>" alt="team"></a>
                        </div>
                        <div class="contributor-content">
                            <h4><a href="#" class="heading-link">Mark T. Young</a></h4>
                            <p>10 videos</p>
                            <p>joined 2016</p>
                        </div>
                    </div>
                    <div class="single-contributor">
                        <div class="contributor-img">
                            <a href="#"><img src="<?php echo asset('frontend/images/team/5.jpg') ?>" alt="team"></a>
                        </div>
                        <div class="contributor-content">
                            <h4><a href="#" class="heading-link">David C. Burle</a></h4>
                            <p>65 videos</p>
                            <p>joined 2015</p>
                        </div>
                    </div>
                    <!-- Start Subscribe Box -->
                    <div class="subscribe-box">
                        <div class="themeix-section-h">
                            <span class="heading-icon"><i class="fa fa-html5" aria-hidden="true"></i></span>
                            <h3>Subscribe now</h3>
                        </div>
                        <form action="#" class="subscribe-form">
                            <div class="form-group">
                                <input type="email" name="email" id="email" placeholder="Give Your Email Address" required>
                                <button type="submit">Go</button>
                            </div>
                        </form>
                    </div>
                    <!-- End Subscribe Box -->
                </div>
                <!-- End Top Contribute -->
            </div>
        </div>
    </div>
</div>
<!-- End Review And Contribute Section -->
<!-- Start Big Banner Area -->
<div class="big-banner-area themeix-ptb-2 bg-info">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="big-banner">
                    <a href="#"><img src="<?php echo asset('frontend/images/banners/1.jpg') ?>" alt="banner"></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Big Banner Area -->
<!-- Start Sports News Area -->
<div class="wide-video-section themeix-ptb">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="themeix-section-h">
                    <span class="heading-icon"><i class="fa fa-futbol-o" aria-hidden="true"></i></span>
                    <h3>Wild And Nature</h3>
                    <a href="#" class="see-all-link">See all videos</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/55.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/55.jpg') ?>" alt="video" />
                            </noscript>
                        </a>
                        <span class="video-duration">5.28</span>
                    </div>
                    <div class="video-content">
                        <h4><a href="single-video.html" class="video-title">Funny videos 2016 funny pranks try not to laugh</a></h4>
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
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/48.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/48.jpg') ?>" alt="video" />
                            </noscript>
                        </a>
                        <span class="video-duration">5.28</span>
                    </div>
                    <div class="video-content">
                        <h4><a href="single-video.html" class="video-title">Funny videos 2016 funny pranks try not to laugh challenge</a></h4>
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
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/49.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/49.jpg') ?>" alt="video" />
                            </noscript>
                        </a>
                        <span class="video-duration">5.28</span>
                    </div>
                    <div class="video-content">
                        <h4><a href="single-video.html" class="video-title">Funny videos 2016 funny pranks try not to laugh challenge</a></h4>
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
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/50.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/50.jpg') ?>" alt="video" />
                            </noscript>
                        </a>
                        <span class="video-duration">5.28</span>
                    </div>
                    <div class="video-content">
                        <h4><a href="single-video.html" class="video-title">Funny videos 2016 funny pranks try not to laugh challenge</a></h4>
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
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/51.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/51.jpg') ?>" alt="video" />
                            </noscript>
                        </a>
                        <span class="video-duration">5.28</span>
                    </div>
                    <div class="video-content">
                        <h4><a href="single-video.html" class="video-title">Funny videos 2016 funny pranks try not to laugh challenge</a></h4>
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
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/52.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/52.jpg') ?>" alt="video" />
                            </noscript>
                        </a>
                        <span class="video-duration">5.28</span>
                    </div>
                    <div class="video-content">
                        <h4><a href="single-video.html" class="video-title">Funny videos 2016 funny pranks try not to laugh challenge</a></h4>
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
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/53.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/53.jpg') ?>" alt="video" />
                            </noscript>
                        </a>
                        <span class="video-duration">5.28</span>
                    </div>
                    <div class="video-content">
                        <h4><a href="single-video.html" class="video-title">Funny videos 2016 funny pranks try not to laugh challenge</a></h4>
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
            <div class="col-sm-6 col-md-3 themeix-half">
                <div class="single-video">
                    <div class="video-img">
                        <a href="single-video.html">
                            <img class="lazy" data-src="<?php echo asset('frontend/images/thumbnails/54.jpg') ?>" alt="Video" />
                            <noscript>
                            <img src="<?php echo asset('frontend/images/thumbnails/54.jpg') ?>" alt="video" />
                            </noscript>
                        </a>
                        <span class="video-duration">5.28</span>
                    </div>
                    <div class="video-content">
                        <h4><a href="single-video.html" class="video-title">Funny videos 2016 funny pranks try not to laugh challenge</a></h4>
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
<!-- End Sports News Area -->
<!-- Start Call To Action Area -->
<div class="call-to-action-area hover-bg">
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="action-content">
                    <h2>Enough imporessed to get own video blog?</h2>
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