
<%@ page import="hub.Centro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'centro.label', default: 'Centro')}" />
		<title>${ centroInstance?.nombre }</title>
	</head>
	<body>
		<div class="container-fluid titulo-seccion" >
			<div class="container">
				<h1>Centros</h1>			
			</div>
		</div>
		<div class="container">
			<h2 class="visor_titulo">${ centroInstance?.nombre }</h2>
			<hr/>
			<ul class="list-unstyled visor-list">
				<g:if test="${centroInstance?.adherido}">
					<li>
						<asset:image src="icono_adherido.png"/>&nbsp;
						<label>Adherido al SNDG desde <g:formatDate format="dd-MM-yyyy" date="${centroInstance?.fecha}"/></label>
					</li>
				</g:if>
				<g:if test="${centroInstance?.dependeDe?.size() > 0}">
					<li>
						<asset:image src="icono_institucion.png"/>&nbsp;
						<label>${ centroInstance?.instituciones() }</label>
					</li>
				</g:if>
				<g:if test="${centroInstance?.paginaWeb}">
					<li>
						<asset:image src="icono_web.png"/>&nbsp;
						<g:link target="_BLANK" uri="${ centroInstance?.paginaWeb }">
							${ centroInstance?.paginaWeb }
						</g:link>
					</li>
				</g:if>
			</ul>
		</div>
		<div class="container">
				<g:link controller="public" action="datos" params="[centroId: centroInstance.singiID]" class="btn btn-warning">
					Ver conjuntos de datos...
				</g:link>
				<g:link controller="public" action="herramientas" params="[centroId: centroInstance.singiID]" class="btn btn-success">
					Ver herramientas...
				</g:link>
		</div>
			<div class="container a-veinti5">
				&nbsp;			
			</div>

	</body>
</html>
