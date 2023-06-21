{include file='header.tpl'}
<main>
  <nav class="lista_categorias">
    <ul>
      {foreach $categorias as $categoria}
      <li>
        <a href="{BASE_CATEGORIAS}/{$categoria.categoria}">
          {$categoria.categoria}
        </a>
      </li>
      {/foreach}
    </ul>
  </nav>
  {if $incluyendo}
  {include file="laCategoria.tpl"}
  {/if}
</main>
</body>
{include file='footer.tpl'}
