<%@ page import="hub.Centro" %>



<div class="fieldcontain ${hasErrors(bean: centroInstance, field: 'fecha', 'error')} ">
	<label for="fecha">
		<g:message code="centro.fecha.label" default="Fecha" />
		
	</label>
	<g:datePicker name="fecha" precision="day"  value="${centroInstance?.fecha}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: centroInstance, field: 'siglas', 'error')} ">
	<label for="siglas">
		<g:message code="centro.siglas.label" default="Siglas" />
		
	</label>
	<g:textField name="siglas" value="${centroInstance?.siglas}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: centroInstance, field: 'paginaWeb', 'error')} ">
	<label for="paginaWeb">
		<g:message code="centro.paginaWeb.label" default="Pagina Web" />
		
	</label>
	<g:textField name="paginaWeb" value="${centroInstance?.paginaWeb}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: centroInstance, field: 'adherido', 'error')} ">
	<label for="adherido">
		<g:message code="centro.adherido.label" default="Adherido" />
		
	</label>
	<g:checkBox name="adherido" value="${centroInstance?.adherido}" />

</div>

<div class="fieldcontain ${hasErrors(bean: centroInstance, field: 'contactoLegal', 'error')} required">
	<label for="contactoLegal">
		<g:message code="centro.contactoLegal.label" default="Contacto Legal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactoLegal" required="" value="${centroInstance?.contactoLegal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: centroInstance, field: 'contactoTecnico', 'error')} required">
	<label for="contactoTecnico">
		<g:message code="centro.contactoTecnico.label" default="Contacto Tecnico" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactoTecnico" required="" value="${centroInstance?.contactoTecnico}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: centroInstance, field: 'dependeDe', 'error')} ">
	<label for="dependeDe">
		<g:message code="centro.dependeDe.label" default="Depende De" />
		
	</label>
	<g:select name="dependeDe" from="${hub.Institucion.list()}" multiple="multiple" optionKey="id" size="5" value="${centroInstance?.dependeDe*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: centroInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="centro.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${centroInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: centroInstance, field: 'singiID', 'error')} required">
	<label for="singiID">
		<g:message code="centro.singiID.label" default="Singi ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="singiID" required="" value="${centroInstance?.singiID}"/>

</div>

