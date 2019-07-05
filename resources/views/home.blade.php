@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">

        <div class="card-body">

            <div class="jumbotron">
                <h1>Добро пожаловать!</h1>
                <p>Это онлайн-библиотека для исследования публикаций.</p>
            </div>

            <div class="row">
                @if(!empty($data['items']))
                    @foreach($data['items'] as $item)
                        <div class="col-xs-6 col-lg-4 book-home-item">
                            <div class="text-center">
                                <a href="{{ route( $data['items_link'], ['id' => $item->id] ) }}">
                                    <img style="max-width: 100%;max-height: 100%;" src="@myImg($item->img)" alt="{{ $item->name }}">
                                </a>
                            </div>
                            <div class="text-center">
                                <a href="{{ route( $data['items_link'], ['id' => $item->id] ) }}">
                                    <h4>{{ $item->name }} </h4>
                                </a>
                                @auth
                                    <a class="btn btn-sm btn-success" href="{{ route( 'admin.book.edit', ['id' => $item->id] ) }}">update</a>
                                    <a class="btn btn-sm btn-danger" href="javascript:void(0)" onclick="confirmdrop('{{ route('admin.book.destroy', ['id' => $item->id]) }}')">delete</a>
                                @endauth
                            </div>

                        </div>
                    @endforeach
                    @auth
                        <script>
                            function confirmdrop(link){
                                if(link){
                                    if(confirm("Delete item?")){
                                        let data = new FormData();
                                        data.append('_method', "DELETE");
                                        $.ajax({
                                            type:'post',
                                            url: link,
                                            data: data,
                                            contentType: false,
                                            processData: false,
                                            headers: {
                                                'X-CSRF-Token': '{{ csrf_token() }}'
                                            },
                                            statusCode: {
                                                419: function() {
                                                    c_notify('Need authorization!');
                                                    setTimeout( function(){
                                                        window.location.reload();
                                                    }, 1500);
                                                },
                                                500: function() {
                                                    c_notify('Server error');
                                                },
                                            },
                                            success: function (response) {
                                                // console.log( response );
                                                if(response.message){
                                                    c_notify(response.message);
                                                }
                                                if(response.status == 200){
                                                    setTimeout( function(){
                                                        window.location.reload();
                                                    }, 1500);
                                                }
                                            },
                                            error: function (response) {
                                                console.log(response);
                                            }
                                        });
                                    }
                                }
                            }
                            </script>
                    @endauth
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
