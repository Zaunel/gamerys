{include file='headerAdmin.tpl'}
<body>
    <header class="header_admin">
        <nav class="nav_admin">
            <a href="admin/usuarios">Usuarios</a>
            <a href="admin/categorias">Categorías</a>
            <a href="admin/juegos">Juegos</a>
        </nav>
    </header>
    {if $template == 'usuarios'}
    {include file='users.tpl'}
    {elseif $template == 'categorias'}
    {include file='categorias.tpl'}
    {elseif $template == 'juegos'}
    {include file='juegos.tpl'}
    {else $template == ''}
    {/if}
<script src="admin.js"></script>
</body>
</html>