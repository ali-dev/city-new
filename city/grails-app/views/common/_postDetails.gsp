<g:if test="${post.type == 'photo'}">
    <div class="modal md-modal md-effect-12" style="overflow: scroll" id="post-${post.id}">
        <div class="md-content" style="overflow: scroll">
            <h3>${post.title}</h3>
            <div>
                <g:if test="${post.type == 'photo'}">
                    <bi:hasImage bean="${post}">
                        <bi:img  bean="${post}" size="large" />
                    </bi:hasImage>
                </g:if>


                <p class="bdcpy bdcpy_md">
                <a class="postTile-subHdg" href="">${post.user.fullName}</a>
                ${post.details}
                </p>

                <div class="postTileTags">
                    <div class="postTileTags-label">Tags:</div>
                    <ul class="postTile-tags">
                        <g:each in="${post.tags}" var="tag">
                            <li><a href="">${tag.name}</a></li>
                        </g:each>
                    </ul>
                </div>
                <button class="md-close">Close me!</button>
            </div>
        </div>
    </div>


</g:if>
<g:elseif test="${post.type == 'event'}">
    <div class="modal md-modal md-effect-7" style="overflow: scroll" id="post-${post.id}">
        <div class="scrollbar"><div class="track"><div class="thumb"><div class="end"></div></div></div></div>
        <div class="md-content viewport">
            <h3>${post.title}</h3>
            <div>
                <g:if test="${post.type == 'photo'}">
                    <bi:hasImage bean="${post}">
                        <bi:img  bean="${post}" size="large" />
                    </bi:hasImage>
                </g:if>
                <a class="postTile-subHdg" href="">${post.user.fullName}</a>

                <p class="bdcpy bdcpy_md" style="overflow: scroll">
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                    ${post.details}
                </p>
                <div class="postTileTags">
                    <div class="postTileTags-label">Tags:</div>
                    <ul class="postTile-tags">
                        <g:each in="${post.tags}" var="tag">
                            <li><a href="">${tag.name}</a></li>
                        </g:each>
                    </ul>
                </div>
                <button class="md-close">Close me!</button>
            </div>
        </div>
    </div>
</g:elseif>

<g:elseif test="${post.type == 'video'}">
    <div class="modal md-modal md-effect-12" id="post-${post.id}">
        <div class="md-content">
            <h3>${post.title}</h3>
            <div>
                <g:if test="${post.type == 'photo'}">
                    <bi:hasImage bean="${post}">
                        <bi:img  bean="${post}" size="large" />
                    </bi:hasImage>
                </g:if>
                <a class="postTile-subHdg" href="">${post.user.fullName}</a>

                <p class="bdcpy bdcpy_md">
                    ${post.details}
                </p>

                <div class="postTileTags">
                    <div class="postTileTags-label">Tags:</div>
                    <ul class="postTile-tags">
                        <g:each in="${post.tags}" var="tag">
                            <li><a href="">${tag.name}</a></li>
                        </g:each>
                    </ul>
                </div>
                <button class="md-close">Close me!</button>
            </div>
        </div>
    </div>
</g:elseif>

<g:elseif test="${post.type == 'job'}">
    <div class="modal md-modal md-effect-12" id="post-${post.id}">
        <div class="md-content">
            <h3>${post.title}</h3>
            <div>
                <a class="postTile-subHdg" href="">${post.user.fullName}</a>

                <p class="bdcpy bdcpy_md">
                    ${post.details}
                </p>

                <div class="postTileTags">
                    <div class="postTileTags-label">Tags:</div>
                    <ul class="postTile-tags">
                        <g:each in="${post.tags}" var="tag">
                            <li><a href="">${tag.name}</a></li>
                        </g:each>
                    </ul>
                </div>
                <button class="md-close">Close me!</button>
            </div>
        </div>
    </div>
</g:elseif>