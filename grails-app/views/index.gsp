<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Bienvenido al portal del Sistema Nacional de Datos Genómicos</title>
</head>
<body>
	<div class="container-fluid">
		<div id="container_presentacion">
			<div class="container presentacion">
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
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2 col-md-offset-1">
					<asset:image
						src="fotos/10363377_754014327983585_44685877224761821_n.jpg"
						class="img-fluid" />
				</div>
				<div class="col-md-2">
					<asset:image src="fotos/agro-1920.jpg" class="img-fluid" />
				</div>
				<div class="col-md-2">
					<asset:image src="fotos/DSC03130.JPG" class="img-fluid" />
				</div>
				<div class="col-md-2">
					<asset:image src="fotos/Microbianas-1920.jpg" class="img-fluid" />
				</div>
				<div class="col-md-2">
					<asset:image src="fotos/MACN-Or-ct 4600a.JPG" class="img-fluid" />
				</div>
			</div>
		</div>
		<div class="container-fluid" id="container_buscador">
			<form >
				<div class="form-group">
					<label for="buscar">Palabras claves</label>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Buscar" id="buscar" name="buscar">
						<span class="input-group-btn">
						    <button class="btn btn-warning" type="button">Buscar</button>
						</span>
					</div> 
				</div>
			</form>
		</div>
		<div class="container-fluid " style="padding: 0px; margin: 0px;">
			<!-- Example row of columns -->
			<div class="row">
				<div class="col-md-4">
					<h2
						style="color: #008BC0; font-size: 1.6em; text-transform: uppercase;">CENTROS</h2>
					<div class="grow-pic">
						<a href="/generic-hub/occurrences/search?q=*%3A*#tab_mapView">
							<asset:image src="img_centros.png" class="img-fluid" />
						</a>
					</div>
				</div>
				<div class="col-md-4">
					<h2
						style="color: #008BC0; font-size: 1.6em; text-transform: uppercase;">Conjuntos
						de datos</h2>
					<div class="grow-pic">
						<a href="/collectory/datasets"> <asset:image
								src="img_conjuntos_de_datos.png" class="img-fluid" />
						</a>
					</div>
				</div>
				<div class="col-md-4">
					<h2
						style="color: #008BC0; font-size: 1.6em; text-transform: uppercase;">Herramientas</h2>
					<div class="grow-pic">
						<a href="/collectory"> <asset:image src="img_herramientas.png"
								class="img-fluid" />
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<asset:image src="banner.png" class="img-fluid"/>
			</div>
			
		</div>
</body>
</html>
