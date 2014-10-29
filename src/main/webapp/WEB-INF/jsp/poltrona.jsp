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
				<legend>gerenciar poltronas </legend>
				<form:form action="poltrona.do" method="POST" commandName="poltrona">
					<table>
						<tr>
							<td>Codigo da poltrona</td>
							<td><form:input path="id_poltrona" id="c1" /></td>
						</tr>
						<tr>
							<td>Identificação da poltrona</td>
							<td><form:input path="num_poltrona" id="c2" /></td>
						</tr>
						<tr>
							<td><input type="submit" name="action" value="Buscar" /> <input
								type="submit" name="action" value="Editar" /> <input
								type="submit" name="action" value="Excluir" /> <input
								type="button" value="Limpar" onClick="limpa()"></td>
						</tr>
					</table>
				</form:form>
				<br>
			</fieldset>
		</div>

		<div id="corpoAdd">
			<fieldset id="addsSala">
				<legend>adicionar poltronas </legend>
				<form:form action="poltrona.do" method="POST" commandName="poltrona">
					<table>
						<tr>
							<td>Identificação da poltrona</td>
							<td><form:input path="num_poltrona" id="c3" /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" name="action"
								value="Adicionar" /> <input
								type="button" value="Limpar" onClick="limpa()"></td>
						</tr>
					</table>
				</form:form>
				<br>
			</fieldset>
		</div>



		<div id="corpoForm">
			<fieldset id="lista">
				<legend>Lista das Poltronas </legend>

				<table border="1">
					<th>Codigo da poltrona</th>
					<th>Identificação da Poltrona</th>


					<c:forEach items="${poltronaList}" var="poltrona">
						<tr>
							<td>${poltrona.id_poltrona}</td>
							<td>${poltrona.num_poltrona}</td>

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