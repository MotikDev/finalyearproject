<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Events\Chatting;

use Illuminate\Support\Facades\Auth;
use App\User;
use App\Chat;
use App\Request as modelRequest;
use Carbon\Carbon;

class ChatController extends Controller
{
    //
    public function sendChat(Request $request){
        $check = $request->validate([
            'chatContent' => 'required|string',
        ]);

        $receiver = User::find(Auth::user()->connection_id);

        $newChat = new Chat;
        $newChat->Message = $request['chatContent'];
        $newChat->senderID = Auth::user()->id;
        $newChat->ReceiverID = Auth::user()->connection_id;
        $newChat->senderName = Auth::user()->name;
        $newChat->SenderPicture = Auth::user()->profile_Pic;
        $newChat->connection_chat_id = Auth::user()->connection_chat_id;
        $newChat->receiverName = $receiver->name;
        $newChat->ReceiverPicture = $receiver->profile_Pic;
        $newChat->save();

        // $newChat->connection_chat_id = Auth::user()->connection_chat_id;

        event(new Chatting($newChat));

        return response()->json(['result', 'count']);
    }



}
