<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <r:require modules="dashboard,viewPost"/>

    <title>Dashboard</title>
</head>
<body>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<div id="page-content" class="page-content">
<section>
<div class="row-fluid margin-top20">
<div class="span8 grider">


<div class="widget widget-box">
    <div class="tabbable tabs-top">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#TabBestsellers" data-toggle="tab"><i class="fontello-icon-article"></i> <span class="hidden-phone">Recent posts</span></a></li>
            <li><a href="#TabNewCustomers" data-toggle="tab"><i class="fontello-icon-user-add"></i> <span class="hidden-phone">Recent Users</span></a></li>
            <li><a href="#TabCustomers" data-toggle="tab"><i class="fontello-icon-eye-2"></i> <span class="hidden-phone">Task list</span></a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="TabBestsellers">
                <ul class="widget-list">
                    <g:each in="${posts}" var="post">
                    <li class="media media-overflow">
                        <div class="media-right">
                            <div class="quick-menu">
                                <div class="btn-group js-actions-container" data-post-id="${post.id}">

                                    <g:render template="/_common/postStatusDisplay" model="[status: post.status.value]"/>
                                    <button data-toggle="dropdown" class="btn btn-mini dropdown-toggle">Actions &nbsp;
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" >
                                        <g:render template="/post/postActions" model="[post: post]"/>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="media-body">
                            <ul class="data inline">
                                <li><i class="fontello-icon-feather"></i> By: <g:link controller="user" action="edit" params="[id: post.getUser().id]"><strong> ${post.getUser().fullName}</strong></g:link></li>
                                <li class="divider-vertical"></li>
                                <li><strong><g:formatDate format="dd MMM, yyyy @ h:m a" date="${post.dateCreated}"/></strong></li>
                                <li class="divider-vertical"></li>
                                <li>updated: <strong><g:formatDate format="dd MMM, yyyy @ h:m a" date="${post.lastUpdated}"/></strong></li>    <!-- 6:25 PM-->
                            </ul>
                            <h4 class="media-heading">
                                <g:render template="/post/viewPostLinks" model="[post:post]"/>
                            </h4>
                            <p class="data">${post.details}</p> <!-- @todo: trim details-->
                        </div>
                    </li>
                    </g:each>

                    </ul>
            </div>
            <div class="tab-pane" id="TabMostViewedProduct">
                <table class="table table-condensed no-margin">
                    <thead>
                    <tr>
                        <th scope="col" width="60%">Product Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Number of Views</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>John Doe</td>
                        <td class="text-right">1</td>
                        <td class="text-right bold">$118.00</td>
                    </tr>
                    <tr>
                        <td>Paula Gates</td>
                        <td class="text-right">2</td>
                        <td class="text-right bold">$1,579.50</td>
                    </tr>
                    <tr>
                        <td>Tony Rogers</td>
                        <td class="text-right">1</td>
                        <td class="text-right bold">$26.00</td>
                    </tr>
                    <tr>
                        <td>Leona Nulla</td>
                        <td class="text-right">1</td>
                        <td class="text-right bold">$312.13</td>
                    </tr>
                    <tr>
                        <td>Peter Johanson</td>
                        <td class="text-right">3</td>
                        <td class="text-right bold">$814.20</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="tab-pane" id="TabNewCustomers">
                <table class="table table-condensed no-margin">
                    <thead>
                    <tr>
                        <th scope="col" width="60%"> Customer Name</th>
                        <th scope="col">Number of Orders</th>
                        <th scope="col">Average Order Amount</th>
                        <th scope="col">Total Order Amount</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>John Doe</td>
                        <td class="text-right">1</td>
                        <td class="text-right bold">$118.00</td>
                    </tr>
                    <tr>
                        <td>Paula Gates</td>
                        <td class="text-right">2</td>
                        <td class="text-right bold">$1,579.50</td>
                        <td class="text-right bold">$1,579.50</td>
                    </tr>
                    <tr>
                        <td>Tony Rogers</td>
                        <td class="text-right">1</td>
                        <td class="text-right bold">$26.00</td>
                        <td class="text-right bold">$1,579.50</td>
                    </tr>
                    <tr>
                        <td>Leona Nulla</td>
                        <td class="text-right">1</td>
                        <td class="text-right bold">$312.13</td>
                        <td class="text-right bold">$1,579.50</td>
                    </tr>
                    <tr>
                        <td>Peter Johanson</td>
                        <td class="text-right">3</td>
                        <td class="text-right bold">$814.20</td>
                        <td class="text-right bold">$1,579.50</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="tab-pane" id="TabCustomers">
                <table class="table table-condensed no-margin">
                    <thead>
                    <tr>
                        <th scope="col" width="60%"> Customer</th>
                        <th scope="col">Items</th>
                        <th scope="col">Grand Total</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>John Doe</td>
                        <td class="text-right">1</td>
                        <td class="text-right bold">$118.00</td>
                    </tr>
                    <tr>
                        <td>Paula Gates</td>
                        <td class="text-right">2</td>
                        <td class="text-right bold">$1,579.50</td>
                    </tr>
                    <tr>
                        <td>Tony Rogers</td>
                        <td class="text-right">1</td>
                        <td class="text-right bold">$26.00</td>
                    </tr>
                    <tr>
                        <td>Leona Nulla</td>
                        <td class="text-right">1</td>
                        <td class="text-right bold">$312.13</td>
                    </tr>
                    <tr>
                        <td>Peter Johanson</td>
                        <td class="text-right">3</td>
                        <td class="text-right bold">$814.20</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- // tab content -->

    </div>
    <!-- // Tabable -->
</div>
<!-- // Widget -->
</div>
<!-- // Column -->

<div class="span4 grider">
    <div class="statistic-box ">
    <div id="userLastLogged" class="widget widget-simple widget-user">
    <div class="widget-header">
        <h4><i class="fontello-icon-user-pair"></i> Logged users</h4>
        <a id="refreshList" class="btn btn-small btn-boo pull-right" href="javascript:void(0);">Refresh <i class="fontello-icon-cw-1"></i></a>
    </div>
    %{--<div class="widget-bar form-dark">--}%
        %{--<input id="userLastLoggedSearch" type="text" placeholder="Search user" class="input-block-level margin-05 search">--}%
        %{--<ul class="nav nav-pills pull-left">--}%
            %{--<li class="dropdown"> <a href="#" data-toggle="dropdown" class="dropdown-toggle">Sort by <b class="caret"></b></a>--}%
                %{--<ul class="dropdown-menu sort-by">--}%
                    %{--<li><a class="sort" data-sort="f_name" href="javascript:void(0)">by name</a></li>--}%
                    %{--<li><a class="sort" data-sort="f_status" href="javascript:void(0)">by status</a></li>--}%
                    %{--<li><a class="sort" data-sort="f_email" href="javascript:void(0)">by email</a></li>--}%
                    %{--<li><a class="sort" data-sort="f_access" href="javascript:void(0)">by access</a></li>--}%
                %{--</ul>--}%
            %{--</li>--}%
            %{--<li class="dropdown"> <a href="#" data-toggle="dropdown" class="dropdown-toggle">Show <b class="caret"></b></a>--}%
                %{--<ul class="dropdown-menu filter">--}%
                    %{--<li><a id="filter-online" href="javascript:void(0)">Online</a></li>--}%
                    %{--<li><a id="filter-offline" href="javascript:void(0)">Offline</a></li>--}%
                    %{--<li class="divider"></li>--}%
                    %{--<li><a id="filter-all" href="javascript:void(0)">All</a></li>--}%
                %{--</ul>--}%
            %{--</li>--}%
        %{--</ul>--}%
        %{--<a id="refreshList" class="btn btn-small btn-boo pull-right" href="javascript:void(0);">Refresh <i class="fontello-icon-cw-1"></i></a> </div>--}%
    <!-- // widget bar -->

    <div class="widget-content">
    <div class="widget-body">
        <ul id="userLastLoggedList" class="widget-list list-bordered thumb-large list">
            <g:each in="${activeUsers}" var="user">
                <li class="media">
                    <div class="media-thumb media-right">
                        <div class="f_status label label-success">online</div>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">${user.fullName}</a> <small><a class="f_email" href="">${user.email}</a></small></h4>
                        <ul class="meta" >
                            <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">TBD</strong></li>
                            %{--<li>IP address: <strong class="f_ip">146.145.146.011</strong></li>--}%
                        </ul>
                    </div>
                </li>
            </g:each>
        </ul>
    </div>
    </div>
    <!-- // widget content -->

    <div class="widget-footer">
        <div class="pagination pagination-btn pagination-small pull-left">
            <ul class="paging">
            </ul>
        </div>
        <!-- // pagination -->
        <a class="btn btn-small btn-green pull-right" href="#">View All &raquo;</a> </div>
    </div>
    <!-- // Widget -->
    </div>
    <!-- // Statistic Box -->

</div>
</div>
<!-- // Example row -->

</section>
</div>
<!-- // page content -->