
<%@ page import="hub.Herramienta"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'herramienta.label', default: 'Herramienta')}" />
<title>${ herramientaInstance?.nombre }</title>
</head>
<body>
	<div class="container-fluid titulo-seccion">
		<div class="container">
			<h1>Herramientas</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="visor_titulo">
			${ herramientaInstance?.nombre }
		</h2>
		<hr />
		<ul class="list-unstyled visor-list">
			<g:if test="${herramientaInstance.unidad?.centro?.adherido}">
				<li><asset:image src="icono_adherido.png" />&nbsp; <label>Adherido
						al SNDG desde <g:formatDate format="dd-MM-yyyy"
							date="${herramientaInstance?.unidad?.centro?.fecha}" />
				</label></li>
			</g:if>
			<g:if test="${herramientaInstance?.unidad?.centro}">
				<li><asset:image src="icono_institucion.png" />&nbsp; <label>
						${ herramientaInstance?.unidad?.centro }
				</label></li>
			</g:if>
			<g:if test="${herramientaInstance?.unidad?.centro?.paginaWeb}">
				<li><asset:image src="icono_web.png" />&nbsp; 
					<g:link uri="herramientaInstance?.unidad?.centro?.paginaWeb">
						${herramientaInstance?.unidad?.centro?.paginaWeb}
					</g:link>
				</li>
			</g:if>
		</ul>
	</div>
</body>
</html>
