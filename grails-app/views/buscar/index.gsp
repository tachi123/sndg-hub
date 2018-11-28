<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Bienvenido al portal del Sistema Nacional de Datos Genómicos</title>
</head>
<body>
	<header>
			<div class="panel-pane pane-imagen-destacada">
				<div class="pane-content">
	                <section class="jumbotron" style="background-color: #EFF0F5">
	                <div class="jumbotron_bar">
	                  <div class="container">
				    	<div class="row">
		                  	<div class="col-md-12">
		                    	<ol class="breadcrumb pull-left">
		                        	<li><a href="">Argentina</a></li>
		                        	<li><span>Ministerio de Educación, Cultura, Ciencia y Tecnología</span></li>
		                        	<li><span>Ciencia, Tecnología e Innovación Productiva</span></li>
		                        	<li><a href="/">Datos Genómicos</a></li>
		                        	<li class="active"><span>Buscar</span></li>
		                    	</ol>
		                  </div>
		                </div>
	                  </div>
	                </div>
	                <div class="jumbotron_body">
	                  <div class="container">
	                    <div class="row">
	                      <div class="col-xs-12 col-md-8 col-md-offset-2 text-center">
	                        <h1>Término buscado: ${params.q}</h1>
	                      </div>
	                    </div>
	                  </div>
	                </div>
	                <div class="overlay"></div>
	              </section>
				</div>
			</div>
		</header>
	<main>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="pane-content">
						<nav>
							<h2 class="h3 section-title">Navegación</h2>
							<ul class="facetapi-facetapi-links facetapi-facet-bundle facetapi-processed nav nav-pills nav-stacked" id="facetapi-facet-apachesolrargentina-ppdr-block-bundle">
<%--							<li class="todos active"><a href="/%2A">Todos los resultados</a></li>--%>
								<li class="leaf"><a onclick="$('#list-centros').show();$('#list-datos').hide();$('#list-herramientas').hide();" 
									class="facetapi-inactive">Centros <span class="badge pull-right">${centrosInstanceCount}</span>
									<span class="element-invisible"> Apply Centros filter </span></a>
								</li>
								<li class="leaf" onClick="$('#list-datos').show();$('#list-centros').hide();$('#list-herramientas').hide();"><a class="facetapi-inactive">Conjunto de datos <span class="badge pull-right">${datosInstanceCount}</span><span class="element-invisible"> Apply Conjunto de Datos filter </span></a></li>
								<li class="leaf"><a onclick="$('#list-herramientas').show();$('#list-centros').hide();$('#list-datos').hide();" class="facetapi-inactive">Herramientas <span class="badge pull-right">${herramientasInstanceCount}</span><span class="element-invisible"> Apply Herramientas filter </span></a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-md-8">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>
						<div id="list-centros" class="content scaffold-list">
							<g:if test="${centrosInstanceCount == 0}">
								<h3 class="message" role="status">No se han hallado centros que satisfagan esta b&uacute;squeda.</h3>
							</g:if>
							<g:else><h3>Se encontraron ${centrosInstanceCount} centros</h3></g:else>
							<ul style="padding:0;" class="search-results apachesolr_search-results">
								<g:each in="${centrosList}" status="i" var="centroInstance">
									<g:link controller="public" action="centros" params="[id: centroInstance.id]"  class="panel panel-default">
									<div class="panel-body"><h2 class="h3">
									${fieldValue(bean: centroInstance, field: "nombre")} ${fieldValue(bean: centroInstance, field: "siglas") != 'N/D' ? "("+fieldValue(bean: centroInstance, field: "siglas")+")" : ""}
									<g:if test="${centroInstance?.adherido}">
										<asset:image src="icono_adherido.png" class="img-fluid" alt="Centro adherido" title="Adherido"/>
									</g:if>
									</h2>
									</div>
									</g:link>
								</g:each>
							</ul>
							<g:if test="${centrosInstanceCount > centrosList.size()}">
								<g:link controller="public" action="centros" params="[q: params.q, max: centrosList.size(), offset: centrosList.size()]"
								style="display:block" class="text-right">
									<button type="button" class="btn btn-primary"><span class="fa fa-plus-circle"></span>   Ver más</button>
								</g:link>
							</g:if>
						</div>
						<div id="list-datos" class="content scaffold-list" style="display: none;">
							<g:if test="${datosInstanceCount == 0}">
								<h3 class="message" role="status">No se han hallado conjuntos de datos que satisfagan esta b&uacute;squeda.</h3>
							</g:if>
							<g:else><h3>Se encontraron ${datosInstanceCount} conjuntos de datos</h3></g:else>
							<ul style="padding:0;" class="search-results apachesolr_search-results">
								<g:each in="${datosList}" status="i" var="conjuntoDeDatosInstance">
									<g:link controller="public" action="datos" params="[id: conjuntoDeDatosInstance.id]" class="panel panel-default">
									<div class="panel-body">
									<h2 class="h3">
									${fieldValue(bean: conjuntoDeDatosInstance, field: "nombre")} - ${conjuntoDeDatosInstance.unidad}
										<g:if
											test="${conjuntoDeDatosInstance?.unidad?.centro?.adherido}">
											<asset:image src="icono_adherido.png" class="img-fluid"
												alt="Centro adherido" title="Adherido" />
										</g:if>
										<g:if test="${conjuntoDeDatosInstance?.enBuscador}">
											<input class="btn btn-xs" type="image" src="${assetPath(src:'icono_buscador.png')}"
												   onclick="$('.enlaces-${conjuntoDeDatosInstance.id}').toggle('slow')"
												   alt="Ver en el Navegador Datos" title="Mostrar entradas en el visor de genomas">
											</input>
											<span id="enlaces-${conjuntoDeDatosInstance.id}" class="">
												<g:each in="${conjuntoDeDatosInstance.enlaces}" var="e" >
													<g:link style="display: none;" class="enlaces-${conjuntoDeDatosInstance.id} btn btn-info btn-xs btn-round" target="_BLANK"
															title="${e.nombre}"
															controller="estatica" action="navegador" params="[genome: e.abreviatura]">${e.abreviatura ?: e.nombre}</g:link>
												</g:each>
											</span>
										</g:if>
									</h2>
									</div>
									</g:link>
								</g:each>
							</ul>
							<g:if test="${datosInstanceCount > datosList.size()}">
								<g:link controller="public" action="datos" params="[q: params.q, max: datosList.size(), offset: datosList.size() ]"
									style="display:block" class="text-right">
									<button type="button" class="btn btn-primary"><span class="fa fa-plus-circle"></span>   Ver más</button>
								</g:link>
							</g:if>
						</div>		
						<div id="list-herramientas" class="content scaffold-list" style="display: none;">
							<g:if test="${herramientasInstanceCount == 0}">
								<h3 class="message" role="status">No se han hallado herramientas que satisfagan esta b&uacute;squeda.</h3>
							</g:if>
							<g:else><h3>Se encontraron ${herramientasInstanceCount} herramientas</h3></g:else>
							<ul style="padding:0;" class="search-results apachesolr_search-results">
								<g:each in="${herramientasList}" status="i" var="herramientaInstance">
									<g:link controller="public" action="herramientas" params="[id: herramientaInstance.id]" class="panel panel-default">
									<div class="panel-body">
									<h2 class="h3">
									${fieldValue(bean: herramientaInstance, field: "nombre")} - ${herramientaInstance.unidad}
										<g:if test="${herramientaInstance.url}">
												<asset:image src="icono_enlace.png" class="img-fluid" alt="Ir a la herramienta" title="Ver"/>
										</g:if>
									</h2>
									</div>
									</g:link>
								</g:each>
							</ul>
							<g:if test="${herramientasInstanceCount > herramientasList.size()}">
								<g:link controller="public" action="herramientas" params="[q: params.q, max: herramientasList.size(), offset: herramientasList.size()]"
								style="display:block" class="text-right">
									<button type="button" class="btn btn-primary"><span class="fa fa-plus-circle"></span>   Ver más</button>
								</g:link>
							</g:if>
						</div>
				</div>
			</div>
		</div>
	</main>
</body>
