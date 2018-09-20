@extends('main')

@section('title', 'Articles')


@section('content')
        
<div class="section__content section__content--p30">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">

                <div class="card">
                        <form action="{{route('create.add')}}" method="post" enctype="multipart/form-data" class="form-horizontal">
                            {{ csrf_field() }}
                                    <div class="card-header">
                                        <strong>New Film</strong>
                                    </div>


                                    <div class="card-body card-block">

                                    @if(session()->has('savemessage'))
                                        <div class="alert alert-success" role="alert">
                                             You successfully added film.
                                        </div>
                                    @endif

                                        
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">Name</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" name="name" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="textarea-input" class=" form-control-label">Description</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <textarea name="description"  rows="9"  class="form-control"></textarea>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">Release date</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" name="release_date" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">Rate</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <select name="rate" id="select" class="form-control">
                                                        <option value="0">Please select</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">Price</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" name="price" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">Country</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" name="country" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">Genre</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                      @foreach($genres as $genre)

                                                       <div class="checkbox">
                                                            <label for="checkbox{{ $genre->id }}" class="form-check-label ">
                                                                <input id="checkbox{{ $genre->id }}" name="genre[]" value="{{ $genre->id }}" class="form-check-input" type="checkbox"> {{ $genre->name }}
                                                            </label>
                                                        </div>  
                                                     
                                                         
                                                      @endforeach



                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">Photo</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="file" name="photo" class="form-control" accept="image/x-png,image/gif,image/jpeg" required>
                                                </div>
                                            </div>



                                       
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-primary btn-sm float-right">
                                            <i class="fa fa-dot-circle-o"></i> Submit
                                        </button>
                                    </div>
                                </div>

                                 </form>
                    
            </div>
            </div>
            </div>
    </div>

   

@endsection

