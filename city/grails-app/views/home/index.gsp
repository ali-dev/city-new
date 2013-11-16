<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <r:require modules="core, postsListPages"/>
</head>

<body>
<div class="wrapper">
<div class="section">


<div class="grid grid_overflow">
<div class="grid-col grid-col_8">
<ul id="js-postTileContainer" class="staticBlocksForIsotope"><!--testBlocks blocks blocks_overflow blocks_4upTo1up -->
<g:each in="${entries}" var="post">
    <g:render template="/common/tile" model="[post: post]" />
</g:each>

</ul>

</div>

</div>
</div>
</div>

<!-- footer -->
<div style="padding: 10px 5px; margin: 20px auto; text-align: center; background-color: lime; "><!-- Header -->
Footer Placeholder
</div>

<div id="js-posts-modal"></div>

<div class="md-overlay"></div><!-- the overlay element -->

</body>
</html>


