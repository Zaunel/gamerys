  {include file='header.tpl'}
  <section class="contain_login">
    <div>
      <h2>Iniciar Sesión</h2>
      <form action="login.php" method="POST">
        <label for="username">Nombre de usuario:</label><br>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Contraseña:</label><br>
        <input type="password" id="password" name="password" required><br><br>
        
        <input type="submit" value="Iniciar sesión">
    </form>
    </div>
  </section>
</body>
{include file='footer.tpl'}
