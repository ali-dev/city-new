<%@ page import="ps.city.core.EventEntry" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <r:require modules="editEvent"/>
    <g:set var="entityName" value="${message(code: 'event.label')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
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
                        <h4><i class="fontello-icon-user"></i> Edit ${event.title}</h4>
                    </div>
                    <div class="widget-content">
                        <div class="widget-body">
                            <g:form  action="editEvent" params="[eventId : event.id]" class="form-horizontal" method="POST">
                            <g:render template="eventForm"/>
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