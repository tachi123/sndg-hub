<%@ page import="hub.ConjuntoDeDatos" %>



<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'enBuscador', 'error')} ">
	<label for="enBuscador">
		<g:message code="conjuntoDeDatos.enBuscador.label" default="En Buscador" />
		
	</label>
	<g:checkBox name="enBuscador" value="${conjuntoDeDatosInstance?.enBuscador}" />

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="conjuntoDeDatos.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${conjuntoDeDatosInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'porcentajeSecuenciado', 'error')} required">
	<label for="porcentajeSecuenciado">
		<g:message code="conjuntoDeDatos.porcentajeSecuenciado.label" default="Porcentaje Secuenciado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="porcentajeSecuenciado" type="number" value="${conjuntoDeDatosInstance.porcentajeSecuenciado}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'singiID', 'error')} required">
	<label for="singiID">
		<g:message code="conjuntoDeDatos.singiID.label" default="Singi ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="singiID" required="" value="${conjuntoDeDatosInstance?.singiID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conjuntoDeDatosInstance, field: 'unidad', 'error')} required">
	<label for="unidad">
		<g:message code="conjuntoDeDatos.unidad.label" default="Unidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unidad" name="unidad.id" from="${hub.Unidad.list()}" optionKey="id" required="" value="${conjuntoDeDatosInstance?.unidad?.id}" class="many-to-one"/>

</div>

