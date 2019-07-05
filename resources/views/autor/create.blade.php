@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="card-body">
            <form id="create_form" class="form-control">
                @if(!empty($data['item']) and !empty($data['item']->id))
                    {{method_field('PUT')}}
                @endif
                <div class="form-group">
                    <label for="exampleInputEmail1">Имя</label>
                    <input type="text" class="form-control" name="f_name"
                    @if(!empty($data['item']) and !empty($data['item']->f_name))
                        value="<?php echo (!empty($data['item']->f_name))? trim($data['item']->f_name) : '' ?>"
                    @endif
                           required>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Фамилия</label>
                    <input type="text" class="form-control" name="l_name"
                       @if(!empty($data['item']) and !empty($data['item']->l_name))
                            value="<?php echo (!empty($data['item']->l_name))? trim($data['item']->l_name) : '' ?>"
                       @endif
                           required>
                </div>
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
            $("div.error-message").remove();
            $.ajax({
                type:'post',
                @if(!empty($data['item']) and !empty($data['item']->id))
                    url: '{{ route('admin.autor.update', ['id' => $data['item']->id]) }}',
                @else
                    url: '{{ route('admin.autor.store') }}',
                @endif
                data: $(forma).serialize(),
                headers: {
                    'X-CSRF-Token': '{{ csrf_token() }}'
                },
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
                            if($(forma).find("input[name=" + i + "]")){
                                $(forma).find("input[name=" + i + "]").after('<div class="error-message"><span>'+ response.errors[i] +'</span></div>');
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
