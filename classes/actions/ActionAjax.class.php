<?php
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

class PluginLivestream_ActionAjax extends PluginLivestream_Inherit_ActionAjax {
    
	/**
     * Регистрация евентов
    */
	protected function RegisterEvent() {
        parent::RegisterEvent();
        $this->AddEventPreg('/^livestream$/i', '/^all/', 'EventLiveStreamAll');
        $this->AddEventPreg('/^livestream$/i', '/^comment/', 'EventLiveStreamComment');
        $this->AddEventPreg('/^livestream$/i', '/^topic/', 'EventLiveStreamTopic');
        $this->AddEventPreg('/^livestream$/i', '/^follow/', 'EventLiveStreamFollow');
    }

    /**
     * Обработка получения активнсти
     * Используется в блоке "Прямой эфир"
     *
    */ 
    protected function EventLiveStreamAll() {
        $aVars = array();
        $iLimit = C::Get('widgets.stream.params.limit');
        if ($aStreamEvents = E::ModuleStream()->ReadAll($iLimit)) {
            $aVars['aStreamEvents'] = $aStreamEvents;
        }
        $sTextResult = E::ModuleViewer()->Fetch(Plugin::GetTemplatePath(__CLASS__) . 'tpls/widgets/widget.liveStream_all.tpl', $aVars);
        E::ModuleViewer()->AssignAjax('sText', $sTextResult);
    }
    
	/**
     * Обработка получения последних комментариев
     * Используется в блоке "Прямой эфир"
     *
     */
    protected function EventLiveStreamComment() {
        $aVars = array();
        $iLimit = C::Get('widgets.stream.params.limit');
        if (empty($iLimit)) {
            $iLimit = 20;
        }
        if ($aComments = E::ModuleComment()->GetCommentsOnline('topic', $iLimit)) {
            $aVars['aComments'] = $aComments;
        }
        $sTextResult = E::ModuleViewer()->FetchWidget('stream_comment.tpl', $aVars);
        E::ModuleViewer()->AssignAjax('sText', $sTextResult);
    }
    
	/**
     * Обработка получения последних топиков
     * Используется в блоке "Прямой эфир"
     *
     */
    protected function EventLiveStreamTopic() {
        $aVars = array();
        if ($aTopics = E::ModuleTopic()->GetTopicsLast(Config::Get('widgets.stream.params.limit'))) {
            $aVars['aTopics'] = $aTopics['collection'];
            // LS-compatibility
            $aVars['oTopics'] = $aTopics['collection'];
        }
        $sTextResult = E::ModuleViewer()->FetchWidget('stream_topic.tpl', $aVars);
        E::ModuleViewer()->AssignAjax('sText', $sTextResult);
    }
    
	/**
     * Обработка получения активнсти
     * Используется в блоке "Прямой эфир"
     *
    */
    protected function EventLiveStreamFollow() {
        $aVars = array();
        if ($aEvents = E::ModuleStream()->Read()) {
        E::ModuleViewer()->Assign('aStreamEvents', $aEvents);
        if (count($aEvents)) {
            $oEvenLast = end($aEvents);
            E::ModuleViewer()->Assign('iStreamLastId', $oEvenLast->getId());
        }
        $sTextResult = E::ModuleViewer()->Fetch(Plugin::GetTemplatePath(__CLASS__) . 'tpls/widgets/widget.liveStream_all.tpl', $aVars);
        E::ModuleViewer()->AssignAjax('sText', $sTextResult);
        } else {
            E::ModuleMessage()->AddErrorSingle(E::ModuleLang()->Get('plugin.livestream.widget_stream_follow_no'), E::ModuleLang()->Get('attention'));
            return;
        }

    }

}

// EOF