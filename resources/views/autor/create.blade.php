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
                complete: function (response) {
                    if(response && response.responseText && IsJsonString(response.responseText)){
                        let resp_data = JSON.parse(response.responseText);

                        if(resp_data.message){
                            c_notify(resp_data.message);
                        }
                        if(resp_data.status == 200) {
                            setTimeout(function () {
                                window.location.href = resp_data.link;
                            }, 2500);
                        } else if(resp_data.errors){
                            for(var i in resp_data.errors){
                                if($(forma).find("input[name=" + i + "]")){
                                    $(forma).find("input[name=" + i + "]").after('<div class="error-message"><span>'+ resp_data.errors[i] +'</span></div>');
                                }
                            }
                        }
                    }

                }
            });
        });
    });
    function IsJsonString(str) {
        try {
            JSON.parse(str);
        } catch (e) {
            return false;
        }
        return true;
    }
</script>
@endsection
