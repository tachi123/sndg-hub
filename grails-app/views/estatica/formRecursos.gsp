<%@ page import="hub.UserRoleCentro" %>
<%@ page import="hub.Centro" %>
<%@ page import="hub.Role" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>${ title }</title>
</head>
<body>
	<sec:ifLoggedIn>
    <sec:access expression="hasRole('ROLE_ADMIN')">
    <div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
					<iframe src="${ url }"	frameborder="0" style="overflow:hidden;height:600px;width:inherit;" ></iframe>
				</div>
			</div>
		</div>
    </sec:access>
    <sec:access expression="hasRole('ROLE_CENTRO')">
	    <g:if test="${UserRoleCentro.get(
			sec.loggedInUserInfo(field: 'id').toLong(), 
			Role.findByAuthority('ROLE_CENTRO').id, 
			Centro.findBySingiID(params.centroSingiID) != null ? Centro.findBySingiID(params.centroSingiID).id : 0
			) != null}">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<iframe src="${ url }"	frameborder="0" style="overflow:hidden;height:600px;width:inherit;" ></iframe>
					</div>
				</div>
			</div>
		</g:if>
		<g:else>
			<h2 class="visor_titulo">No tiene los permisos necesarios</h2>
		</g:else>
    </sec:access>
    </sec:ifLoggedIn>
</body>