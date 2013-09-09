
<%@ page import="ps.city.core.User" %>
<!DOCTYPE html>
<html>
	<head>
        <meta name="layout" content="main">
        <r:require modules="adminUserList"/>
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body data-module='user' data-controller='list'>
    <div id="page-content" class="page-content tab-content overflow-y">
        <div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
            <section>
                <div class="row-fluid margin-bottom16">
                    <div class="span12">
                        <div class="widget widget-simple widget-table">
                            <div class="widget-header">
                                <h4><i class="fontello-icon-user"></i> <g:message code="default.list.label" args="[entityName]" /></h4>
                            </div>


			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                <table id="js-users" class="table table-striped table-hover boo-table dataTable">
                    <thead>
                    <tr>
                        <th><g:message code="user.fullName.label" default="Fullname" /></th>
                        <th><g:message code="user.accountType.label" default="Account Type" /></th>
                        <th><g:message code="user.email.label" default="Email" /></th>
                        <th>Page Id</th>
                        <th>Tags</th>
                        <th>Registered</th>
                        <th>Status</th>
                        <th>Actions</th>

                    </tr>
                    </thead>

                    <tbody>
                    <g:each in="${userInstanceList}" status="i" var="userInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                            <td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "fullName")}</g:link></td>
                            <td>${fieldValue(bean: userInstance, field: "accountType")}</td>
                            <td>${fieldValue(bean: userInstance, field: "email")}</td>
                            <td>${userInstance.page?.id}</td>
                            <td>tags</td>
                            <td>${fieldValue(bean: userInstance, field: "dateCreated")}</td>
                            <td>${fieldValue(bean: userInstance, field: "status")}</td>
                            <td>
                                <div class="quick-menu pull-right">
                                    <div class="btn-group">
                                        <g:link class="btn btn-mini btn-info fontello-icon-edit" action="edit" id="${userInstance.id}">Edit</g:link>
                                        <button data-toggle="dropdown" class="btn btn-mini dropdown-toggle">Other actions &nbsp;
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="#"><i class="icon-remove"></i><span class="divider-text"></span> Suspend</a></li>
                                            <li><a href="#"><i class="icon-ok"></i><span class="divider-text"></span> Un-suspend</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#"><i class="icon-trash"></i><span class="divider-text"></span> Delete</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </td>

                        </tr>
                    </g:each>
                    </tbody>
                </table>
                    </div>
                </div>
                <!-- // Widget -->

            </div>
            <!-- // Column -->


            <!-- // Column -->
        </section>
    </div>
    <!-- // Example row -->
</div>


