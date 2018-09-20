<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Film;

class Genre extends Model
{
    
    protected $fillable = ['name'];

    public function films()
    {
        return $this->belongsToMany(Film::class, 'film_genre');
    }
}
