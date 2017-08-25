<!DOCTYPE html>
<html lang="{$CurrentLocale.Lang}">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    {asset name='Head'}
  </head>
  <body id="{$BodyID}" class="{$BodyClass}">
    <header id="Head" class="site-header">
      <a class="site-title" href="{link path="/"}">{logo}</a>

      <ul class="site-navigation">
        {home_link text="« Voltar pro site"}
        {dashboard_link}
        {discussions_link}
        {activity_link}
        {inbox_link}
        {custom_menu}
        {profile_link}
        {signinout_link}
      </ul>
    </header>

    <main id="Body" class="site-content">
      <article class="forum primary">
        {asset name="Content"}
      </article>
      <aside class="sidebar secondary">
        <section class="widget search">
          {searchbox}
        </section>

        <section class="widget memodule">
          {module name="MeModule"}
        </section>

        <section class="widget panel">
          {asset name="Panel"}
        </section>

        <section class="widget vanilla" id="Foot">
          <div class="PoweredByVanilla-Wrap"><a href="{vanillaurl}"><span>Powered by Vanilla</span></a></div>
          {asset name="Foot"}
        </section>
      </aside>
    </main>
    {event name="AfterBody"}
    <footer class="site-footer">
      <div class="wrapper">
        <div class="meta">
          <dl>
            <dt><a href="https://esporo.net/forum/">{mobile_logo}</a></dt>
            <dd>A comunidade brasileira de Spore.</dd>
          </dl>

          <nav class="meta-links">
            <a href="https://esporo.net/sobre/">Sobre</a>
            <a href="mailto:contato@esporo.net">{include file="svg/mail.svg"} Contato</a>
            <a href="https://twitter.com/esporo">{include file="svg/twitter.svg"} @esporo</a>
          </nav>
        </div>

        <div class="brand">
          <nav class="brand-links">
            <a class="spore" href="http://www.spore.com/">Spore.com</a>
            <a class="maxis" href="http://www.maxis.com/">Maxis</a>
            <a class="ea" href="https://ea.com/">Electronic Arts</a>
          </nav>
          <p class="disclaimer">Spore e Maxis são marcas da Electronic Arts.<br />
            Alguns conteúdos &copy; Esporo. <a href="https://esporo.net/sobre/termos/">Saiba mais</a>.</p>
        </div>
      </div>

      <p class="site-credits">Site feito pelo <a href="https://arthr.me/" title="Desenvolvedor front-end e consultor WordPress" role="designer">{include file="svg/arthr.svg"}</a> &middot; <a href="https://esporo.net/humans.txt">humans.txt</a></p>
    </footer>
  </body>
</html>
