
<%@ page import="hub.Centro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'centro.label', default: 'Centro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-centro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-centro" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="adherido" title="${message(code: 'centro.adherido.label', default: 'Adherido')}" />
					
						<g:sortableColumn property="contactoLegal" title="${message(code: 'centro.contactoLegal.label', default: 'Contacto Legal')}" />
					
						<g:sortableColumn property="contactoTecnico" title="${message(code: 'centro.contactoTecnico.label', default: 'Contacto Tecnico')}" />
					
						<g:sortableColumn property="fecha" title="${message(code: 'centro.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'centro.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="siglas" title="${message(code: 'centro.siglas.label', default: 'Siglas')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${centroInstanceList}" status="i" var="centroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${centroInstance.id}">${fieldValue(bean: centroInstance, field: "adherido")}</g:link></td>
					
						<td>${fieldValue(bean: centroInstance, field: "contactoLegal")}</td>
					
						<td>${fieldValue(bean: centroInstance, field: "contactoTecnico")}</td>
					
						<td><g:formatDate date="${centroInstance.fecha}" /></td>
					
						<td>${fieldValue(bean: centroInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: centroInstance, field: "siglas")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${centroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
