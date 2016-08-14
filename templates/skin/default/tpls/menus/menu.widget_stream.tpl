<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    });
</script>
    
<div class="panel-navigation">
    <ul class="js-widget-stream-navs">
        {foreach $aWidgetParams.items as $sKey=>$aItem name=item}
            {if E::IsUser()}
                {if Config::Get('plugin.livestream.show_icons') == 'true'}
                    {if Config::Get('plugin.livestream.show_items') == 'true'}
                        {if $smarty.foreach.item.iteration}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}"
                                data-toggle="tooltip"
                                data-container="body"
                                data-placement="bottom"
                                data-original-title="{$aLang.plugin.livestream[$aItem.text]}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;"
                                    href="#" class="link link-lead link-clear link-dark" data-toggle="tab" data-type="{$aItem.type}">
                                    {if $aItem.type == 'all'}<i class="fa fa-flag-o"></i>{/if}
                                    {if $aItem.type == 'follow'}<i class="fa fa-star-o"></i>{/if}
                                    {if $aItem.type == 'topic'}<i class="fa fa-pencil-square-o"></i>{/if}
                                    {if $aItem.type == 'comment'}<i class="fa fa-comments-o"></i>{/if}
                                </a>    
                            </li>
                        {/if}
                    {else}
                        {if $smarty.foreach.item.iteration == 3}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}"
                                data-toggle="tooltip"
                                data-container="body"
                                data-placement="bottom"
                                data-original-title="{$aLang.plugin.livestream[$aItem.text]}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;"
                                    href="#" class="link link-lead link-clear link-dark" data-toggle="tab" data-type="{$aItem.type}">
                                    {if $aItem.type == 'all'}<i class="fa fa-flag-o"></i>{/if}
                                </a>    
                            </li>
                        
                        {elseif $smarty.foreach.item.iteration == 4}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}"
                                data-toggle="tooltip"
                                data-container="body"
                                data-placement="bottom"
                                data-original-title="{$aLang.plugin.livestream[$aItem.text]}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;"
                                    href="#" class="link link-lead link-clear link-dark" data-toggle="tab" data-type="{$aItem.type}">
                                    {if $aItem.type == 'follow'}<i class="fa fa-star-o"></i>{/if}
                                </a>    
                            </li>
                        {/if}
                    {/if}
                {else}        
                    {if Config::Get('plugin.livestream.show_items') == 'true'}
                        {if $smarty.foreach.item.iteration}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;"
                                href="#" class="link link-lead link-clear link-dark" data-toggle="tab" data-type="{$aItem.type}">
                                    {$aLang.plugin.livestream[$aItem.text]}
                                </a>
                            </li>
                        {/if}    
                    {else}
                        {if $smarty.foreach.item.iteration == 3}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;"
                                href="#" class="link link-lead link-clear link-dark" data-toggle="tab" data-type="{$aItem.type}">
                                    {$aLang.plugin.livestream[$aItem.text]}
                                </a>
                            </li>
                            
                        {elseif $smarty.foreach.item.iteration == 4}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;"
                                href="#" class="link link-lead link-clear link-dark" data-toggle="tab" data-type="{$aItem.type}">
                                    {$aLang.plugin.livestream[$aItem.text]}
                                </a>
                            </li>
                        {/if}
                    {/if}    
                {/if}
            {else}
                {if Config::Get('plugin.livestream.show_icons') == 'true'}
                    {if Config::Get('plugin.livestream.show_items') == 'true'}
                        {if $smarty.foreach.item.iteration == 1}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}"
                                data-toggle="tooltip"
                                data-container="body"
                                data-placement="bottom"
                                data-original-title="{$aLang.plugin.livestream[$aItem.text]}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;"
                                    {if $aItem.type == 'comment'}<i class="fa fa-comments-o"></i>{/if}
                                </a>    
                            </li>
                            
                            {elseif $smarty.foreach.item.iteration == 2}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}"
                                data-toggle="tooltip"
                                data-container="body"
                                data-placement="bottom"
                                data-original-title="{$aLang.plugin.livestream[$aItem.text]}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;"
                                    href="#" class="link link-lead link-clear link-dark" data-toggle="tab" data-type="{$aItem.type}">
                                    {if $aItem.type == 'topic'}<i class="fa fa-pencil-square-o"></i>{/if}
                                </a>    
                            </li>
                            
                            {elseif $smarty.foreach.item.iteration == 3}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}"
                                data-toggle="tooltip"
                                data-container="body"
                                data-placement="bottom"
                                data-original-title="{$aLang.plugin.livestream[$aItem.text]}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;"
                                    href="#" class="link link-lead link-clear link-dark" data-toggle="tab" data-type="{$aItem.type}">
                                    {if $aItem.type == 'all'}<i class="fa fa-flag-o"></i>{/if}
                                </a>    
                            </li>
                        {/if}
                    {else}
                        {if $smarty.foreach.item.iteration == 3}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}"
                                data-toggle="tooltip"
                                data-container="body"
                                data-placement="bottom"
                                data-original-title="{$aLang.plugin.livestream[$aItem.text]}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;"
                                    href="#" class="link link-lead link-clear link-dark" data-toggle="tab" data-type="{$aItem.type}">
                                    {if $aItem.type == 'all'}<i class="fa fa-flag-o"></i>{/if}
                                </a>    
                            </li>
                        {/if}
                    {/if}
                {else}  
                    {if Config::Get('plugin.livestream.show_items') == 'true'}
                        {if $smarty.foreach.item.iteration == 1}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;" 
                                    class="link link-light-gray link-lead link-clear" 
                                    data-toggle="tab" 
                                    data-type="comment" 
                                href="#">{$aLang.plugin.livestream[$aItem.text]}</a>
                            </li>
                            
                            {elseif $smarty.foreach.item.iteration == 2}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;" 
                                    class="link link-light-gray link-lead link-clear" 
                                    data-toggle="tab" 
                                    data-type="topic" 
                                href="#">{$aLang.plugin.livestream[$aItem.text]}</a>
                            </li>   
                            
                            {elseif $smarty.foreach.item.iteration == 3}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;" 
                                    class="link link-light-gray link-lead link-clear" 
                                    data-toggle="tab" 
                                    data-type="all" 
                                href="#">{$aLang.plugin.livestream[$aItem.text]}</a>
                            </li>
                        {/if}    
                    {else}
                        {if $aItem.type == 'all'}
                            <li class="{if $aItem.type == Config::Get('plugin.livestream.active_item')}active{/if}">
                                <a onclick="$('.js-widget-stream-navs a').removeClass('active'); return false;" 
                                    class="link link-light-gray link-lead link-clear" 
                                    data-toggle="tab" 
                                    data-type="all" 
                                href="#">{$aLang.plugin.livestream[$aItem.text]}</a>
                            </li>
                        {/if}
                    {/if}
                {/if}
            {/if}   
        {/foreach}
        {hook run='widget_stream_nav_item'}
    </ul>
</div>
