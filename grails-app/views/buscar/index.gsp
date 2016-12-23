<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Bienvenido al portal del Sistema Nacional de Datos Genómicos</title>
</head>
<body>
	<div class="container-fluid titulo-seccion" >
		<div class="container">
			<h1>Buscando: ${params.q}</h1>
		</div>
	</div>
	<div class="container-fluid titulo-seccion" >
		<div class="container">
			<h1>Centros: ${centrosInstanceCount}</h1>
		</div>
	</div>
	<div class="container">
		<div id="list-centro" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
				<tbody>
				<g:each in="${centrosList}" status="i" var="centroInstance">
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
			<g:if test="${centrosInstanceCount == 0}">
				<div class="message" role="status">No se han hallado centros que satisfagan esta b&uacute;squeda.</div>
			</g:if>
			<g:if test="${centrosInstanceCount > centrosList.size()}">
				<g:link controller="public" action="centros" params="[q: params.q, max: centrosList.size(), offset: centrosList.size()+1]">
					<input type="button" value="Ver más..." class="btn btn-warning">
				</g:link>
			</g:if>
		</div>
	</div>
	<div class="container-fluid titulo-seccion" >
		<div class="container">
			<h1>Conjuntos de Datos: ${datosInstanceCount}</h1>
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
					<g:each in="${datosList}" status="i"
						var="conjuntoDeDatosInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							<td>
								<g:link controller="public" action="datos" params="[id: conjuntoDeDatosInstance.id]">
								${fieldValue(bean: conjuntoDeDatosInstance, field: "nombre")}
								</g:link> - 
								<g:link controller="public" action="centros" params="[id: conjuntoDeDatosInstance?.unidad?.centro?.id]">${conjuntoDeDatosInstance.unidad}</g:link>
								<g:if
									test="${conjuntoDeDatosInstance?.unidad?.centro?.adherido}">
									<asset:image src="icono_adherido.png" class="img-fluid"
										alt="Centro adherido" title="Adherido" />
								</g:if> <g:if test="${conjuntoDeDatosInstance?.enBuscador}">
									<asset:image src="icono_buscador.png" class="img-fluid"
										alt="Ver en el Navegador Datos" title="Ver" />
								</g:if>
							</td>
						</tr>
					</g:each>
				</tbody>
			</table>
			<g:if test="${datosInstanceCount == 0}">
				<div class="message" role="status">No se han hallado conjuntos de datos que satisfagan esta b&uacute;squeda.</div>
			</g:if>
			<g:if test="${datosInstanceCount > datosList.size()}">
				<g:link controller="public" action="datos" params="[q: params.q, max: datosList.size(), offset: datosList.size() + 1]">
					<input type="button" value="Ver más..." class="btn btn-warning">
				</g:link>
			</g:if>
		</div>		
	</div>
	<div class="container-fluid titulo-seccion" >
		<div class="container">
			<h1>Herramientas: ${herramientasInstanceCount}</h1>
		</div>
	</div>
	<div class="container">
		<div id="list-herramienta" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
				<tbody>
				<g:each in="${herramientasList}" status="i" var="herramientaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>
							<g:link controller="public" action="herramientas" params="[id: herramientaInstance.id]">
							${fieldValue(bean: herramientaInstance, field: "nombre")}</g:link>
							- <g:link controller="public" action="centros" params="[id: herramientaInstance?.unidad?.centro?.id]">${herramientaInstance.unidad}</g:link>
<%--							<asset:image src="icono_buscador.png" class="img-fluid" alt="Ver Herramienta" title="Ver"/>--%>
						</td>
						<td>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<g:if test="${herramientasInstanceCount == 0}">
				<div class="message" role="status">No se han hallado herramientas que satisfagan esta b&uacute;squeda.</div>
			</g:if>
			<g:if test="${herramientasInstanceCount > herramientasList.size()}">
				<g:link controller="public" action="herramientas" params="[q: params.q, max: herramientasList.size(), offset: herramientasList.size()+1]">
					<input type="button" value="Ver más..." class="btn btn-warning">
				</g:link>
			</g:if>
		</div>
	</div>	
</body>
