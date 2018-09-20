@extends('main')

@section('title', 'Articles')


@section('content')

<div class="section__content section__content--p30">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive table-responsive-data2 ">

                
                <table class="table table-data2">
                    <thead>
                        <tr>
                            <th></th>
                            <th>Name</th>
                            <th>Year</th>
                            <th>Price</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($films as $film)
                        <tr class="tr-shadow">
                            <td>
                                <img src=" {{$film->photo}}">
                            </td>
                            <td>
                                <a href="films/film-{{$film->slug}}">
                                    {{$film->name}}
                                </a>
                            </td>
                            <td>
                               {{$film->release_date}}
                            </td>                            
                            <td>
                               {{$film->price}}
                            </td>
                            <td>
                              {{$film->description}}
                            </td>
                           
                        </tr>
                        @endforeach
                    </tbody>
                </table>

                <br>

                {{ $films->links() }}

            </div>
            </div>
            </div>
            </div>
    </div>

   

@endsection

