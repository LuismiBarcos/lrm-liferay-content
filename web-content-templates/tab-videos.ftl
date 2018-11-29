<div class="row align-items-center">
    <div class="col-auto col-md-5 order-2 order-md-1">
        <div>
            <b>
                <#if Title.getData()??>
                    ${Title.getData()}
                </#if>
            </b>
        </div>
        <div>
            <small>
                <#if Author.getData()?? && Author.getData() != "">
                    ${Author.getData()}
                </#if>
            </small>
        </div>
    </div>
    <div class="col-auto col-md-7 order-1 order-md-2">
        <#if Thumbnail.getData()?? && Thumbnail.getData() != "">
            <img class="img-fluid" alt="${Thumbnail.getAttribute("alt")}" data-fileentryid="${Thumbnail.getAttribute("fileEntryId")}" src="${Thumbnail.getData()}" />
        </#if>
    </div>
</div>