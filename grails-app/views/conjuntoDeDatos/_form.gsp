<%@ page import="hub.ConjuntoDeDatos" %>



<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="conjuntoDeDatos.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${conjuntoDeDatosInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'singiID', 'error')} required">
	<label for="singiID">
		<g:message code="conjuntoDeDatos.singiID.label" default="Singi ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="singiID" required="" value="${conjuntoDeDatosInstance?.singiID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="conjuntoDeDatos.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${conjuntoDeDatosInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'publicacionesAsociadas', 'error')} ">
	<label for="publicacionesAsociadas">
		<g:message code="conjuntoDeDatos.publicacionesAsociadas.label" default="Publicaciones Asociadas" />
		
	</label>
	<g:textField name="publicacionesAsociadas" value="${conjuntoDeDatosInstance?.publicacionesAsociadas}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'proyecto', 'error')} ">
	<label for="proyecto">
		<g:message code="conjuntoDeDatos.proyecto.label" default="Proyecto" />
		
	</label>
	<g:textField name="proyecto" value="${conjuntoDeDatosInstance?.proyecto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'proyectoDescripcion', 'error')} ">
	<label for="proyectoDescripcion">
		<g:message code="conjuntoDeDatos.proyectoDescripcion.label" default="Proyecto Descripcion" />
		
	</label>
	<g:textField name="proyectoDescripcion" value="${conjuntoDeDatosInstance?.proyectoDescripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'responsable', 'error')} ">
	<label for="responsable">
		<g:message code="conjuntoDeDatos.responsable.label" default="Responsable" />
		
	</label>
	<g:textField name="responsable" value="${conjuntoDeDatosInstance?.responsable}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'colaboradores', 'error')} ">
	<label for="colaboradores">
		<g:message code="conjuntoDeDatos.colaboradores.label" default="Colaboradores" />
		
	</label>
	<g:textField name="colaboradores" value="${conjuntoDeDatosInstance?.colaboradores}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'porcentajeSecuenciado', 'error')} ">
	<label for="porcentajeSecuenciado">
		<g:message code="conjuntoDeDatos.porcentajeSecuenciado.label" default="Porcentaje Secuenciado" />
		
	</label>
	<g:field name="porcentajeSecuenciado" type="number" value="${conjuntoDeDatosInstance.porcentajeSecuenciado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'tipoDeOrganismo', 'error')} ">
	<label for="tipoDeOrganismo">
		<g:message code="conjuntoDeDatos.tipoDeOrganismo.label" default="Tipo De Organismo" />
		
	</label>
	<g:textField name="tipoDeOrganismo" value="${conjuntoDeDatosInstance?.tipoDeOrganismo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'tipoDeComunidad', 'error')} ">
	<label for="tipoDeComunidad">
		<g:message code="conjuntoDeDatos.tipoDeComunidad.label" default="Tipo De Comunidad" />
		
	</label>
	<g:textField name="tipoDeComunidad" value="${conjuntoDeDatosInstance?.tipoDeComunidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'orden', 'error')} ">
	<label for="orden">
		<g:message code="conjuntoDeDatos.orden.label" default="Orden" />
		
	</label>
	<g:field name="orden" type="number" value="${conjuntoDeDatosInstance.orden}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'enBuscador', 'error')} ">
	<label for="enBuscador">
		<g:message code="conjuntoDeDatos.enBuscador.label" default="En Buscador" />
		
	</label>
	<g:checkBox name="enBuscador" value="${conjuntoDeDatosInstance?.enBuscador}" />

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'enlaces', 'error')} ">
	<label for="enlaces">
		<g:message code="conjuntoDeDatos.enlaces.label" default="Enlaces" />
		
	</label>
	<g:select name="enlaces" from="${hub.Enlace.list()}" multiple="multiple" optionKey="id" size="5" value="${conjuntoDeDatosInstance?.enlaces*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'recursos', 'error')} ">
	<label for="recursos">
		<g:message code="conjuntoDeDatos.recursos.label" default="Recursos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${conjuntoDeDatosInstance?.recursos?}" var="r">
    <li><g:link controller="recurso" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="recurso" action="create" params="['conjuntoDeDatos.id': conjuntoDeDatosInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'recurso.label', default: 'Recurso')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'unidad', 'error')} required">
	<label for="unidad">
		<g:message code="conjuntoDeDatos.unidad.label" default="Unidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unidad" name="unidad.id" from="${hub.Unidad.list()}" optionKey="id" required="" value="${conjuntoDeDatosInstance?.unidad?.id}" class="many-to-one"/>

</div>

