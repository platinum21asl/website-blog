@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Posts</h1>
</div>

<form action="/dashboard/posts/{{$post->slug}}" method="POST" enctype="multipart/form-data">
    @method('put')
    @csrf
    <div class="mb-3">
        <label for="title" class="form-label">Title</label>
        <input type="text" class="form-control @error('title') is-invalid @enderror" id="title" name="title" value="{{ old('title', $post->title) }}">
        @error('title')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="slug" class="form-label"></label>
        <input type="hidden" class="form-control" id="slug" name="slug" disabled readonly value="{{ old('title', $post->slug) }}">
    </div>
    <div class="mb-3">
        <label for="cateogry" class="form-label">Category</label>
        <select class="form-select" name="category_id">
            @foreach($categories as $category)
            @if(old('category_id', $post->category_id) == $category->id)
            <option value="{{$category->id}}" selected>{{$category->name}}</option>
            @else
            <option value="{{$category->id}}">{{$category->name}}</option>
            @endif
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label for="image" class="form-label">Upload Image</label>
        @if($post->image)
        <input type="hidden" name="oldImage" value="{{$post->image}}">
        <img src="{{asset('storage/' . $post->image)}}" alt="" class="img-preview img-fluid mb-3 col-sm-5 d-block">
        @else
        <img src="" alt="" class="img-preview img-fluid mb-3 col-sm-5">
        @endif
        <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image" onchange="previewImage()">
        @error('image')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
        @enderror
    </div>
    <div class="mb-3">
        <label for="body" class="form-label">Body</label>
        @error('body')
        <p>
            {{ $message }}
        </p>
        @enderror
        <input id="body" type="hidden" name="body" value="{{old('body', $post->body)}}">
        <trix-editor input="body"></trix-editor>
    </div>
    <button type="submit" class="btn btn-primary">Update Post</button>
</form>

<script>
    const title = document.querySelector('#title');
    const slug = document.querySelector('#slug');

    title.addEventListener('change', function() {
        fetch('/dashboard/posts/checkSlug?title=' + title.value).then(response => response.json()).then(data => slug.value = data.slug)
    });

    document.addEventListener('trix-file-accept', function(e) {
        e.preventDefault();
    })


    function previewImage() {
        const image = document.querySelector('#image')
        const imgPreview = document.querySelector('.img-preview')

        imgPreview.style.display = 'block'

        const oFReader = new FileReader();
        oFReader.readAsDataURL(image.files[0]);

        oFReader.onload = function(oFREvent) {
            imgPreview.src = oFREvent.target.result;
        }
    }
</script>
@endsection