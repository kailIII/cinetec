<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/css/estilo.css" />

</head>
<body>
	<div id="interface">
		<header id="cabecalho">

		<h1>Cinetec</h1>

		<p>
		<form action="efetuaLogin" method="post">
			Login: <input type="text" name="username" />  
			Senha: <input type="password" name="password" />  
			       <input type="submit" value="Entrar " />
		</form>
		</p>

		
		 </header>





		<section id="corpo">


		<form action="cadastrar" method="post">
			<fieldset>
				<legend>Dados pessoais</legend>

				<div class="form-group">
					<label for="nome">Nome </label> <input type="text"
						class="form-control" id="nome" name="nm_usuario">
				</div>

				<div class="form-group">
					<label for="nome">Sobrenome </label> <input type="text"
						class="form-control" id="nome" name="sbr_usuario">
				</div>

				<div class="form-group">
					<label for="nome">Login </label> <input type="text"
						class="form-control" id="nome" name="username">
				</div>

				<div class="form-group">
					<label for="nome">Password </label> <input type="password"
						class="form-control" id="nome" name="password">
				</div>

				<div class="form-group">
					<label for="cpf">CPF</label> <input type="text"
						class="form-control" id="cpf" name="cpf">
				</div>
				

				<input type="submit" value="Cadastrar " />
			</fieldset>
		</form>

		</section>


		<footer id="rodape">
		<p>Copyright &copy; 2014 - by</p>

		</footer>
	</div>
</body>
</html>