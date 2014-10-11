<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Filmes Gerenciamento</title>
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/estilo.css"/> 

</head>
<body>
	<div id="interface">
		<header id="cabecalho">

		<h1>Cinetec</h1>

		<p>
		
		</p>

		<div id="logo">
			<p>Bem vindo, ${usuarioLogado.username}</p>

		</div>

		</header>

		<section id="corpo">
		

	



		<form:form action="filme.do" method="POST" commandName="filme">
			<table>
				<tr>
					<td>Titulo</td>
					<td><form:input path="nm_filme" /></td>
				</tr>
				<tr>
					<td>Genero</td>
					<td><form:input path="categ_filme" /></td>
				</tr>
				<tr>
					<td>Duraçao</td>
					<td><form:input path="duracao" /></td>
				</tr>
				<tr>
					<td>Ano</td>
					<td><form:input path="ano" /></td>
				</tr>
				<tr>
					<td>Diretor</td>
					<td><form:input path="dir_filme" /></td>
				</tr>
				<tr>
					<td>Ator</td>
					<td><form:input path="ator1_filme" /></td>
				</tr>
				<tr>
					<td>Ator</td>
					<td><form:input path="ator2_filme" /></td>
				</tr>
				<tr>
					<td>Sinopse</td>
					<td><form:input path="sinopse_filme" /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" name="action" value="Add" />
						<input type="submit" name="action" value="Edit" /> <input
						type="submit" name="action" value="Delete" /> <input
						type="submit" name="action" value="Search" /></td>
				</tr>
			</table>
		</form:form>


		<br>
		<table border="1">
			<th>id</th>
			<th>Titulo</th>
			<th>Genero</th>
			<th>Duração</th>
			<th>Ano</th>
			<th>Direção</th>
			<th>Ator</th>
			<th>Ator</th>
			<th>Sinopse</th>

			<c:forEach items="${filmeList}" var="filme">
				<tr>
					<td>${filme.id_filme}</td>
					<td>${filme.nm_filme}</td>
					<td>${filme.categ_filme}</td>
					<td>${filme.duracao}</td>
					<td>${filme.ano}</td>
					<td>${filme.dir_filme}</td>
					<td>${filme.ator1_filme}</td>
					<td>${filme.ator2_filme}</td>
					<td>${filme.sinopse_filme}</td>
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