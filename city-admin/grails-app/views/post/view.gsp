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
        <div class="widget-list">
            %{--<div class="widget-header">--}%
                %{--<h4><i class="fontello-icon-article"></i>${post.title}</h4>--}%
            %{--</div>--}%
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
                        <p>
                            <bi:hasImage bean="${post}">
                                <bi:img bean="${post}" size="large" />
                            </bi:hasImage>
                        </p>
                    </div>
                </g:elseif>
                <g:elseif test="${post.getType() == 'photo'}">

                        <bi:hasImage bean="${post}">
                            <bi:img bean="${post}" size="large"/>
                        </bi:hasImage>
                        <div class="media-body">
                            <ul class=" meta data "> <!-- data inline-->
                                <li><i class="fontello-icon-feather"></i> By: <g:link controller="user" action="edit" params="[id: post.getUser().id]"><strong> ${post.getUser().fullName}</strong></g:link></li>
                                <li>Created: <strong><g:formatDate format="dd MMM, yyyy @ h:m a" date="${post.dateCreated}"/></strong></li>
                                <li>Updated: <strong><g:formatDate format="dd MMM, yyyy @ h:m a" date="${post.lastUpdated}"/></strong></li>
                                <li>Details: <strong>${post.details}</strong></li>
                            </ul>
                        </div>


                </g:elseif>
            </div>
        </div>
    </div>
</div>
</g:else>

</body>