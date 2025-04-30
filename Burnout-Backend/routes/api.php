<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

Route::middleware('auth:sanctum')->get('/account', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:sanctum')->put('/account', function (Request $request) {
    $request->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|email|max:255|unique:users,email,' . $request->user()->id,
    ]);

    $user = $request->user();
    $user->update($request->only('name', 'email'));

    return response()->json(['message' => 'Profil frissítve.']);
});

Route::middleware('auth:sanctum')->delete('/account', function (Request $request) {
    $user = $request->user();
    $user->delete();
    return response()->json(['message' => 'Fiók törölve.']);
});

Route::post('/register', function (Request $request) {
    $request->validate([
        'email' => 'required|email|unique:users,email',
        'password' => 'required|min:6',
    ]);

    $user = User::create([
        'email' => $request->email,
        'password' => Hash::make($request->password),
    ]);

    auth()->login($user);
    return response()->json(['message' => 'Regisztráció sikeres.']);
});

Route::post('/login', function (Request $request) {
    $request->validate([
        'email' => 'required|email',
        'password' => 'required',
    ]);

    $user = User::where('email', $request->email)->first();

    if (!$user || !Hash::check($request->password, $user->password)) {
        throw ValidationException::withMessages([
            'email' => ['Hibás email vagy jelszó.'],
        ]);
    }

    auth()->login($user);
    return response()->json(['message' => 'Bejelentkezés sikeres.']);
});

Route::post('/logout', function (Request $request) {
    auth()->logout();
    return response()->json(['message' => 'Kijelentkezve.']);
});
Route::get('/cikkek', [App\Http\Controllers\CikkController::class, 'index']);
