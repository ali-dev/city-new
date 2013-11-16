<g:if test="${post.type == 'video' || post.type == 'photo'}">
    <li class="js-postTileItem md-trigger" data-href="${createLink(mapping: 'viewPost', params:[id: post.id])}"  data-modal="post-${post.id}">
        <div class="postTile postTile_jobs">
            <div class="postTile-type"><i class="ptTypeIcon"></i></div>

            <div class="postTile-hd">
                <g:if test="${post.type == 'photo'}">
                    <bi:hasImage bean="${post}">
                        <bi:img  bean="${post}" size="large" />
                    </bi:hasImage>
                </g:if>
                %{--<img src="http://placehold.it/400x200" alt=""/>--}%

                <div class="postTile-timestamp">12/24/2013</div>
            </div>

            <div class="postTile-bd">
                <div class="postTile-hdg">${post.title}</div>
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
            </div>

            <div class="postTile-ft">
                <ul class="postTileParade">
                    <li><a href=""><i class="ptIcon ptIcon_like"></i>Like</a></li>
                    <li><a href=""><i class="ptIcon ptIcon_share"></i>Share</a></li>
                    <li><a href=""><i class="ptIcon ptIcon_favorite"></i>Add Favorite</a></li>
                </ul>
            </div>
        </div>
    </li>
</g:if>
<g:elseif test="${post.type == 'event'}">
    <li class="js-postTileItem md-trigger"  data-href="${createLink(mapping: 'viewPost', params:[id: post.id])}" data-modal="post-${post.id}">
        <div class="postTile postTile_organizations">
            <div class="postTile-type"><i class="ptTypeIcon"></i></div>

            <div class="postTile-hd">
                <bi:hasImage bean="${post}">
                    <bi:img  bean="${post}" size="large" />
                </bi:hasImage>

                <div class="postTile-timestamp">12/24/2013</div>
            </div>

            <div class="postTile-bd">
                <div class="postTile-hdg">${post.title}</div>
                <a class="postTile-subHdg" >${post.page.user.fullName}</a>

                <p class="bdcpy bdcpy_md">
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 250.
                </p>

                <div class="postTileTags">
                    <div class="postTileTags-label">Tags:</div>
                    <ul class="postTile-tags">
                        <g:each in="${post.tags}" var="tag">
                            <li><a href="">${tag.name}</a></li>
                        </g:each>
                    </ul>
                </div>
            </div>

            <div class="postTile-ft">
                <ul class="postTileParade">
                    <li><a href=""><i class="ptIcon ptIcon_like"></i>Like</a></li>
                    <li><a href=""><i class="ptIcon ptIcon_share"></i>Share</a></li>
                    <li><a href=""><i class="ptIcon ptIcon_favorite"></i>Add Favorite</a></li>
                </ul>
            </div>
        </div>
    </li>
</g:elseif>

<g:elseif test="${post.type == 'job'}">
    <li class="js-postTileItem md-trigger" data-href="${createLink(mapping: 'viewPost', params:[id: post.id])}"  data-modal="post-${post.id}">
        <div class="postTile postTile_restaurants">
            <div class="postTile-type"><i class="ptTypeIcon"></i></div>

            <div class="postTile-hd">
                %{--<img src="http://placehold.it/400x200" alt=""/>--}%

                <div class="postTile-timestamp">12/24/2013</div>
            </div>

            <div class="postTile-bd">
                <div class="postTile-hdg">${post.title}</div>
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
            </div>

            <div class="postTile-ft">
                <ul class="postTileParade">
                    <li><a href=""><i class="ptIcon ptIcon_like"></i>Like</a></li>
                    <li><a href=""><i class="ptIcon ptIcon_share"></i>Share</a></li>
                    <li><a href=""><i class="ptIcon ptIcon_favorite"></i>Add Favorite</a></li>
                </ul>
            </div>
        </div>
    </li>
</g:elseif>