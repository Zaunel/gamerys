{include file='header.tpl'}
  <section class="contain_login">
    <div>
      <h2>Registrarse</h2>
      <form action="UsuariosController.php" method="POST">
        <label for="username">Nombre de usuario:</label><br>
        <input type="text" id="username" name="usuario" required><br><br>
        
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="contraseña">Contraseña:</label><br>
        <input type="password" id="contraseña" name="contraseña" required><br><br>
        
        <input type="submit" value="Enviar">
    </form>
    </div>
  </section>
</body>
{include file='footer.tpl'}