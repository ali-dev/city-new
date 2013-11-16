<!DOCTYPE html>
<html lang="en">
<head>
    <!-- META DATA -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if IE]><meta http-equiv="cleartype" content="on" /><![endif]-->

    <!-- SEO -->
    <title><g:layoutTitle default="City.ps"/></title>

    <!-- MODERNIZR -->
    <!-- <script type="text/javascript" src="assets/scripts/modernizr.js"></script> -->

    <!-- ICONS -->
    <link rel="shortcut icon"  href="${resource(dir: 'images', file: 'favicon2.ico')}" type="image/x-icon">

    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}" />
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'touch-icon-iphone.png')}" />
    <link rel="apple-touch-icon" sizes="72x72" href="${resource(dir: 'images', file: 'apple-touch-icon-72x72-precomposed.png')}" />
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-114x114-precomposed.png')}" />
    <link rel="apple-touch-icon" sizes="144x144" href="${resource(dir: 'images', file: 'apple-touch-icon-144x144-precomposed.png')}" />

    <!-- STYLESHEETS -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:300,500,600,800' rel='stylesheet' type='text/css'>
    %{--<link rel="stylesheet" media="screen, projection" href="assets/styles/" />--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'scripts/vendor/select2', file: 'select2.css')}" type="text/css" >--}%

    %{--<link rel="stylesheet" href="${resource(dir: 'scripts/vendor/select2', file: 'select-theme.css')}" type="text/css" >--}%
    <link rel="stylesheet" media="screen, projection" href="${resource(dir: 'styles', file: 'screen.css')}" type="text/css">
    <!-- <link rel="stylesheet" media="screen and (min-width: 480px)" href="assets/styles/screen_small.css" />
        <link rel="stylesheet" media="screen and (min-width: 800px)" href="assets/styles/screen_medium.css" />
        <link rel="stylesheet" media="screen and (min-width: 1024px)" href="assets/styles/screen_large.css" />
        <link rel="stylesheet" media="screen and (min-width: 1450px)" href="assets/styles/screen_huge.css" /> -->
    <!--[if lte IE 8]><link rel="stylesheet" type="text/css" media="screen, projection" href="assets/styles/ie8.css" /><![endif]-->
    <!--[if lte IE 7]><link rel="stylesheet" type="text/css" media="screen, projection" href="assets/styles/ie7.css" /><![endif]-->

    <!-- JQUERY -->
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript">window.jQuery || document.write('<script type="text/javascript" src="assets/scripts/jquery.min.js"><\/script>')</script>

    <!-- JAVASCRIPT -->
    %{--<script type="text/javascript" src="${resource(dir: 'scripts/vendor/select2', file: 'select2.min.js')}"></script>--}%
    %{--<script type="text/javascript" src="${resource(dir: 'scripts', file: 'global.js')}"></script>--}%

    <!-- 3rd Party JS -->

    <g:layoutHead/>
    <r:layoutResources />
</head>
<body>











<!-- header -->

<!-- REMOVE FOR PRODUCTION -->
<div class="breakpointTester">
</div>
<!-- REMOVE FOR PRODUCTION -->

<div class="globalHeader">

    <div class="globalHeader-util">

        <h1 class="globalLogo">City.ps</h1>

        <div class="globalUtil">
            <div class="globalUtil-bd">
                <a class="btn btn_shadow" href="">Login</a>
                <a class="btn btn_shadow" href="">Register</a>
                <div class="btn btn_mobileMenu js-globalNav-toggle">Menu</div>
            </div>
            <div class="globalUtil-ft">
                <a class="link link_cta" href="">Learn more about City.ps</a>
            </div>
        </div>

    </div>

    <div class="globalHeader-nav">
        <nav class="globalNav">
            <div class="lTable">
                <div>
                    <ul class="globalNav-nav js-globalNav-target">
                        <li><a href="">All<span class="isHidden_mobile"> Posts</span></a></li>
                        <li><a href="">Jobs</a></li>
                        <li><a href="">Events</a></li>
                        <li><a href="">Arts</a></li>
                        <li><a href="">Restaurants</a></li>
                        <li><a href="">Businesses</a></li>
                        <li><a href="">Organizations</a></li>
                    </ul>
                </div>
                <div class="mix-lTable_isRight">
                    <div class="globalNav-search">
                        <form class="globalSearch">
                            <label class="globalSearch-label">Search</label>
                            <input class="globalSearch-input" type="search" placeholder="Enter Keywords" />
                        </form>
                        <div class="advSearchTrigger js-advSearchToggle">Advanced Search</div>
                    </div>
                </div>
            </div>
        </nav>
        <div class="globalTools lTable">
            <div class="advSearchBox js-advSearchTarget">
                <form id="js-advanced-search-form" class="advSearchTarget" action="${createLink(controller: 'home', action: 'index')}">
                    <div class="advSearchTarget-fieldset">
                        <input class="input" type="text" id="searchTerms" name="searchTerms"  placeholder="Enter Keywords.." />
                        %{--<input class="input" type="input" placeholder="Posted by.." />--}%
                        <select class=" select2" name="postedBy" data-placeholder="Posted by..">
                            <option></option>
                            <g:each var="user" in="${usersList}" >
                                <option>${user.fullName}</option>
                            </g:each>
                        </select>
                        <select class="select2" style="width:500px;" multiple="multiple" name="tags" data-placeholder="Choose Tags..">
                            <option></option>
                            <g:each var="tag" in="${tags}" >
                                <option value="${tag.slug}">${tag.name}</option>
                            </g:each>
                        </select>
                        <input class="btn btn_tight" id="js-search-posts"  type="submit" value="Search" />
                    </div>
                </form>
            </div>
            <div class="sortBox">
                <div class="sortBox-label isHidden_mobile">Sort By</div>
                <ul class="sortBox-list">
                    <li class="isActive"><a href="">Most Recent</a></li>
                    <li><a href="">Most Liked</a></li>
                    <li><a href="">Most Favorites</a></li>
                </ul>
            </div>
        </div>

    </div>
</div>
<!-- end header -->




<g:layoutBody/>
<r:layoutResources />
















