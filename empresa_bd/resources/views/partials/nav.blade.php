


    <thead class="table table-bordered">
      <tr>
       
        
        <th scope="col" class="{{ request()->routeIs('home') ? 'activo' : '' }}"><a  href="{{ route('home') }}">Inicio</a></th> 
        <th scope="col" class="{{ request()->routeIs('personas') ? 'activo' : ''}}"><a href="{{ route('personas.index') }}">Personas</a></th> 
        <th scope="col" class="{{ request()->routeIs('contacto') ? 'activo' : ''}}"><a href="{{ route('contacto') }}">Contacto</a></th> 
      </tr>
    </thead>






