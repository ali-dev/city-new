<%@ page import="ps.city.core.PhotoEntry" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <r:require modules="editPhoto"/>
    <g:set var="entityName" value="${message(code: 'photo.label')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
<g:hasErrors bean="${photo}">
    <div class="errors">
        <g:renderErrors bean="${photo}" as="list" />
    </div>
</g:hasErrors>
<div id="page-content" class="page-content tab-content overflow-y">
    <div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
        <div class="row-fluid">
            <div class="span8 grider">
                <div class="widget widget-simple">
                    <div class="widget-header">
                        <h4><i class="fontello-icon-user"></i> Edit ${photo.title}</h4>
                    </div>
                    <div class="widget-content">
                        <div class="widget-body">
                            <g:uploadForm  action="editPhoto" params="[photoId : photo.id]" class="form-horizontal" method="POST">
                                <g:render template="photoForm"/>
                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary btn-right">Submit</button>

                                </div>
                            </g:uploadForm>

                            <bi:hasImage bean="${photo}">
                                <bi:img size="small" bean="${photo}" />
                            </bi:hasImage>

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