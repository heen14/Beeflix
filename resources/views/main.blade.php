@extends('layouts.layout')
@section('title', 'Beefilix')
@push('styles')
<link rel="stylesheet" href="{{ asset('style.css') }}">
@endpush

@push('scripts')
<script src="{{ asset('main.js') }}"></script>
    
@endpush

@section('content')
<div class="kotakBackground">
    {{-- <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="{{url('/photo/digimonadv.jpg')}}" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div> --}}

      {{-- <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="{{ url('/list/drama') }}">Drama</a></nav> --}}
        <div class="kotakSection">
          <div class="textstyle" >DRAMA </div>
    
        <div class="container">
            <div class="row">
                @foreach ($moviesDrama as $movieDrama)
                <div class="col-3">
                    <div class="spasi">
                        <div class="card" style="width: 13rem;">
                        <img class="card-img-top" src="{{$movieDrama->photo}}" alt="Card image cap">
                          <div class="card-body">
                            <p class="card-text">{{$movieDrama->title}}</p>
                            <p class="card-text">{{substr($movieDrama->description,0,30)."..."}}</p>
                            <button type="button" onclick="window.location.href='/moviedetail/{{$movieDrama->id}}'" class="btn btn-secondary btn-lg btn-block">View</button>
                          </div>
                        </div>
                        </div>
                </div>
                @endforeach
            </div>
        </div>
        
        <div class="kotakSection">
            <div class="textstyle" >KIDS </div>
           
        </div>
        {{-- <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="{{ url('/list/kids') }}">Kids</a></nav> --}}
    
        <div class="container">
            <div class="row">
                @foreach ($moviesKids as $movieKids)
                <div class="col-3">
                    <div class="spasi">
                        <div class="card" style="width: 13rem;">
                        <img class="card-img-top" src="{{$movieKids->photo}}" alt="Card image cap">
                          <div class="card-body">
                            <p class="card-text">{{$movieKids->title}}</p>
                            
                            <p class="card-text">{{substr($movieKids->description,0,30)."..."}}</p>
                            <button type="button" onclick="window.location.href='/moviedetail/{{$movieKids->id}}'" class="btn btn-secondary btn-lg btn-block">View</button>
                           
                          </div>
                        </div>
                        </div>
                </div>
                @endforeach
            </div>
        </div> 

        <div class="kotakSection">
            <div class="textstyle">TV SHOWS
            </div>
        </div>
        {{-- <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="{{ url('/list/tvshow') }}">TV Show</a></nav> --}}
        <div class="container">
            <div class="row">
                @foreach ($moviesTVShow as $movieTVShow)
                <div class="col-3">
                    <div class="spasi">
                        <div class="card" style="width: 13rem;">
                        <img class="card-img-top" src="{{$movieTVShow->photo}}" alt="Card image cap">
                          <div class="card-body">
                            <p class="card-text">{{$movieTVShow->title}}</p>
                            
                            <p class="card-text">{{substr($movieTVShow->description,0,30)."..."}}</p>
                            <button type="button" onclick="window.location.href='/moviedetail/{{$movieTVShow->id}}'" class="btn btn-secondary btn-lg btn-block">View</button>
                          </div>
                        </div>
                        </div>
                </div>
                @endforeach
            </div>
        </div> 

    
    </div>
  


      {{-- <div class="item">{{ $movie->title }}</div>
      
          
        
      
      

      

    
</div>



{{-- {{ $genredd }} --}}

@endsection
