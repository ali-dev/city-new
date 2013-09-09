<g:if test="${user.accountType == 'artist'}" >
    <g:link action="createPhoto" controller="photo" params="[pageId: user.page.id]">Add Photo</g:link> |
    <g:link action="createVideo" controller="video" params="[pageId: user.page.id]">Add Video</g:link>
</g:if>
<g:elseif test="${user.accountType == 'organization' || user.accountType == 'business'}">
    <g:link action="createEvent" controller="event" params="[pageId: user.page.id]">Create Event</g:link> |
    <g:link action="createJob" controller="job" params="[pageId: user.page.id]">Create Job</g:link>
</g:elseif>

