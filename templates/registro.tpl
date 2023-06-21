{include file='header.tpl'}
<div class="container">
<div class="form-container">
    <h2>Registrarse</h2>
    {if $titulo_error == null}
      
    {else}
      {$titulo_error}
    {/if}
    <form action="registro" method="post">
      <div class="form-group">
        <label for="name">Nombre</label>
        <input type="text" id="name" name="usuario" placeholder="Ingrese su nombre" required>
      </div>
      <div class="form-group">
        <label for="email">Correo electrónico</label>
        <input type="email" id="email" name="email" placeholder="Ingrese su correo electrónico" required>
      </div>
      <div class="form-group">
        <label for="password">Contraseña</label>
        <input type="password" id="password" name="contraseña" placeholder="Ingrese su contraseña" required>
      </div>
      <button type="submit">Registrarse</button>
    </form>
  </div>
</div>
</body>
{include file='footer.tpl'}