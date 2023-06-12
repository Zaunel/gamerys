<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <header class="header_admin">
        <nav class="nav_admin">
            <button id="btn_usuarios">Usuarios</button>
            <button id="btn_categorias">Categorias</button>
            <button id="btn_juegos">Juegos</button>
        </nav>
    </header>
    <section class="sectores" id="sect_users">
       <div class="sect_usuarios sectores_padres">
      <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Usuario</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>usuario</td>
            </tr>
        </tbody>
      </table>
    </div> 
    </section>
    <section class="sectores" id="sect_categorias">
        <div class="sect_categorias sectores_padres">
       <form action="categorias" method="post">
        <input type="text" placeholder="categoria">
        <button type="submit">Agregar</button>
        <table>
            <thead>
               <tr>
                <th>id_categorias</th>
                 <th>categoria</th>
               </tr>
            </thead>
            <tbody>
                <tr>
                    {foreach $categorias as $categoria}
                    <td>{$categoria.id_categoria}</td>
                    <td>{$categoria.categoria}</td>
                    {/foreach}
                </tr>
            </tbody>
        </table>
       </form>
    </div>
    </section>
    <section class="sectores" id="sect_juegos">
        <div class="sect_juegos sectores_padres">
     <form action="juegos" method="POST" enctype="multipart/form-data">
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
        <button type="submit">Agregar</button>
     </form>
     <form action="modificaciones" method="POST">
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
                <td>{$juego.id_juego}</td>
                <td>{$juego.juego}</td>
                <td class="descripcion">{$juego.descripcion}</td>
                <td>${$juego.precio}</td>
                <td class="imagen"><img src="imagenes/{$juego.imagen}" class="imagen_juego"></td>
                <td>{$categoria.categoria}</td>
                <td><button type="submit" name="btn_eliminar" value="{$juego.id_juego}">X</button></td>
                <td><button id="btn_modificar" value="{$juego.id_juego}">Modificar</button></td>
                </tr>
                {/foreach}
            
        </tbody>
      </table>
      </form>
    </div>
    </section>
    <script src="admin.js"></script>
</body>
</html>