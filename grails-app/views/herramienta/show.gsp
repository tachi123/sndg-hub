
<%@ page import="hub.Herramienta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'herramienta.label', default: 'Herramienta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-herramienta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-herramienta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list herramienta">
			
				<g:if test="${herramientaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="herramienta.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${herramientaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${herramientaInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="herramienta.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${herramientaInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${herramientaInstance?.singiID}">
				<li class="fieldcontain">
					<span id="singiID-label" class="property-label"><g:message code="herramienta.singiID.label" default="Singi ID" /></span>
					
						<span class="property-value" aria-labelledby="singiID-label"><g:fieldValue bean="${herramientaInstance}" field="singiID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${herramientaInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="herramienta.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${herramientaInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${herramientaInstance?.responsable}">
				<li class="fieldcontain">
					<span id="responsable-label" class="property-label"><g:message code="herramienta.responsable.label" default="Responsable" /></span>
					
						<span class="property-value" aria-labelledby="responsable-label"><g:fieldValue bean="${herramientaInstance}" field="responsable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${herramientaInstance?.colaboradores}">
				<li class="fieldcontain">
					<span id="colaboradores-label" class="property-label"><g:message code="herramienta.colaboradores.label" default="Colaboradores" /></span>
					
						<span class="property-value" aria-labelledby="colaboradores-label"><g:fieldValue bean="${herramientaInstance}" field="colaboradores"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${herramientaInstance?.unidad}">
				<li class="fieldcontain">
					<span id="unidad-label" class="property-label"><g:message code="herramienta.unidad.label" default="Unidad" /></span>
					
						<span class="property-value" aria-labelledby="unidad-label"><g:link controller="unidad" action="show" id="${herramientaInstance?.unidad?.id}">${herramientaInstance?.unidad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:herramientaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${herramientaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
