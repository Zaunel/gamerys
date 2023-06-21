  {include file='header.tpl'}
  <div class="container">
  <div class="form-container">
    <h2>Iniciar sesión</h2>
    <form action="ingresado" method="post">
      <div class="form-group">
        <label for="email">Correo electrónico</label>
        <input type="email" id="email" name="email" placeholder="Ingrese su correo electrónico" required>
      </div>
      <div class="form-group">
        <label for="password">Contraseña</label>
        <input type="password" id="password" name="contraseña" placeholder="Ingrese su contraseña" required>
      </div>
      <button type="submit">Iniciar sesión</button>
    </form>
  </div>
  </body>
{include file='footer.tpl'}