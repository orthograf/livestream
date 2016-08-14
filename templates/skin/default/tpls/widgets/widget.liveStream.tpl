{* Тема оформления Experience v.1.0  для Alto CMS      *}
{* @licence     CC Attribution-ShareAlike  http://site.creatime.org/experience/*}

{if Config::Get('view.masonry') && !Config::Get('view.masonry_sidebar') && in_array(Router::GetAction(), Config::Get('view.masonry_sidebar_pages'))}{$isMasonry = true}{/if}

<!-- Блок сайдбара -->
<div class="panel panel-default sidebar flat widget widget-type-stream">

    <div class="panel-body">
        <div class="panel-header">
            <i class="fa fa-microphone"></i>
            <a class=""
               href="{router page='comments'}"
               title="{$aLang.widget_stream_comments_all}">{$aLang.plugin.livestream.widget_stream}</a>
            <a href="#"
               onclick="
                        var b = $(this).parents('.widget-type-stream');
                        b.height(b.height());
			            ls.widgets.load($('.js-widget-stream-navs a.active'), 'stream', null, function(html){
                            b.css('height', 'auto');
                            $('.js-widget-stream-content').html(html);
                            $('.widget-type-stream').css('height', 'auto');
                        });
                        return false;

               "
               class="link link-lead link-clear link-dark pull-right"><i class="fa fa-repeat large"></i></a>
        </div>
        
        {include file='menus/menu.widget_stream.tpl'}
        
        <div class="panel-content js-widget-stream-content" >

        </div>
    </div>
    {if $aWidgetParams.hide_footer == false}
        <div class="panel-footer">
            <a class="link link-dual link-lead link-clear" href="{router page='rss'}allcomments/"><i class="fa fa-rss"></i>RSS</a>
            <a class="link link-dual link-lead link-clear pull-right" href="{router page='comments'}"><i class="fa fa-comment"></i>{$aLang.plugin.livestream.widget_stream_comments_all}</a>
        </div>
    {/if}
</div>

