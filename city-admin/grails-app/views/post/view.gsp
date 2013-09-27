<!DOCTYPE html>
<html>
<head>
    <g:if test="${!request.xhr}">
        <meta name="layout" content="main">
    </g:if>
    <r:require modules="viewVideo" />
    <title>${post.title}</title>
</head>
<body>
<g:if test="${post.getType() == 'photo'}">
   <g:render template="viewPhoto" model="[post: post]" />
</g:if>
<g:elseif test="${post.getType() == 'video'}">
    <g:render template="viewVideo" model="[post: post]" />
</g:elseif>
<g:else>

<div class="row-fluid"> <!-- row-fluid-->
    <div class="">
        <div class="widget widget-simple">
            <div class="widget-header">
                <h4><i class="fontello-icon-article"></i>${post.title}</h4>
            </div>
            <div class="widget-content">
                <g:if test="${post.getType() == 'job'}">

                <div class="widget-body">
                    %{--<p class="lead">Lightweight widget - Basic Settings.</p>--}%
                    <p><strong>By: </strong>${post.getUser().fullName}</p>
                    <p><strong>Created: </strong><g:formatDate format="dd MMM, yyyy @ h:m a" date="${post.dateCreated}"/></p>
                    <p><strong>Updated: </strong><g:formatDate format="dd MMM, yyyy @ h:m a" date="${post.lastUpdated}"/></p>
                    <p>${post.details}</p>
                </div>
                </g:if>
                <g:elseif test="${post.getType() == 'event'}">
                    <div class="widget-body">
                        <p><strong>By: </strong>${post.getUser().fullName}</p>
                        <p><strong>Created: </strong><g:formatDate format="dd MMM, yyyy @ h:m a" date="${post.dateCreated}"/></p>
                        <p><strong>Updated: </strong><g:formatDate format="dd MMM, yyyy @ h:m a" date="${post.lastUpdated}"/></p>
                        <p>${post.details}</p>
                        %{--<p>--}%
                            %{--<bi:hasImage bean="${post}">--}%
                                %{--<bi:img bean="${post}" size="large" />--}%
                            %{--</bi:hasImage>--}%
                        %{--</p>--}%
                    </div>
                </g:elseif>

            </div>
        </div>
    </div>
</div>
</g:else>

</body>