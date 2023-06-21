<section class="sectores" id="sect_categorias">
  <div class="sect_categorias sectores_padres">
    <form action="requestCategory" method="post" class="form_categoria">
      <input type="hidden" id="input_id_categoria" name="id_categoria">
      <label for="input_categoria">Categoria:</label>
      <input type="text" id="input_categoria" name="categoria" placeholder="Categoría">
      <button type="submit" name="agregar_categoria" id="agregar_categoria">Agregar</button>
      <button type="submit" name="modificar_categoria" id="modificar_categoria">Modificar</button>
    

    <div class="table-wrapper">
      <table class="tabla">
        <thead>
          <tr>
            <th>Id Categoría</th>
            <th>Categoría</th>
            <th>Eliminar</th>
            <th>Modificar</th>
          </tr>
        </thead>
        <tbody>
          {foreach $categorias as $categoria}
          <tr>
            <td class="id_categoria">{$categoria.id_categoria}</td>
            <td class="categoria">{$categoria.categoria}</td>
            <td><button name="categoria_eliminar" value="{$categoria.id_categoria}">X</button></td>
            <td><button class="btn_modificar2">Modificar</button></td>
          </tr>
          {/foreach}
          
        </tbody>
      </table>
      
    </div>
    </form>
  </div>
</section>