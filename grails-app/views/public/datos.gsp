<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Conjuntos de Datos - Sistema Nacional de Datos Genómicos</title>
</head>
<body>
	<header>
		<div class="panel-pane pane-imagen-destacada">
			<div class="pane-content">
                <section class="jumbotron" style="background-color: #2E7D33">
                <div class="jumbotron_bar">
                  <div class="container">
			    	<div class="row">
	                  	<div class="col-md-12">
	                    	<ol class="breadcrumb pull-left">
	                        	<li><a href="">Argentina</a></li>
	                        	<li><span>Ministerio de Educación, Cultura, Ciencia y Tecnología</span></li>
	                        	<li><span>Ciencia, Tecnología e Innovación Productiva</span></li>
	                        	<li><a href="/">Datos Genómicos</a></li>
	                        	<li class="active"><span>Conjunto de datos</span></li>
	                    	</ol>
	                  </div>
	                </div>
                  </div>
                </div>
                <div class="jumbotron_body">
                  <div class="container">
                    <div class="row">
                      <div class="col-xs-12 col-md-8 col-md-offset-2 text-center">
                        <h1>Conjunto de datos</h1>
                        <p>Acceda a los conjuntos de datos incorporados al SNDG, conozca sus metadatos y por qué son de interés para la comunidad científica.</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="overlay"></div>
              </section>
			</div>
		</div>
	</header>
	
	
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
								${fieldValue(bean: conjuntoDeDatosInstance, field: "nombre")} - ${conjuntoDeDatosInstance.unidad}</g:link>
								<g:if test="${conjuntoDeDatosInstance?.unidad?.centro?.adherido}">
									<asset:image src="icono_adherido.png" class="img-fluid"
										alt="Centro adherido" title="Adherido" />
								</g:if>
								<g:if test="${conjuntoDeDatosInstance?.recursos?.size() > 0}">
									<g:if test="${conjuntoDeDatosInstance?.recursos?.any{e -> e.path != null && e.path.length() > 1}}">
										<input class="btn btn-xs" type="image" src="${assetPath(src:'icono_buscador.png')}"
												style="padding:0px"
											   onclick="$('.enlaces-${conjuntoDeDatosInstance.id}').toggle('slow')"
											   alt="Ver en el Navegador Datos" title="Mostrar entradas en el visor de genomas" />
								    </g:if>
								    <g:if test="${conjuntoDeDatosInstance?.recursos?.any{e -> e.url != null && e.url.length() > 1}}">
										<input class="btn btn-xs" type="image" src="${assetPath(src:'icono_descarga.png')}"
											   style="padding:0px"
											   onclick="$('.descargas-${conjuntoDeDatosInstance.id}').toggle('slow')"
											   alt="Descargar el dato" title="Descargar las entradas con los genomas" />
									</g:if>
									<g:if test="${conjuntoDeDatosInstance?.recursos?.any{e -> e.web != null && e.web.length() > 1}}">
										<input class="btn btn-xs" type="image" src="${assetPath(src:'icono_ver.png')}"
											   style="padding:0px"
											   onclick="$('.ver-${conjuntoDeDatosInstance.id}').toggle('slow')"
											   alt="Ver sitio web" title="Ver sitio web del recurso" />
									</g:if>
%{--	
									<asset:image src="icono_buscador.png" class=""
												 alt="Ver en el Navegador Datos" title="Ver" />
--}%

									<span id="enlaces-${conjuntoDeDatosInstance.id}" class="">
										<g:each in="${conjuntoDeDatosInstance.recursos}" var="e" >
											<g:if test="${e.path.length() > 0}">
											<g:link style="display: none;" class="enlaces-${conjuntoDeDatosInstance.id} btn btn-info btn-xs btn-round" target="_BLANK"
													title="${e.nombre}"
													controller="estatica" action="navegador" params="[genome: e.path]">${e.nombre ?: e.nombre}</g:link>
											</g:if>
										</g:each>
									</span>
									<span id="descargas-${conjuntoDeDatosInstance.id}" class="">
										<g:each in="${conjuntoDeDatosInstance.recursos}" var="e" >
											<g:if test="${e.url.length() > 0}">
											<g:link style="display: none;" class="descargas-${conjuntoDeDatosInstance.id} btn btn-success btn-xs btn-round" 
													target="_BLANK"
													title="${e.nombre}"
													controller="estatica" action="descarga" params="[genome: e.url]">${e.nombre ?: e.nombre}</g:link>
											</g:if>
										</g:each>
									</span>
									<span id="ver-${conjuntoDeDatosInstance.id}" class="">
										<g:each in="${conjuntoDeDatosInstance.recursos}" var="e" >
											<g:if test="${e.web.length() > 0}">
											<g:link style="display: none;" class="ver-${conjuntoDeDatosInstance.id} btn btn-warning btn-xs btn-round" target="_BLANK"
													title="${e.nombre}"
													url="${e.web}">${e.nombre ?: e.nombre}</g:link>
											</g:if>
										</g:each>
									</span>
								</g:if>
							</td>
						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conjuntoDeDatosInstanceCount ?: 0}" params="${params}"/>
			</div>
		</div>
	</div>
</body>
