
<%@ page import="hub.Enlace" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'enlace.label', default: 'Enlace')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-enlace" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-enlace" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list enlace">
			
				<g:if test="${enlaceInstance?.abreviatura}">
				<li class="fieldcontain">
					<span id="abreviatura-label" class="property-label"><g:message code="enlace.abreviatura.label" default="Abreviatura" /></span>
					
						<span class="property-value" aria-labelledby="abreviatura-label"><g:fieldValue bean="${enlaceInstance}" field="abreviatura"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enlaceInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="enlace.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${enlaceInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enlaceInstance?.uri}">
				<li class="fieldcontain">
					<span id="uri-label" class="property-label"><g:message code="enlace.uri.label" default="Uri" /></span>
					
						<span class="property-value" aria-labelledby="uri-label"><g:fieldValue bean="${enlaceInstance}" field="uri"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:enlaceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${enlaceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
