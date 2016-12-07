
<%@ page import="hub.Centro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'centro.label', default: 'Centro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-centro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-centro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list centro">
			
				<g:if test="${centroInstance?.adherido}">
				<li class="fieldcontain">
					<span id="adherido-label" class="property-label"><g:message code="centro.adherido.label" default="Adherido" /></span>
					
						<span class="property-value" aria-labelledby="adherido-label"><g:formatBoolean boolean="${centroInstance?.adherido}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${centroInstance?.contactoLegal}">
				<li class="fieldcontain">
					<span id="contactoLegal-label" class="property-label"><g:message code="centro.contactoLegal.label" default="Contacto Legal" /></span>
					
						<span class="property-value" aria-labelledby="contactoLegal-label"><g:fieldValue bean="${centroInstance}" field="contactoLegal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${centroInstance?.contactoTecnico}">
				<li class="fieldcontain">
					<span id="contactoTecnico-label" class="property-label"><g:message code="centro.contactoTecnico.label" default="Contacto Tecnico" /></span>
					
						<span class="property-value" aria-labelledby="contactoTecnico-label"><g:fieldValue bean="${centroInstance}" field="contactoTecnico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${centroInstance?.dependeDe}">
				<li class="fieldcontain">
					<span id="dependeDe-label" class="property-label"><g:message code="centro.dependeDe.label" default="Depende De" /></span>
					
						<g:each in="${centroInstance.dependeDe}" var="d">
						<span class="property-value" aria-labelledby="dependeDe-label"><g:link controller="institucion" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${centroInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="centro.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${centroInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${centroInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="centro.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${centroInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${centroInstance?.siglas}">
				<li class="fieldcontain">
					<span id="siglas-label" class="property-label"><g:message code="centro.siglas.label" default="Siglas" /></span>
					
						<span class="property-value" aria-labelledby="siglas-label"><g:fieldValue bean="${centroInstance}" field="siglas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${centroInstance?.singiID}">
				<li class="fieldcontain">
					<span id="singiID-label" class="property-label"><g:message code="centro.singiID.label" default="Singi ID" /></span>
					
						<span class="property-value" aria-labelledby="singiID-label"><g:fieldValue bean="${centroInstance}" field="singiID"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:centroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${centroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
