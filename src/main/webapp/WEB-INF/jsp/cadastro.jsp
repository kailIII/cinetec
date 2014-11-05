<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/res/css/estilo.css" />
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/jquery-1.7.1.min.js"></script> 
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/api-ajax.js"></script> 
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/page-functions.js"></script>
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/formnav.js"></script>
</head>
<body>
 	<jsp:include page = "templates/header.jsp" /> 
 	<h1 class="home-h1"><div class="wrapper">Cadastro de usuário</div></h1>
 	<div class="wrapper">
 		<div class="ylw-box">
			<form action="cadastrar" method="post" class="add-edit-form">
				<table>
					<tr>
						<td><label for="nome">Nome </label> </td>
						<td><input type="text" class="form-control" id="nome" name="nm_usuario" /></td>
					</tr>
					<tr>
						<td><label for="nome">Sobrenome </label> </td>
						<td><input type="text" class="form-control" id="nome" name="sbr_usuario" /></td>
					</tr>	
					<tr>
						<td><label for="nome">Login </label> </td>
						<td><input type="text" class="form-control" id="nome" name="username" /></td>
					</tr>
	
					<tr>
						<td><label for="nome">Password </label> </td>
						<td><input type="password" class="form-control" id="nome" name="password" /></td>
					</tr>
	
					<tr>
						<td><label for="cpf">CPF</label></td>
						<td><input type="text" class="form-control" id="cpf" name="cpf" /></td>
					</tr>
					
					<tr>
						<td></td>
						<td><input type="submit" value="Cadastrar " /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<br>
	<br>
	<jsp:include page = "templates/footer.jsp" /> 
</body>
</html>