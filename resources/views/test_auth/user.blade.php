@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="card-body">
            {{--<input type="text" id="uid_ident" value="2" style="padding: 1px 5px;border-radius: 5px;position: relative;top: 2px;border: 1px solid #6cb2eb;">--}}
            <a href="{{ route('auth.user') }}?uid=2" id="not_mainSend" class="btn btn-sm btn-outline-info">Send</a>
            <hr>
            <h1> Hello <b>User:</b> </h1>

            @myPrint(Auth::user()->toArray())

{{--            @json(auth()->user())--}}

        </div>
    </div>
</div>
<script defer>
    window.onload = function(){

        {{--$("#not_mainSend").on('click',function(){--}}
            {{--let uid = $("#uid_ident").val();--}}

            {{--let nwind_test = window.open(`{{ route('auth.user') }}?uid=${uid}`,--}}
                {{--'test',--}}
                {{--'scrollbars=no,resizable=no,status=no,location=no,toolbar=no,menubar=no,width=800,height=600,left=100,top=100');--}}

            {{--chrome.tabs.query({'active': true, 'windowId': chrome.windows.WINDOW_ID_CURRENT}, function (tabs) {--}}
                {{--chrome.windows.create({"url": `{{ route('auth.user') }}?uid=${uid}`, "incognito":false});--}}
            {{--});--}}

        {{--});--}}

    };
</script>
@endsection
