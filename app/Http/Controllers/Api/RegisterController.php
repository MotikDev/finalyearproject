<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class RegisterController extends Controller
{
    //
    public function register(Request $request){
        $register = $request->validate([
            'firstName' => 'required|string',
            'lastName' => 'required|string',
            'sex' => 'required|string',
            'dob' => 'required|string',
            'idCard' => 'required|image',
            'wofbiCert' => 'required|image',
            'profilePic' => 'required|image',
            'email' => 'required|string|unique:users',
            'password' => 'required|string|min:8|max:255',
        ]);

        $profilePicPath = $request->file('profilePic')->store('profile', 'public');
        $wofbiCertPath = $request->file('wofbiCert')->store('wofbi');
        $idCardPath = $request->file('idCard')->store('idCard');


        $newUser = new User();
        $newUser->name = $request['firstName'].' '.$request['lastName'];
        $newUser->email = $request['email'];
        $newUser->password = Hash::make($request['password']);
        $newUser->sex = $request['sex'];
        $newUser->DOB = $request['dob'];
        $newUser->ID_Card = $idCardPath;
        $newUser->WOFBI_Cert = $wofbiCertPath;
        $newUser->profile_Pic = $profilePicPath;
        $newUser->connection_status = 'pending';
        //I WILL NEED TO MODIFY MY TABLE TO SAVE THE PROFILE PICTURE PATH AND STATUS COLUMN
        $newUser->save();


        $login = ['email' => $request['email'], 'password' => $request['password']];

        if (!Auth::attempt($login)) {
            return response()->json(['message' => 'Unable to log you in at the moment. Please try again later.']);
        }

        $accessToken = Auth::user()->createToken('authToken')->accessToken;

        return response()->json(['user' => Auth::user(), 'access_token' => $accessToken, 'status' => 'pending']);
    }
}
