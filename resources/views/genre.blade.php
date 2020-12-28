@extends('layouts.layout')
@section('title', 'Beefilix')
@push('styles')
<link rel="stylesheet" href="{{ asset('main.css') }}">
@endpush

@push('scripts')
<script src="{{ asset('main.js') }}"></script>
    
@endpush

@section('content')
<div class="kotakBackground2">
{{-- @if('{{$movie->genre_id}}==1') --}}
<div class="container">
    <div class="row">
        @foreach ($movies as $movie)
        
        <div class="col-3">
            <div class="spasi">
                <div class="card" style="width: 13rem;">
                <img class="card-img-top" src="/{{$movie->photo}}" alt="Card image cap">
                  <div class="card-body">
                    <p class="card-text">{{$movie->title}}</p>
                    <p class="card-text">{{substr($movie->description,0,30)."..."}}</p>
                    <button type="button" onclick="window.location.href='/moviedetail/{{$movie->id}}'" class="btn btn-secondary btn-lg btn-block">View</button>
                  </div>
                </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
{{-- @endif --}}

@endsection
