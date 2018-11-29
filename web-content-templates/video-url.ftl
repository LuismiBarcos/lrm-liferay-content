<#if videoURL.getData()?? && videoURL.getData() != "">
    <iframe src="${videoURL.getData()}" allowfullscreen=""></iframe>
<#else>
    <div class="alert alert-warning">No video preview</div>
</#if>