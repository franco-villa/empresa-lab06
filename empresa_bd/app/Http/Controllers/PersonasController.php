<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\Persona;

class PersonasController extends Controller
{
    public function index(){
        // $personas =[
        //     ['titulo'=>'Persona 1'],
        //     ['titulo'=>'Persona 2'],
        //     ['titulo'=>'Persona 3']
        // ];
        //$personas =DB::table('persona')->get();
        //$personas =Persona::latest()->paginate(2);
        $personas =Persona::orderBy('cPerNombre', 'asc')->simplePaginate(2);
        

        return view('personas', compact('personas'));
    }

    public function show($id){        

        return view('show',[
            'persona' =>  Persona::find($id)
        ]);       
    }

    public function create(){        

        return view('create');       
    }

    public function store(){        

        //$nombre=request('nombre'); $apellido=request('apellido'); $direccion=request('direccion');
        // Persona::create([
        //     'cPerNombre'=>$nombre,
        //     'cPerApellido'=>$apellido,
        //     'cPerDireccion'=>$direccion
        // ]);
        $newPerson=request()->validate([
            'cPerNombre' => 'required|string|max:10',
            'cPerApellido'=>'required|string|max:10',
            'cPerDireccion'=>'required|string|max:10',
            'nPerEdad' => 'required|integer|min:18',
            'nPerSueldo' => 'required|numeric|min:500',
            'nPerEstado' => 'required|in:0,1',
            'dPerFecNac' => 'required|date|before:today'
        ], [
            'cPerNombre.required' =>  'El nombre es obligatorio.',
            'cPerApellido.required' =>  'El Apellido es obligatorio.',
            'cPerDireccion.required' =>  'La Direccion es obligatorio.',
            'dPerFecNac.required' => 'La fecha de nacimiento es obligatoria.',
            'dPerFecNac.date' => 'La fecha de nacimiento debe ser una fecha válida.',
            'dPerFecNac.before' => 'La fecha de nacimiento debe ser anterior a hoy.'
        ]);

        Persona::create($newPerson);
        

        return redirect()->route('personas.index');       
    }

}
