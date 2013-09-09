
<%@ page import="ps.city.core.domain.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.contacts}">
				<li class="fieldcontain">
					<span id="contacts-label" class="property-label"><g:message code="user.contacts.label" default="Contacts" /></span>
					
						<g:each in="${userInstance.contacts}" var="c">
						<span class="property-value" aria-labelledby="contacts-label"><g:link controller="userContact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.entryLike}">
				<li class="fieldcontain">
					<span id="entryLike-label" class="property-label"><g:message code="user.entryLike.label" default="Entry Like" /></span>
					
						<g:each in="${userInstance.entryLike}" var="e">
						<span class="property-value" aria-labelledby="entryLike-label"><g:link controller="userEntryLike" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.locations}">
				<li class="fieldcontain">
					<span id="locations-label" class="property-label"><g:message code="user.locations.label" default="Locations" /></span>
					
						<g:each in="${userInstance.locations}" var="l">
						<span class="property-value" aria-labelledby="locations-label"><g:link controller="userLocation" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.page}">
				<li class="fieldcontain">
					<span id="page-label" class="property-label"><g:message code="user.page.label" default="Page" /></span>
					
						<span class="property-value" aria-labelledby="page-label"><g:link controller="page" action="show" id="${userInstance?.page?.id}">${userInstance?.page?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${userInstance?.id}" />
					<g:link class="edit" action="edit" id="${userInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
