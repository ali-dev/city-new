<%@ page import="ps.city.core.domain.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'contacts', 'error')} ">
	<label for="contacts">
		<g:message code="user.contacts.label" default="Contacts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.contacts?}" var="c">
    <li><g:link controller="userContact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="userContact" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'userContact.label', default: 'UserContact')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'entryLike', 'error')} ">
	<label for="entryLike">
		<g:message code="user.entryLike.label" default="Entry Like" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.entryLike?}" var="e">
    <li><g:link controller="userEntryLike" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="userEntryLike" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'userEntryLike.label', default: 'UserEntryLike')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'locations', 'error')} ">
	<label for="locations">
		<g:message code="user.locations.label" default="Locations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.locations?}" var="l">
    <li><g:link controller="userLocation" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="userLocation" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'userLocation.label', default: 'UserLocation')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'page', 'error')} ">
	<label for="page">
		<g:message code="user.page.label" default="Page" />
		
	</label>
	<g:select id="page" name="page.id" from="${ps.city.core.domain.Page.list()}" optionKey="id" required="" value="${userInstance?.page?.id}" class="many-to-one"/>
</div>

