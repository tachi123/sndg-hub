<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Conjuntos de Datos - Sistema Nacional de Datos Genómicos</title>
</head>
<body>
	<div class="container-fluid descripcion-seccion">
		<p>Conozca los conjuntos de datos incorporados al SNDG y/o
			disponibles en el portal del SNDG.</p>
	</div>
	<div class="container-fluid titulo-seccion">
		<div class="container">
			<h1>Conjuntos de datos</h1>
		</div>
	</div>
	<div class="container">
		<div id="list-datos" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<table class="table">
				<tbody>
					<g:each in="${conjuntoDeDatosInstanceList}" status="i"
						var="conjuntoDeDatosInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							<td class="row-fluid">
								<g:link controller="public" action="datos" params="[id: conjuntoDeDatosInstance.id]">
								${fieldValue(bean: conjuntoDeDatosInstance, field: "nombre")}
								</g:link> - 
								<g:link controller="public" action="centros" params="[id: conjuntoDeDatosInstance?.unidad?.centro?.id]">${conjuntoDeDatosInstance.unidad}</g:link>
								<g:if test="${conjuntoDeDatosInstance?.unidad?.centro?.adherido}">
									<asset:image src="icono_adherido.png" class="img-fluid"
										alt="Centro adherido" title="Adherido" />
								</g:if>
								<g:if test="${conjuntoDeDatosInstance?.enBuscador}">
									<input class="btn btn-xs" type="image" src="${assetPath(src:'icono_buscador.png')}"
										   onclick="$('.enlaces-${conjuntoDeDatosInstance.id}').toggle('slow')"
										   alt="Ver en el Navegador Datos" title="Mostrar entradas en el visor de genomas">
									</input>
%{--
									<asset:image src="icono_buscador.png" class=""
												 alt="Ver en el Navegador Datos" title="Ver" />
--}%

									<span id="enlaces-${conjuntoDeDatosInstance.id}" class="">
										<g:each in="${conjuntoDeDatosInstance.enlaces}" var="e" >
											<g:link style="display: none;" class="enlaces-${conjuntoDeDatosInstance.id} btn btn-info btn-xs btn-round" target="_BLANK"
													title="${e.nombre}"
													controller="estatica" action="navegador" params="[genome: e.abreviatura]">${e.abreviatura ?: e.nombre}</g:link>
										</g:each>
									</span>

								</g:if>
							</td>
						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conjuntoDeDatosInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>