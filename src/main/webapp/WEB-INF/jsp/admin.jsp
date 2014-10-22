<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/res/css/estilo.css"/> 

</head>
<body>

	<div id="interface">
		<header id="cabecalho"> 

		<h1>Cinetec</h1>

		<p >
			
		</p>
		
		<div id="logo">
		<p>Bem vindo, ${usuarioLogado.username}</p>
	
	<a href="logout" value="usuarioLogado">Sair do sistema</a> </p>
		</div>
		
		 </header>
		 
		 <section id="corpo"> 
	
  		<p><a href="admin/filme" >Gerenciar filmes</a><p>
  		<p><a href="admin/sala" >Gerenciar salas</a><p>
  		<p><a href="admin/poltrona" >Gerenciar poltronas</a><p>
  		<p><a href="admin/sessao" >Gerenciar sessões</a><p>
  		
  		
   	</section>
   	
   	
   	
   	
		<footer id="rodape">
		<p>Copyright &copy; 2014 - by</p>

		</footer>
    
   
</body>
</html>