@extends('layouts.main')

@section('container')

<h1>Ini halaman About</h1>
<h3>{{ $name}}</h3>
<p>{{ $email}}</p>
<img src="img/{{$image}}" alt="Error" width="100px" class="img-thumnail rounded-circle">

@endsection