<%@ page import="hub.Unidad" %>



<div class="fieldcontain ${hasErrors(bean: unidadInstance, field: 'centro', 'error')} required">
	<label for="centro">
		<g:message code="unidad.centro.label" default="Centro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="centro" name="centro.id" from="${hub.Centro.list()}" optionKey="id" required="" value="${unidadInstance?.centro?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unidadInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="unidad.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${unidadInstance?.nombre}"/>

</div>

