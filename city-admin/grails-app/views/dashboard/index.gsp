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
                                <div class="btn-group js-actions-container">

                                    <g:render template="/_common/postStatusDisplay" model="[status: post.status.value]"/>
                                    <button data-toggle="dropdown" class="btn btn-mini dropdown-toggle">Actions &nbsp;
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right">
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
    <div class="widget-header no-border">
        <h4><i class="fontello-icon-user-pair"></i> Last logged users</h4>
    </div>
    <div class="widget-bar form-dark">
        <input id="userLastLoggedSearch" type="text" placeholder="Search user" class="input-block-level margin-05 search">
        <ul class="nav nav-pills pull-left">
            <li class="dropdown"> <a href="#" data-toggle="dropdown" class="dropdown-toggle">Sort by <b class="caret"></b></a>
                <ul class="dropdown-menu sort-by">
                    <li><a class="sort" data-sort="f_name" href="javascript:void(0)">by name</a></li>
                    <li><a class="sort" data-sort="f_status" href="javascript:void(0)">by status</a></li>
                    <li><a class="sort" data-sort="f_email" href="javascript:void(0)">by email</a></li>
                    <li><a class="sort" data-sort="f_access" href="javascript:void(0)">by access</a></li>
                </ul>
            </li>
            <li class="dropdown"> <a href="#" data-toggle="dropdown" class="dropdown-toggle">Show <b class="caret"></b></a>
                <ul class="dropdown-menu filter">
                    <li><a id="filter-online" href="javascript:void(0)">Online</a></li>
                    <li><a id="filter-offline" href="javascript:void(0)">Offline</a></li>
                    <li class="divider"></li>
                    <li><a id="filter-all" href="javascript:void(0)">All</a></li>
                </ul>
            </li>
        </ul>
        <a id="refreshList" class="btn btn-small btn-boo pull-right" href="javascript:void(0);">Reset <i class="fontello-icon-cw-1"></i></a> </div>
    <!-- // widget bar -->

    <div class="widget-content">
    <div class="widget-body">
        <ul id="userLastLoggedList" class="widget-list list-bordered thumb-large list">
            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-important">offline</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Paula Gates</a> <small><a class="f_email" href="javascript:void(0);">gatesa@example.com </a> </small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">08:21</strong></li>
                        <li>IP address: <strong class="f_ip">158.45.46.27</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-success">online</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Joaquin Lippincott</a> <small><a class="f_email" href="">aquin@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">08:45</strong></li>
                        <li>IP address: <strong class="f_ip">146.145.146.011</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-important">offline</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Dylan Tack</a> <small><a class="f_email" href="">d.tack@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">08:52</strong></li>
                        <li>IP address: <strong class="f_ip">111.105.156.103</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-success">online</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Scott Vandenhey</a> <small><a class="f_email" href="">vandy@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">09:15</strong></li>
                        <li>IP address: <strong class="f_ip">123.45.78.47</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-important">offline</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Barrett Olafson</a> <small><a class="f_email" href="">olagson@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">09:22</strong></li>
                        <li>IP address: <strong class="f_ip">147.200.69.00</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-important">offline</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Chuck Vose</a> <small><a class="f_email" href="">vose@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">09:35</strong></li>
                        <li>IP address: <strong class="f_ip">154.147.46.78</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-success">online</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Mariya Borisova</a> <small><a class="f_email" href="">mbo@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">09:37</strong></li>
                        <li>IP address: <strong class="f_ip">75.45.45.75</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-important">offline</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Gizzelle Williams</a> <small><a class="f_email" href="">gizzelle@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">10:16</strong></li>
                        <li>IP address: <strong class="f_ip">146.174.200.124</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-success">online</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Julie Baumler</a> <small><a class="f_email" href="">julie.baumler@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">10:22</strong></li>
                        <li>IP address: <strong class="f_ip">102.105.104.55</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-success">online</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Anna Gates</a> <small><a class="f_email" href="">a.gates@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">10:59</strong></li>
                        <li>IP address: <strong class="f_ip">125.205.204.27</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-important">offline</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Brent Dillender</a> <small><a class="f_email" href="">bredi@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">12:45</strong></li>
                        <li>IP address: <strong class="f_ip">158.126.145.27</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-important">offline</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Petr Pederson</a> <small><a class="f_email" href="">pepe@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">12:46</strong></li>
                        <li>IP address: <strong class="f_ip">111.125.146.27</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-success">online</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Nicolas Johanson</a> <small><a class="f_email" href="">nikolas.johanson@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">13:15</strong></li>
                        <li>IP address: <strong class="f_ip">134.11.22.33</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

            <li class="media">
                <div class="media-thumb media-right">
                    <div class="f_status label label-important">offline</div>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><i class="fontello-icon-user-4"></i> <a class="f_name" href="javascript:void(0);">Katarina Sarmirianos</a> <small><a class="f_email" href="">sarmir@example.com</a></small></h4>
                    <ul class="meta" >
                        <li>Last Access: <i class="fontello-icon-back-in-time"></i> <strong class="f_access">14:23</strong></li>
                        <li>IP address: <strong class="f_ip">158.45.46.27</strong></li>
                    </ul>
                </div>
            </li>
            <!-- // item -->

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

    <div class="statistic-box well well-black">
        <div class="section-title">
            <h6><i class="fontello-icon-back-in-time"></i> Average Orders</h6>
        </div>
        <div class="section-content">
            <h2 class="statistic-values">$2,644.42</h2>
        </div>
    </div>
    <!-- // Statistic Box -->

    <div class="widget widget-simple">
        <div class="widget-header header-small"> <a class="btn btn-mini btn-success pull-right" href="#">Show All</a>
            <h6><i class="fontello-icon-back-in-time"></i> Last 5 Orders</h6>
        </div>
        <div class="widget-content">
            <div class="widget-body">
                <table class="table table-condensed">
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
    </div>
    <!-- // Widget -->

    <div class="widget widget-simple">
        <div class="widget-header header-small"> <a class="btn btn-mini btn-success pull-right" href="#">Show All</a>
            <h6><i class="fontello-icon-back-in-time"></i> Last 5 Search Terms</h6>
        </div>
        <div class="widget-content">
            <div class="widget-body">
                <table class="table table-condensed">
                    <thead>
                    <tr>
                        <th scope="col" width="60%">Search Term</th>
                        <th scope="col">Results</th>
                        <th scope="col">Number of Uses</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Boo</td>
                        <td class="text-right">1</td>
                        <td class="text-right bold">18</td>
                    </tr>
                    <tr>
                        <td>iphone</td>
                        <td class="text-right">36</td>
                        <td class="text-right bold">2458</td>
                    </tr>
                    <tr>
                        <td>Jewellery</td>
                        <td class="text-right">0</td>
                        <td class="text-right bold">0</td>
                    </tr>
                    <tr>
                        <td>shoe</td>
                        <td class="text-right">9</td>
                        <td class="text-right bold">6</td>
                    </tr>
                    <tr>
                        <td>blablabla</td>
                        <td class="text-right">0</td>
                        <td class="text-right bold">0</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- // Widget -->

    <div class="widget widget-simple">
        <div class="widget-header header-small"> <a class="btn btn-mini btn-success pull-right" href="#">Show All</a>
            <h6><i class="fontello-icon-search-2"></i> Top 5 Search Terms</h6>
        </div>
        <div class="widget-content">
            <div class="widget-body">
                <table class="table table-condensed">
                    <thead>
                    <tr>
                        <th scope="col" width="60%">Search Term</th>
                        <th scope="col">Results</th>
                        <th scope="col">Number of Uses</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>iPhone</td>
                        <td class="text-right">36</td>
                        <td class="text-right bold">2458</td>
                    </tr>
                    <tr>
                        <td>Apple</td>
                        <td class="text-right">265</td>
                        <td class="text-right bold">2165</td>
                    </tr>
                    <tr>
                        <td>Computer</td>
                        <td class="text-right">184</td>
                        <td class="text-right bold">1278</td>
                    </tr>
                    <tr>
                        <td>camera</td>
                        <td class="text-right">19</td>
                        <td class="text-right bold">1065</td>
                    </tr>
                    <tr>
                        <td>blue</td>
                        <td class="text-right">27</td>
                        <td class="text-right bold">865</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- // Widget -->

</div>
</div>
<!-- // Example row -->

</section>
</div>
<!-- // page content -->