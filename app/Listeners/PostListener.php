<?php

namespace App\Listeners;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Models\User;
use App\Notifications\PostNotification;
use Illuminate\Support\Facades\Notification;
use Session;
class PostListener   implements ShouldQueue
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {
      $id_grupo=Session::get('id_grupo');

    //   aqui filtarmos para qeu solo envie a suarios del mismo grupo 
    // donde esta registrado el susario 
       User::where('id_grupo', $id_grupo)
       
        ->each(function(User $user) use($event){
            Notification::send($user,new PostNotification($event->post));
        });
    }
}
