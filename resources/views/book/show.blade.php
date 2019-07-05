@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="card-body">
            <div class="row">
                <diw class="col-sm-4">
                    @if(!empty($data['book']->img))
                        <img style="max-width: 100%;max-height: 100%;" src="@myImg($data['book']->img)" alt="{{ $data['book']->name }}">
                    @else
                        <img src="{{ asset('/img/no_images.jpeg') }}">
                    @endif
                </diw>
                <diw class="col-sm-8">
                    <div class="row">
                        <div class="col-sm-10">
                            <h1>{{ $data['book']->name }}</h1>
                        </div>
                        @auth
                            <div class="col-sm-2">
                                <a class="btn btn-md btn-success" href="{{ route( 'admin.book.edit', ['id' => $data['book']->id] ) }}">update</a>
                                <a class="btn btn-md btn-danger" href="javascript:void(0)" onclick="confirmdrop('{{ route('admin.book.destroy', ['id' => $data['book']->id]) }}')">delete</a>
                            </div>
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
                    </div>
                    @if(!empty($data['autors']) and count($data['autors']) > 0)
                        <hr style="clear: both">
                        <div class="row">
                            <div class="col-sm-4">
                                <h3>Авторы:</h3>
                            </div>
                            <div class="col-sm-8">
                                <ul class="list-group">
                                    @foreach($data['autors'] as $item)
                                        <li class="list-group-item d-flex justify-content-between align-items-center">
                                            <a href="{{ route( 'autor.show', ['id' => $item->id] ) }}">
                                                {{ $item->name }}
                                            </a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    @endif
                    @if(!empty($data['headings']) and count($data['headings']) > 0)
                        <hr>
                        <div class="row">
                            <diw class="col-sm-4">
                                <h3>Рубрики:</h3>
                            </diw>
                            <diw class="col-sm-8">
                                <ul class="list-group">
                                    @foreach($data['headings'] as $item)
                                        <li class="list-group-item d-flex justify-content-between align-items-center">
                                            <a href="{{ route( 'heading.show', ['id' => $item->id] ) }}">
                                                {{ $item->name }}
                                            </a>
                                        </li>
                                    @endforeach
                                </ul>
                            </diw>
                        </div>
                    @endif
                </diw>
            </div>
        </div>
    </div>
</div>
@endsection
