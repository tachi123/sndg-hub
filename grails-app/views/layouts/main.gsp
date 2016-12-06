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
		<ul class="nav navbar-nav" >
			<li class="${controllerName == '' ? 'active' : ''}">
				<g:link uri="/">INICIO</g:link>
			</li>
			<li class="${controllerName == 'centro' ? 'active' : ''}">
				<g:link controller="centro">CENTROS</g:link>
			</li>
			<li class="${controllerName == 'dato' ? 'active' : ''}">
				<g:link controller="dato">DATOS</g:link>
			</li>
			<li class="${controllerName == 'herramienta' ? 'active' : ''}">
				<g:link controller="herramienta">HERRAMIENTAS</g:link>
			</li>
			<li class="${controllerName == 'estatica' && actionName == 'navegador' ? 'active' : ''}">
				<g:link controller="estatica" action="navegador">
					NAVEGADOR DE DATOS
				</g:link>
			</li>
			<li class="${controllerName == 'estatica' && actionName == 'foroMeta' ? 'active' : ''}">				
				<g:link controller="estatica" action="foroMeta">
					FORO DE METAGENOMICA
				</g:link>
			</li>
			<li class="${controllerName == 'estatica' && actionName == 'foroGenomica' ? 'active' : ''}">
				<g:link controller="estatica" action="foroGenomica">
					FORO DE GENOMICA HUMANA
				</g:link>
			</li>
		</ul>
	  </div>
	</nav>
	<g:layoutBody/>
	<div class="container-fluid" style="background-color:#0067aa; height: 190px;">
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
			<div class="col-md-5">logos</div>
			<div class="col-md-3 columna-redes-sociales">redes sociales</div>
		</div>
	</div>

	</body>
</html>
