
<%@ page import="hub.ConjuntoDeDatos"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'conjuntoDeDatos.label', default: 'ConjuntoDeDatos')}" />
<title>
	${ conjuntoDeDatosInstance?.nombre }
</title>
</head>
<body>
	<div class="container-fluid titulo-seccion">
		<div class="container">
			<h1>Conjuntos de datos</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="visor_titulo">
			${ conjuntoDeDatosInstance?.nombre }
		</h2>
		<hr />
		<ul class="list-unstyled visor-list">
			<g:if test="${conjuntoDeDatosInstance.unidad?.centro?.adherido}">
				<li><asset:image src="icono_adherido.png" />&nbsp; <label>Adherido
						al SNDG desde <g:formatDate format="dd-MM-yyyy"
							date="${conjuntoDeDatosInstance?.unidad?.centro?.fecha}" />
				</label></li>
			</g:if>
			<g:if test="${conjuntoDeDatosInstance?.unidad?.centro}">
				<li><asset:image src="icono_institucion.png" />&nbsp; <label>
						${ conjuntoDeDatosInstance?.unidad?.centro }
				</label></li>
			</g:if>
			<g:if test="${conjuntoDeDatosInstance?.unidad?.centro?.paginaWeb}">
				<li><asset:image src="icono_web.png" />&nbsp;
					<g:link uri="conjuntoDeDatosInstance?.unidad?.centro?.paginaWeb">
						${conjuntoDeDatosInstance?.unidad?.centro?.paginaWeb}
					</g:link>
				</li>
			</g:if>
		</ul>
	</div>
	<div class="container a-veinti5">&nbsp;</div>
</body>
</html>
