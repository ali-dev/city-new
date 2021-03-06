<bi:hasImage bean="${post}">
    <img style="max-width:100%" class="js-photo" src="${bi.resource(bean: post, size: 'large')}">
    %{--<bi:img bean="${post}" size="large"/>--}%
</bi:hasImage>
<div class="widget-list">
    <div class="widget-content">
        <div class="widget-body">
            <div class="media-body">
                <ul class=" meta data "> <!-- data inline-->
                    <li><i class="fontello-icon-feather"></i> By: <g:link controller="user" action="edit" params="[id: post.getUser().id]"><strong> ${post.getUser().fullName}</strong></g:link></li>
                    <li>Created: <strong><g:formatDate format="dd MMM, yyyy @ h:m a" date="${post.dateCreated}"/></strong></li>
                    <li>Updated: <strong><g:formatDate format="dd MMM, yyyy @ h:m a" date="${post.lastUpdated}"/></strong></li>
                    <li>Tags: <strong>
                        <g:each in="${post.tags}" var="tag" status="i">
                            ${tag.name} |
                        </g:each>
                    </strong></li>
                    <li style="width: auto; text-wrap: normal"><p style="width: 300px;">Details: <strong>${post.details}</strong></p></li>
                </ul>
            </div>
        </div>
    </div>
</div>