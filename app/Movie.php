<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    public function episode(){
        return $this->hasMany(episode::class,'movie_id','id');
    }
    public function genre(){
        return $this->belongsTo(genre::class);
    }
}
