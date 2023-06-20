{include file='headerAdmin.tpl'}
<body>
    <header class="header_admin">
        <nav class="nav_admin">
            <a href="usuarios">Usuarios</a>
            <a href="categorias">Categorías</a>
            <a href="juegos">Juegos</a>
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

</body>
</html>