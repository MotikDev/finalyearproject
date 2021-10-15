<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Chat;
use App\Request as modelRequest;
use Carbon\Carbon;
use App\Events\Chatting;

class OppositeController extends Controller
{
    public function attachedStyle(Request $request){
        $check = $request->validate([
            'answers' => 'required',
        ]);

        $test = json_decode($request['answers']);

        $secure = [];
        $avoidant = [];
        $anxious = [];
        $fearful = [];
        for ($i=1; $i < 35; $i++) { 
            if ($i == 7 || $i == 8 || $i == 10 || $i == 12 || $i == 15 || $i == 21 || $i == 33 || $i == 34 || $i == 35) {
                if($test[$i] == 'Yes'){
                    $secure[] = $test[$i];
                }
               } else if ($i == 2 || $i == 6 || $i == 14 || $i == 20 || $i == 25 || $i == 26 || $i == 28 || $i == 29 || $i == 30 || $i == 31) {
               if($test[$i] == 'Yes'){
                    $avoidant[] = $test[$i];
                }
               } else if ($i == 1 || $i == 9 || $i == 13 || $i == 17 || $i == 22 || $i == 24 || $i == 27 || $i == 32){
                    if($test[$i] == 'Yes'){
                        $anxious[] = $test[$i];
                    }
               } else if ($i == 3 || $i == 4 || $i == 5 || $i == 11 || $i == 16 || $i == 18 || $i == 19 || $i == 23){
                    if($test[$i] == 'Yes'){
                        $fearful[] = $test[$i];
                    }
            }
        }
        
        $secureCount = count($secure);
        $avoidantCount = count($avoidant);
        $anxiousCount = count($anxious);
        $fearfulCount = count($fearful);
        
        $securePercent = ($secureCount/9)*100;
        $avoidantPercent = ($avoidantCount/10)*100;
        $anxiousPercent = ($anxiousCount/8)*100;
        $fearfulPercent = ($fearfulCount/8)*100;
        
        $userStyle;
        if($securePercent < $avoidantPercent){
            $userStyle = 'avoidant';//$avoidantCount;
        } else if ($avoidantPercent < $anxiousPercent){
            $userStyle = 'anxious'; //$anxiousPercent;
        } else if ($anxiousPercent < $fearfulPercent) {
            $userStyle = 'fearful'; //$fearfulPercent;
        } else {
            $userStyle = 'secure'; //$securePercent;
        }

        $userId = Auth::user()->id;
        $update = User::find($userId);
        $update->attachment_style = $userStyle;
        $update->save();
        
        $user = User::find($userId);

        return response()->json(['result' => $user]);
        // return response()->json(['result' => 'I got inside attachedStyle', 'Secure' => $securePercent, 'Avoidant' => $avoidantPercent, 'Anxious' => $anxiousPercent,  'Fearful' => $fearfulPercent, 'UserAttachmentStyle' => $userStyle]);
    }
    
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
            Auth::user()->connection_chat_id = $request['connectMe'].Auth::user()->id;
            Auth::user()->save();

            $secondUser = User::find($request['connectMe']);
            $secondUser->connection_id = Auth::user()->id;
            $secondUser->connection_status = 'connected';
            $secondUser->connection_chat_id = $request['connectMe'].Auth::user()->id;
            $secondUser->save();

            $returnedMate = User::find($request['connectMe']);

            // echo Auth::user()->connection_status. ' ' .Auth::user()->connection_id. ' ' .$secondUser->connection_status. ' ' .$secondUser->connection_id;
            return response()->json(['status' => Auth::user()->connection_status, 'mateId' => $request['connectMe'], 'connection_chat_id' => Auth::user()->connection_chat_id, 'mate' => $returnedMate]);
        }


        public function saveMessage(Request $request){
            $check = $request->validate([
                'chatMessage' => 'required|string',
            ]);
            
            // $profileDetails = User::find($request['profileId']);
            $current = Auth::user();
            $mate = User::find($current->connection_id);

            $newChat = new Chat();
            $newChat->Message = $request['chatMessage'];
            $newChat->ReceiverID = $mate->id;
            $newChat->ReceiverPicture = $mate->profile_Pic;
            $newChat->SenderPicture = $current->profile_Pic;
            $newChat->connection_chat_id = $current->connection_chat_id;
            $newChat->receiverName = $mate->name;
            $newChat->senderName = $current->name;
            $newChat->senderID = $current->id;
            $newChat->save();

            broadcast(new Chatting($newChat))->toOthers();
            
            return response()->json(['savedChat' => $newChat]);
        }


        public function getMessages(){
            $chatID = Auth::user()->connection_chat_id;
            $chats = Chat::where('connection_chat_id', $chatID)->orderBy('id')->take(50)->get();
            
            // dd($chats);
            return response()->json(['currentChats' =>$chats ]);
        }
        
        public function loadSpouseDetails() {
            $mateId = Auth::user()->connection_id;
            $mate = User::find($mateId);

            return response()->json(['spouse' => $mate]);
        }

        public function disconnectMyAccount(){
            $currentid = Auth::user()->id;
            $thisUser = User::find($currentid);
            
            $mateID = $thisUser->connection_id;

            $thisUser->connection_status = 'unconnected';
            $thisUser->connection_id = null;
            $thisUser->connection_chat_id = null;
            $thisUser->save();

            $mate = User::find($mateID);
            $mate->connection_status = 'unconnected';
            $mate->connection_id = null;
            $mate->connection_chat_id = null;
            $mate->save();

            $userSex = Auth::user()->sex;
            if ($userSex == 'Male'){
                $searchResult = User::where('sex', 'Female')->get();
                $searchResult = $searchResult->random(3);
            } else {
                $searchResult = User::where('sex', 'Male')->get();
                $searchResult = $searchResult->random(3);
            }

            return response()->json([ 'mate_result' => $searchResult, 'success' => 'You have successfully disconnected from'.$mate->name]);
        }
    

}
