<div class="col-md-7">

 <form action="{{ route('comment.store') }}" method="post" class="form-horizontal">
    
    {{ csrf_field() }}

    	<input type="hidden" name="film_id" value="{{ $film_id }}" />	

            <div class="card-header mt-5">
                <strong>New Comment</strong>
            </div>


            <div class="card-body card-block">

            @if(session()->has('savemessage'))
                <div class="alert alert-success" role="alert">
                     You successfully added comment.
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
                            <label for="textarea-input" class=" form-control-label">Comment</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <textarea name="description"  rows="9"  class="form-control"></textarea>
                        </div>
                    </div>
                    

               
            </div>
            <div class="card-footer clearfix">
                <button type="submit" class="btn btn-primary btn-sm float-right">
                    <i class="fa fa-dot-circle-o"></i> Comment
                </button>
            </div>
        </div>

         </form>

         </div>