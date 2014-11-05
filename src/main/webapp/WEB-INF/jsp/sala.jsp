<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Sala - Gerenciamento</title>
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
					<li id="edit-li" class="selected"><i class="ico fa fa-pencil"></i>Gerenciar salas</li> 
					<li id="add-li"><i class="ico fa fa-plus-circle"></i>Adicionar salas</li> 
				</ul> 
			</nav>
 			<div id="edit-div"> 
				<form:form action="sala.do" id="edit-sala" method="POST" commandName="sala">
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
							<td></td>
							<td colspan="2">
							<input type="submit" name="action" value="Edit" /> 
							<input type="submit" name="action" value="Delete" /> 
							<input type="submit" name="action" value="Search" /> 
							<input type="button" value="Limpar" onClick="limpa('edit-sala', 'c')"></td>
						</tr>
					</table>
				</form:form>
			</div>	
			
			<div id="add-div" style="display:none;"> 	
				<form:form action="sala.do" id="add-sala" method="POST" commandName="sala">
					<table>
						<tr>
							<td>Número da Sala</td>
							<td><form:input path="num_sala" id="a3"/></td>
						</tr>
						<tr>
							<td colspan="2">
							<input type="submit" name="action" value="Add"  /> 
							<input type="button" value="Limpar" onClick="limpa('add-sala', 'a')"></td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>
		<table class="tbl-data">
			<th>Código da sala</th>
			<th>Número da sala</th>


			<c:forEach items="${salaList}" var="sala">
				<tr>
					<td>${sala.id_sala}</td>
					<td>${sala.num_sala}</td>

				</tr>
			</c:forEach>
		</table>		
	</div>
	<jsp:include page = "templates/footer.jsp" /> 


</body>
</html>