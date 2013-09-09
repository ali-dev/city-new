<%@ page import="ps.city.core.JobEntry" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <r:require modules="editJob"/>
    <g:set var="entityName" value="${message(code: 'job.label')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
<g:hasErrors bean="${job}">
    <div class="errors">
        <g:renderErrors bean="${job}" as="list" />
    </div>
</g:hasErrors>
<div id="page-content" class="page-content tab-content overflow-y">
    <div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
        <div class="row-fluid">
            <div class="span8 grider">
                <div class="widget widget-simple">
                    <div class="widget-header">
                        <h4><i class="fontello-icon-user"></i> Edit ${job.title}</h4>
                    </div>
                    <div class="widget-content">
                        <div class="widget-body">
                            <g:form  action="editJob" params="[jobId : job.id]" class="form-horizontal" method="POST">
                                <g:render template="jobForm"/>
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