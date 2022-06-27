@extends('layouts.main')

@section('container')
<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-md-8">
            <h2 class="mb-3">{{$post->title}}</h2>
            <p> By: <a href="/blog?author={{$post->author->username}}" class="text-decoration-none"> {{$post->author->name}}</a>
                <a>in category <a href="/blog?category={{ $post->category->slug }}">{{$post->category->name}} </a>
            </p>
            @if($post->image)
            <div style="max-height: 350px; overflow:hidden;">
                <img src="{{asset('storage/' . $post->image)}}" alt="Errors" class="img-fluid">
            </div>

            @else
            <img src="https://source.unsplash.com/random/1200x400?{{$post->category->name}}" alt="Errors" class="img-fluid">
            @endif

            <article class="my-3 fs-5">
                {!! $post->body !!}
            </article>
            <br><br>
            <a href="/blog" class="btn btn-primary">Back to posts</a>
        </div>
    </div>
</div>
@endsection