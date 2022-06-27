@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">My Posts</h1>
</div>

@if(session()->has('msg'))
<div class="alert alert-success" role="alert">
    {{ session('msg') }}
</div>

@endif
<div class="table-responsive col-lg-11">
    <a href="/dashboard/posts/create" class="btn btn-primary">Tambah</a>
    <table class="table table-striped table-sm">
        <thead>
            <tr>
                <th scope="col">No</th>
                <th scope="col">Title</th>
                <th scope="col">Category</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($posts as $post)
            <tr>
                <td>{{$loop->iteration}}</td>
                <td>{{$post->title}}</td>
                <td>{{$post->category->name}}</td>
                <td>
                    <a href="/dashboard/posts/{{$post->slug}}" class="btn btn-primary">Detail</a>
                    <a href="/dashboard/posts/{{$post->slug}}/edit" class="btn btn-warning">Edit</a>
                    <form action="/dashboard/posts/{{$post->slug}}" method="POST" class="d-inline">
                        @method('delete')
                        @csrf
                        <button class="btn btn-danger border-0" onclick="return confirm('Are you sure?')">Delete</button>
                    </form>
                </td>
                @endforeach
            </tr>
        </tbody>
    </table>
</div>
@endsection