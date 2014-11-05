<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Filmes Gerenciamento</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/res/css/estilo.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/res/css/font-awesome.min.css"/>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/jquery-1.7.1.min.js"></script> 
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/api-ajax.js"></script> 
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/page-functions.js"></script>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/formnav.js"></script>
</head>
<body>
	<jsp:include page = "templates/header.jsp" />
	<h1 class="home-h1"><div class="wrapper">Poltronas</div></h1> 	


 	<div class="wrapper"> 
 		<div id="crud-container" class="ylw-box"> 
 			<nav id="crud-options-nav"> 
 				<ul> 
 					<!--<li id="search-li" class="selected"><i class="ico fa fa-search"></i>Pesquisar</li>--> 
 					<li id="edit-li" class="selected"><i class="ico fa fa-pencil"></i>Gerenciar poltronas</li> 
 					<li id="add-li"><i class="ico fa fa-plus-circle"></i>Adicionar poltronas</li> 
 				</ul> 
 			</nav>  
 			
 			<div id="edit-div"> 
				<form:form action="poltrona.do" id="edit-poltrona" class="add-edit-form" method="POST" commandName="poltrona">
					<table>
						<tr>
							<td><label>Codigo da poltrona</label></td>
							<td><form:input path="id_poltrona" id="c1" /></td>
						</tr>
						<tr>
							<td><label>Identificação da poltrona</label></td>
							<td><form:input path="num_poltrona" id="c2" /></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" name="action" value="Buscar" /> 
							<input type="submit" name="action" value="Editar" /> 
							<input type="submit" name="action" value="Excluir" />
							<input type="button" value="Limpar" onClick="limpa('edit-poltrona', 'c')"></td>
						</tr>
					</table>
				</form:form> 
 			</div> 
 			
 			<div id="add-div" style="display:none;"> 
 				<form:form action="poltrona.do" id="add-poltrona" class="add-edit-form" method="POST" commandName="poltrona">
					<table>
						<tr>
							<td><label>Identificação da poltrona</label></td>
							<td><form:input path="num_poltrona" id="a1" /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" name="action"
								value="Adicionar" /> <input
								type="button" value="Limpar" onClick="limpa('add-poltrona', 'a')"></td>
						</tr>
					</table>
				</form:form>
 			</div> 

 		</div>
 		
 		<table class="tbl-data" cellspacing="0"> 
 			<th>Codigo da poltrona</th>
			<th>Identificação da Poltrona</th>


			<c:forEach items="${poltronaList}" var="poltrona">
				<tr>
					<td>${poltrona.id_poltrona}</td>
					<td>${poltrona.num_poltrona}</td>

				</tr>
			</c:forEach>
 		</table>  
 	</div>		 
 	<jsp:include page = "templates/footer.jsp" /> 

</body>
</html>