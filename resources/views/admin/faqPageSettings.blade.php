@extends('admin.layouts.app')

@section('content')
@include('admin.tinymceSettings')
<div class="card">
    <div class="card-header">
        <button onclick="location.href = '{{url('insertFaq/')}}/{{$page[0]->navId}}';" type="button" class="btn btn-success">
            <span class="fa fa-plus"></span> Add FAQ
        </button>
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
                        <label class="col-md-3 control-label">Header Text</label>
                        <div class="col-md-9">
                            <textarea class="form-control" name="headerText" id="headerText">{{ $pageSettings->headerText }}</textarea>
                        </div>
                    </div>
                    <div class="form-group margin-top-class">
                        <label class="col-md-3 control-label">Search Text</label>
                        <div class="col-md-9">
                            <input type="text" id="searchText" name="searchText" class="form-control" value="{{ $pageSettings->searchText }}">
                        </div>
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="section-body">
                    <table border='1' class="table table-striped primary" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Question</th>
                                <th>Answer</th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($faqs as $faqRow)
                            <tr id="faq_row_{{ $faqRow->faqId }}">
                                <td>{{ $faqRow->faqQuestion }}</td>
                                <td>{{ $faqRow->faqAnswer }}</td>
                                <td>
                                    <div class="dropdown">
                                        <button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown">Actions
                                            <span class="caret"></span></button>
                                        <ul class="dropdown-menu">
                                            <li><a href="javascript:void(0)" onclick="location.href = '{{url('editFaq/')}}/{{$page[0]->navId}}/{{ $faqRow->faqId }}';">Edit</a></li>
                                            <li><a href="javascript:void(0)" onclick="deleteFaq('{{ $faqRow->faqId }}')">Delete</a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
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
