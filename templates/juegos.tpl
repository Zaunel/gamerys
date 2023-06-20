<section class="sectores" id="sect_juegos">
<div class="sect_juegos sectores_padres">
<form action="juegos" id="form_juegos" method="POST" enctype="multipart/form-data">
<input type="text" placeholder="Juego" name="nombre-juego" id="input_juego">
<textarea placeholder="Descripción" name="descripcion-juego" id="input_descripcion"></textarea>
<input type="number" placeholder="Precio" name="precio-juego" id="input_precio">
<select name="categorias" id="">
    <option value="">Elige una categoria</option>
    {foreach $categorias as $categoria}
    <option value="{$categoria.id_categoria}">{$categoria.categoria}</option>
    {/foreach}
</select>
<input type="file" name="imagen" value="Imagen">
<button type="submit" name="agregar" id="agregar_juego">Agregar</button>
<button type="submit" name="modificar" id="modificar">Modificar</button>
</form>
<form>
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
        <td id="juego">{$juego.id_juego}</td>
        <td id="{$juego.id_juego}" class="juego">{$juego.juego}</td>
        <td id="{$juego.id_juego}" class="descripcion">{$juego.descripcion}</td>
        <td id="{$juego.id_juego}" class="precio">${$juego.precio}</td>
        <td class="imagen"><img src="imagenes/{$juego.imagen}" class="imagen_juego"></td>
        <td>{$categoria.categoria}</td>
        <td><button type="submit" name="btn_eliminar" value="{$juego.id_juego}">X</button></td>
        <td><button type="button" id="btn_modificar" value="{$juego.id_juego}">Modificar</button></td>
        </tr>
        {/foreach}
    
</tbody>
</table>
</form>
</div>
</section>