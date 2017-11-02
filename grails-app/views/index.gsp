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
					principales estadísticas del SNDG y acceder a los datos a través del
					navegador.</p>
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
			
	            <div class='tableauPlaceholder' id='viz1490291152298' style='position: relative;width: 100%; height: 100%;'>
	                <!--div class='tableauPlaceholder' id='viz1490291152298' style='position: relative'-->
	                <noscript><a href='#'>
	                    <img alt='Sistema Nacional de Datos Genómicos. ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;ta&#47;tablerosndg&#47;Historia1&#47;1_rss.png' style='border: none' />
	                </a></noscript>
	                <object class='tableauViz'  style='display:none;'>
	                    <param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' />
	                    <param name='site_root' value='' />
	                    <param name='name' value='tablerosndg&#47;Historia1' />
	                    <param name='tabs' value='no' />
	                    <param name='toolbar' value='no' />
	                    <param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;ta&#47;tablerosndg&#47;Historia1&#47;1.png' />
	                    <param name='animate_transition' value='yes' />
	                    <param name='display_static_image' value='no' />
	                    <param name='display_spinner' value='yes' />
	                    <param name='display_overlay' value='yes' />
	                    <param name='display_count' value='yes' /></object>
	            </div>
	            <script type='text/javascript'>
	                var divElement = document.getElementById('viz1490291152298');
	                var vizElement = divElement.getElementsByTagName('object')[0];
	                vizElement.style.width='100%';vizElement.style.height='850px';
	                //vizElement.style.width='1220px';vizElement.style.height='933px';
	                var scriptElement = document.createElement('script');
	                scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';
	                vizElement.parentNode.insertBefore(scriptElement, vizElement);
	            </script>
       	 	</div>
<%--
			<div class="container text-center">
					<g:link controller="estatica" action="estadisticas" >
						<asset:image src="estadisticas.jpg"/>
					</g:link>
			</div>
			<div class="container text-center">
				<g:link controller="estatica" action="estadisticas" >
					<input type="button" value="Ver más..." class="btn btn-warning">
				</g:link>
			</div>
--%>
		</div>
		<div class="container-fluid a-veinti5">
		&nbsp;
		</div>
</body>
</html>
