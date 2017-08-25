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

function sprite($name, $type = 'Sprite', $text = false) {
    include_once __DIR__.'design/svg/'.$name.'.svg';
    $sprite = '<svg class="'.$type.' '.$name.'"><use xlink:href="#sprite-'.$name.'" /></svg>';
    if ($text) {
        $sprite .= '<span class="sr-only">'.$text.'</span>';
    }

    return $sprite;
}
