@extends('layouts.app')

@section('content')
<!-- Start Page Banner -->
<div class="page-banner-area-3">
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="page-title">
                    <h1>404</h1>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="page-breadcrumb">
                    <p><a href="{{url('/')}}">home</a> / 404</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Page Banner -->
<!-- 404 Page -->
<section class="four-zero-page section-color">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="bluehostix-title wow zoomIn animated">
                    <h2>404 <span>NOT FOUND</span></h2>
                    <span class="heading-border"></span>
                    <p>
                        The Page Or Content You Are Looking For Does not Found. If You Are Sure You Entered Coorect Path Please Contact <a href="{{url('contact')}}">OUR SUPPORT</a>.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End 404 Page -->
<!-- Start Call To Action Area -->
<div class="call-to-action-area hover-bg">
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="action-content">
                    <h2>Do you want to get the latest version documenter?</h2>
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