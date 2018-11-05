<%@ page import="hub.ConjuntoDeDatos" %>
<%@ page import="hub.UserRoleCentro" %>
<%@ page import="hub.Enlace" %>
<%@ page import="hub.Role" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName"
           value="${message(code: 'conjuntoDeDatos.label', default: 'ConjuntoDeDatos')}"/>
    <title>
        ${conjuntoDeDatosInstance?.nombre}
    </title>
</head>

<body>
<div class="container-fluid titulo-seccion">
    <div class="container">
        <h1>Conjuntos de datos</h1>
    </div>
</div>

<div class="container">
    <h2 class="visor_titulo">
        ${conjuntoDeDatosInstance?.nombre}
        <sec:ifLoggedIn>
	    <sec:access expression="hasRole('ROLE_ADMIN')">
            &nbsp;
            <g:link controller="conjuntoDeDatos" action="edit" resource="${conjuntoDeDatosInstance}"
                          class="btn btn-warning">Editar...</g:link>
           &nbsp;
           <g:link 
              class="btn btn-danger" target="_SELF"
				controller="estatica" action="formRecursos" 
				params="[centroSingiID: conjuntoDeDatosInstance.unidad.centro.singiID, conjuntoSingiID: conjuntoDeDatosInstance.singiID]">
				Administrar recursos
			</g:link>
<%--           <g:link uri="http://target.sbg.qb.fcen.uba.ar/sndgupload/${conjuntoDeDatosInstance?.unidad?.centro?.singiID}/${conjuntoDeDatosInstance?.singiID}"--%>
<%--             class="btn btn-danger">Administrar recursos</g:link>    --%>
	    </sec:access>
	    </sec:ifLoggedIn>
	    <sec:ifLoggedIn>
        <sec:access expression="hasRole('ROLE_CENTRO')">
			<g:if test="${UserRoleCentro.get(
					sec.loggedInUserInfo(field: 'id').toLong(),
					Role.findByAuthority('ROLE_CENTRO').id, 
					conjuntoDeDatosInstance?.unidad?.centro?.id
					) != null}">
            &nbsp;
            <g:link 
              class="btn btn-danger" target="_SELF"
				controller="estatica" action="formRecursos" 
				params="[centroSingiID: conjuntoDeDatosInstance.unidad.centro.singiID, conjuntoSingiID: conjuntoDeDatosInstance.singiID]">
				Administrar recursos
			</g:link>
<%--            <g:link uri="http://target.sbg.qb.fcen.uba.ar/sndgupload/${conjuntoDeDatosInstance?.unidad?.centro?.singiID}/${conjuntoDeDatosInstance?.singiID}"--%>
<%--                          class="btn btn-danger">Administrar recursos</g:link>         --%>
	        </g:if>
        </sec:access>
        </sec:ifLoggedIn>
    </h2>
    <hr/>
        <g:if test="${conjuntoDeDatosInstance.descripcion || conjuntoDeDatosInstance.tipoDeOrganismo || conjuntoDeDatosInstance.tipoDeComunidad }">
            <div class="row visor-list">
                <div class="col-md-1"><asset:image src="icono_descripcion.png" class="pull-right"/></div>

                <div class="col-md-11">
                    <g:if test="${conjuntoDeDatosInstance.descripcion}">
                        <div class="elemento-descripcion"><label>${conjuntoDeDatosInstance?.descripcion}<br/></label></div>
                    </g:if>
                    <g:if test="${conjuntoDeDatosInstance.tipoDeOrganismo}">
                        <div class="elemento-descripcion">
                            <label><strong>Tipo de organismo: </strong> ${conjuntoDeDatosInstance.tipoDeOrganismo}</label>
                        </div>
                    </g:if>
                    <g:if test="${conjuntoDeDatosInstance.tipoDeComunidad}">
                        <div class="elemento-descripcion">
                            <label><strong>Tipo de comunidad: </strong> ${conjuntoDeDatosInstance.tipoDeComunidad}</label>
                        </div>
                    </g:if>
                    <g:if test="${conjuntoDeDatosInstance.publicacionesAsociadas}">
                        <div class="elemento-descripcion"><label>Publicaciones asociadas: </label> ${conjuntoDeDatosInstance?.publicacionesAsociadas}</div>
                    </g:if>
                </div>
            </div>
        </g:if>

        <g:if test="${conjuntoDeDatosInstance.proyecto || conjuntoDeDatosInstance.proyectoDescripcion }">
            <div class="row visor-list">
                <div class="col-md-1">
                    <asset:image class="pull-right" src="icono_maletin.png" width="26" height="26"/>
                </div>
                <div class="col-md-11">
                    <g:if test="${conjuntoDeDatosInstance.proyecto}">
                        <label><strong>Proyecto:&nbsp;</strong></label><label>${conjuntoDeDatosInstance?.proyecto}</label>
                    </g:if>
                    <g:if test="${conjuntoDeDatosInstance.proyectoDescripcion}">
                        <div class="elemento-descripcion"><label>${conjuntoDeDatosInstance?.proyectoDescripcion}<br/></label></div>
                    </g:if>
                </div>
            </div>
        </g:if>

        <g:if test="${conjuntoDeDatosInstance.responsable}">
            <div class="row visor-list">
                <div class="col-md-1">
                    <asset:image class="pull-right" src="icono_responsable.png"/>
                </div>
                <div>
                    <label>${conjuntoDeDatosInstance?.responsable}</label>
                </div>
            </div>
        </g:if>
        <g:if test="${conjuntoDeDatosInstance.colaboradores}">
            <div class="row visor-list">
                <div class="col-md-1">
                    <asset:image class="pull-right" src="icono_colaboradores.png"/>
                </div>
                <div>
                    <label>${conjuntoDeDatosInstance?.colaboradores}</label>
                </div>
            </div>
        </g:if>

        <g:if test="${conjuntoDeDatosInstance.unidad?.centro?.adherido}">
            <div class="row visor-list">
                <div class="col-md-1">
                    <asset:image class="pull-right" src="icono_adherido.png"/>
                </div>
                <div>
                    <label>Adherido al SNDG desde <g:formatDate format="dd-MM-yyyy" date="${conjuntoDeDatosInstance?.unidad?.centro?.fecha}"/></label>
                </div>
            </div>
        </g:if>
        <g:if test="${conjuntoDeDatosInstance?.unidad?.centro}">
            <div class="row visor-list">
                <div class="col-md-1">
                    <asset:image src="icono_institucion.png" class="pull-right"/>
                </div>

                <div>
                    <label>
                        ${conjuntoDeDatosInstance?.unidad?.centro}
                    </label>
                </div>
            </div>
        </g:if>
        <g:if test="${conjuntoDeDatosInstance?.unidad?.centro?.paginaWeb}">
            <div class="row visor-list">
                <div class="col-md-1">
                    <asset:image src="icono_web.png" class="pull-right"/>
                </div>

                <div>
                    <g:link target="_BLANK" uri="${conjuntoDeDatosInstance?.unidad?.centro?.paginaWeb}">
                        ${conjuntoDeDatosInstance?.unidad?.centro?.paginaWeb}
                    </g:link>
                </div>
            </div>
        </g:if>

        <!--
        <g:if test="${conjuntoDeDatosInstance?.enBuscador}">
            <div class="row visor-list">
                <div class="col-md-1">
                    <asset:image src="icono_buscador.png" class="img-fluid pull-right"
                                 alt="Ver en el Navegador Datos" title="Ver"/>
                </div>

                <div>
                    <g:eachJoin in="${conjuntoDeDatosInstance.enlaces}" var="e" delimiter=", ">
                        <g:link target="_BLANK" controller="estatica" action="navegador"
                                params="[genome: e.abreviatura]">${e.abreviatura ?: e.nombre}</g:link>
                    </g:eachJoin>

                </div>
            </div>
        </g:if>
        -->
	<g:if test="${conjuntoDeDatosInstance?.recursos?.size() > 0}">  
	<br>
    <div class="row visor-list">
        <div class="col-md-1">&nbsp;</div>
        <div class="col-md-11">
            <label><strong>Recursos&nbsp;</strong></label>
            <table class="table">
                <tbody>
                <g:each in="${conjuntoDeDatosInstance.recursos}" status="i"
                        var="recursoInstance">
                    <tr>
                        <td class="row-fluid">
                        	<g:if test="${recursoInstance.url != null && recursoInstance.url.length() > 1}">
	                        	<g:link 
	                        	class="btn btn-xs" target="_BLANK"
								controller="estatica" action="descarga" params="[genome: recursoInstance.url]">
									<asset:image src="icono_descarga.png" class="" alt="Descargar el dato" title="Descarga" />
								</g:link>
							</g:if>
							<g:else>
								<g:if test="${recursoInstance.web != null && recursoInstance.web.length() > 1}">
									<g:link class="btn btn-xs" target="_BLANK" base="${recursoInstance.web}">
										<asset:image src="icono_ver.png" class="" alt="Ver web del recurso" title="Ver web del recurso" />
									</g:link>
								</g:if>
							</g:else>
                            <span>${recursoInstance.nombre}</span>
                            <g:if test="${recursoInstance.path != null && recursoInstance.path.length() > 1}">
                                <g:link class="btn btn-info btn-xs btn-round"
                                        controller="estatica" action="navegador" params="[genome: recursoInstance.path]" target="_BLANK">
                                    ${recursoInstance.path ?: recursoInstance.nombre}
                                </g:link>
                            </g:if>
                            <g:if test="${recursoInstance?.descripcion != null && recursoInstance.descripcion.length() > 1}">
								<span  class="btn btn-xs btn-warning" onclick="$('.descripcion-${recursoInstance.id}').toggle('slow')"
									alt="Ver descripción" title="Mostrar descripción del recurso">
									Ver más +</span>
							</g:if>
                        </td>
                    </tr>
					<g:if test="${recursoInstance.descripcion != null && recursoInstance.descripcion.length() >1}">
                        <tr class="descripcion-${recursoInstance.id}" style="display: none;">
                       		<td style="border: none;">
								<span style="margin-left:20px"><strong>Descripción:</strong> ${recursoInstance.descripcion}</span>
							</td>
                   		</tr>
                    </g:if>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>
	</g:if>
</div>

<div class="container a-veinti5">&nbsp;</div>
</body>
</html>
