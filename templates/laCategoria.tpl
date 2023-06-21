{include file = 'header.tpl'}
<section class="juegosDe">
  {foreach $juegos as $juego}
    {$url = "{BASE_JUEGOS}/{$juego.juego}"}
    {$modifyUrl = str_replace(" ","-",$url)}
    <a href={$modifyUrl} class="juego">
      <h1 class="nombreJuego">{$juego.juego}</h1>
      <div class="container_imagen_juego">
        <img src="imagenes/{$juego.imagen}" class="imagen_juego" alt="Imagen del juego {$juego.juego}">
      </div>
      <p class="descripcion">{$juego.descripcion}</p>
      <p class="precio">Precio: ${$juego.precio}</p>
      {foreach $categorias as $categoria}
        {if $categoria.id_categoria == $juego.id_categoria}
          <p class="categoria">Categoría: {$categoria.categoria}</p>
        {/if}
      {/foreach}
    </a>
  {/foreach}
</section>