@extends('layouts.main')

@section('container')

<div class="row justify-content-center">
    <div class="col-md-5">
        <!-- Flash Alert -->
        @if(session()->has('msg'))
        <div class="alert alert-success" role="alert">
            {{ session('msg') }}
        </div>
        @endif
        <!-- endAflash alert -->
        <!-- Flash Alert -->
        @if(session()->has('loginError'))
        <div class="alert alert-success" role="alert">
            {{ session('loginError') }}
        </div>
        @endif
        <!-- endAflash alert -->
        <main class="form-signin w-100 m-auto">
            <h1 class="h3 mb-3 fw-normal text-center">Please Login</h1>
            <form action="/login" method="POST">
                @csrf

                <div class="form-floating">
                    <input type="email" name="email" class="form-control  @error('email') is-invalid  @enderror" id="email" placeholder=" name@example.com" value="{{ old('email')}}" autofocus required>
                    <label for="email">Email address</label>
                    @error('email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
                <div class=" form-floating">
                    <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
                    <label for="password">Password</label>
                </div>

                <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
            </form>
            <small class="c-block text-center">
                Not registered? <a href="/register">Register Now!</a>
            </small>
        </main>
    </div>
</div>

@endsection