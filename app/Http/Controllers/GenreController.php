<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Movie;
use App\Episode;

class GenreController extends Controller
{
    public function index(){
        $movieDrama = Movie::where("genre_id", 1)->get();
        $movieKids = Movie::where("genre_id", 2)->get();
        $movieTVShow = Movie::where("genre_id", 3)->get();
        
        return view('main', ['moviesDrama' => $movieDrama,
        'moviesKids' => $movieKids,
        'moviesTVShow' => $movieTVShow
        ]);
    }

    public function displayDramaGenre(){
        $movieDrama = Movie::where("genre_id",1)->get();
        return view('genre',[
            'movies' => $movieDrama,
            'genre' => 'Drama'
        ]);
    }
    public function displayKidsGenre(){
        $movieKids = Movie::where("genre_id",2)->get();
        return view('genre',[
            'movies' => $movieKids,
            'genre' => 'Drama'
        ]);
    }
    public function displayTVGenre(){
        $movieTV = Movie::where("genre_id",3)->get();
        return view('genre',[
            'movies' => $movieTV,
            'genre' => 'Drama'
        ]);
    }
    public function show($id){
        $movies = Movie::where('id',$id)->first();
        $episode = Episode::where('movie_id',$id)->paginate(3);
        return view('moviedetail',[
        'movies' => $movies,
        'episode'=> $episode,
        ]);
}
}

