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
  </body>
</html>
