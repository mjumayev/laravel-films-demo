<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Film;
use App\Comment;
use App\Genre;
use Illuminate\Support\Facades\Input;
use Intervention\Image\Facades\Image;

class FilmController extends Controller
{
     public function index()
    {
         $films =  Film::paginate(1);
            
        return view('films')->with('films', $films);

    }
 
    public function show($slug)
    {
        $film = Film::where('slug', $slug)->first(); //find($id);

        $comments = Comment::where('film_id', $film->id)->get();

        return view('film', compact('film', 'comments'));
    }

    public function create()
    {
        $genres =  Genre::all();
        return view('create')->with('genres', $genres);
    }


    public function createadd(Request $request){

        $photo = Image::make(Input::file('photo'));
        $filename_photo = uniqid().".".Input::file('photo')->clientExtension();
        $path_photo = 'images/films/' . $filename_photo;
        $photo->save($path_photo);

        $film = new Film;
        $film->name = $request->name;
        $film->description = $request->description;
        $film->release_date = $request->release_date;
        $film->rate = $request->rate;
        $film->price = $request->price;
        $film->country = $request->country;
        //$film->genre = $request->genre;
        $film->photo = $path_photo;
        $film->slug = str_slug($request->name);
        $film->save();

        //$genre = Genre::find([1, 3]);
        $film->genres()->attach($request->genre);

        if($film){
                $savemessage = 1;
                return redirect()->back()->with('savemessage', $savemessage);
        }
        else{
            return 0;
        }
    }

}
