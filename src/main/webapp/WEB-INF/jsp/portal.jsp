<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/estilo.css"/> 
</head>
<body>
	<div id="interface">
		<header id="cabecalho"> 

		<h1>Cinetec</h1>

		<p >
			<form action="efetuaLogin" method="post">
				Login: <input type="text" name="username" />  Senha: <input
					type="password" name="password" /> <input type="submit"
					value="Entrar " />
			</form>
		</p>
		
		<div id="logo">
	
	
		<p><a href="cadastro" >Cadastrar</a>&nbsp &nbsp
		</div>
		
		 </header>
		




		<section id="corpo"> 
		
		</br>
		</br>
		</br>
		</br>
		
		
		<select>
			<option value="">Selecione...</option>
			<c:forEach var="filme" items="${filmeList}">
				<option value="">${filme.nm_filme}</option>
			</c:forEach>
		</select>
		
		
		
		 </section>


		<footer id="rodape">
		<p>Copyright &copy; 2014 - by</p>

		</footer>
	</div>
</body>
</html>