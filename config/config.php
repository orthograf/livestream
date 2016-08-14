<?php
/*
*
*   config.php
*   Файл конфигурационных параметров плагина Gostream
*
*   Идея: LSP-GoStream (goweb.pro)
*   Модернизация и адаптация плагина для AltoCMS: Orthograf
*   Для связи: support@orthograf.ru
*
*   GNU General Public License, version 2:
*   http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
*
*/

/**
 * Параметры плагина
 */
$aConfig = array(
    /*
     * Показывать все вкладки навигации (true - да, false - нет)?
     *   Свойства:
     *       true - Комментарии, Публикации, Вевсь эфир и Я слежу (последнее видно только авторизированным пользователям)
     *       false - Вевсь эфир и Я слежу (последнее видно только авторизированным пользователям)
     */
     'show_items' => 'false',
     
     /*
     * Показывать иконки вкладок вместо текста (true - да, false - нет)?
     *   Свойства:
     *       true - Поазывать иконки (<i class="fa fa-..."></i>)
     *       false - Показывать текст (настраивается в языковом файле /language/ru.php)
     */
     'show_icons' => 'false',
    
    /*
     * Какую вкладку сделать активной (активная вкладка выводит ключевое содержимое в блок "по умолчанию")
     *   Свойства:
     *       all - Весь эфир
     *       follow - Я слежу
     *       comment - Комментарии
     *       topic - Публикации
     */
    'active_item' => 'all',
    
    /*
     * Страницы на которых нужно отображать Виджет
     */
    'widget_stream_pages' => array(
        'index', 
        'community',
        'filter',
        'blogs',
        'blog' => array('{topics}', '{topic}', '{blog}'),
        'tag',
    ),
    
);

$aConfig['widgets']['stream'] = array(
    'action' => $aConfig['widget_stream_pages'],
    'params' => array(
        'items' => array(
            'all' => array('text' => 'widget_stream_all', 'type'=>'all'),
            'follow' => array('text' => 'widget_stream_follow', 'type'=>'follow'),
        ),
        'limit' => 12, // max items for display
    ),
);

return $aConfig;

//EOF
