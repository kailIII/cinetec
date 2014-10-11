<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Filmes Gerenciamento</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/css/estilo.css" />

</head>
<body>
	<div id="interface">
		<header id="cabecalho">

		<h1>Cinetec</h1>

		<p></p>

		<div id="logo">
			<p>Bem vindo, ${usuarioLogado.username}</p>

		</div>

		</header>

		<section id="corpo">
		
		 <form:form action="sala.do" method="POST" commandName="sala">
			<table>
				<tr>
					<td>Numero da Sala</td>
					<td><form:input path="num_sala" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="action" value="Add" />
						<input type="submit" name="action" value="Edit" /> <input
						type="submit" name="action" value="Delete" /> <input
						type="submit" name="action" value="Search" /></td>
				</tr>
			</table>
		</form:form> <br>
		<table border="1">
			<th>Numero da sala</th>


			<c:forEach items="${salaList}" var="sala">
				<tr>
					<td>${sala.num_sala}</td>

				</tr>
			</c:forEach>
		</table>


		




		</section>

		<footer id="rodape">
		<p>Copyright &copy; 2014 - by</p>

		</footer>
		</section>
</body>
</html>