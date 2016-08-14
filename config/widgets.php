<?php
/**
*   widgets.php
*   Файл виджетов плагина Livestream
*
*   Идея: LSP-GoStream (goweb.pro)
*   Модернизация и адаптация плагина для AltoCMS: Orthograf
*   Для связи: support@orthograf.ru
*
*   GNU General Public License, version 2:
*   http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
*
*/
 
/*
* Подключаем стандартные виждеты настройки событий
*/ 

$config['widgets']['ActivityUsers'] = array(
    'name'   => 'ActivityUsers',
    'wgroup' => 'right',
    'on'     => 'stream',
);

$config['widgets']['ActivityFriends'] = array(
    'name'   => 'ActivityFriends',
    'wgroup' => 'right',
    'on'     => 'stream',
);

$config['widgets']['ActivitySettings'] = array(
    'name'   => 'ActivitySettings',
    'wgroup' => 'right',
    'on'     => 'stream',
);
