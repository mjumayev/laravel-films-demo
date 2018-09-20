<div class="col-lg-6 mt-5 pb-5">

	<h3 class="mb-3">Comments</h3>

 @foreach($comments as $comment)
	
	<h4 class="mb-3">{{$comment->name}}</h4>
	<div class="jumbotron p-2">
	{{$comment->description}}
	</div>

 @endforeach

</div>