<%@ page import="ps.city.core.JobEntry" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <r:require modules="addVideo"/>
    <g:set var="entityName" value="${message(code: 'video.label')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<g:hasErrors bean="${video}">
    <div class="errors">
        <g:renderErrors bean="${video}" as="list" />
    </div>
</g:hasErrors>
<div id="page-content" class="page-content tab-content overflow-y">
    <div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
        <div class="row-fluid">
            <div class="span8 grider">
                <div class="widget widget-simple">
                    <div class="widget-header">
                        <h4><i class="fontello-icon-user"></i> Create Video</h4>
                    </div>
                    <div class="widget-content">
                        <div class="widget-body">
                            <g:form  action="createVideo" params="[pageId : page.id]" class="form-horizontal" method="POST">
                                <g:render template="videoForm"/>
                            </g:form>

                        </div>


                    </div>
                </div>
                <!-- // Widget -->

            </div>
            <!-- // Column -->


            <!-- // Column -->

        </div>
        <!-- // Example row -->
    </div>


</div>
<div class="modal" style="display:none">
    <div id="js-youtube-video" >
        <div id="js-swf"></div>
    </div>
</div>
<div class="modal" style="display:none">
    <div id="js-vimeo-video" >
        <iframe id="js-vimeo-player" width="600" height="356"></iframe>
    </div>
</div>