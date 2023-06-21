{include file='header.tpl'}
<div class="container_juego">
  <section class="elJuego">
    <h1 class="titulo_elJuego">{$juego.juego}</h1>
    <div class="container_imagen_elJuego">
      <img src="imagenes/{$juego.imagen}" alt="{$juego.juego}" class="imagen_elJuego">
    </div>
    <p class="desc_elJuego">{$juego.descripcion}</p>
    <p class="precio_elJuego">Precio: ${$juego.precio}</p>
  </section>
</div>
{include file='footer.tpl'}