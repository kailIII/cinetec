<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Filmes Gerenciamento</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/res/css/estilo.css" />

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

		<h1>Salas</h1>


		<div id="corpoActions">
			<fieldset id="actsSala">
				<legend>gerenciar salas </legend>
				<form:form action="sala.do" method="POST" commandName="sala">
					<table>
						<tr>
							<td>Codigo da Sala</td>
							<td><form:input path="id_sala" id="c1"/></td>
						</tr>
						<tr>
							<td>Numero da Sala</td>
							<td><form:input path="num_sala" id="c2"/></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" name="action"
								value="Edit" /> <input type="submit" name="action"
								value="Delete" /> <input type="submit" name="action"
								value="Search" /> <input
								type="button" value="Limpar" onClick="limpa()"></td>
						</tr>
					</table>
				</form:form>
				<br>
			</fieldset>
		</div>

		<div id="corpoAdd">
			<fieldset id="addsSala">
				<legend>adicionar salas </legend>
				<form:form action="sala.do" method="POST" commandName="sala">
					<table>
						<tr>
							<td>Numero da Sala</td>
							<td><form:input path="num_sala" id="c3"/></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" name="action"
								value="Add"  /> <input
								type="button" value="Limpar" onClick="limpa()"></td>
						</tr>
					</table>
				</form:form>
				<br>
			</fieldset>
		</div>



		<div id="corpoForm">
			<fieldset id="lista">
				<legend>Lista das Salas </legend>

				<table border="1">
					<th>Codigo da sala</th>
					<th>Numero da sala</th>


					<c:forEach items="${salaList}" var="sala">
						<tr>
							<td>${sala.id_sala}</td>
							<td>${sala.num_sala}</td>

						</tr>
					</c:forEach>
				</table>
			</fieldset>
		</div>






		</section>


		<script>
			function limpa() {
				document.getElementById('c1').value = "";
				document.getElementById('c2').value = "";
				document.getElementById('c3').value = "";

			}
		</script>


		<footer id="rodape">
		<p>Copyright &copy; 2014 - by</p>

		</footer>
		</section>
</body>
</html>