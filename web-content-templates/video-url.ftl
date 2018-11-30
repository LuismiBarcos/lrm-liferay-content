<#if videoURL??>
    <#if  videoURL.getData()?? && videoURL.getData() != "">
        <iframe src="${videoURL.getData()}" allowfullscreen=""></iframe>
    </#if>
<#else>
    <div class="alert alert-warning">No video preview</div>
</#if>