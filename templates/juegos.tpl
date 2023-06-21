<section class="sectores" id="sect_juegos">
<div class="sect_juegos sectores_padres">
<form action="requestGame" id="form_juegos" method="POST" enctype="multipart/form-data">
<input type="hidden" name="id_juego" id="input_id_juego">
<input type="text" placeholder="Juego" name="nombre-juego" id="input_juego">
<textarea placeholder="Descripción" name="descripcion-juego" id="input_descripcion"></textarea>
<input type="number" placeholder="Precio" name="precio-juego" id="input_precio">
<select name="categorias"  id="">
    <option value="">Elige una categoria</option>
    {foreach $categorias as $categoria}
    <option value="{$categoria.id_categoria}">{$categoria.categoria}</option>
    {/foreach}
</select>
<input type="file" name="imagen" value="Imagen">
<button type="submit" name="agregar_juego" id="agregar_juego">Agregar</button>
<button type="submit" name="modificar_juego" id="modificar_juego">Modificar</button>

<table id="tabla">
<thead>
    <tr>
        <th>Id_juego</th>
        <th>Juego</th>
        <th>Descripción</th>
        <th>Precio</th>
        <th>Imagen</th>
        <th>categoria</th>
        <th>Eliminar</th>
        <th>Modificar</th>
    </tr>
</thead>
<tbody>
    
        {foreach $juegos as $juego}
            <tr>
        <td class="id_juego">{$juego.id_juego}</td>
        <td class="juego">{$juego.juego}</td>
        <td class="descripcion">{$juego.descripcion}</td>
        <td class="precio">${$juego.precio}</td>
        <td class="imagen"><img src="imagenes/{$juego.imagen}" class="imagen_juego"></td>
        <td>            {foreach $categorias as $categoria}
            {if $categoria.id_categoria == $juego.id_categoria}
                {$categoria.categoria}
            {/if}
        {/foreach}</td>
        <td><button type="submit" name="btn_eliminar" value="{$juego.id_juego}">X</button></td>
        <td><button type="button" class="btn_modificar" value="{$juego.id_juego}">Modificar</button></td>
        </tr>
        {/foreach}
    
</tbody>
</table>
</form>
</div>
</section>