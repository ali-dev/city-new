<g:if test="${post.getType() == 'photo'}">
    <g:link url="${createLink(mapping: 'viewPost', params: [id: post.id])}" title="${post.title}" data-type="${post.getType()}" class="js-show-photo">${post.title}</g:link>
</g:if>
<g:elseif test="${post.getType() == 'video'}">
    <g:link url="${createLink(mapping: 'viewPost', params: [id: post.id])}" title="${post.title}"  data-type="${post.getType()}" class="js-show-video">${post.title}</g:link>
</g:elseif>
<g:else>
    <g:link url="${createLink(mapping: 'viewPost', params: [id: post.id])}" title="${post.title}" data-type="${post.getType()}" class="js-show-entry">${post.title}</g:link>
</g:else>