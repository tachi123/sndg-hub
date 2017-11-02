<%@ page import="hub.UserRoleCentro" %>



<div class="fieldcontain ${hasErrors(bean: userRoleCentroInstance, field: 'centro', 'error')} required">
	<label for="centro">
		<g:message code="userRoleCentro.centro.label" default="Centro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="centro" name="centro.id" from="${hub.Centro.list()}" optionKey="id" required="" value="${userRoleCentroInstance?.centro?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userRoleCentroInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="userRoleCentro.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="role" name="role.id" from="${hub.Role.list()}" optionKey="id" required="" value="${userRoleCentroInstance?.role?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userRoleCentroInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="userRoleCentro.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${hub.User.list()}" optionKey="id" required="" value="${userRoleCentroInstance?.user?.id}" class="many-to-one"/>

</div>

