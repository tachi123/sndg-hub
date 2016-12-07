
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
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="enBuscador" title="${message(code: 'conjuntoDeDatos.enBuscador.label', default: 'En Buscador')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'conjuntoDeDatos.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="porcentajeSecuenciado" title="${message(code: 'conjuntoDeDatos.porcentajeSecuenciado.label', default: 'Porcentaje Secuenciado')}" />
					
						<g:sortableColumn property="singiID" title="${message(code: 'conjuntoDeDatos.singiID.label', default: 'Singi ID')}" />
					
						<th><g:message code="conjuntoDeDatos.unidad.label" default="Unidad" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conjuntoDeDatosInstanceList}" status="i" var="conjuntoDeDatosInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conjuntoDeDatosInstance.id}">${fieldValue(bean: conjuntoDeDatosInstance, field: "enBuscador")}</g:link></td>
					
						<td>${fieldValue(bean: conjuntoDeDatosInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: conjuntoDeDatosInstance, field: "porcentajeSecuenciado")}</td>
					
						<td>${fieldValue(bean: conjuntoDeDatosInstance, field: "singiID")}</td>
					
						<td>${fieldValue(bean: conjuntoDeDatosInstance, field: "unidad")}</td>
					
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
