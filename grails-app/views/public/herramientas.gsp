<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Bienvenido al portal del Sistema Nacional de Datos Genómicos</title>
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
					
						<td>${fieldValue(bean: herramientaInstance, field: "nombre")}
							- ${herramientaInstance.unidad}
							<g:if test="${herramientaInstance?.unidad?.centro?.adherido}">
								<asset:image src="icono_adherido.png" class="img-fluid" alt="Centro adherido" title="Adherido"/>
							</g:if>
							<asset:image src="icono_buscador.png" class="img-fluid" alt="Ver Herramienta" title="Ver"/>
						</td>
						<td>
						</td>
						
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${herramientaInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>