{include file='headerAdmin.tpl'}
<nav>
      <ul class='nav-bar'>
          <li class='logo'><a href='admin'><img src=''/></a></li>
          <input type='checkbox' id='check' />
          <span class="menu">
              <li><a href="admin/juegos">Juegos</a></li>
              <li><a href="admin/categorias">Categorias</a></li>
              <label for="check" class="close-menu"><i class="fas fa-times"></i></label>
          </span>
          <label for="check" class="open-menu"><i class="fas fa-bars"></i></label>
      </ul>
  </nav>

    {if $template == 'usuarios'}
    {include file='users.tpl'}
    {elseif $template == 'categorias'}
    {include file='categorias.tpl'}
    {elseif $template == 'juegos'}
    {include file='juegos.tpl'}
    {else $template == ''}
    {/if}
<script src="js/admin.js"></script>
</body>
</html>