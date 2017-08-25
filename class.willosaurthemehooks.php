<?php

class WillosaurThemeHooks implements Gdn_IPlugin {
    public function setup() {
    }

    public function base_render_before($sender) {
        if ($sender->MasterView == 'admin') {
            return;
        }
        if (c('willosauer.ShowFooterModue', true) == false) {
            return;
        }

        require_once __DIR__.'/modules/class.esporofootermodule.php';
        $footerModule = new EsporoFooterModule();
        $sender->addModule($footerModule);
    }
}
