<?php 


namespace App\Http\Controllers;

use App\Models\Grupo;
use App\Models\User;
use Exception;
use Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class UserController extends Controller{

    public function create(){
        return view('register');
    }
    public function store(Request $req){
        $name=$req->name;
        $password=$req->password;
        $email=$req->email;
        $user=User::create(['name'=>$name,'password'=>$password,'email'=>$email]);
        // $user=User::create([$req->all()]); SE PODRIA USAR ESTO PARA TRAER TODOS LOS DATOS DE REUQEST DESDE POSTMAN 
        return json_encode($user);
    }

    public function login(Request $Req){


        // UNA FORMA ES CON EL FACADE ATTEMPT
        try{
            $datos=$Req->only('email','password');
            if(Auth::attempt($datos)){
     
             // para evitar la vulneravilidad de la seccion regeneramso la session 
             $Req->session()->regenerate();
             $id=User::find(Auth::user()->id);
             Session::put('idUsuario',$id->id);
             $arr=['idUsuario'=>$id->id,
                  'status'=>1,
                  'id_grupo'=>Auth::user()->id_grupo==null?-1:Auth::user()->id_grupo,   /// para mostrar el id del grupo don de esta 
                //    si ya tiene un grupo ingresado debe comunar a fron para no mostrarle la lsita de grupos 
             ];
             return  redirect('/grupos');
     
            }

        }catch(Exception $ex){
            // return $arr=['status'=>0];

            return redirect('/login');


        }
        
        
    }

    public function login_vista(){
        return view('login');
    }

    public function logout(Request $Req){
        Auth::logout();
        $Req->session()->invalidate();
        $Req->session()->regenerateToken();

        return view('login');
    }

}