<!DOCTYPE html>
<html lang="zxx">

    <head>
        <!--google tag manager-->
        {!! $settings['generalSettings'][0]->googleAnalytics !!}
        <!--Facebook--> 
        {!! $settings['generalSettings'][0]->fbAnalytics !!}
        <!--Other Analytics--> 
        {!! $settings['generalSettings'][0]->otherAnalyticsHead !!}
        <meta charset="UTF-8">
        <meta name="robots" content="all,follow">
        <meta name="googlebot" content="index,follow,snippet,archive">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="{{ strip_tags($settings['pageDescription']) }}">
        <meta name="author" content="">
        <meta name="keywords" content="{{ $settings['pageKeywords'] }}">

        <meta property="og:type"          content="website" />
        <meta property="og:description"   content="{{ strip_tags($settings['pageDescription']) }}" />

        <meta name="twitter:card" content="summary" />
        <meta name="twitter:site" content="@YouthMedia" />
        <meta name="twitter:description" content="{{ strip_tags($settings['pageDescription']) }}" />
        @if (!isset($facebookSetting))
        <meta property="og:title"         content="Youth Media" />
        <meta property="og:url"           content="http://localhost/youthmedia/public/" />
        <meta property="og:image"         content="{{ asset('frontend/images/logo.png') }}" />

        <meta name="twitter:title" content="Youth Media" />
        <meta name="twitter:image" content="{{ asset('frontend/images/logo.png') }}" />
        @else
        <meta property="og:title"         content="{{ $facebookSetting['title'] }}" />
        <meta property="og:url"           content="{{ $facebookSetting['url'] }}" />
        <meta property="og:image"         content="{{ $facebookSetting['image'] }}" />

        <meta name="twitter:title" content="{{ $facebookSetting['title'] }}" />
        <meta name="twitter:image" content="{{ $facebookSetting['image'] }}" />
        @endif

        <title>{{ $settings['generalSettings'][0]->webTitle }} @if (isset($pageTitle) && $pageTitle != '') - {{ strip_tags($pageTitle) }} @endif</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="<?php echo asset('frontend/css/bootstrap.min.css') ?>">

        <!-- Font Awesome CSS -->
        <link rel="stylesheet" href="<?php echo asset('frontend/css/font-awesome.min.css') ?>">

        <!-- Slider CSS -->
        <link rel="stylesheet" href="<?php echo asset('frontend/css/pgwslider.min.css') ?>">

        <!-- Owl Carousel CSS -->
        <link rel="stylesheet" href="<?php echo asset('frontend/css/owl.carousel.css') ?>">

        <!-- pgwSlideshow CSS -->
        <link rel="stylesheet" href="<?php echo asset('frontend/css/pgwslideshow.min.css') ?>">

        <!-- Megamenu CSS -->
        <link rel="stylesheet" href="<?php echo asset('frontend/css/megamenu.css') ?>">

        <!-- Main CSS -->
        <link rel="stylesheet" href="<?php echo asset('frontend/css/style.css') ?>">

        <!-- Responsive CSS -->
        <link rel="stylesheet" href="<?php echo asset('frontend/css/responsive.css') ?>">

        <!-- Demo Panel Style -->
        <link rel="stylesheet" href="<?php echo asset('frontend/css/demo-panels.css') ?>">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="<?php echo asset('frontend/css/custom.css') ?>">
    </head>

    <body id=test>
        <?php
        $aboutUs = $settings['generalSettings'][0]->aboutUs != '' ? $settings['generalSettings'][0]->aboutUs : '';
        $contactAddress = $settings['generalSettings'][0]->contactAddress != '' ? $settings['generalSettings'][0]->contactAddress : '';
        $contactPhoneOne = $settings['generalSettings'][0]->contactPhoneOne != '' ? $settings['generalSettings'][0]->contactPhoneOne : '';
        $contactPhoneTwo = $settings['generalSettings'][0]->contactPhoneTwo != '' ? $settings['generalSettings'][0]->contactPhoneTwo : '';
        $contactEmail = $settings['generalSettings'][0]->contactEmail != '' ? $settings['generalSettings'][0]->contactEmail : '';

        $categories = $settings['categories'];
        $topUsers = $settings['topUsers'];
        ?>
        <!-- Start Header -->
        <header>
            <div class="header-top hidden-xs">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="header-top-area">
                                <div class="site-info left">
                                    <div class="mail-address">
                                        <i class="fa fa-envelope-o"></i>
                                        <a href="mailto:{{$contactEmail}}">{{$contactEmail}}</a>
                                        <span class="sepator">|</span>
                                    </div>
                                    <div class="server-time">
                                        <i class="fa fa-clock-o"></i>
                                        <span>Server time : {{date('h:i A', time())}}</span>
                                    </div>
                                </div>
                                <div class="user-info right">
                                    <div class="upload-opt">
                                        <i class="fa fa-upload"></i>
                                        <a href="#upload-options" data-toggle="modal">upload video</a>
                                        <span class="sepator">|</span>
                                    </div>
                                    <?php $auth = Auth::guard(); ?>
                                    @if(!$auth->check())
                                    <div class="login-info">
                                        <i class="fa fa-lock"></i>
                                        <a href="#login-info" data-toggle="modal">login</a>
                                    </div>
                                    <div class="login-info">
                                        <i class="fa fa-sign-in"></i>
                                        <a href="#register-info" data-toggle="modal">Register</a>
                                    </div>
                                    @else
                                    <?php $user = Auth::user(); ?>
                                    <div class="login-info">
                                        <i class="fa fa-sign-in"></i>
                                        <a href="{{ URL::route('settings') }}">{{$user['attributes']['name']}}</a>
                                    </div>
                                    <div class="login-info">
                                        <i class="fa fa-sign-in"></i>
                                        <a href="{{ URL::route('logout') }}" data-toggle="modal">Logout</a>
                                    </div>
                                    @endif
                                </div>
                                <div id="upload-options" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h3 class="modal-title">Upload Your Video</h3>
                                                <button class="btn btn-sm btn-default close-btn" data-dismiss="modal">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="{{ URL::route('uploadVideo') }}" method="post" class="upload-form" enctype="multipart/form-data">
                                                    {{ csrf_field() }}
                                                    <div class="form-group">
                                                        <label for="video_title">Video Title *</label>
                                                        <input required="" name="postTitle" type="text" class="form-control" id="video_title" placeholder="Video Title">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="video-desc">Video Description</label>
                                                        <textarea name="postDescription" id="video-desc" class="form-control" placeholder="Video Description"></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="categoryId">Category *</label>
                                                        <select required="" id="categoryId" name="categoryId" class="form-control">
                                                            @foreach ($categories as $categoriesRow)
                                                            <option value="{{ $categoriesRow->categoryId }}">{{ $categoriesRow->categoryName }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="upload_file" class="custom-file-upload">Select Your File *
                                                            <input required="" type="file" name="uploadVideo" id="upload_file">
                                                        </label>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="postThumbnail" class="custom-file-upload">Select Thumbnail
                                                            <input type="file" name="postThumbnail" id="postThumbnail">
                                                        </label>
                                                    </div>
                                                    <div class="form-group">
                                                        <button type="submit" class="btn btn-primary btn-lg">Upload</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="login-info" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h3 class="modal-title">Login Here..</h3>
                                                <button data-dismiss="modal" class="btn btn-sm btn-default close-btn">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="{{ url('/login') }}" method="post" class="login-form">
                                                    {{ csrf_field() }}
                                                    <div class="form-group">
                                                        <label for="email">Email : *</label>
                                                        <input required="" type="email" name="email" class="form-control" id="email" placeholder="Email">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="password">Password : *</label>
                                                        <input required="" type="password" name="password" class="form-control" id="password" placeholder="Password">
                                                    </div>
                                                    <div class="form-group">
                                                        <button type="submit" class="btn btn-primary btn-lg">Login</button>
                                                        <a onclick="closeLoginModal();" href="#reset-pass" data-toggle="modal">Forgot Password</a>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="register-info" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h3 class="modal-title">Sign Up Here..</h3>
                                                <button data-dismiss="modal" class="btn btn-sm btn-default close-btn">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <form enctype="multipart/form-data" action="{{ route('register') }}" method="post" class="upload-form">
                                                    {{ csrf_field() }}
                                                    <div class="form-group">
                                                        <label for="name">Name : *</label>
                                                        <input required="" type="text" name="name" class="form-control" id="name" placeholder="Name">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="email">Email : *</label>
                                                        <input required="" type="email" name="email" class="form-control" id="email" placeholder="Email">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="password">Password : *</label>
                                                        <input required="" type="password" name="password" class="form-control" id="password" placeholder="password">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="profileImg" class="custom-file-upload">Select Profile Image
                                                            <input type="file" name="profileImg" id="profileImg">
                                                        </label>
                                                    </div>
                                                    <div class="form-group">
                                                        <button type="submit" class="btn btn-primary btn-lg">Sign Up</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="reset-pass" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h3 class="modal-title">Reset Password</h3>
                                                <button data-dismiss="modal" class="btn btn-sm btn-default close-btn">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <form action="{{ route('password.email') }}" method="post" class="upload-form">
                                                    {{ csrf_field() }}
                                                    <div class="form-group">
                                                        <label for="email">Email : *</label>
                                                        <input required="" type="email" name="email" class="form-control" id="email" placeholder="Email">
                                                    </div>
                                                    <div class="form-group">
                                                        <button type="submit" class="btn btn-primary btn-lg">Send Password Reset Link</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="delete-video" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h3 class="modal-title">Delete Your Video</h3>
                                                <button class="btn btn-sm btn-default close-btn" data-dismiss="modal">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <h3>Are You Sure You Want To Delete This Video?</h3>
                                                <p>Remember This Action Can't Reverted.</p>
                                                <input type="hidden" name="deleteUserVideo" id="deleteUserVideo" value="">
                                                <button onclick="deleteUserPost();" class="btn btn-primary btn-lg">Delete</button>
                                                <button class="btn btn-default btn-lg close-btn" data-dismiss="modal">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Navigation area starts -->
            <div class="main-menu">
                <!-- Start Navigation -->
                <nav class="header-section pin-style">
                    <div class="container">
                        <div class="mod-menu">
                            <div class="row">
                                <div class="col-sm-3">
                                    <a href="{{url('/')}}" title="logo" class="logo"><img src="{{ asset('frontend/images/logo.png') }}" alt="logo"></a>
                                </div>
                                <div class="col-sm-9 nopadding">
                                    <div class="main-nav rightnav">
                                        <ul class="nav navbar-nav top-nav">
                                            <li class="visible-xs menu-icon">
                                                <a href="#" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu" aria-expanded="false"><i class="fa fa-bars"></i></a>
                                            </li>
                                        </ul>
                                        <div id="menu" class="collapse header-menu">
                                            <ul class="nav navbar-nav">
                                                <li><a href="{{url('/')}}">Home</a></li>
                                                <li class="mega-menu remove-border active"><a href="#">Quick Links</a><span class="arrow"></span>
                                                    <ul>
                                                        <li><span class="subtitle">Quick links</span> <span class="arrow"></span>
                                                            <ul class="mega-list">
                                                                <li><a href="{{url('popular-videos')}}"><i class="fa fa-home"></i>Popular Videos</a></li>
                                                                <li><a href="{{url('trending-videos')}}"><i class="fa fa-home"></i>Trending Videos</a></li>
                                                                <li><a href="{{url('recent-videos')}}"><i class="fa fa-home"></i>Recent Videos</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><span class="subtitle">Top Users</span> <span class="arrow"></span>
                                                            <ul class="mega-list">
                                                                <?php $counter = 0; ?>
                                                                @foreach ($topUsers as $topUsersRow)
                                                                @if($counter < 3)
                                                                <li>
                                                                    <a href="{{url('user/'.base64_encode($topUsersRow->id))}}">
                                                                        <i class="fa fa-angle-right"></i>{{$topUsersRow->name}}
                                                                    </a>
                                                                </li>
                                                                <?php $counter++; ?>
                                                                @endif
                                                                @endforeach
                                                            </ul>
                                                        </li>
                                                        <li><span class="subtitle">Top Categories</span><span class="arrow"></span>
                                                            <ul class="mega-list">
                                                                <li><a href="{{url('videoTag/'.base64_encode('news'))}}"><i class="fa fa-angle-right"></i>News</a></li>
                                                                <li><a href="{{url('videoTag/'.base64_encode('politics'))}}"><i class="fa fa-angle-right"></i>Politics</a></li>
                                                                <li><a href="{{url('videoTag/'.base64_encode('pakistan'))}}"><i class="fa fa-angle-right"></i>Pakistan</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><span class="subtitle">Social Links</span> <span class="arrow"></span>
                                                            <ul class="mega-list">
                                                                <li><a target="_blank" href="#"><i class="fa fa-facebook"></i>FaceBook</a></li>
                                                                <li><a target="_blank" href="https://www.youtube.com/channel/UCrmX1CHUI9V5guPLDhzjJlQ"><i class="fa fa-youtube"></i>YouTube</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li><a href="{{url('contact')}}" title="contact">Contact</a></li>
                                                <li><a href="{{url('prize')}}" title="prize">Prize</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
                <!-- end navigation -->
            </div>
            <!-- Navigation area ends -->
        </header>
        @include('admin.layouts.videoErrorView')
        <!-- End Header -->
        @yield('content')
        <!-- Start Footer Area -->
        <footer>
            <div class="footer-area themeix-ptb">
                <div class="container">
                    <div class="row">
                        <div class="footer-wrapper">
                            <div class="col-sm-6 col-md-3">
                                <div class="single-footer">
                                    <div class="footer-heading-wrap">
                                        <span class="heading-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></span>
                                        <h3 class="footer-heading">About Us</h3>
                                    </div>
                                    <div class="single-footer-text">
                                        <p>{{$aboutUs}}</p>
                                    </div>
                                    <div class="social-links">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li class="fb-link"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li class="gp-link"><a target="_blank" href="https://www.youtube.com/channel/UCrmX1CHUI9V5guPLDhzjJlQ"><i class="fa fa-youtube"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="single-footer">
                                    <div class="footer-heading-wrap">
                                        <span class="heading-icon"><i class="fa fa fa-link" aria-hidden="true"></i></span>
                                        <h3 class="footer-heading">Quick links</h3>
                                    </div>
                                    <div class="footer-list">
                                        <ul>
                                            <li><a href="{{url('popular-videos')}}">Popular Videos</a></li>
                                            <li><a href="{{url('trending-videos')}}">Trending Videos</a></li>
                                            <li><a href="{{url('recent-videos')}}">Recent Videos</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="single-footer">
                                    <div class="footer-heading-wrap">
                                        <span class="heading-icon"><i class="fa fa-life-ring" aria-hidden="true"></i></span>
                                        <h3 class="footer-heading">get support</h3>
                                    </div>
                                    <div class="footer-list">
                                        <ul>
                                            <li><a target="_blank" href="#">Facebook Page</a></li>
                                            <li><a target="_blank" href="https://www.youtube.com/channel/UCrmX1CHUI9V5guPLDhzjJlQ">YouTube Channel</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="single-footer">
                                    <div class="footer-heading-wrap">
                                        <span class="heading-icon"><i class="fa fa-plane" aria-hidden="true"></i></span>
                                        <h3 class="footer-heading">contact us</h3>
                                    </div>
                                    <p>{{$contactAddress}}</p>
                                    <div class="footer-list">
                                        <ul>
                                            <li><a href="javascript:void(0);">T : {{$contactPhoneOne}}</a></li>
                                            <li><a href="javascript:void(0);">F : {{$contactPhoneTwo}}</a></li>
                                            <li><a href="mailto:{{$contactEmail}}">E : {{$contactEmail}}</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Start Footer Bottom Area -->
            <div class="footer-bottom-area pb-80">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="footer-bottom">
                                <div class="footer-logo">
                                    <a href="{{url('/')}}"><img src="{{ asset('frontend/images/logo.png') }}" alt="logo"></a>
                                </div>
                                <div class="footer-links">
                                    <ul>
                                        <li><a href="{{url('privacypolicy')}}">Privacy Policy</a></li>
                                        <li><a href="{{url('termsandconditions')}}">Terms And Conditions</a></li>
                                        <li><a href="{{url('contact')}}">Contact Us</a></li>
                                    </ul>
                                </div>
                                <div class="copyright-text">
                                    <p>All content 100solutions &copy; 2017 - All rights reserved. - Proudly made by <a href="#">100solutions</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Footer Bottom Area -->
            <div class="scroll-top">
                <div class="scroll-icon">
                    <i class="fa fa-angle-up"></i>
                </div>
            </div>
        </footer>
        <!-- End Footer Area -->


        <!-- jQuery -->
        <script src="<?php echo asset('frontend/js/jquery-1.12.4.min.js') ?>"></script>

        <!-- jQuery Easing -->
        <script src="<?php echo asset('frontend/js/jquery.easing.js') ?>"></script>

        <!-- Bootstrap JS -->
        <script src="<?php echo asset('frontend/js/bootstrap.min.js') ?>"></script>

        <!-- pgwSlideshow JS -->
        <script src="<?php echo asset('frontend/js/pgwslideshow.min.js') ?>"></script>

        <!-- Slider JS -->
        <script src="<?php echo asset('frontend/js/pgwslider.min.js') ?>"></script>

        <!-- Owl Carousel JS -->
        <script src="<?php echo asset('frontend/js/owl.carousel.min.js') ?>"></script>

        <!-- lazyload JS -->
        <script src="<?php echo asset('frontend/js/jquery.lazyload.js') ?>"></script>

        <!-- Mega Menu JS -->
        <script src="<?php echo asset('frontend/js/megamenu.js') ?>"></script>

        <!-- Js Color -->
        <!--<script src="<?php echo asset('frontend/js/jscolor.min.js') ?>"></script>-->

        <!-- Demo Panel Js -->

        <!--<script src="<?php echo asset('frontend/js/demo-panel.js') ?>"></script>-->

        <!-- Google Map -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnh74UN6BKgq9U5fMNGhdZOSpmM_QnZqs"></script>

        <!-- Main JS -->
        <script src="<?php echo asset('frontend/js/main.js') ?>"></script>


        <!-- Custom JS -->
        <script src="<?php echo asset('js/custom.js') ?>" type="text/javascript"></script>
        @if(isset($post[0]->postId))
        <script>
                                                    if ($("#detail-video-post").length > 0) {
                                                        updateVideoView('<?php echo $post[0]->postId ?>', '<?php echo $post[0]->postViewed + 1 ?>');
                                                    }
        </script>
        @endif
    </body>

</html>