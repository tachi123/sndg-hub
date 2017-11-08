<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>

	<div class="container">
		<div class="row" >
			<div class="col-xs-1">&nbsp;</div>
			<div class="col-xs-5">
			  <a href="#">
			  <asset:image src="logo_portal_de_datos.png" alt="Portal del SNDG"/>
			  </a>
			</div>
			<div class="col-xs-5">
			  <a href="#" class="pull-right">
			  <asset:image src="logo_sistemas_nacionales.png" alt="Sistemas Nacionales - Datos Genómicos"/>
			  </a>
			</div>
			<div class="col-xs-1">
			&nbsp;</div>
		</div>
	</div>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	  	<div class="container">
			<ul class="nav navbar-nav" >
				<li class="${controllerName == '' ? 'active' : ''}">
					<g:link uri="/">INICIO</g:link>
				</li>
				<li class="${(controllerName == 'public' && actionName == 'centros') || controllerName == 'centro' ? 'active' : ''}">
					<g:link controller="public" action="centros">CENTROS</g:link>
				</li>
				<li class="${(controllerName == 'public' && actionName == 'datos' ) || controllerName == 'conjuntoDeDatos' ? 'active' : ''}">
					<g:link controller="public" action="datos">DATOS</g:link>
				</li>
				<li class="${(controllerName == 'public' && actionName == 'herramientas') || controllerName == 'herramienta' ? 'active' : ''}">
					<g:link controller="public" action="herramientas">HERRAMIENTAS</g:link>
				</li>
				<li class="${controllerName == 'estatica' && actionName == 'navegador' ? 'active' : ''}">
					<g:link controller="estatica" action="navegador">
						NAVEGADOR DE DATOS
					</g:link>
				</li>
				<li class="${controllerName == 'estatica' && actionName == 'estadisticas' ? 'active' : ''}">				
					<g:link controller="estatica" action="estadisticas">
						ESTADISTICAS
					</g:link>
				</li>
<%--				<li class="${controllerName == 'estatica' && actionName == 'foroMeta' ? 'active' : ''}">				--%>
<%--					<g:link controller="estatica" action="foroMeta">--%>
<%--						FORO DE METAGENOMICA--%>
<%--					</g:link>--%>
<%--				</li>--%>
<%--				<li class="${controllerName == 'estatica' && actionName == 'foroGenomica' ? 'active' : ''}">--%>
<%--					<g:link controller="estatica" action="foroGenomica">--%>
<%--						FORO DE GENOMICA HUMANA--%>
<%--					</g:link>--%>
<%--				</li>--%>
			</ul>
			<sec:ifNotLoggedIn>
				<ul class="nav navbar-nav navbar-right">
					<li class="${controllerName == '' ? 'active' : ''}">
						<g:link uri="/login">INICIAR SESI&Oacute;N</g:link>
					</li>
				</ul>
			</sec:ifNotLoggedIn>
			<sec:ifLoggedIn>
				<ul class="nav navbar-nav navbar-right">
					<sec:access expression="hasRole('ROLE_ADMIN')">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">ADMINISTRAR <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="${createLink(controller: 'centro')}">Centros</a></li>
							<li><a href="${createLink(controller: 'unidad')}">Laboratorios</a></li>
							<li><a href="${createLink(controller: 'conjuntoDeDatos')}">Conjuntos de Datos</a></li>
							<li><a href="${createLink(controller: 'herramienta')}">Herramientas</a></li>
							<li class="divider"></li>
							<li><a href="${createLink(controller: 'institucion')}">Instituciones</a></li>
							<li><a href="${createLink(controller: 'user')}">Usuarios</a></li>
							<li><a href="${createLink(controller: 'userRoleCentro')}">Responsables de centros</a></li>
	<%--						<li><a href="${createLink(controller: 'programa')}">Programas</a></li>--%>
	<%--						<li><a href="${createLink(controller: 'area')}">&Aacute;reas</a></li>--%>
						</ul>
					</li>
					</sec:access>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">${sec.username()} <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li>
								<g:link controller="public" action="cambiarContrasenia">
									Cambiar contrase&ntilde;a
								</g:link>
							</li>
							<li class="divider"></li>
							<li>
								<g:remoteLink class="logout" controller="logout" method="post" asynchronous="false" onSuccess="location.reload()">
									Cerrar Sesi&oacute;n
								</g:remoteLink>
							</li>
	<%--						<li><a href="${createLink(controller: 'medio')}">Medios</a></li>--%>
	<%--						<li><a href="${createLink(controller: 'programa')}">Programas</a></li>--%>
	<%--						<li class="divider"></li>--%>
	<%--						<li><a href="${createLink(controller: 'area')}">&Aacute;reas</a></li>--%>
						</ul>
					</li>
				</ul>
			</sec:ifLoggedIn>
			</div>
	  </div>
	</nav>
	<g:layoutBody/>
	<div class="container-fluid" style="background-color:#0067aa; height: 142px;">
		<div class="container">
			<div class="col-md-4 columna-contacto">
				<h2>SECRETARIA DE ARTICULACIÓN CIENTÍFICA TECNOLÓGICA</h2>
				<p>
					Tel/Fax: (54-11) 4891-8359<br/>
					sact@mincyt.gob.ar<br/>
					Godoy Cruz 2320 (C1425FQD)<br/>
					Ciudad Autónoma de Buenos Aires<br/>
				</p>
			</div>
			<div class="col-md-5" style="padding-top: 2.5em;">
			  <div class="row">
			  	<div class="col-md-6">
				  <asset:image src="logo_bicentenario.png" alt="ARGENTINA - 200 años de Independencia" class="img-fluid"  style="width: 100%;"/>
			  	</div>
			  	<div class="col-md-6">
				  <a href="http://www.mincyt.gob.ar/">
					  <asset:image src="logo_mincyt.png" alt="Ministerio de Ciencia, Tecnología e Innovación Productiva" class="img-fluid"  style="width: 100%;"/>
				  </a>
			  	</div>
			  </div>
			</div>
			<div class="col-md-3 columna-redes-sociales text-center" style="padding-top: 2.5em;">
			  <div class="row">
			    <div class="col-md-2">
			    	&nbsp;
			    </div>
			  	<div class="col-md-8">
				  <g:link uri="https://www.facebook.com/ministeriodeciencia">
				  	<asset:image src="facebook_normal.png" alt="ministeriodeciencia en facebook" class="img-fluid"/>
				  </g:link>
				  <g:link uri="https://twitter.com/min_ciencia">
				  	<asset:image src="twitter_normal.png" alt="@Min_Ciencia en twitter" class="img-fluid" />
			  	  </g:link>
				  <g:link uri="https://www.flickr.com/photos/ministeriodeciencia">
			  		<asset:image src="flickr_normal.png" alt="ministeriodeciencia en flickr" class="img-fluid"  />
				  </g:link>			  		
			  	</div>
			    <div class="col-md-2">
			    	&nbsp;
			    </div>
			  </div>
			  <div class="row">
			    <div class="col-md-2">
			    	&nbsp;
			    </div>
			  	<div class="col-md-8">
			  	  <g:link uri="https://plus.google.com/+MinisterioDeCienciaArgentina">
	  		  		<asset:image src="googleplus_normal.png" alt="MinisterioDeCienciaArgentina en Google+" class="img-fluid"  />
			  	  </g:link>
	  			  <g:link uri="https://www.instagram.com/min_ciencia">
				  	<asset:image src="instagram_normal.png" alt="@min_ciencia en Instagram" class="img-fluid" />
				  </g:link>
				  <g:link uri="https://www.youtube.com/ministeriodecienciaargentina">
				  	<asset:image src="youtube_normal.png" alt="ministeriodecienciaargentina en YouTube" class="img-fluid" />
				  </g:link>
			  	</div>
			    <div class="col-md-2">
			    	&nbsp;
			    </div>
			  </div>
			</div>
		</div>
	</div>

	</body>
</html>
