
<%@ page import="hub.Herramienta"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'herramienta.label', default: 'Herramienta')}" />
<title>${ herramientaInstance?.nombre }</title>
</head>
<body>
	<div class="container-fluid titulo-seccion">
		<div class="container">
			<h1>Herramientas</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="visor_titulo">
			${ herramientaInstance?.nombre }
			<sec:ifLoggedIn>&nbsp;<g:link controller="herramienta" action="edit" resource="${herramientaInstance}"
										  class="btn btn-warning">Editar...</g:link></sec:ifLoggedIn>

		</h2>
		<hr />

		<g:if test="${herramientaInstance.descripcion}">
			<div class="row visor-list">
				<div class="col-md-1"><asset:image src="icono_descripcion.png" class="pull-right"/></div>
				<div class="col-md-11"><label>${herramientaInstance?.descripcion}<br/></label></div>
			</div>
		</g:if>
		<g:if test="${herramientaInstance.proyecto || herramientaInstance.proyectoDescripcion }">
			<div class="row visor-list">
				<div class="col-md-1">
					<asset:image class="pull-right" src="icono_maletin.jpg" width="26" height="26"/>
				</div>
				<div class="col-md-11">
					<g:if test="${herramientaInstance.proyecto}">
						<label><strong>Proyecto:&nbsp;</strong></label><label>${herramientaInstance?.proyecto}</label>
					</g:if>
					<g:if test="${herramientaInstance.proyectoDescripcion}">
						<div class="elemento-descripcion"><label>${herramientaInstance?.proyectoDescripcion}<br/></label></div>
					</g:if>
				</div>
			</div>
		</g:if>
		<g:if test="${herramientaInstance.responsable}">
			<div class="row visor-list">
				<div class="col-md-1">
					<asset:image class="pull-right" src="icono_responsable.png"/>
				</div>
				<div>
					<label>${herramientaInstance?.responsable}</label>
				</div>
			</div>
		</g:if>
		<g:if test="${herramientaInstance.colaboradores}">
			<div class="row visor-list">
				<div class="col-md-1">
					<asset:image class="pull-right" src="icono_colaboradores.png"/>
				</div>
				<div>
					<label>${herramientaInstance?.colaboradores}</label>
				</div>
			</div>
		</g:if>

		<g:if test="${herramientaInstance.unidad?.centro?.adherido}">
			<div class="row visor-list">
				<div class="col-md-1">
					<asset:image class="pull-right" src="icono_adherido.png"/>
				</div>
				<div>
					<label>Adherido
					al SNDG desde <g:formatDate format="dd-MM-yyyy" date="${herramientaInstance?.unidad?.centro?.fecha}"/></label>
				</div>
			</div>
		</g:if>
		<g:if test="${herramientaInstance?.unidad?.centro}">
			<div class="row visor-list">
				<div class="col-md-1">
					<asset:image src="icono_institucion.png" class="pull-right"/>
				</div>

				<div>
					<label>
						${herramientaInstance?.unidad?.centro}
					</label>
				</div>
			</div>
		</g:if>
		<g:if test="${herramientaInstance?.unidad?.centro?.paginaWeb}">
			<div class="row visor-list">
				<div class="col-md-1">
					<asset:image src="icono_web.png" class="pull-right"/>
				</div>

				<div>
					<g:link target="_BLANK" uri="${herramientaInstance?.unidad?.centro?.paginaWeb}">
						${herramientaInstance?.unidad?.centro?.paginaWeb}
					</g:link>
				</div>
			</div>
		</g:if>
		<g:if test="${herramientaInstance.url}">
			<div class="row visor-list">
                <div class="col-md-1">
				<asset:image src="icono_enlace.png" class="img-fluid pull-right"
							 alt="Ir a la herramienta" title="Ver"/>
			</div>
			<div>
					<g:link target="_BLANK" uri="${herramientaInstance.url}" >
						${herramientaInstance.url}</g:link>

			</div>
		</g:if>


	</div>
<div class="container a-veinti5">&nbsp;</div>

</body>
</html>
