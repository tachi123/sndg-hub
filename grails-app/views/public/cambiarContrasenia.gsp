<%@ page import="hub.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div id="edit-user" class="content scaffold-edit" role="main">
				<h1>Cambiar contrase&ntilde;a</h1>
				
				<g:hasErrors bean="${userInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${userInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</g:hasErrors>
							
				<g:form action="update">
					<fieldset class="form">
						<g:hiddenField name="id" value="${userInstance?.id}" />
						<g:hiddenField name="username" value="${userInstance?.username}" />
						<g:hiddenField name="accountExpired" value="${userInstance?.accountExpired}" />
						<g:hiddenField name="accountLocked" value="${userInstance?.accountLocked}" />
						<g:hiddenField name="enabled" value="${userInstance?.enabled}" />
						<g:hiddenField name="passwordExpired" value="${userInstance?.passwordExpired}" />
						
						<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
							<label for="password">
								<g:message code="user.password.label" default="Contrase&ntilde;a nueva" />
								<span class="required-indicator">*</span>
							</label>
							<g:textField name="password" required="" value=""/>
						
						</div>
					</fieldset>
					<br>
					<fieldset class="buttons">
						<g:actionSubmit class="btn btn-primary" action="update" value="Cambiar" />
					</fieldset>
					<br>
				</g:form>
			</div>
		</div>
	</body>
</html>
