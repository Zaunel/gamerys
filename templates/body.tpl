{if $logeado}
  {include file='headerLogeado.tpl'}
  <main>
    <section class="galeria"></section>
  </main>
  <script src="main.js"></script>
</body>
{else}
  {include file='header.tpl'}
  <main>
    <section class="galeria"></section>
  </main>
  <script src="main.js"></script>
</body>
{/if}

{include file='footer.tpl'}