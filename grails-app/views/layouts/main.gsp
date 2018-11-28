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
		
		<asset:stylesheet src="bootstrap.css"/>
		<asset:stylesheet src="bootstrap-theme.css"/>
		<asset:stylesheet src="poncho.css"/>
		<asset:stylesheet src="roboto-fontface.css"/>
		<asset:stylesheet src="icono-arg.css"/>
		<asset:stylesheet src="font-awesome.min.css"/>
		<asset:javascript src="jquery.min.js"/>
		<asset:javascript src="bootstrap.js"/>
		<g:layoutHead/>
	</head>
	<body>

	<header>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/"><asset:image src="logo_sistemas_nacionales.png" height="50px" alt="Sistema Nacional de Datos Genómicos"/></a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav navbar-right">
					<li><a href="/">INICIO</a></li>
					<sec:ifNotLoggedIn>
						<li class="${controllerName == '' ? 'active' : ''}"><g:link uri="/login">INICIAR SESI&Oacute;N</g:link></li>
					</sec:ifNotLoggedIn>
					<sec:ifLoggedIn>
						<sec:access expression="hasRole('ROLE_ADMIN')">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">ADMINISTRAR <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
							
								<li><g:link controller="public" action="downloadInstructivo">Descargar manual</g:link></li>
								<li class="divider"></li>
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
									<g:link controller="public" action="downloadInstructivo">
										Descargar instructivo
									</g:link>
								</li>
								<li class="divider"></li>
								<li>
									<g:link controller="public" action="cambiarContrasenia">
										Cambiar contrase&ntilde;a
									</g:link>
								</li>
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
				</sec:ifLoggedIn>
				  </ul>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>
	</header>
	<g:layoutBody/>
	
	<footer class="main-footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4">
					<section>
						<asset:image src="00_Logo_Ministerio_ECCyT.png" class="img-responsive" />
					</section>
				</div>
				<div class="col-md-3 col-sm-6">
					<section>
						<ul class="menu nav">
							<li><a href="/">INICIO</a></li>
						</ul>
					</section>
				</div>
			</div>
		</div>
	</footer>
	</body>
</html>
