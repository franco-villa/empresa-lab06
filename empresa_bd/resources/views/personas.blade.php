@extends('layout')

@section('title', 'Personas')

@section('content')

<div class="row">
<h2>Personas</h2>
<tr>
        <td colspan="4">
            <a href=" {{ route('personas.create') }} ">Nueva Persona</a>
        </td>
    </tr>
</div>
    
    
    <br>
    <br>
    <table class="table table-bordered">
        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Edad</th>
        </tr>
        @if($personas)
            @foreach($personas as $item)
            
            <tr>
                    <td>
                        <a href="{{ route('personas.show', $item) }}">{{ $item->cPerNombre }}</a>
                    </td>
                    <td>
                        {{ $item->cPerApellido }}
                    </td>
                    <td>
                        {{ $item->nPerEdad }}
                    </td>
                </tr>
            </a>    
            @endforeach
        @else
            <li>No existe ninguna persona que mostar</li>
        @endif
    </table>
   <br>
    <tr>
        <td colspan="1">
            <div class="pagination pagination-sm pagination-custom .page-link">
            {{$personas->links()}}
            </div>
        </td>
    </tr>
    
@endsection