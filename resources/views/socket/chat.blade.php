@extends('layouts.app')

@section('content')
<script src="{{ asset('js/socket.io.js') }}"></script>
<script defer>
    $(function(){
        let socket = io(':6001');

        // $('#send_message').on('submit', function(e){
        //     e.preventDefault();
        //     // socket.send( mess );
        //     // let mess = $('#message').val();
        //     // if(mess.length > 0){
        //     //     $('#message').val('')
        //     // }
        // });

        socket.on('chat:message', function(data){
            $('#rez').append(`<li><b>${data.autor}</b> : <span>${data.content}</span></li>`);
            // console.log(`--- `, data );
        });

        // socket.on('server-info', function(data){
        //     console.log(`---Server say: `, data );
        //     $('#rez').append(`<li>{ status : ${ data.status } , message : ${ data.message } }</li>`);
        // });
    });
</script>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-body">

                    <form id="send_message" class="form-horizontal" action="{{ route('socket.chat.send') }}" method="POST">
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">Autor:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="autor">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="pwd">Message:</label>
                            <div class="col-sm-10">
                                <textarea name="content" class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default">Submit</button>
                            </div>
                        </div>
                    </form>

                    <ul id="rez">
                        @if(!empty($data) and !empty($data->messages))
                            @foreach($data->messages as $mess)
                                <li>
                                    <b>{{ $mess->autor }}</b> : <span>{{ $mess->content }}</span>
                                </li>
                            @endforeach
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
