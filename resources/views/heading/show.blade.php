@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="card-body">
            @if(!empty($data['item']) and !empty($data['item']->name) )
                <div class="jumbotron row">
                    <div class="col-sm-10">
                        <h1>{{ $data['item']->name }}</h1>
                    </div>
                    @auth
                        <div class="col-sm-2">
                            <a class="btn btn-lg btn-success" href="{{ route( 'admin.heading.edit', ['id' => $data['item']->id] ) }}">update</a>
                            <a class="btn btn-lg btn-danger" href="javascript:void(0)" onclick="confirmdrop('{{ route('admin.heading.destroy', ['id' => $data['item']->id]) }}')">delete</a>
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
            @endif

            <hr>
            <div class="row">
                @if(!empty($data['books']) and $data['books']->count() > 0)
                    @foreach($data['books'] as $item)
                        <div class="col-xs-6 col-lg-4 book-home-item">
                            <a href="{{ route( 'book.show', ['id' => $item->id] ) }}">
                                <img style="max-width: 100%;max-height: 100%;" src="@myImg($item->img)" alt="{{ $item->name }}">
                            </a>
                            <a href="{{ route( 'book.show', ['id' => $item->id] ) }}">
                                <h4 class="text-center">{{ $item->name }}</h4>
                            </a>
                        </div>
                    @endforeach
                @else
                    <h4>
                        В данный момент в этой рубрике нет книг.
                    </h4>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
