@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="card-body">
            <form id="create_form" class="form-control" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="exampleInputEmail1">Название книги</label>
                    <input type="text" class="form-control" name="name" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Изображение</label>
                    <input type="file" class="form-control" name="img" required>
                </div>
                @if(!empty($data['autors']))
                    <hr>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Авторы</label>
                        <div class="row">
                            @foreach($data['autors'] as $autor)
                                <div class="col-sm-4">
                                    <input type="checkbox" name="autors[{{ $autor->id }}]">
                                    <label for="scales">{{ $autor->name }}</label>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endif

                @if(!empty($data['headings']))
                    <hr>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Рубрики</label>
                        <div class="row">
                            @foreach($data['headings'] as $heading)
                                <div class="col-sm-4">
                                    <input type="checkbox" name="headings[{{ $heading->id }}]">
                                    <label for="scales">{{ $heading->name }}</label>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endif



                <div class="form-group">
                    <input type="submit" class="btn btn-sm btn-success" value="Save"/>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    $(function(){
        $("#create_form").on('submit', function(e){
            e.preventDefault();
            let forma = $(this);
            let data = new FormData();
            $("#create_form input").each(function(){
                let temp_name = $(this).attr('name');
                if(temp_name && temp_name == 'name'){
                    data.append('name', $(this).val());
                } else if(temp_name && temp_name == 'img'){
                    data.append('img', $(this).prop('files')[0]);
                } else if( temp_name && (temp_name.indexOf('autor') >= 0 || temp_name.indexOf('heading') >= 0 ) && $(this).prop('checked')){
                    data.append(temp_name, true);
                }
            });
            $("div.error-message").remove();
            $.ajax({
                type:'post',
                url: '{{ route('admin.book.store') }}',
                data: data,
                contentType: false,
                processData: false,
                headers: {
                    'X-CSRF-Token': '{{ csrf_token() }}'
                },
                beforeSend: function(){},
                statusCode: {
                    419: function() {
                        c_notify('Need authorization!');
                        setTimeout( function(){
                            window.location.reload();
                        }, 2500);
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
                            window.location.href= response.link;
                        }, 2500);
                    } else {
                        for(var i in response.errors){
                            if($(forma).find('input[name^="' + i + '"]')){
                                $(forma).find('input[name^="' + i + '"]').after('<div class="error-message"><span>'+ response.errors[i] +'</span></div>');
                            }
                        }
                    }
                },
                error: function (response) {
                    console.log(response);
                }
            });
        });
    });
</script>
@endsection
