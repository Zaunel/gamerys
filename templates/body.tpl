{include file='header.tpl'}

 <section class="section_galery">
    {foreach $juegos as $juego}
      {$url = "{BASE_JUEGOS}/{$juego.juego}"}
    {$modifyUrl = str_replace(" ","-",$url)}
    <a class="sectionA" href={$modifyUrl}><img class="imagen_galery" src="imagenes/{$juego.imagen}"></a>
    {/foreach}
 </section>





  
</body>


{include file='footer.tpl'}