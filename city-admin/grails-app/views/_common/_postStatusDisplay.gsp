<g:if test="${status == 'APPROVED'}">
    <span class="btn btn-mini btn-green">APPROVED</span>
</g:if>
<g:elseif test="${status == 'REJECTED'}">
    <span class="btn btn-mini btn-red">REJECTED</span>
</g:elseif>
<g:else>
    <span class="btn btn-mini btn-blue">PENDING</span>
</g:else>
