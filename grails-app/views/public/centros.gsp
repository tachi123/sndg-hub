<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Centros - Sistema Nacional de Datos Genómicos</title></head>
<body>
	<div class="container-fluid descripcion-seccion">
		<p>Conozca los centros incorporados al SNDG.</p>
	</div>
	<div class="container-fluid titulo-seccion" >
		<div class="container">
			<h1>Centros</h1>
		</div>
	</div>
	<div class="container">
		<div id="list-centro" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
				<tbody>
				<g:each in="${centroInstanceList}" status="i" var="centroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>
							<g:link controller="public" action="centros" params="[id: centroInstance.id]">
							${fieldValue(bean: centroInstance, field: "nombre")} ${fieldValue(bean: centroInstance, field: "siglas") != 'N/D' ? "("+fieldValue(bean: centroInstance, field: "siglas")+")" : ""}
							</g:link>
							<g:if test="${centroInstance?.adherido}">
								<asset:image src="icono_adherido.png" class="img-fluid" alt="Centro adherido" title="Adherido"/>
							</g:if>
<%--							<asset:image src="icono_buscador.png" class="img-fluid" alt="Ver Centro" title="Ver"/>--%>
						</td>
						<td>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${centroInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>
