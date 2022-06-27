 @extends('layouts.main')

 @section('container')
 <h1 class="mb-3 text-center">{{ $title }}</h1>

 <div class="row justify-content-center mb-3">
     <div class="col-md-6">
         <form action="/blog">
             @if(request('category'))
             <input type="hidden" name="category" value="{{ request('category' )}}">
             @endif
             @if(request('author'))
             <input type="hidden" name="author" value="{{ request('author')}}">
             @endif
             <div class="input-group mb-3">
                 <input type="text" class="form-control" placeholder="Search..." aria-label="Recipient's username" aria-describedby="button-addon2" name="search" value="{{ request('search')}}">
                 <button class="btn btn-danger" type="submit">Search</button>
             </div>
         </form>
     </div>
 </div>

 @if($posts->count())
 <div class="card mb-3">
     @if($posts[0]->image)
     <div style="max-height: 350px; overflow:hidden;">
         <img src="{{asset('storage/' . $posts[0]->image)}}" alt="Errors" class="img-fluid">
     </div>

     @else
     <img src="https://source.unsplash.com/random/1200x400?{{$posts[0]->category->name}}" class="card-img-top" alt="Errors">
     @endif

     <div class="card-body text-center">
         <a href="/post/{{ $posts[0]->slug}}" class="text-decoration-none text-dark">
             <h3 class="card-title">{{$posts[0]->title}}</h3>
         </a>
         <small>
             <p> By: <a href="/blog?author={{$posts[0]->author->username}}" class="text-decoration-none">{{$posts[0]->author->name}}</a> in category <a href="/blog?category={{ $posts[0]->category->slug }}">{{ $posts[0]->category->name }} </a> {{ $posts[0]->created_at->diffForHumans() }}
             </p>
         </small>
         <p class="card-text">{{$posts[0]->excerpt}}</p>
         <a href="/post/{{ $posts[0]->slug}}" class="btn btn-success">Read more..</a>
     </div>
 </div>

 <div class="container">
     <div class="row">
         @foreach($posts->skip(1) as $post)
         <div class="col-md-4 mb-3">
             <div class="card">
                 <div class="position-absolute bg-dark px-3 py-2 text-white" style=" background-color: rgba(0,0,0,0.7)"><a href="/blog?category={{ $post->category->slug}}" class="text-white text-decoration-none">
                         {{$post->category->name}}
                     </a>
                 </div>
                 @if($post->image)
                 <img src="{{asset('storage/' . $post->image)}}" alt="Errors" class="img-fluid">

                 @else
                 <img src="https://source.unsplash.com/random/500x400?{{$post->category->name}}" class="card-img-top" alt="Error">

                 @endif
                 <div class="card-body">
                     <h5 class="card-title">{{$post->title}}</h5>
                     <p>
                         <small class="text-muted">
                             By: <a href="/blog?author={{$post->author->username}}" class="text-decoration-none">{{$post->author->name}}</a> {{ $posts[0]->created_at->diffForHumans() }}
                         </small>
                     </p>
                     <p class="card-text">{{$post->excerpt}}</p>
                     <a href="/post/{{ $post->slug}}" class="btn btn-primary">Read more</a>
                 </div>
             </div>
         </div>
         @endforeach
     </div>
 </div>

 @else
 <p class="text-center fs--4">No post found. </p>
 @endif
 <div class="d-flex justify-content-center">
     {{ $posts->links() }}
 </div>
 @endsection