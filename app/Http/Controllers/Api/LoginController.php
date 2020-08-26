<?php

namespace App\Http\Controllers\Api;

// use App\Providers\RouteServiceProvider;
// use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;

class LoginController extends Controller
{
    public function login (Request $request){
        $login = $request->validate([
            'email' => 'required|string',
            'password' => 'required|string|min:8|max:255',
        ]);

        if (!Auth::attempt($login)) {
            return response()->json(['message' => 'Invalid login credentials.']);
        }


        //THE IF STATEMENT SHOULD BE CORRECTED AFTER ADMIN DASHBOARD HAS BEEN CREATED
        if ((Auth::user()->connection_status == 'unconnected') || (Auth::user()->connection_status == 'pending')) {

            //TEMPORARY CODE TO CHANGE CONNECTION_STATUS AUTOMATICALLY
            $temp = User::find(Auth::user()->id);
            $temp->connection_status = 'unconnected';
            $temp->save();


            $userSex = Auth::user()->sex;
            if ($userSex == 'Male'){
                $searchResult = User::where('sex', 'Female')->get();
                $searchResult = $searchResult->random(3);
            } else {
                $searchResult = User::where('sex', 'Male')->get();
                $searchResult = $searchResult->random(3);
            }


            $accessToken = Auth::user()->createToken('authToken')->accessToken;
            return response()->json(['user' => Auth::user(), 'access_token' => $accessToken, 'mate_result' => $searchResult]);
        }



        $accessToken = Auth::user()->createToken('authToken')->accessToken;

        return response()->json(['user' => Auth::user(), 'access_token' => $accessToken]);
        // return response()->json(['user' => Auth::user(), 'access_token' => $accessToken, 'status' => 'unconnected']);
    }

    public function register (Request $request){
        $register = $request->validate([
            'firstName' => 'required|string',
            'lastName' => 'required|string',
            'email' => 'required|string',
            'password' => 'required|string',
            'sex' => 'required|string',
            'DOB' => 'required|string',
            'validID' => 'required|string',
            'wofbiCert' => 'required|string',
        ]);

        $newUser = new User();

        $newUser->name = $request['firstName'].$request['lastName'];
        $newUser->sex = $request['sex'];
        $newUser->DOB = $request['DOB'];
        $newUser->ID_Card = $request['validID'];
        $newUser->WOFBI_Cert = $request['wofbiCert'];
        $newUser->email = $request['email'];
        $newUser->password = Hash::make($request['password']);
        $newUser->save();

        $accessToken = Auth::user()->createToken('authToken')->accessToken;

        return response()->json(['user' => Auth::user(), 'access_token' => $accessToken, 'status' => 'unconnected']);
    }

    public function logout(Request $request)
    {
        // $this->guard()->logout();
        // $request->session()->invalidate();
        // $request->session()->regenerateToken();
        // return $this->loggedOut($request) ?: redirect('/');
    }
    
}
