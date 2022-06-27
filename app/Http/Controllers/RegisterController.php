<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register.index', [
            'title' => 'Register',
            'active' => 'register'
        ]);
    }

    public function store(Request $request)
    {

        $validated = $request->validate([
            'name' => 'required|max:255',
            'username' => ['required', 'min:3', 'max:255', 'unique:users'],
            'email' => 'required|unique:users|email:dns',
            'password' => 'required|min:5|max:255'
        ]);

        // $validated['password'] = bcrypt($validated['password']);
        $validated['password'] = Hash::make($validated['password']);

        User::create($validated);
        // return $request->all();

        // $request->session()->flash('msg', 'Registration Successfull!!');
        return redirect('/login')->with('msg', 'Registration Successfull!!');
    }
}
