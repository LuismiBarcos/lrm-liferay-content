<div class="card">
    <div class="aspect-ratio aspect-ratio-16-to-9 card-item-first">
    <#if Cover.getData()?? && Cover.getData() != "">
        <img class="aspect-ratio-item-center-middle aspect-ratio-item-fluid" alt="${Cover.getAttribute("alt")}" data-fileentryid="${Cover.getAttribute("fileEntryId")}" src="${Cover.getData()}" />
    </#if>
    </div>
    <div class="card-body">
        <div class="card-row">
            <div>
                <strong>${Title.getData()}</strong>
                <p>${Summary.getData()}</p>
            </div>
        </div>
        <div class="card-row">
            <div class="autofit-col mr-2">
                <span class="sticker sticker-circle sticker-primary">
                    <span class="sticker-overlay">
                        <img alt="thumbnail" class="sticker-img" src="https://images.unsplash.com/photo-1514846326710-096e4a8035e0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3e840de32e65ad8bd38e04e646f3d80a&auto=format&fit=crop&w=32">
                    </span>
                </span>
            </div>
            <div class="autofit-col autofit-col-expand">
                <div class="card-title text-truncate" title="User Name">${Username.getData()}</div>
                <div class="card-subtitle text-truncate" title="Latest Action">${Occupation.getData()}</div>
            </div>
            <div class="autofit-col">
                <@liferay_ui["icon"] icon="heart" markupView="lexicon" />
            </div>
        </div>
    </div>
</div>
