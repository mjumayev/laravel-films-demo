<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Genre;

class Film extends Model
{
     protected $fillable = ['name', 'description', 'release_date', 'rate', 'price', 'country', 'genre', 'photo', 'slug'];

     public function genres()
    {
        return $this->belongsToMany(Genre::class, 'film_genre');
    }
}
