<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="City Admin"/></title>
    %{--<meta name="viewport" content="width=device-width, initial-scale=1.0">--}%
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">--}%
    <link rel="stylesheet" href="${resource(dir: 'css/admin', file: 'bootstrap.css')}" type="text/css" >
    <link rel="stylesheet" href="${resource(dir: 'css/admin', file: 'bootstrap-responsive.css')}" type="text/css" >
    <link rel="stylesheet" href="${resource(dir: 'css/admin', file: 'boo-extension.css')}" type="text/css" >
    <link rel="stylesheet" href="${resource(dir: 'css/admin', file: 'boo.css')}"type="text/css" >
    <link rel="stylesheet" href="${resource(dir: 'css/admin', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/admin', file: 'boo-coloring.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/admin', file: 'boo-utility.css')}" type="text/css" >

    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    %{--<link rel="shortcut icon" href="${resource(dir: 'css/admin', file: 'favicon.ico')}">--}%
    %{--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${resource(dir: 'images', file: 'apple-touch-icon-144-precomposed.png')}">--}%
    %{--<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo $this->baseUrl()?>/admin-assets/ico/apple-touch-icon-114-precomposed.png">--}%
    %{--<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo $this->baseUrl()?>/admin-assets/ico/apple-touch-icon-72-precomposed.png">--}%
    %{--<link rel="apple-touch-icon-precomposed" href="<?php echo $this->baseUrl()?>/admin-assets/ico/apple-touch-icon-57-precomposed.png">--}%


    <g:layoutHead/>
    <r:layoutResources />
</head>
<body class="sidebar-left">

%{--<div class="footer" role="contentinfo"></div>--}%
%{--<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>--}%
%{--<g:javascript library="application"/>--}%
<r:require modules="application"/>
<r:layoutResources />






















<div class="page-container">
    <div id="header-container">
        <div id="header">
            <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <a class="brand" href="javascript:void(0);"><!--<img src="<?php echo $this->baseUrl()?>/admin-assets/img/demo/logo-brand.png"> --></a>

                    </div>
                </div>
            </div>
            <!-- // navbar -->

            <div class="header-drawer">
                <div class="mobile-nav text-center visible-phone"> <a href="javascript:void(0);" class="mobile-btn" data-toggle="collapse" data-target=".sidebar"><i class="aweso-icon-chevron-down"></i> Components</a> </div>
                <!-- // Resposive navigation -->
                <div class="breadcrumbs-nav hidden-phone">
                    <ul id="breadcrumbs" class="breadcrumb">
                        <li><g:link action="index" controller="dashboard"><i class="fontello-icon-home f12"></i> Dashboard</g:link>  <span class="divider">/</span></li>
                        <li class="dropdown"><a href="javascript:void(0);">Table </a> <span class="divider">/</span>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:void(0);">Table</a></li>
                                <li><a href="javascript:void(0);">Elements</a></li>
                                <li><a href="javascript:void(0);">Elements</a></li>
                                <li><a href="javascript:void(0);">Elements</a></li>
                            </ul>
                        </li>
                        <li class="active">Boo Admin </li>
                    </ul>
                </div>
                <!-- // breadcrumbs -->
            </div>
            <!-- // drawer -->
        </div>
    </div>
    <!-- // header-container -->

    <div id="main-container">
        <div id="main-sidebar" class="sidebar sidebar-inverse">
            <div class="sidebar-item">
                <div class="media profile">
                    <div class="media-thumb media-left thumb-bordereb"> <a class="img-shadow" href="javascript:void(0);"><img class="thumb"></a> </div>
                    <div class="media-body">
                        <h5 class="media-heading">Ali Abu El Haj <small>as Administrator</small></h5>
                        <p class="data">Last Access: 16 May 15:30</p>
                    </div>
                </div>
            </div>
            <!-- // sidebar item - profile -->

            <ul id="mainSideMenu" class="nav nav-list nav-side">
                <li class="accordion-group">
                    %{--<a href="#accDash" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle">  </a> --}%
                    <div class="accordion-heading"> <g:link controller="dashboard" class="accordion-toggle"><span class="item-icon fontello-icon-monitor"></span> <i class="chevron fontello-icon-right-open-3"></i> Dashboard</g:link> </div>

                </li>
                <!-- // item accordionMenu Dashboard -->
                <li class="accordion-group">
                    <div class="accordion-heading"> <a href="#accUsers" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon fontello-icon-users-1"></span><i class="chevron fontello-icon-right-open-3"></i> Users </a> </div>
                    <ul class="accordion-content nav nav-list collapse in" id="accUsers">
                        <li> <a href="#js-create-user-modal" id="js-add-user-link"> <i class=" fontello-icon-user-add"></i> Add User</a> </li>
                        <li> <g:link controller="user" action="list" ><i class="fontello-icon-right-dir"></i> All </g:link> </li>
                        <li> <g:link controller="user" action="list" params="[accountType: 'business']"><i class="fontello-icon-right-dir"></i> Businesses </g:link></li>
                        <li> <g:link controller="user" action="list" params="[accountType: 'organization']"> <i class="fontello-icon-right-dir"></i> Organizations </g:link> </li>
                        <li> <g:link controller="user" action="list" params="[accountType: 'artist']"><i class="fontello-icon-right-dir"></i> Artists </g:link></li>
                        <li> <g:link controller="user" action="list" params="[accountType: 'person']"><i class="fontello-icon-right-dir"></i> People</g:link></li>
                    </ul>
                </li>
                <!-- // item accordionMenu Users -->
                <li class="accordion-group">
                %{--<a href="#accPosts" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon  fontello-icon-article"></span> <i class="chevron fontello-icon-right-open-3"></i> Posts </a>--}%
                <div class="accordion-heading">
                <a href="#accPosts" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon  fontello-icon-article"></span> <i class="chevron fontello-icon-right-open-3"></i> Posts </a>
                    %{--<g:link url="${createLink(mapping: listPosts)}" class="accordion-toggle">Posts</g:link>--}%
                </div>
                    <ul class="accordion-content nav nav-list collapse" id="accPosts">
                        <li> <a href="elements-notification.html"> <i class="fontello-icon-right-dir"></i> Today </a> </li>
                        <li> <a href="component-file-upload.html"> <i class="fontello-icon-right-dir"></i> Last week </a> </li>
                        %{--<li> <a href="component-rangeslider.html"> <i class="fontello-icon-right-dir"></i> All </a> </li>--}%
                        <li> <g:link controller="post" action="index" > <i class="fontello-icon-right-dir"></i>All</g:link></li>
                    </ul>
                </li>

                <li class="accordion-group">
                    <div class="accordion-heading"> <a href="#accTags" data-parent="#mainSideMenu" data-toggle="collapse" class="accordion-toggle"> <span class="item-icon fontello-icon-tag-4"></span> <i class="chevron fontello-icon-right-open-3"></i> Tags </a> </div>
                    <ul class="accordion-content nav nav-list collapse" id="accTags">
                        <li> <a href="elements-notification.html"> <i class="fontello-icon-right-dir"></i> All tags </a> </li>
                        <li> <a href="component-file-upload.html"> <i class="fontello-icon-right-dir"></i> Add Tag </a> </li>
                        <li> <a href="component-rangeslider.html"> <i class="fontello-icon-right-dir"></i> Suggested tags </a> </li>
                        <li> <g:link url="${createLink(mapping: listPosts)}" class="accordion-toggle"> <i class="fontello-icon-right-dir"></i> All </a></g:link></li>
                    </ul>
                </li>
            </ul>
            <!-- // sidebar menu -->

            <div class="sidebar-item"></div>
            <!-- // sidebar item -->

        </div>

        <!-- // sidebar -->
        <div id="main-content" class="main-content container-fluid">
            <g:if test="${flash.message}">
            <ul id="notyfy_container_topRight" class="notyfy_container">
                <li class="notyfy_wrapper notyfy_success" style="cursor: pointer;">
                    <div id="notyfy_517969701258201200" class="notyfy_bar">
                        <div class="notyfy_message">
                            <span class="notyfy_text">${flash.message}</span>
                        </div>
                    </div>
                </li>
            </ul>
            </g:if>

        <g:layoutBody/>
        </div>

        <!-- // page content -->




    </div>
    <!-- // main-content -->

</div>
<!-- // main-container  -->

<footer id="footer-fix">
    <div id="footer-sidebar" class="footer-sidebar">
        <div class="navbar">
            <div class="btn-toolbar"> <a class="btn btn-glyph btn-link" href="javascript:void(0);"><i class="fontello-icon-up-open-1"></i></a> </div>
        </div>
    </div>
    <!-- // footer sidebar -->

    <div id="footer-content" class="footer-content">
        <div class="navbar navbar-inverse">
            <div class="navbar-inner">
                <ul class="nav pull-left">
                    <li class="divider-vertical"></li>
                    <li><a class="btn-glyph fontello-icon-cw" href="javascript:void(0);"></a></li>
                    <li class="divider-vertical"></li>
                    <li><a class="fontello-icon-home-3" href="dashboard-one.html"></a></li>
                    <li class="divider-vertical"></li>
                </ul>
                <ul class="nav pull-right">
                    <li class="divider-vertical"></li>
                    <li><a id="btnLogout" class="btn-glyph fontello-icon-logout-1 tip" href="javascript:void(0);" title="logout"></a></li>
                    <li class="divider-vertical"></li>
                    <li><a id="btnScrollup" class="scrollup btn-glyph fontello-icon-up-open-1" href="javascript:void(0);"><span class="hidden-phone">Scroll</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- // footer content -->

</footer>
<!-- // footer-fix  -->

</div>
<!-- // page-container  -->


<div class="modal" style='display:none'>
    <div id="js-create-user-modal" >
        <div class="row-fluid">
            <div class="span3">
                <div class="widget widget-simple  bg-blue-light">
                    <div class="widget-header header-small" data-target="#demoBlue">
                        <h4><i class="fontello-icon-user-add"></i>Business</h4>

                    </div>
                    <div id="demoBlue" class="widget-content">
                        <div class="widget-body">
                            <div class="widget-row">
                                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo.
                                Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo.
                                </p>
                            </div>
                            <div class="widget-row">
                                <g:link class="btn btn-mini btn-blue right" url="${createLink(mapping: 'addUser', params: [type: 'business'])}">Add</g:link>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- // Widget -->

            </div>
            <!-- // Column -->

            <div class="span3">
                <div class="widget widget-simple widget-collapsible bg-green-light">
                    <div class="widget-header header-small" data-target="#demoGreen">
                        <h4><i class="fontello-icon-user-add"></i>Organization</h4>
                    </div>
                    <div id="demoGreen" class="widget-content">
                        <div class="widget-body">

                            <div class="widget-row">
                                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo.
                                Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo.
                                </p>
                            </div>
                            <div class="widget-row">
                                <g:link class="btn btn-mini btn-green right" url="${createLink(mapping: 'addUser', params: [type: 'organization'])}">Add</g:link>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- // Widget -->

            </div>
            <!-- // Column -->

            <div class="span3">
                <div class="widget widget-simple bg-yellow-medium">
                    <div class="widget-header header-small " >
                        <h4><i class="fontello-icon-user-add"></i>Artist</h4>
                    </div>
                    <div class="widget-content">
                        <div class="widget-body">
                            <div class="widget-row">
                                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo.
                                Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo.
                                </p>
                            </div>
                            <div class="widget-row">
                                <g:link class="btn btn-mini btn-yellow" url="${createLink(mapping: 'addUser', params: [type: 'artist'])}">Add</g:link>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- // Widget -->

            </div>

            <div class="span3">
                <div class="widget widget-simple widget-collapsible bg-gray-light">
                    <div class="widget-header header-small " >
                        <h4><i class="fontello-icon-user-add"></i>Person</h4>
                    </div>
                    <div id="demoYellow" class="widget-content collapse in">
                        <div class="widget-body">
                            <div class="widget-row">
                                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo.
                                Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo.</p>
                            </div>
                            <div class="widget-row">
                                <g:link class="btn btn-mini" url="${createLink(mapping: 'addUser', params: [type: 'person'])}">Add</g:link>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- // Widget -->

            </div>
            <!-- // Column -->

        </div>
    </div>
</div>


</body>
</html>
