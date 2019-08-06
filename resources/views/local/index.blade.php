@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                {{--<div class="card-header">Dashboard</div>--}}

                <div class="card-body">
                    {{--@if (session('status'))--}}
                        {{--<div class="alert alert-success" role="alert">--}}
                            {{--{{ session('status') }}--}}
                        {{--</div>--}}
                    {{--@endif--}}
                    @if(!empty($data['items']))
                        <ul class="list-group">
                            @foreach($data['items'] as $item)
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    {{ $item->name }}
                                    <span class="mytooltip tooltip-effect-1" data-placement="left">
                                        <span class="tooltip-item">Map</span>
                                        <span class="tooltip-content clearfix">
                                            <img style="min-width: 500px; min-height: 400px;" src="https://static-maps.yandex.ru/1.x/?lang=en-US&ll={{ $item->longitude }},{{ $item->latitude }}&z=11&pt={{ $item->longitude }},{{ $item->latitude }}&l=map&size=500,400">
                                        </span>
                                    </span>
                                </li>
                            @endforeach
                        </ul>

                        {{ $data['items']->links() }}
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
