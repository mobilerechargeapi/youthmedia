@extends('admin.layouts.app')

@section('content')
@include('admin.tinymceSettings')
<div class="card">
    <div class="card-header">
        Settings
    </div>
    @include('admin.layouts.errorView')
    @if (isset($errors) && count($errors) > 0)
    <div style="width: 50%; margin-left: 1%; margin-top: 1%;" class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
    <div class="card-body">
        <form enctype="multipart/form-data" id="pageSettingsForm" class="form form-horizontal" method="POST" action="{{ URL::route('setPageSettings') }}">
            {{ csrf_field() }}
            <input type="hidden" name="navId" value="{{ $page[0]->navId }}">
            <input type="hidden" name="pageCode" value="{{ $page[0]->pageCode }}">
            <div class="section">
                <div class="section-body">
                    @include('admin.seoSettings')
                    <div class="form-group margin-top-class">
                        <label class="col-md-3 control-label">Prize</label>
                        <div class="col-md-9">
                            <textarea class="form-control" name="prizeText" id="prizeText">{{ $pageSettings->prizeText }}</textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-footer">
                <div class="form-group">
                    <div class="col-md-9 col-md-offset-3">
                        <button type="submit" class="btn btn-primary">Save</button>
                        <button type="button" class="btn btn-default" onclick="location.href = '{{ URL::route('pages') }}';">Cancel</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    $(document).ready(function () {
        $(".sidebar-menu li").removeClass("active");
        $('#nav-pages').addClass('active');
    });
</script>
@endsection
