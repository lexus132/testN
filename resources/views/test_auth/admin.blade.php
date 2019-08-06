@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="card-body">
                <h1> Hello <b>Admin:</b></h1>

                @myPrint(Auth::user()->toArray())

            </div>
        </div>
    </div>
@endsection
