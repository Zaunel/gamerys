<!DOCTYPE html>
<html lang="en">
  <head>
    <script src="https://kit.fontawesome.com/7099935636.js" crossorigin="anonymous"></script>
    <base href="{$BASE_RUTA}">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <title>Gamerys</title>
  </head>
  <body>
    <header>
      <nav>
        <div class="nav_parteUno">
         <div class="nav_logo">
          <a href="home"><img src="imagenes/logo.png" alt="logo" /></a>
          </div>
          <div class="nav_form">
            <form action="">
              <input
                class="nav_buscador"
                type="text"
                placeholder="¿A que quieres jugar?"
              />
            </form>
              <i class="fa-solid fa-magnifying-glass iconos" style="color: #000000;"></i>
          </div>
            

          <button class="usuario_logeado" id="btn_usuario_logeado">{$usuario}</button>
          <a href="cerrar_sesion">Cerrar sesión</a>
          <button class="boton_nav3">
            <i class="fa-solid fa-cart-shopping icon_cart"></i>
          </button>
        </div>
        <ul class="nav_parteDos">
          <li><a>Categorías</a></li>
          <li><a>PC</a></li>
          <li><a>Xbox</a></li>
          <li><a>PlayStation</a></li>
        </ul>
      </nav>
    </header>