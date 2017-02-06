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

<div class="fieldcontain ${hasErrors(bean: herramientaInstance, field: 'singiID', 'error')} ">
	<label for="singiID">
		<g:message code="herramienta.singiID.label" default="Singi ID" />
		
	</label>
	<g:textField name="singiID" value="${herramientaInstance?.singiID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: herramientaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="herramienta.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textArea name="descripcion" value="${herramientaInstance?.descripcion}" rows="10" cols="100"/>

</div>

<div class="fieldcontain ${hasErrors(bean: herramientaInstance, field: 'responsable', 'error')} ">
	<label for="responsable">
		<g:message code="herramienta.responsable.label" default="Responsable" />
		
	</label>
	<g:textField name="responsable" value="${herramientaInstance?.responsable}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: herramientaInstance, field: 'colaboradores', 'error')} ">
	<label for="colaboradores">
		<g:message code="herramienta.colaboradores.label" default="Colaboradores" />
		
	</label>
	<g:textField name="colaboradores" value="${herramientaInstance?.colaboradores}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: herramientaInstance, field: 'unidad', 'error')} required">
	<label for="unidad">
		<g:message code="herramienta.unidad.label" default="Unidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unidad" name="unidad.id" from="${hub.Unidad.list()}" optionKey="id" required="" value="${herramientaInstance?.unidad?.id}" class="many-to-one"/>

</div>

