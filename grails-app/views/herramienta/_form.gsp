<%@ page import="hub.Herramienta" %>



<div class="fieldcontain ${hasErrors(bean: herramientaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="herramienta.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${herramientaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: herramientaInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="herramienta.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo" required="" value="${herramientaInstance?.tipo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: herramientaInstance, field: 'unidad', 'error')} required">
	<label for="unidad">
		<g:message code="herramienta.unidad.label" default="Unidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unidad" name="unidad.id" from="${hub.Unidad.list()}" optionKey="id" required="" value="${herramientaInstance?.unidad?.id}" class="many-to-one"/>

</div>

