<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Herramientas - Sistema Nacional de Datos Genómicos</title>
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
	                        	<li class="active"><span>Herramientas</span></li>
	                    	</ol>
	                  </div>
	                </div>
                  </div>
                </div>
                <div class="jumbotron_body">
                  <div class="container">
                    <div class="row">
                      <div class="col-xs-12 col-md-8 col-md-offset-2 text-center">
                        <h1>Herramientas</h1>
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
