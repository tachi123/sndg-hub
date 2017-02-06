
<%@ page import="hub.Herramienta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'herramienta.label', default: 'Herramienta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-herramienta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-herramienta" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'herramienta.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'herramienta.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="singiID" title="${message(code: 'herramienta.singiID.label', default: 'Singi ID')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'herramienta.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="responsable" title="${message(code: 'herramienta.responsable.label', default: 'Responsable')}" />
					
						<g:sortableColumn property="colaboradores" title="${message(code: 'herramienta.colaboradores.label', default: 'Colaboradores')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${herramientaInstanceList}" status="i" var="herramientaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${herramientaInstance.id}">${fieldValue(bean: herramientaInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: herramientaInstance, field: "tipo")}</td>
					
						<td>${fieldValue(bean: herramientaInstance, field: "singiID")}</td>
					
						<td>${fieldValue(bean: herramientaInstance, field: "descripcion").length()>30 ? fieldValue(bean: herramientaInstance, field: "descripcion").take(30) + " ..." : fieldValue(bean: herramientaInstance, field: "descripcion")}</td>

						<td>${fieldValue(bean: herramientaInstance, field: "responsable")}</td>
					
						<td>${fieldValue(bean: herramientaInstance, field: "colaboradores")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${herramientaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
