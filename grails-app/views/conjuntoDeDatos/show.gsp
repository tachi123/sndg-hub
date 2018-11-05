
<%@ page import="hub.ConjuntoDeDatos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conjuntoDeDatos.label', default: 'ConjuntoDeDatos')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-conjuntoDeDatos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-conjuntoDeDatos" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list conjuntoDeDatos">
			
				<g:if test="${conjuntoDeDatosInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="conjuntoDeDatos.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${conjuntoDeDatosInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.singiID}">
				<li class="fieldcontain">
					<span id="singiID-label" class="property-label"><g:message code="conjuntoDeDatos.singiID.label" default="Singi ID" /></span>
					
						<span class="property-value" aria-labelledby="singiID-label"><g:fieldValue bean="${conjuntoDeDatosInstance}" field="singiID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="conjuntoDeDatos.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${conjuntoDeDatosInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.publicacionesAsociadas}">
				<li class="fieldcontain">
					<span id="publicacionesAsociadas-label" class="property-label"><g:message code="conjuntoDeDatos.publicacionesAsociadas.label" default="Publicaciones Asociadas" /></span>
					
						<span class="property-value" aria-labelledby="publicacionesAsociadas-label"><g:fieldValue bean="${conjuntoDeDatosInstance}" field="publicacionesAsociadas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.proyecto}">
				<li class="fieldcontain">
					<span id="proyecto-label" class="property-label"><g:message code="conjuntoDeDatos.proyecto.label" default="Proyecto" /></span>
					
						<span class="property-value" aria-labelledby="proyecto-label"><g:fieldValue bean="${conjuntoDeDatosInstance}" field="proyecto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.proyectoDescripcion}">
				<li class="fieldcontain">
					<span id="proyectoDescripcion-label" class="property-label"><g:message code="conjuntoDeDatos.proyectoDescripcion.label" default="Proyecto Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="proyectoDescripcion-label"><g:fieldValue bean="${conjuntoDeDatosInstance}" field="proyectoDescripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.responsable}">
				<li class="fieldcontain">
					<span id="responsable-label" class="property-label"><g:message code="conjuntoDeDatos.responsable.label" default="Responsable" /></span>
					
						<span class="property-value" aria-labelledby="responsable-label"><g:fieldValue bean="${conjuntoDeDatosInstance}" field="responsable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.colaboradores}">
				<li class="fieldcontain">
					<span id="colaboradores-label" class="property-label"><g:message code="conjuntoDeDatos.colaboradores.label" default="Colaboradores" /></span>
					
						<span class="property-value" aria-labelledby="colaboradores-label"><g:fieldValue bean="${conjuntoDeDatosInstance}" field="colaboradores"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.porcentajeSecuenciado}">
				<li class="fieldcontain">
					<span id="porcentajeSecuenciado-label" class="property-label"><g:message code="conjuntoDeDatos.porcentajeSecuenciado.label" default="Porcentaje Secuenciado" /></span>
					
						<span class="property-value" aria-labelledby="porcentajeSecuenciado-label"><g:fieldValue bean="${conjuntoDeDatosInstance}" field="porcentajeSecuenciado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.tipoDeOrganismo}">
				<li class="fieldcontain">
					<span id="tipoDeOrganismo-label" class="property-label"><g:message code="conjuntoDeDatos.tipoDeOrganismo.label" default="Tipo De Organismo" /></span>
					
						<span class="property-value" aria-labelledby="tipoDeOrganismo-label"><g:fieldValue bean="${conjuntoDeDatosInstance}" field="tipoDeOrganismo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.tipoDeComunidad}">
				<li class="fieldcontain">
					<span id="tipoDeComunidad-label" class="property-label"><g:message code="conjuntoDeDatos.tipoDeComunidad.label" default="Tipo De Comunidad" /></span>
					
						<span class="property-value" aria-labelledby="tipoDeComunidad-label"><g:fieldValue bean="${conjuntoDeDatosInstance}" field="tipoDeComunidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.orden}">
				<li class="fieldcontain">
					<span id="orden-label" class="property-label"><g:message code="conjuntoDeDatos.orden.label" default="Orden" /></span>
					
						<span class="property-value" aria-labelledby="orden-label"><g:fieldValue bean="${conjuntoDeDatosInstance}" field="orden"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.enBuscador}">
				<li class="fieldcontain">
					<span id="enBuscador-label" class="property-label"><g:message code="conjuntoDeDatos.enBuscador.label" default="En Buscador" /></span>
					
						<span class="property-value" aria-labelledby="enBuscador-label"><g:formatBoolean boolean="${conjuntoDeDatosInstance?.enBuscador}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.enlaces}">
				<li class="fieldcontain">
					<span id="enlaces-label" class="property-label"><g:message code="conjuntoDeDatos.enlaces.label" default="Enlaces" /></span>
					
						<g:each in="${conjuntoDeDatosInstance.enlaces}" var="e">
						<span class="property-value" aria-labelledby="enlaces-label"><g:link controller="enlace" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.recursos}">
				<li class="fieldcontain">
					<span id="recursos-label" class="property-label"><g:message code="conjuntoDeDatos.recursos.label" default="Recursos" /></span>
					
						<g:each in="${conjuntoDeDatosInstance.recursos}" var="r">
						<span class="property-value" aria-labelledby="recursos-label"><g:link controller="recurso" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${conjuntoDeDatosInstance?.unidad}">
				<li class="fieldcontain">
					<span id="unidad-label" class="property-label"><g:message code="conjuntoDeDatos.unidad.label" default="Unidad" /></span>
					
						<span class="property-value" aria-labelledby="unidad-label"><g:link controller="unidad" action="show" id="${conjuntoDeDatosInstance?.unidad?.id}">${conjuntoDeDatosInstance?.unidad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:conjuntoDeDatosInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${conjuntoDeDatosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
