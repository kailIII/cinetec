<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Filmes Gerenciamento</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/res/css/estilo.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/res/css/font-awesome.min.css"/> 
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/jquery-1.7.1.min.js"></script> 
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/api-ajax.js"></script> 
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/page-functions.js"></script>
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/formnav.js"></script>
</head>
<body>
	<jsp:include page = "templates/header.jsp" />
 	<h1 class="home-h1"><div class="wrapper">Salas</div></h1>
	<div class="wrapper">
		<div id="crud-container" class="ylw-box"> 
			<nav id="crud-options-nav"> 
				<ul> 
					<!--<li id="search-li" class="selected"><i class="ico fa fa-search"></i>Pesquisar</li>--> 
					<li id="edit-li" class="selected"><i class="ico fa fa-pencil"></i>Gerenciar usuários</li> 
				</ul> 
			</nav>
			<div id="edit-div">
				<form:form class="add-edit-form" action="sessao.add" method="POST" commandName="sessao">
					<table>
						<tr>
							<td><label>Filmes</label></td>
							<td>
								<select name="id_filme">
									<option>Selecione...</option>
									<c:forEach var="filme" items="${filmeList}">
										<option value="${filme.id_filme}" >${filme.nm_filme}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td><label>Salas</label></td>
							<td>
								<select name="id_salaPoltrona">
									<option>Selecione...</option>
									<c:forEach var="s" items="${sList}">
										<option>${s.id_sala}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td><label>Tipo</label></td>
							<td>
								<select name="id_tipo_sessao">
									<option>Selecione...</option>
									<c:forEach var="tp" items="${tpsList}">
										<option value="${tp.idTipo_sessao}">${tp.dub_leg_sessao}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td><label>Dia</label></td>
							<td><select name="id_sessao_dia">
									<option>Selecione...</option>
									<c:forEach var="ds" items="${dsList}">
										<option value="${ds.id_dia_Semana}">${ds.nm_dia_semana}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td><label>Hora</label></td>
							<td>
								 <input type='time' value="hor_sessao"/>
							</td>
						</tr>
						<tr>
							<td><label>Dias</label></td>
							<td>
								<input type = 'date' value="dt_final_sessao"/>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<input type="submit" name="action" value="Adicionar" />
							</td>
						</tr>
					</table>	
				</form:form>
			</div>
		</div>

		<table class="tbl-data">
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
	</div>
	<jsp:include page = "templates/footer.jsp" />
		

</body>
</html>