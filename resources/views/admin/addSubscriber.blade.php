@extends('admin.layouts.app')

@section('content')
<div class="card">
    <div class="card-header">
        Add Subscriber
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
    <?php
    if ($subscriber != '') {
        $subscriptionId = $subscriber[0]->subscriptionId;
        $subscriptionEmail = $subscriber[0]->subscriptionEmail;
    } else {
        $subscriptionId = 'add';
        $subscriptionEmail = '';
    }
    ?>
    <div class="card-body">
        <form enctype="multipart/form-data" id="addUserForm" class="form form-horizontal" method="POST" action="{{ URL::route('insertSubscriber') }}">
            {{ csrf_field() }}
            <input type="hidden" name="subscriptionId" id="subscriptionId" value="{{ $subscriptionId }}">
            <div class="section">
                <div class="section-body">
                    <div class="form-group">
                        <label class="col-md-3 control-label">Email *</label>
                        <div class="col-md-9">
                            <input type="email" id="email" name="email" class="form-control" value="{{ $subscriptionEmail }}">
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-footer">
                <div class="form-group">
                    <div class="col-md-9 col-md-offset-3">
                        <button type="submit" class="btn btn-primary">Save</button>
                        <button type="button" class="btn btn-default" onclick="location.href = '{{ URL::route('usersubscription') }}';">Cancel</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    $(document).ready(function () {
        $(".sidebar-menu li").removeClass("active");
        $('#nav-subscribe').addClass('active');
    });
</script>
@endsection
