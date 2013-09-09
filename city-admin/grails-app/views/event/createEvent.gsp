<%@ page import="ps.city.core.EventEntry" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <r:require modules="addEvent"/>
    <g:set var="entityName" value="${message(code: 'event.label')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<g:hasErrors bean="${event}">
    <div class="errors">
        <g:renderErrors bean="${event}" as="list" />
    </div>
</g:hasErrors>
<div id="page-content" class="page-content tab-content overflow-y">
    <div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
        <div class="row-fluid">
            <div class="span8 grider">
                <div class="widget widget-simple">
                    <div class="widget-header">
                        <h4><i class="fontello-icon-user"></i> Create Event for ${page.user.fullName}</h4>
                    </div>
                    <div class="widget-content">
                        <div class="widget-body">
                            <g:form  action="createEvent" params="[pageId : page.id]" class="form-horizontal" method="POST">
                                <g:render template="eventForm"/>
                                <g:select name="tags" from="${tagType.tags.toList().name}"  keys="${tagType.tags.toList().id}"/>
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