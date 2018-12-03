<#if entries?has_content>
    <div class="row" id="<@portlet.namespace />">
        <div class="col-md-7 col-lg-8">
            <div class="tab-content" id="v-pills-tabContent">
                <#global showingVideo = false />
                <#global videoId = '' />
                <#list entries as video>
                    <#--  Comprobamos que el contenido es del tipo journal  (Web content)-->
                    <#if video.getClassName() == "com.liferay.journal.model.JournalArticle">
                        <#assign
                            assetRenderer = video.getAssetRenderer()
                            assetObject = assetRenderer.getAssetObject() />
                        <#--  Comprobamos que el journal es del tipo que nosotros queremos (video)  -->
                        <#if assetObject.getDDMStructureKey() == "44512">
                            <div class="tab-pane fade embed-responsive embed-responsive-16by9 ${(isShowingVideo(video?counter) == 'false')?then('active show', '')}" id="v-pills-${video?counter}" role="tabpanel" aria-labelledby="v-pills-${video?counter}-tab">
                                <#assign assetRenderer = video.getAssetRenderer() assetObject = assetRenderer.getAssetObject() />
                                <@liferay_journal["journal-article"] articleId=assetObject.getArticleId() ddmTemplateKey="44575" groupId=assetObject.getGroupId() />
                            </div>
                        </#if>
                    </#if>
                </#list>
            </div>
        </div>

        <div class="col-md-5 col-lg-4">
            <div class="nav flex-column nav-lrm" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <#list entries as tabs>
                    <#assign
                        assetRenderer = tabs.getAssetRenderer()
                        assetObject = assetRenderer.getAssetObject() />
                    <#if assetObject.getDDMStructureKey() == "44512">
                        <a class="nav-link ${(videoId == tabs?counter)?then('active', '')}" id="v-pills-${tabs?counter}-tab" data-toggle="pill" href="#v-pills-${tabs?counter}" role="tab" aria-controls="v-pills-${tabs?counter}" aria-selected="false">
                            <#assign assetRenderer = tabs.getAssetRenderer() assetObject = assetRenderer.getAssetObject() />
                            <@liferay_journal["journal-article"] articleId=assetObject.getArticleId() ddmTemplateKey="44536" groupId=assetObject.getGroupId() />
                        </a>
                    </#if>
                </#list>
            </div>
        </div>
    </div>
</#if>

<#function isShowingVideo videoId>
    <#if showingVideo == false>
        <#global showingVideo = true />
        <#global videoId = videoId />
        <#return "false">
    </#if>
    <#return "true">
</#function>