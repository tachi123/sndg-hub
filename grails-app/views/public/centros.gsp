<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Centros - Sistema Nacional de Datos Genómicos</title></head>
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
	                        	<li class="active"><span>Centros</span></li>
	                    	</ol>
	                  </div>
	                </div>
                  </div>
                </div>
                <div class="jumbotron_body">
                  <div class="container">
                    <div class="row">
                      <div class="col-xs-12 col-md-8 col-md-offset-2 text-center">
                        <h1>Centros</h1>
                        <p>Conozca los centros incorporados al SNDG.</p>
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
								${fieldValue(bean: centroInstance, field: "nombre")} ${fieldValue(bean: centroInstance, field: "siglas") != 'N/D' ? "("+centroInstance.siglas+")" : ""}
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
					<g:paginate total="${centroInstanceCount ?: 0}" params="${params}"/>
				</div>
			</div>
		</div>
	</main>
</body>
