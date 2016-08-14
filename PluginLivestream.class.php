<?php

/*  Запрещаем напрямую через браузер обращение к этому файлу. */
if (!class_exists('Plugin')) {
    die('Hacking attemp!');
}

/*
*
*   Идея: LSP-GoStream (goweb.pro)
*   Модернизация и адаптация плагина для AltoCMS: Orthograf
*   Для связи: support@orthograf.ru
*
*   GNU General Public License, version 2:
*   http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
*
*/

class PluginLivestream extends Plugin
{
    
    /** @var array $aDelegates Объявление делегирований */
    public $aDelegates = array(
        'template' => array(
            'widgets/widget.stream.tpl' => 'tpls/widgets/widget.liveStream.tpl'
        ),
    );
    
    /** @var array $aInherits Объявление переопределений (модули, мапперы и сущности) */
    protected $aInherits = array(
        'action' => array(
            'ActionAjax'
        )
    );

    public function Activate()
    {
        return true;
    }

    public function Init()
    {
        $this->Viewer_AppendScript(Plugin::GetTemplatePath(__CLASS__) . 'assets/js/script.js');
        $this->Viewer_AppendStyle(Plugin::GetTemplatePath(__CLASS__) . 'assets/css/style.css');
    }

}
