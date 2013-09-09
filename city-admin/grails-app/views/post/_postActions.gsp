<li><g:link url="${createLink(mapping: 'editPost', params: [id: post.id])}"><i class="icon-pencil"></i><span class="divider-text"></span> Edit</g:link></li>
<li class="divider"></li>
<g:if test="${post.status.isPending()}">
    <li><g:link class="js-update-post-status" data-next-status="APPROVED" url="${createLink(mapping: 'updatePostStatus', params: [id: post.id, status: 'APPROVED'])}"><i class="icon-ok"></i><span class="divider-text"></span> Approve</g:link> </li>
    <li><g:link class="js-update-post-status" data-next-status="REJECTED" url="${createLink(mapping: 'updatePostStatus', params: [id: post.id, status: 'REJECTED'])}"><i class="icon-remove"></i><span class="divider-text"></span>Reject</g:link></li>
</g:if>
<g:elseif test="${post.status.isApproved()}">
    <li><g:link class="js-update-post-status" data-next-status="REJECTED" url="${createLink(mapping: 'updatePostStatus', params: [id: post.id, status: 'REJECTED'])}"><i class="icon-remove " ></i><span class="divider-text"></span>Reject</g:link></li>
    <li><g:link class="js-update-post-status" data-next-status="PENDING" url="${createLink(mapping: 'updatePostStatus', params: [id: post.id, status: 'PENDING'])}"><i class="icon-pause"></i><span class="divider-text"></span>Set to Pending</g:link></li>
</g:elseif>
<g:else>
    <li><g:link class="js-update-post-status" data-next-status="APPROVED" url="${createLink(mapping: 'updatePostStatus', params: [id: post.id, status: 'APPROVED'])}"><i class="icon-ok"></i><span class="divider-text"></span>Approve</g:link></li>
    <li><g:link class="js-update-post-status" data-next-status="PENDING" url="${createLink(mapping: 'updatePostStatus', params: [id: post.id, status: 'PENDING'])}"><i class="icon-pause"></i><span class="divider-text"></span>Set to Pending</g:link></li>
</g:else>

