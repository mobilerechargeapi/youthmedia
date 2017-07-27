<div class="row">
    <div class="col-md-12">
        @if(Session::has('videomessage'))
        <div class="alert alert-success"><em> {!! session('videomessage') !!}</em></div>
        @endif
        @if(Session::has('error_message'))
        <div class="alert alert-danger"><em> {!! session('error_message') !!}</em></div>
        @endif
    </div>
</div>