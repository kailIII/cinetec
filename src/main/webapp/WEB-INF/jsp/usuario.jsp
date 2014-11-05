<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Filmes - Gerenciamento</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/res/css/estilo.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/res/css/font-awesome.min.css"/> 
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/jquery-1.7.1.min.js"></script> 
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/api-ajax.js"></script> 
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/page-functions.js"></script>
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/formnav.js"></script>
</head>
<body>
	<jsp:include page = "templates/header.jsp" />
 	<h1 class="home-h1"><div class="wrapper">Salas</div></h1>
	<div class="wrapper">
		<div id="crud-container" class="ylw-box"> 
			<nav id="crud-options-nav"> 
				<ul> 
					<!--<li id="search-li" class="selected"><i class="ico fa fa-search"></i>Pesquisar</li>--> 
					<li id="edit-li" class="selected"><i class="ico fa fa-pencil"></i>Gerenciar usuários</li> 
				</ul> 
			</nav>
			<div id="edit-div">
				<form:form action="usuario.do" id="edit-usuario" method="POST" commandName="usuario">
					<table>
						<tr>
							<td><label>Codigo</label></td>
							<td><form:input required="”true”" path="id_usuario" id="c1" /></td>
						</tr>
						<tr>
							<td><label>Nome</label></td>
							<td><form:input  path="nm_usuario" id="c2" /></td>
						</tr>
						<tr>
							<td><label>Sobrenome</label></td>
							<td><form:input path="sbr_usuario" id="c3" /></td>
						</tr>
						<tr>
							<td><label>Login</label></td>
							<td><form:input path="username" id="c4" /></td>
						</tr>

						<tr>
							<td></td>
							<td>
								<input type="submit" name="action" value="Buscar" />  
								<input type="submit" name="action" value="Excluir" /> 
								<input type="button" value="Limpar" onClick="limpa('edit-usuario', 'c')">
							</td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>

		<table class="tbl-data">
			<th>Codigo</th>
			<th>Nome</th>
			<th>Sobrenome</th>
			<th>Login</th>
							
			<c:forEach items="${usuarioList}" var="usuario">
				<tr>
					<td>${usuario.id_usuario}</td>
					<td>${usuario.nm_usuario}</td>
					<td>${usuario.sbr_usuario}</td>
					<td>${usuario.username}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<jsp:include page = "templates/footer.jsp" />
</body>
</html>