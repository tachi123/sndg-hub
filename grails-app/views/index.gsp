<!DOCTYPE html>
<%@ page import="hub.Centro"%>
<%@ page import="hub.ConjuntoDeDatos"%>
<%@ page import="hub.Herramienta"%>
<html>
<head>
<meta name="layout" content="main" />
<title>Bienvenido al portal del Sistema Nacional de Datos Genómicos</title>
</head>
<body>
	<header>
		<div class="panel-pane pane-imagen-destacada">
			<div class="pane-content">
                <section class="jumbotron" style="background-image: url('${resource(dir: "images", file: "fotos/cuatro.jpg")}');">
                <div class="jumbotron_bar">
                  <div class="container">
                    <div class="row">
                      <div class="col-md-12">
                        <ol class="breadcrumb pull-left">
                            <li><a href="">Argentina</a></li>
                            <li class="active"><span>Ministerio de Educación, Cultura, Ciencia y Tecnología</span></li>
                            <li class="active"><span>Ciencia, Tecnología e Innovación Productiva</span></li>
                            <li class="active"><span>Datos Genómicos</span></li>
                        </ol>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="jumbotron_body">
                  <div class="container">
                    <div class="row">
                      <div class="col-xs-12 col-md-8 col-md-offset-2 text-center">
                        <h1>Sistema Nacional de Datos Genómicos - Portal de datos</h1>
                        <p>Bienvenidos al Portal de Datos Genómicos del SNDG. Desde este sitio usted podrá acceder a la base de datos nacional unificada de información genómica, para todas las especies de interés ecológico, agropecuario, biotecnológico y en salud; contar con información de los centros adheridos al SNDG así como de los conjuntos de datos y herramientas incorporadas y/o disponibles en el Portal; conocer las	principales estadísticas del SNDG y acceder a los datos a través del navegador.</p>
                      </div>
                    </div>
                    <div class="row">
                        <div id="buscador" class="col-md-8 col-md-offset-2">
                            <g:form name="myForm" url="[controller:'buscar']">
                                <div>
                                    <div class="input-group">
                                        <input placeholder="Buscar..." class="form-control form-text" type="text" id="q" name="q" value="" size="20" maxlength="255">
                                        <span class="input-group-btn">
                                            <button class="btn-primary btn form-submit" type="submit" id="edit-submit"><i class="fa fa-search"></i></button></span>
                                    </div>
                                </div>
                            </g:form>
                        </div>
                      </div>
                  </div>
                </div>
                <div class="overlay"></div>
              </section>
			</div>
		</div>
	</header>
	<main role="main">
		<section class="bg-gray section-sm">
            <div class="container">
                <div class="row numbers">
                  <div class="col-md-3">
                    <div class="h2 text-success">+1.000.000</div>
                    <p class="lead">registros</p>
		                <p class="text-muted">disponibles en el navegador de datos</p>
                  </div>
                  <div class="col-md-3">
                    <div class="h2 text-success">${ConjuntoDeDatos.findAll().size() }</div>
                    <p class="lead">conjunto de datos</p>
    <!--                <p class="text-muted">del 1 al 26 de Febrero</p>-->
                  </div>
                  <div class="col-md-3">
                    <div class="h2 text-success">${Centro.findAll().size()}</div>
                    <p class="lead">centros</p>
    <!--                <p class="text-muted">Duramente los últimos 30 días.</p>-->
                  </div>
                  <div class="col-md-3">
                    <div class="h2 text-success">${Herramienta.findAll().size()}</div>
                    <p class="lead">herramientas</p>
                  </div>
                </div>
            </div>
		</section>
		<section>
			<div class="container">
				<div class="panel-separator"></div>
				<div class="panel-pane pane-atajos">
					<div class="pane-content">
						<div class="row panels-row">
							<div class="col-xs-12 col-sm-4 col-md-4">
								<g:link controller="public" action="centros" class="panel panel-default">
										<div style="background-image:url('${resource(dir: "images", file: "img_centros.png")}');" class="panel-heading"></div>
										<div class="panel-body">
											<h4>Centros</h4>
											<div class="text-muted">
												<p>Conozca los centros incorporados al SNDG.</p>
											</div>
										</div>
								</g:link>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-4">
								<g:link controller="public" action="datos" class="panel panel-default">
									<div style="background-image:url('${resource(dir: "images", file: "img_conjuntos_de_datos.png")}');" class="panel-heading"></div>
									<div class="panel-body">
										<h4>Conjuntos de datos</h4>
										<div class="text-muted">
											<p>Acceda a los conjuntos de datos incorporados al SNDG, conozca sus metadatos y por qué son de interés para la comunidad científica.</p>
										</div>
									</div>
								</g:link>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-4">
								<g:link controller="public" action="herramientas" class="panel panel-default">
									<div style="background-image:url('${resource(dir: "images", file: "img_herramientas.png")}');" class="panel-heading"></div>
									<div class="panel-body">
										<h4>Herramientas</h4>
										<div class="text-muted">
											<p>Acceda a los Software de análisis de datos genómicos desarrollados por los centros adheridos al SNDG y disponibles para su uso.</p>
										</div>
									</div>
								</g:link>
							</div>
                            <div class="col-xs-12 col-sm-4 col-md-4">
								<g:link controller="estatica" action="navegador" class="panel panel-default">
									<div style="background-image:url('${resource(dir: "images", file: "fotos/salud.jpg")}');" class="panel-heading"></div>
									<div class="panel-body">
										<h4>Navegador de datos</h4>
										<div class="text-muted">
											<p>Visualice y acceda a una variedad de datos genómicos.</p>
										</div>
									</div>
								</g:link>
							</div>
						</div>
					</div>
				</div>
            </div>
        </section>
        <hr>
        <section>
			<div class="container">
                <div class="row panels-row">
                  <div class="col-xs-12 col-sm-6 col-md-4">
                  	<g:link controller="estatica" action="estadisticas" class="panel panel-default panel-icon panel-primary">
                      <div class="panel-heading hidden-xs bg-maiz">
                      	<i id="icono-arg-informes-y-estadisticas" class="icono-arg-informes-y-estadisticas"></i>
                      </div>
                      <div class="panel-body">
                        <h3><span class="visible-xs-inline">
                        <i id="icono-arg-informes-y-estadisticas" class="icono-arg-informes-y-estadisticas text-secondary"></i>&nbsp; 
                        </span>Estadísticas del SNDG</h3>
                        <!--p class="text-muted">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p-->
                      </div>
                    </g:link>
                  </div>
                </div>
			</div>
		</section>
        <section>
            <div class="container">
                <h4>También te puede interesar...</h4>

                <div class="row panels-row">
                  <div class="col-xs-12 col-sm-6 col-md-3">
                    <a class="panel panel-default" href="http://datos.sndb.mincyt.gob.ar/">
                      <div class="panel-body">
                        <h3>Datos Biológicos</h3>
                      </div>
                    </a>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-3">
                    <a class="panel panel-default" href="http://www.datosdelmar.mincyt.gob.ar/">
                      <div class="panel-body">
                        <h3>Datos del Mar</h3>
                      </div>
                    </a>
                  </div>
                  <div class="col-xs-12 col-sm-6 col-md-3">
                    <a class="panel panel-default" href="http://repositoriosdigitales.mincyt.gob.ar/">
                      <div class="panel-body">
                        <h3>Publicaciones en Acceso Abierto</h3>
                      </div>
                    </a>
                  </div>
                </div>
            
            </div>
        </section>
		<section>
			<div class="container">
				<div class="pane-content">
					<h2 class="h3 section-title">Contacto</h2>
					<p class="margin-40">
						<strong>Dirección:</strong> Godoy Cruz 2320. Ciudad Autónoma de Buenos Aires.
						<br>
						<strong>Código postal:</strong> C1425FQD
						<br>
						<strong>Teléfono:</strong> (+54 11) 4891-8359 Int. 2182, 2174
						<br>
						<strong>Correo electrónico:</strong>
						<a href="mailto:sact@mincyt.gob.ar">sndg@mincyt.gob.ar</a>
					</p>
				</div>
			</div>
		</section>
	</main>
</body>
</html>
