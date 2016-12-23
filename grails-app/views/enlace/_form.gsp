<%@ page import="hub.Enlace" %>



<div class="fieldcontain ${hasErrors(bean: enlaceInstance, field: 'abreviatura', 'error')} ">
	<label for="abreviatura">
		<g:message code="enlace.abreviatura.label" default="Abreviatura" />
		
	</label>
	<g:textField name="abreviatura" value="${enlaceInstance?.abreviatura}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enlaceInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="enlace.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${enlaceInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enlaceInstance, field: 'uri', 'error')} required">
	<label for="uri">
		<g:message code="enlace.uri.label" default="Uri" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uri" required="" value="${enlaceInstance?.uri}"/>

</div>

