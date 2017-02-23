
<%@ page import="hub.ConjuntoDeDatos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conjuntoDeDatos.label', default: 'ConjuntoDeDatos')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-conjuntoDeDatos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-conjuntoDeDatos" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'conjuntoDeDatos.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="singiID" title="${message(code: 'conjuntoDeDatos.singiID.label', default: 'Singi ID')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'conjuntoDeDatos.descripcion.label', default: 'Descripcion')}" />

						<g:sortableColumn property="proyecto" title="${message(code: 'conjuntoDeDatos.proyecto.label', default: 'Proyecto')}" />

						<g:sortableColumn property="proyectoDescripcion" title="${message(code: 'conjuntoDeDatos.proyectoDescripcion.label', default: 'Descripcion de proyecto')}" />

						<g:sortableColumn property="responsable" title="${message(code: 'conjuntoDeDatos.responsable.label', default: 'Responsable')}" />
					
						<g:sortableColumn property="colaboradores" title="${message(code: 'conjuntoDeDatos.colaboradores.label', default: 'Colaboradores')}" />
					
						<g:sortableColumn property="porcentajeSecuenciado" title="${message(code: 'conjuntoDeDatos.porcentajeSecuenciado.label', default: 'Porcentaje Secuenciado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conjuntoDeDatosInstanceList}" status="i" var="conjuntoDeDatosInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conjuntoDeDatosInstance.id}">${fieldValue(bean: conjuntoDeDatosInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: conjuntoDeDatosInstance, field: "singiID")}</td>

						<td>${fieldValue(bean: conjuntoDeDatosInstance, field: "descripcion").length()>30 ? fieldValue(bean: conjuntoDeDatosInstance, field: "descripcion").take(30) + " ..." : fieldValue(bean: conjuntoDeDatosInstance, field: "descripcion")}</td>

						<td>${fieldValue(bean: conjuntoDeDatosInstance, field: "proyecto")}</td>

						<td>${fieldValue(bean: conjuntoDeDatosInstance, field: "proyectoDescripcion").length()>30 ? fieldValue(bean: conjuntoDeDatosInstance, field: "proyectoDescripcion").take(30) + " ..." : fieldValue(bean: conjuntoDeDatosInstance, field: "proyectoDescripcion")}</td>

						<td>${fieldValue(bean: conjuntoDeDatosInstance, field: "responsable")}</td>
					
						<td>${fieldValue(bean: conjuntoDeDatosInstance, field: "colaboradores")}</td>
					
						<td>${fieldValue(bean: conjuntoDeDatosInstance, field: "porcentajeSecuenciado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conjuntoDeDatosInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
