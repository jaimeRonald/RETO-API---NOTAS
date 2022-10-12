<?php

namespace App\Http\Controllers;

use App\Events\PostEvent;
use App\Notifications\PostNotification;
use App\Models\Post;
use App\Models\User;
 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Session;
class PostController extends Controller
{
    public function create(){
        return view('post.create');
    }

    public function store(Request $req){
        $data=$req->all();
        $data['user_id']= Session::get('idUsuario');
        $valor =$req->file('image')->store('public');// agregamos la imagen a la carpeta public
        $data['image']=$valor;
        $posT=Post::create($data);
        $id_grupo=Session::get('id_grupo');

        //  aqui envia a todos los usarios qeu pertenecen al grupo donde registrado el 
        //  el usuario activo 
        // $users=User::where('id_grupo', $id_grupo)
        // ->each(function(User $user) use ($posT){
        //     $user->notify(new PostNotification($posT));
        // });
        
        
        $posT=Post::create($data);
        event(new PostEvent($posT));
         

        return redirect()->back()->with('notifi','NOTIFI CREADO');
    }
    public function showNotificaciones(){// aqui creo un servicio para mostrar al usuario logeado las notificaciones 

        $notificaciones=[];
        $valor=auth()->user()->unreadNotifications;
        foreach($valor as $noti){
            array_push($notificaciones,['title'=>$noti->data['title'],'description'=>$noti->data['description']]);
        }

        return json_encode($notificaciones);
         
    }
}
