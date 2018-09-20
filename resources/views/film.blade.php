@extends('main')

@section('title', 'Articles')


@section('content')
        
<div class="section__content section__content--p30">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">


                
                
                        <h2>{{$film->name}}</h2>
                       
                       <div class="m-3">
                        <h4>Genre: </h4>
                        <ul>
                            @foreach($film->genres as $genre)
                             <li>{{ $genre->name }}</li>
                            @endforeach
                        </ul> 
                        </div>

                        <p><strong>Description:</strong> {{$film->description}}</p>


                        @guest

                            <br><br><br><br>

                          <a href="/login" class="btn btn-info"> You need to login to comment >></a>

                        

                        @else

                        </div>
                        
                          @includeIf('comments.form', ['film_id' => $film->id])
                        
                        @endguest

                 
            </div>

           <!--   @foreach($comments as $comment)
    
                <h3 class="mb-3">{{$comment->name}}</h3>
                <div class="jumbotron">
                {{$comment->description}}
                </div>

             @endforeach -->


            @includeIf('comments.index', ['comments' => $comments])


            </div>
            </div>
    </div>

   

@endsection

