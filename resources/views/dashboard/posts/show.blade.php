@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row justify-content-center my-3">
        <div class="col-lg-8">
            <h1 class="mb-3">{{$post->title}}</h1>
            <a href="/dashboard/posts" class="btn btn-success">Back to my posts</a>
            <a href="/dashboard/posts/{{$post->slug}}/edit" class="btn btn-warning">Edit my posts</a>
            <form action="/dashboard/posts/{{$post->slug}}" method="POST" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-danger border-0" onclick="return confirm('Are you sure?')">Delete</button>
            </form>
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
            <!-- <a href="/blog" class="btn btn-primary">Back to posts</a> -->
        </div>
    </div>
</div>
@endsection