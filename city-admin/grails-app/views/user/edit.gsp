<%@ page import="ps.city.core.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
        <r:require modules="adminUserEdit,viewPost"/>
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>

    <div class="row-fluid page-head">
        <h2 class="page-title"><i class="fontello-icon-user"></i> ${userInstance.fullName}</h2>
        <div class="page-bar">
            <div class="btn-toolbar">
                <ul class="nav nav-tabs pull-right">
                    <li class="active" id="user-tab"> <a href="#TabTop1" data-toggle="tab">Edit Account</a> </li>
                    <li id="posts-tab"> <a href="#TabTop2" data-toggle="tab">Posts</a> </li>
                    <!--<li id="wizard-tab"> <a href="#TabTop3" data-toggle="tab">Wizard</a> </li> -->
                </ul>
            </div>
        </div>
    </div>
    <g:hasErrors bean="${userInstance}">
        <div class="errors">
            <g:renderErrors bean="${userInstance}" as="list" />
        </div>
    </g:hasErrors>
    <div id="page-content" class="page-content tab-content overflow-y">
        <div id="TabTop1" class="tab-pane padding-bottom30 active fade in">
            <div class="row-fluid">
                <div class="span8 grider">
                    <div class="widget widget-simple">
                        <div class="widget-header">
                            <h4><i class="fontello-icon-user"></i> Edit ${userInstance.accountType.toUpperCase()} Account -  ${userInstance.fullName}</h4>
                        </div>
                        <div class="widget-content">
                            <div class="widget-body">
                                <g:form  action="edit" id="${userInstance.id}" class="form-horizontal" method="POST" enctype="multipart/form-data">
                                    <div class="row-fluid">
                                        <div class="span12">
                                            <fieldset>
                                                <ul class="form-list label-left list-bordered dotted">
                                                    <li class="section-form">
                                                        <h4>General Information</h4>
                                                    </li>
                                                    <f:field property="fullName" bean="${userInstance}" value="${userInstance.fullName}"/>
                                                    <f:field property="email" bean="${userInstance}" value="${userInstance.email}"/>
                                                    <g:if test="${userInstance.accountType != ps.city.core.User.PERSON}">
                                                        <f:field property="tags" bean="${tagType}" value="${userInstance.page?.tags}"/>
                                                    </g:if>
                                                    <f:field property="details" bean="${userInstance.page}" value="${userInstance.page.details}"/>
                                                    <f:field property="logo" label="Logo/Photo" bean="${userInstance.page}" value="${userInstance.page?.logo}"/>
                                                </ul>
                                            </fieldset>
                                            <g:if test="${userInstance.accountType != ps.city.core.User.ARTIST && userInstance.accountType != ps.city.core.User.PERSON}">
                                                <fieldset>
                                                    <legend class="section-form">Contact Info <a class="btn btn-mini fontello-icon-plus-1 pull-right margin-0s" href="javascript:void(0);" id="js-add-contact">Add Contact</a> </legend>
                                                    <ul class="form-list label-left list-bordered dotted" id="js-contact-list">
                                                        <li>
                                                        <g:each status="i" in="${userInstance.contacts}" var="contact" >
                                                            <div class="form-inline contact" id="contact_<?php echo $key?>">
                                                                <h6 class="simple-header">Contact</h6>
                                                                <g:hiddenField name="contact.${i}.id" value="${contact.id}" />
                                                                <g:select  name="contact.${i}.type" class="select2 span4 auto" from="['Email', 'Phone Number']" value="${contact.type}"/>
                                                                <g:textField name="contact.${i}.det" value="${contact.details}" />
                                                                <a class="btn btn-yellow btn-mini js-delete-contact fontello-icon-cancel-circle" data-counter="<?php echo $key?>" href="#">Delete</a>
                                                            </div>
                                                        </g:each>
                                                        </li>
                                                    </ul>
                                                </fieldset>
                                                <fieldset id="js-location-list">
                                                    <legend class="section-form">Locations <a class="btn btn-mini fontello-icon-plus-1 pull-right margin-0s" href="javascript:void(0);" id="js-add-location">Add Locations</a> </legend>
                                                    <g:each status="i" in="${userInstance.locations}" var="location">
                                                        <div class="form-inline location" id="location_${location.id}">
                                                            <h6 class="simple-header">Location</h6>
                                                            <g:hiddenField name="location.${i}.id" value="${location.id}" />
                                                            <g:select  name="location.${i}.city" class="select2 span4 auto" from="['Jerusalem', 'Ramallah', 'Bethlehem', 'Khan Younis']" value="${location.city}"/>
                                                            <g:textField name="location.${i}.address" value="${location.address}" />
                                                            <a class="btn btn-yellow btn-mini js-delete-location fontello-icon-cancel-circle" data-counter="<?php echo $key?>" href="#">Delete</a>

                                                        </div>
                                                    </g:each>
                                                </fieldset>
                                            </g:if>
                                            <!-- // fieldset Input -->
                                            <div class="form-actions">
                                            <g:hiddenField name="id" value="${userInstance.id}" />
                                                <button type="submit" class="btn btn-primary btn-right">Submit</button>

                                            </div>
                                        </div>
                                    </div>
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


        <div id="TabTop2" class="tab-pane padding-bottom30 fade in">
            <div class="row-fluid">
                <div class="span12 grider">
                    <div class="widget widget-simple">
                        <div class="widget-header">
                            <h4><i class="fontello-icon-article"></i> Posts for ${userInstance.fullName}</h4>
                        </div>
                        <div class="widget-content">
                            <div class="widget-body">
                                <g:render template="createPostLinks" model="[user: userInstance]"/>
                                <table id="js-posts" class="table table-striped table-hover boo-table dataTable">
                                    <thead>
                                    <tr>
                                        <th>Title</th>
                                        <th>Type</th>
                                        <th>Tags</th>
                                        <th>Status</th>
                                        <th>Created</th>
                                        <th>Updated</th>
                                        <th>Actions</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <g:each in="${userInstance.page.entries}" var="entry">
                                    <tr>
                                        <td><g:render template="/post/viewPostLinks" model="[post:entry]"/></td>
                                        <td>${entry.class}</td>
                                        <td>Tags</td>
                                        <td class="js-status">${entry.status}</td>
                                        <td>${entry.dateCreated}</td>
                                        <td>${entry.lastUpdated}</td>

                                        <td>
                                            <div class="quick-menu pull-right">
                                                <div class="btn-group js-actions-container">

                                                    <g:render template="/_common/postStatusDisplay" model="[status: entry.status.value]"/>
                                                    <button data-toggle="dropdown" class="btn btn-mini dropdown-toggle">Actions &nbsp;
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu pull-right">
                                                        <g:render template="/post/postActions" model="[post: entry]"/>
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
                    </div>
                    <!-- // Widget -->

                </div>
                <!-- // Column -->


                <!-- // Column -->

            </div>
            <!-- // Example row -->
        </div>
        <!-- // Example TAB 1 -->
    </div>