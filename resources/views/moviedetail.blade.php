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

<div class="container">
    <div class="row">
        
            <div class="flex">
            <div class="spasi">
                <img width="400px" height="600px"src="/{{$movies->photo}}" alt="Card image cap">
            </div>
            <div class="tulisanDetail">
            <p class="card-text">{{$movies->title}}</p>
            <p>{{$movies->description}}</p>
            <p>Rating: {{$movies->rating}}</p>
            <table class="table">
                @foreach ($episode as $episodes)
                    <tr>
                        <td>
                            {{$episodes->episode}}
                            
                        </td>
                        <td>
                            {{$episodes->title}}
                        </td>
                        
                    </tr>
                    
                @endforeach

                
            
            </table>
            
                {{$episode->links()}}
            
            
            </div>
            
        
    </div>
</div>
</div>


@endsection
