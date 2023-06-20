<section class="sectores" id="sect_categorias">
<div class="sect_categorias sectores_padres">
<form action="categorias" method="post">
<input type="text" name="categoria" placeholder="categoria">
<button type="submit">Agregar</button>
<table>
    <thead>
       <tr>
        <th>id_categorias</th>
         <th>categoria</th>
       </tr>
    </thead>
    <tbody>
    {foreach $categorias as $categoria}
        <tr>
            
            <td>{$categoria.id_categoria}</td>
            <td>{$categoria.categoria}</td>
            
        </tr>
    {/foreach}
    </tbody>
</table>
</form>
</div>
</section>