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

		<h1>Usuarios</h1>



		<div id="corpoActions">
			<fieldset	id="acts">
				<legend>gerenciar usuarios </legend>
				<form:form action="usuario.do" method="POST" commandName="usuario">
					<table>
						<tr>
							<td>Codigo</td>
							<td><form:input required="”true”" path="id_usuario" id="c1" /></td>
						</tr>
						<tr>
							<td>Nome</td>
							<td><form:input  path="nm_usuario" id="c2" /></td>
						</tr>
						<tr>
							<td>Sobrenome</td>
							<td><form:input path="sbr_usuario" id="c3" /></td>
						</tr>
						<tr>
							<td>Login</td>
							<td><form:input path="username" id="c4" /></td>
						</tr>
											
						
						<tr>
							<td></td>
							<td><input type="submit" name="action" value="Buscar" />  <input
								type="submit" name="action" value="Excluir" /> <input
								type="button" value="Limpar" onClick="limpa()"></td>
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
				<legend>Lista dos usuario </legend>
			<table border="1">
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