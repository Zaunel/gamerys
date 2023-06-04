{include file='header.tpl'}
  <section class="contain_login">
    <div>
      <h1>Registrarse</h1>
      {if $titulo_error == null}
      
      {else}
      {$titulo_error}
      {/if}
      <form action="registro" method="POST">
        <label for="username">Nombre de usuario:</label><br>
        <input type="text" id="username" name="usuario" required><br><br>
        
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="contraseña">Contraseña:</label><br>
        <input type="password" id="contraseña" name="contraseña" required><br><br>
        
        <input class="btn_submit" type="submit" value="Registrarse">
        <p>Al registrarte, aceptas nuestras Condiciones de uso y Política de privacidad.</p>
        <p>¿Ya tienes una cuenta? <a href="login">Iniciar Sesión</a></p>
    </form>
    </div>
  </section>
</body>
{include file='footer.tpl'}