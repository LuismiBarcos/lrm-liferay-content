<#if entries?has_content>
    <div id="carouselControls" class="carousel carousel-lrm slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="card-deck card-deck-lrm">
                    <#list 0..3 as i>
                        <#assign assetRenderer = entries[i].getAssetRenderer() assetObject = assetRenderer.getAssetObject() />
                        <@liferay_journal["journal-article"] articleId=assetObject.getArticleId() ddmTemplateKey="46444" groupId=assetObject.getGroupId() />
                    </#list>
                </div>
            </div>
            <div class="carousel-item">
                <div class="card-deck card-deck-lrm">
                    <#list entries?chunk(4) as row>
                        <#if row?index != 0>
                            <#list row as card>
                                <#assign assetRenderer = card.getAssetRenderer() assetObject = assetRenderer.getAssetObject() />
                                <@liferay_journal["journal-article"] articleId=assetObject.getArticleId() ddmTemplateKey="46444" groupId=assetObject.getGroupId() />
                            </#list>
                        </#if>
                    </#list>
                </div>
            </div>
        </div>

        <a class="carousel-control-prev" href="#carouselControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon text-default" aria-hidden="true">
                <@liferay_ui["icon"] icon="angle-left" markupView="lexicon" />
            </span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon text-default" aria-hidden="true">
                <@liferay_ui["icon"] icon="angle-right" markupView="lexicon" />
            </span>
            <span class="sr-only">Next</span>
        </a>

        <script type="text/javascript">
            $(document).ready(function() {
                $('#carouselControls').carousel({
                    interval: 0
                });
            });
        </script>
    </div>
</#if>