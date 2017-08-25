<?php

class EsporoFooterModule extends Gdn_Module {
    public function assetTarget() {
        return 'Foot';
    }

    public function toString() {
        ob_start();
        ?>
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
        <?php

        return ob_get_clean();
    }
}
