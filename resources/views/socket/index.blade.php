@extends('layouts.app')

@section('content')
<script src="{{ asset('js/socket.io.js') }}"></script>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                {{--<div class="card-header">Dashboard</div>--}}

                <div class="card-body">
                    <input type="text" id="message">
                    <button id="send_message">Send!</button>
                    <ul id="rez"></ul>
                </div>
            </div>
        </div>
    </div>
</div>
<script defer>
    $(function(){
        let socket = io(':6001');

        $('#send_message').on('click', function(){
            let mess = $('#message').val();
            if(mess.length > 0){
                socket.send( mess );
                $('#message').val('')
            }
        });

        socket.on('message', function(data){
            $('#rez').append(`<li>${data}</li>`);
        });

        // socket.on('server-info', function(data){
        //     console.log(`---Server say: `, data );
        //     $('#rez').append(`<li>{ status : ${ data.status } , message : ${ data.message } }</li>`);
        // });
    });
</script>
@endsection
