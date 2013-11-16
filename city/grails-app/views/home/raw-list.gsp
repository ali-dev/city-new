<g:each in="${entries}" var="post">
    <g:render template="/common/tile" model="[post: post]" />
</g:each>