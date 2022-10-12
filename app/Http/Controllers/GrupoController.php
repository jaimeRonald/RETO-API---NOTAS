<?php

namespace App\Http\Controllers;

use App\Models\Grupo;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Session;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
class GrupoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $grupos=Grupo::all();
        // return $grupos;
        return view('grupos',compact('grupos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }
    public function getId()
    {
        return $this->id;
    }
// Así que puedes llamarlo


    public function addUser(Request $req){
        $id_grupo=$req->id;
        $nombre_grupo = DB::table('grupos')->select('nombre')->where('id_grupo',$id_grupo)->first(); // esto enviamos al front para que pinte el nombre del grupo actual donde se encuentra 

         
        try {
            $idUsuario = Session::get('idUsuario');
            $data = ['id_grupo' => $id_grupo];

            $affected = DB::table('users')
                ->where('id', $idUsuario)
                ->update($data);

            Session::put('id_grupo', $id_grupo);

            $arra = [
                'message' => 'creado...',
                'nombre_grupo'=>$nombre_grupo->nombre,
                'status' => 1
            ];

            return $arra;

        } catch (Exception $ex) {
            $arra = [
                'message' => 'No se agrego a grupo...problema con el servidor',
                'staatus' => 0
            ];

            return $arra;
        }
        
        // tambien puedeo usar la clase DB
        

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Grupo  $grupo
     * @return \Illuminate\Http\Response
     */
    public function show(Grupo $grupo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Grupo  $grupo
     * @return \Illuminate\Http\Response
     */
    public function edit(Grupo $grupo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Grupo  $grupo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Grupo $grupo)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Grupo  $grupo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Grupo $grupo)
    {
        //
    }
}
