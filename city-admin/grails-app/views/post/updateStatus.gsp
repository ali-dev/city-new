%{--<span class="btn btn-mini btn-blue">PENDING</span>--}%
<g:render template="/_common/postStatusDisplay" model="[status: post.status.value]"/>
<button data-toggle="dropdown" class="btn btn-mini dropdown-toggle">Actions &nbsp;
    <span class="caret"></span>
</button>
<ul class="dropdown-menu pull-right">
    <g:render template="postActions" model="[post: post]"/>
</ul>