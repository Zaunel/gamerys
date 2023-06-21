<section class="sectores" id="sect_categorias">
    <div class="sect_categorias sectores_padres">
        <form action="requestCategory" method="post">
            <input type="hidden" id="input_id_categoria" name="id_categoria">
            <input type="text" id="input_categoria" name="categoria" placeholder="categoria">
            <button type="submit" name="agregar_categoria" id="agregar_categoria">Agregar</button>
            <button type="submit" name="modificar_categoria" id="modificar_categoria">Modificar</button>
        
        
        <table id="tabla2">
            <thead>
                <tr>
                    <th>id_categorias</th>
                    <th>categoria</th>
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
        </form>
    </div>
</section>