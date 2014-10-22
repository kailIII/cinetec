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
			<p></p>
		</div>

		</header>


		<section id="corpo">

		<h1>Sessoes</h1>


		<div id="corpoAdd">
			<fieldset id="ads">
			<legend>Criar Sessão </legend>
			<form:form action="sessao.add" method="POST" commandName="sessao">
				<p>
					Filmes <select>
						<option value="filme">Selecione...</option>
						<c:forEach var="filme" items="${filmeList}">
							<option >${filme.nm_filme}</option>
						</c:forEach>
					</select>
				</p>
				<p>
					Salas <select>
						<option value="sala">Selecione...</option>
						<c:forEach var="s" items="${sList}">
							<option value="">${s.id_sala}</option>
						</c:forEach>
					</select>
				</p>
				<p>
					Tipo <select>
						<option value="tiposessao">Selecione...</option>
						<c:forEach var="tp" items="${tpsList}">
							<option value="">${tp.dub_leg_sessao}</option>
						</c:forEach>
					</select>
				</p>
				<p>
					Dia <select>
						<option value="diasemana">Selecione...</option>
						<c:forEach var="ds" items="${dsList}">
							<option value="">${ds.nm_dia_semana}</option>
						</c:forEach>
					</select>
				</p>
				
				
				<p>Hora
					 <input type='time' value="hor_sessao"/>
					</p>
					
					
					<p>dias
					<input type = 'date' value="dt_final_sessao"/>
					</p>
					<input type="submit" name="action" value="Adicionar" />
					</form:form>
			</fieldset>

		</div>

		</section>


		<footer id="rodape">
		<p>Copyright &copy; 2014 - by</p>

		</footer>
	</div>
</body>
</html>