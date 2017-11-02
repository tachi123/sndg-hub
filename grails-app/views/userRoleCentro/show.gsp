
<%@ page import="hub.UserRoleCentro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userRoleCentro.label', default: 'UserRoleCentro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-userRoleCentro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-userRoleCentro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list userRoleCentro">
			
				<g:if test="${userRoleCentroInstance?.centro}">
				<li class="fieldcontain">
					<span id="centro-label" class="property-label"><g:message code="userRoleCentro.centro.label" default="Centro" /></span>
					
						<span class="property-value" aria-labelledby="centro-label"><g:link controller="centro" action="show" id="${userRoleCentroInstance?.centro?.id}">${userRoleCentroInstance?.centro?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRoleCentroInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="userRoleCentro.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:link controller="role" action="show" id="${userRoleCentroInstance?.role?.id}">${userRoleCentroInstance?.role?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userRoleCentroInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="userRoleCentro.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${userRoleCentroInstance?.user?.id}">${userRoleCentroInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userRoleCentroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userRoleCentroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
