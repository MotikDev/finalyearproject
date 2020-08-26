<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Request as modelRequest;
use Carbon\Carbon;

class OppositeController extends Controller
{
    public function checkSearchProfile(Request $request)
    {
        $check = $request->validate([
            'result' => 'required|integer',
        ]);

        $user = User::find($request['result']);

        //CHECK IF A REQUEST HAS BEEN SENT TO THIS USER
        // $check = modelRequest::where('connectionSender', $request['result'])->where('connectionReceiver', $request['result']);
        $check = modelRequest::where('connectionSender', Auth::user()->id)->where('connectionReceiver', $request['result'])->where('created_at', '>', Carbon::now()->subDays(7))->count();

        // echo $check;
        return response()->json(['result' => $user, 'count' => $check]);
    }


    public function requestSetter(Request $request)
    {
        $request->validate([
            'profileId' => 'required|integer',
        ]);
        $sender = Auth::user();
        $receiverId = $request['profileId'];

        $aRequest = new modelRequest();
        $aRequest->connectionReceiver = $receiverId;
        $aRequest->connectionSender = $sender->id;
        $aRequest->senderName = $sender->name;
        $aRequest->senderMarital = $sender->myMaritalStatus;
        $aRequest->senderJob = $sender->myEmploymentStatus;
        $aRequest->senderEdu = $sender->myQualification;
        $aRequest->senderLocation = $sender->myLocation;
        $aRequest->senderPic = $sender->profile_Pic;
        $aRequest->save();

        return response()->json(['success' => 'Request was successful.']);
    }
    
    public function requestsGetter()
    {
        $receiverId = Auth::user()->id;
        //USE count() TO DETERMINE IF THE USER HAS A REQUEST OR NOT
        $counted = modelRequest::where('connectionReceiver', $receiverId)->where('created_at', '>', Carbon::now()->subDays(7))->count();
        $theRequests = modelRequest::where('connectionReceiver', $receiverId)->where('created_at', '>', Carbon::now()->subDays(7))->orderBy('created_at', 'desc')->get();

        //CREATE DAYS REMAINING FOR REQUEST TO EXPIRE
        foreach ($theRequests as $theRequest) {
            $now = new Carbon();
            $day = new Carbon($theRequest->created_at);
            $days = $day->addDays(7)->subDays($now->day)->day;
            $theRequest->remaindays = $days;
        }        

        // //ALL DATABASE RESULTS ARE ARRAYS
        // $senderIds = [];
        // foreach ($theRequests as $key => $value) {
        //     $senderIds[] = $value->connectionSender;
        // }
        // $allUsers = [];
        // foreach ($senderIds as $key => $value) {
        //     $allUsers[] = User::find($value);
        // }

        return response()->json(['counted' => $counted, 'requests' => $theRequests]);
    }


    public function rejectedRequest(Request $request)
    {
        $check = $request->validate([
            'rejectRequest' => 'required|integer',
        ]);

        $rejecterId = Auth::user()->id;
        $senderId = $request['rejectRequest'];
        $lastestRequest = modelRequest::where('connectionReceiver', $rejecterId)->where('connectionSender', $senderId)->latest('created_at')->first();

        modelRequest::destroy($lastestRequest->id);
        $default = User::find($senderId);

        return response()->json(['default' => $default]);
    }


    
    public function moreDetails(Request $request){
        $check = $request->validate([
            'profileId' => 'required|integer',
            ]);
            
            $profileDetails = User::find($request['profileId']);
            
            return response()->json(['Profile' => $profileDetails]);
        }
        

        public function connectUsers(Request $request)
        {
            $check = $request->validate([
                'connectMe' => 'required|integer',
            ]);

            Auth::user()->connection_status = 'connected';
            Auth::user()->connection_id = $request['connectMe'];

            $secondUser = User::find($request['connectMe']);
            $secondUser->connection_id = Auth::user()->id;
            $secondUser->connection_status = 'connected';
            $secondUser->save();

            // echo Auth::user()->connection_status. ' ' .Auth::user()->connection_id. ' ' .$secondUser->connection_status. ' ' .$secondUser->connection_id;
            return response()->json(['status' => Auth::user()->connection_status, 'mateId' => $request['connectMe']]);
        }




}
