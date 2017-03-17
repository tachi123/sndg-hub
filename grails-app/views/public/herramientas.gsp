<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Herramientas - Sistema Nacional de Datos Genómicos</title>
</head>
<body>
	<div class="container-fluid descripcion-seccion">
		<p>Conozca las herramientas incorporadas al SNDG.</p>
	</div>
	<div class="container-fluid titulo-seccion" >
		<div class="container">
			<h1>Herramientas</h1>
		</div>
	</div>
	<div class="container">
		<div id="list-herramienta" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
				<tbody>
				<g:each in="${herramientaInstanceList}" status="i" var="herramientaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>
							<g:link controller="public" action="herramientas" params="[id: herramientaInstance.id]">
							${fieldValue(bean: herramientaInstance, field: "nombre")} - ${herramientaInstance.unidad}</g:link>
							<g:if test="${herramientaInstance?.unidad?.centro?.adherido}">
								<asset:image src="icono_adherido.png" class="img-fluid" alt="Centro adherido" title="Adherido"/>
							</g:if>
							<g:if test="${herramientaInstance.url}">
								<g:link target="_BLANK" uri="${herramientaInstance.url}" >
								<asset:image src="icono_enlace.png" class="img-fluid"
												 alt="Ir a la herramienta" title="Ver">
											${herramientaInstance.url}
								</asset:image>
								</g:link>
							</g:if>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${herramientaInstanceCount ?: 0}" params="${params}"/>
			</div>
		</div>
	</div>
</body>
