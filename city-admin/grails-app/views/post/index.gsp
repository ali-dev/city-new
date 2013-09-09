
<%@ page import="ps.city.core.Entry" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <r:require modules="postsList,viewPost"/>
    <g:set var="entityName" value="${message(code: 'entry.label', default: 'Posts')}" />
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
                        <table id="js-posts" class="table table-striped table-hover bg-gray-light boo-table dataTable">
                            <thead>
                            <tr>
                                <th scope="col">Title</th>
                                <th scope="col">Created At</th>
                                <th scope="col">Type</th>
                                <th scope="col">User</th>
                                <th scope="col">Status</th>
                                <th>Actions</th>

                            </tr>
                            <tr id="filter-row" class="filter">
                                <th><g:message code="entry.title.label" default="Title" /></th>
                                <th><g:message code="entry.dateCreated.label" default="Date Created" /></th>
                                <th>Type</th>
                                <th>User</th>
                                <th>Status</th>
                                <th></th>
                            </tr>

                            </thead>

                            <tbody id="DataRow0">
                            <g:each in="${posts}" status="i" var="post">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                    <td><g:render template="viewPostLinks" model="[post:post]"/></td>
                                    <td>${fieldValue(bean: post, field: "dateCreated")}</td>
                                    <td>${post.getType()}</td>
                                    <td>${fieldValue(bean: post.page.user, field: "fullName")}</td>

                                    <td class="js-status">${fieldValue(bean: post, field: "status")}</td>

                                    <td >
                                        <div class="quick-menu pull-right">
                                            <div class="btn-group js-actions-container">

                                                <g:render template="/_common/postStatusDisplay" model="[status: post.status.value]"/>
                                                <button data-toggle="dropdown" class="btn btn-mini dropdown-toggle">Actions &nbsp;
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu pull-right">
                                                    <g:render template="postActions" model="[post: post]"/>
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


