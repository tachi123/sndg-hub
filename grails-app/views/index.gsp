<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Bienvenido al portal del Sistema Nacional de Datos Genómicos</title>
</head>
<body>
		
		<div class="container-fluid presentacion">
			<div class="container">
				<h1>Sistema Nacional de Datos Genómicos - Portal de datos</h1>
				<p>Bienvenidos al Portal de Datos Genómicos del SNDG. Desde este
					sitio usted podrá acceder a la base de datos nacional unificada de
					información genómica, para todas las especies de interés ecológico,
					agropecuario, biotecnológico y en salud; contar con información de
					los centros adheridos al SNDG así como de los conjuntos de datos y
					herramientas incorporadas y/o disponibles en el Portal; conocer las
					principales estadísticas del SNDG y del uso del navegador de datos.</p>
			</div>
		</div>
		<div class="container-fluid a-veinti5">
			<div class="container">
				<div class="col-md-2 col-md-offset-1" >
					<asset:image src="fotos/uno.jpg"
						class="img-fluid" style="width: 100%;"/>
				</div>
				<div class="col-md-2">
					<asset:image src="fotos/dos.jpg" 
						class="img-fluid" style="padding:1em;" style="width: 100%;"/>
				</div>
				<div class="col-md-2">
					<asset:image src="fotos/tres.jpg" class="img-fluid" style="width: 100%;"/>
				</div>
				<div class="col-md-2">
					<asset:image src="fotos/cuatro.jpg" class="img-fluid"  style="width: 100%;"/>
				</div>
				<div class="col-md-2">
					<asset:image src="fotos/cinco.jpg" class="img-fluid"  style="width: 100%;"/>
				</div>
			</div>
		</div>
		<div class="container-fluid a-veinti5" >
			<div class="container container_buscador" >
			<g:form name="myForm" url="[controller:'buscar']">
				<div class="form-group">
					<label for="buscar" class="label_buscador">Palabras claves</label>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Buscar" id="q" name="q">
						<span class="input-group-btn">
						    <input class="btn btn-warning" type="submit">Buscar</button>
						</span>
					</div> 
				</div>
			</g:form>
			</div>
		</div>
		<div class="container-fluid a-veinti5" style="padding: 0px; margin: 0px;">
			<!-- Example row of columns -->
			<div class="container">
				<div class="col-md-4">
					<h2
						style="color: #008BC0; font-size: 1.6em; text-transform: uppercase;">CENTROS</h2>
					<div class="grow-pic">
						<g:link controller="public" action="centros">
							<asset:image src="img_centros.png" class="img-fluid" />
						</g:link>
						
						</a>
					</div>
				</div>
				<div class="col-md-4">
					<h2 style="color: #008BC0; font-size: 1.6em; text-transform: uppercase;">Conjuntos
						de datos</h2>
					<div class="grow-pic">
						<g:link controller="public" action="datos">
 							<asset:image src="img_conjuntos_de_datos.png" class="img-fluid" />
						</g:link>
					</div>
				</div>
				<div class="col-md-4">
					<h2
						style="color: #008BC0; font-size: 1.6em; text-transform: uppercase;">Herramientas</h2>
					<div class="grow-pic">
						<g:link controller="public" action="herramientas"> 
							<asset:image src="img_herramientas.png" class="img-fluid" />
						</g:link>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid a-veinti5">
			<div class="container text-center">
				<g:link controller="estatica" action="navegador">
					<asset:image src="banner.png" class="img-fluid"/>
				</g:link>
			</div>
		</div>
		<div class="container-fluid a-veinti5">
			<div class="container">
					<h1 class="estadisticas_titulo">El sistema en n&uacute;meros</h1>
			</div>				
			<div class="container text-center">
					<g:link controller="estatica" action="estadisticas" >
						<asset:image src="estadisticas.jpg"/>
					</g:link>
<%--				<iframe src="https://public.tableau.com/profile/publish/tablerosndg/Historia1#!/publish-confirm"--%>
<%--					frameborder="0" style="overflow:hidden;height:1100px;width:1035px;" ></iframe>--%>
			</div>
			<div class="container text-center">
				<g:link controller="estatica" action="estadisticas" >
					<input type="button" value="Ver más..." class="btn btn-warning">
				</g:link>
			
			</div>
		</div>
		<div class="container-fluid a-veinti5">
		&nbsp;
		</div>
</body>
</html>
