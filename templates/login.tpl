  {include file='header.tpl'}
  <section class="contain_login">
    <div>
      <h1>Iniciar Sesión</h1>
      <form action="ingresado" method="POST">
        <label for="username">Nombre de usuario:</label><br>
        <input type="email" id="username" name="email" required><br><br>
        
        <label for="password">Contraseña:</label><br>
        <input type="password" id="password" name="contraseña" required><br><br>
        
        <input class="btn_submit" type="submit" value="Iniciar sesión">
        <p>¿No tienes una cuenta? <a href="registro"> Registrate</a></p>
    </form>
    </div>
  </section>
</body>
{include file='footer.tpl'}
