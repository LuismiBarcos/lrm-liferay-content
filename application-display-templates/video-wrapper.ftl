<#if entries?has_content>
    <div class="row" id="<@portlet.namespace />">
        <div class="col-md-7 col-lg-8">
            <div class="tab-content" id="v-pills-tabContent">
                <#list entries as video>
                    <#--  Comprobamos que el contenido es del tipo journal  (Web content)-->
                    <#if video.getClassName() == "com.liferay.journal.model.JournalArticle">
                        <#assign
                            assetRenderer = video.getAssetRenderer()
                            assetObject = assetRenderer.getAssetObject() />
                        <#--  Comprobamos que el journal es del tipo que nosotros queremos (video)  -->
                        <#if assetObject.getDDMStructureKey() == "44512">
                            <div class="tab-pane fade embed-responsive embed-responsive-16by9 ${(video?counter == 1)?then('active show', '')}" id="v-pills-${video?counter}" role="tabpanel" aria-labelledby="v-pills-${video?counter}-tab">
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
                    <a class="nav-link  ${(tabs?counter == 1)?then('active', '')}" id="v-pills-${tabs?counter}-tab" data-toggle="pill" href="#v-pills-${tabs?counter}" role="tab" aria-controls="v-pills-${tabs?counter}" aria-selected="false">
                        <#assign assetRenderer = tabs.getAssetRenderer() assetObject = assetRenderer.getAssetObject() />
                        <@liferay_journal["journal-article"] articleId=assetObject.getArticleId() ddmTemplateKey="44536" groupId=assetObject.getGroupId() />
                    </a>
                </#list>
            </div>
        </div>
    </div>
</#if>