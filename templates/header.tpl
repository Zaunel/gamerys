<!DOCTYPE html>
<html lang="en">
  <head>
    <script src="https://kit.fontawesome.com/7099935636.js" crossorigin="anonymous"></script>
    <base href="{BASE_RUTA}">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/style.css" />
    <title>Gamerys</title>
  </head>
  <body>
  <header>
  <nav>
      <ul class='nav-bar'>
          <li class='logo'><a href='home'><img src='imagenes/logo2.png'/></a></li>
          <input type='checkbox' id='check' />
          <span class="menu">
              <li><a href="home">Inicio</a></li>
              <li><a href="categorias">Categorías</a></li>
              {if $logeado}
                <li><a href="#">{$usuario}</a></li>
                <li><a href="salir">Cerrar sessión</a></li>
              {else}
                <li><a href="login">Iniciar Sesión</a></li>
                <li><a href="registro">Registrarse</a></li>
              {/if}
              <label for="check" class="close-menu"><i class="fas fa-times"></i></label>
          </span>
          <label for="check" class="open-menu"><i class="fas fa-bars"></i></label>
      </ul>
  </nav>
  </header>