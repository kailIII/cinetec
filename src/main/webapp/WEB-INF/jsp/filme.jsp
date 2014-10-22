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
			<!--  <a href="<c:url value="../admin"/>">voltar</a></li>-->
		<p></p>

		<div id="logo">
			<p>Bem vindo, ${usuarioLogado.username}</p>
			<p>
			
			</p>
		</div>
		
		</header>

		<section id="corpo">

		<h1>Filmes</h1>



		<div id="corpoActions">
			<fieldset	id="acts">
				<legend>gerenciar filmes </legend>
				<form:form action="filme.do" method="POST" commandName="filme">
					<table>
						<tr>
							<td>Codigo</td>
							<td><form:input required="”true”" path="id_filme" id="c1" /></td>
						</tr>
						<tr>
							<td>Titulo</td>
							<td><form:input path="nm_filme" id="c2" /></td>
						</tr>
						<tr>
							<td>Genero</td>
							<td><form:input path="categ_filme" id="c3" /></td>
						</tr>
						<tr>
							<td>Duraçao</td>
							<td><form:input path="duracao" id="c4" /></td>
						</tr>
						<tr>
							<td>Ano</td>
							<td><form:input path="ano" id="c5" /></td>
						</tr>
						<tr>
							<td>Diretor</td>
							<td><form:input path="dir_filme" id="c6" /></td>
						</tr>
						<tr>
							<td>Ator</td>
							<td><form:input path="ator1_filme" id="c7" /></td>
						</tr>
						<tr>
							<td>Ator</td>
							<td><form:input path="ator2_filme" id="c8" /></td>
						</tr>
						<tr>
							<td>Sinopse</td>
							<td><form:textarea path="sinopse_filme" id="c9" /></td>
						</tr>

						<tr>
							<td></td>
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
			<fieldset id="ads">
				<legend>adicionar filmes</legend>
				<form:form action="filme.add" method="POST" commandName="filme">
					<table width: 500px>
						<tr>
							<td>Titulo</td>
							<td><form:input path="nm_filme" id="c10" /></td>
						</tr>
						<tr>
							<td>Genero</td>
							<td><form:input path="categ_filme" id="c11" /></td>
						</tr>
						<tr>
							<td>Duraçao</td>
							<td><form:input path="duracao" id="c12" /></td>
						</tr>
						<tr>
							<td>Ano</td>
							<td><form:input path="ano" id="c13" /></td>
						</tr>
						<tr>
							<td>Diretor</td>
							<td><form:input path="dir_filme" id="c14" /></td>
						</tr>
						<tr>
							<td>Ator</td>
							<td><form:input path="ator1_filme" id="c15" /></td>
						</tr>
						<tr>
							<td>Ator</td>
							<td><form:input path="ator2_filme" id="c16" /></td>
						</tr>
						<tr>
							<td>Sinopse</td>
							<td><form:textarea path="sinopse_filme" id="c17" /></td>
						</tr>

						<tr>
							<td></td>
							<td><input type="submit" name="action" value="Adicionar" />
								<input type="button" value="Limpar" onClick="limpa()"></td>
						</tr>
					</table>
				</form:form>
				<br>
			</fieldset>

		</div>

		<p>
		<p>
		<div id="corpoForm">
		<fieldset	id="lista">
				<legend>Lista dos Filmes </legend>
			<table border="1">
				<th>Codigo</th>
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
			
			</fieldset>
		</div>
		</section>

		<script>
			function limpa() {
				document.getElementById('c1').value = "";
				document.getElementById('c2').value = "";
				document.getElementById('c3').value = "";
				document.getElementById('c4').value = "";
				document.getElementById('c5').value = "";
				document.getElementById('c6').value = "";
				document.getElementById('c7').value = "";
				document.getElementById('c8').value = "";
				document.getElementById('c9').value = "";
				document.getElementById('c9').value = "";
				document.getElementById('c10').value = "";
				document.getElementById('c11').value = "";
				document.getElementById('c12').value = "";
				document.getElementById('c13').value = "";
				document.getElementById('c14').value = "";
				document.getElementById('c15').value = "";
				document.getElementById('c16').value = "";
				document.getElementById('c17').value = "";
			}
		</script>


		<footer id="rodape">
		<p>Copyright &copy; 2014 - by</p>

		</footer>
	</div>
</body>
</html>