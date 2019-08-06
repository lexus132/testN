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
                                    @if(!empty($item->img))
                                        <img style="max-width: 10%;max-height: 10%;" src="@myImg($item->img)" alt="{{ $item->name }}">
                                    @endif
                                    <a href="{{ route( $data['items_link'], ['id' => $item->id] ) }}">
                                        {{ $item->name }}
                                    </a>
                                    <span class="badge badge-primary badge-pill">{{ $item->countB }}</span>
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
