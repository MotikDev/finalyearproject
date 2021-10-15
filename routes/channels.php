<?php

use Illuminate\Support\Facades\Broadcast;

/*
|--------------------------------------------------------------------------
| Broadcast Channels
|--------------------------------------------------------------------------
|
| Here you may register all of the event broadcasting channels that your
| application supports. The given channel authorization callbacks are
| used to check if an authenticated user can listen to the channel.
|
*/

Broadcast::channel('App.User.{id}', function ($user, $id) {
    return (int) $user->id === (int) $id;
});

//FROM PUSHER DOCS FOR PRIVATE CHANNEL
// Broadcast::channel('user.{userId}', function ($user, $userId) {
//     return $user->id === $userId;
// });

//FROM PUSHER DOCS FOR PRESENCE CHANNEL
// Broadcast::channel('user.{userId}', function ($user, $userId) {
//     if ($user->id === $userId) {
//         return array('name' => $user->name);
//     }
// });


// Broadcast::channel('user.{userId}', 'Api\ChatController@sendChat');

Broadcast::channel('privatechat{chatId}', function ($user, $chatId) {
    return (int) $user->connection_chat_id === (int) $chatId;
}, ['guards' => ['api']]);
// Broadcast::channel('privatechat.{chatId}', function ($user, $chatId) {
//     return $user->connection_chat_id === $chatId;
// }, ['guards' => ['auth:api']]);