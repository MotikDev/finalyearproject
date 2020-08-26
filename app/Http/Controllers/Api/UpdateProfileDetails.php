<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;

class UpdateProfileDetails extends Controller
{
    public function updateP(Request $request){

        if($request['userMaritalStatus']){
            $userMStat = User::find(Auth::user()->id);
            $userMStat->myMaritalStatus = $request['userMaritalStatus'];
            $userMStat->save();

            $current = User::find(Auth::user()->id)->myMaritalStatus;


        return response()->json(['Status' => $current]);
        }

        if($request['myQualification']){
            $userMStat = User::find(Auth::user()->id);
            $userMStat->myQualification = $request['myQualification'];
            $userMStat->save();

            $current = User::find(Auth::user()->id)->myQualification;

            return response()->json(['Cert' => $current]);
        }

        if($request['myEmploymentStatus']){
            $userMStat = User::find(Auth::user()->id);
            $userMStat->myEmploymentStatus = $request['myEmploymentStatus'];
            $userMStat->save();

            $current = User::find(Auth::user()->id)->myEmploymentStatus;
            return response()->json(['Job' => $current]);
        }

        if($request['myLocation']){
            $userMStat = User::find(Auth::user()->id);
            $userMStat->myLocation = $request['myLocation'];
            $userMStat->save();

            $current = User::find(Auth::user()->id)->myLocation;
            return response()->json(['Location' => $current]);
        }


        if($request['myStateOfOrigin']){

            $userMStat = User::find(Auth::user()->id);
            $userMStat->myStatOfOrigin = $request['myStateOfOrigin'];
            $userMStat->save();

            $current = User::find(Auth::user()->id)->myStatOfOrigin;
            return response()->json(['Origin' => $current]);
        }


        if($request['myGenotype']){
            $userMStat = User::find(Auth::user()->id);
            $userMStat->myGenotype = $request['myGenotype'];
            $userMStat->save();

            $current = User::find(Auth::user()->id)->myGenotype;
            return response()->json(['Genotype' => $current]);
        }




        if($request['spouseAge'] || $request['spouseAge'] || $request['spouseJobStatus'] || $request['spouseLocation'] || $request['spouseSOR'] || $request['spouseQualification'] ){
            // return response()->json(['user' => "current"]);

            $mate = User::find(Auth::user()->id);
            $request['spouseAge']? $mate->mateAge = $request['spouseAge'] : '';
            $request['spouseMaritalStatus']? $mate->mateMaritalStatus = $request['spouseMaritalStatus'] : '';
            $request['spouseJobStatus']? $mate->mateQualification = $request['spouseJobStatus'] : '';
            $request['spouseLocation']? $mate->mateEmploymentStatus = $request['spouseLocation'] : '';
            $request['spouseSOR']? $mate->mateLocation = $request['spouseSOR'] : '';
            $request['spouseQualification']? $mate->mateStatOfOrigin = $request['spouseQualification'] : '';
            $mate->save();

            $mateDetails = User::find(Auth::user()->id);
            $mateDetailsReturned = [$mateDetails->mateAge, $mateDetails->mateMaritalStatus, $mateDetails->mateQualification, $mateDetails->mateEmploymentStatus, $mateDetails->mateLocation, $mateDetails->mateStatOfOrigin];

            return response()->json(['mate' => $mateDetailsReturned]);
        }




        // if($request['']){
        //     $userMStat = User::find(Auth::user()->id);
        //     $userMStat-> = $request[''];
        //     $userMStat->save();

        //     $current = User::find(Auth::user()->id)->;


        // return response()->json(['user' => $current]);
        // }

        // if($request['']){
        //     $userMStat = User::find(Auth::user()->id);
        //     $userMStat-> = $request[''];
        //     $userMStat->save();

        //     $current = User::find(Auth::user()->id)->;


        // return response()->json(['user' => $current]);
        // }

        // if($request['']){
        //     $userMStat = User::find(Auth::user()->id);
        //     $userMStat-> = $request[''];
        //     $userMStat->save();

        //     $current = User::find(Auth::user()->id)->;


        // return response()->json(['user' => $current]);
        // }

        // if($request['']){
        //     $userMStat = User::find(Auth::user()->id);
        //     $userMStat-> = $request[''];
        //     $userMStat->save();

        //     $current = User::find(Auth::user()->id)->;


        // return response()->json(['user' => $current]);
        // }

        // if($request['']){
        //     $userMStat = User::find(Auth::user()->id);
        //     $userMStat-> = $request[''];
        //     $userMStat->save();

        //     $current = User::find(Auth::user()->id)->;


        // return response()->json(['user' => $current]);
        // }

        // if($request['']){
        //     $userMStat = User::find(Auth::user()->id);
        //     $userMStat-> = $request[''];
        //     $userMStat->save();

        //     $current = User::find(Auth::user()->id)->;


        // return response()->json(['user' => $current]);
        // }



    }
}
