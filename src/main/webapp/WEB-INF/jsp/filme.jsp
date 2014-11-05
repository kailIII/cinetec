 <%@ include file="/WEB-INF/jsp/includes.jsp"%> 
 <!DOCTYPE html PUBLIC "-W3CDTD HTML 4.01 TransitionalEN" "http:www.w3.org/TR/html4/loose.dtd"> 
 <html> 
 <head> 
 <title>Filmes Gerenciamento</title> 
 <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/res/css/estilo.css"/> 
 <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/res/css/font-awesome.min.css"/> 
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/jquery-1.7.1.min.js"></script> 
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/api-ajax.js"></script> 
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/page-functions.js"></script>
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/formnav.js"></script>
 <script> 
 	$(document).ready(function(){
//  		$("#search-option").on("change", function() {
// 			if ($(this).attr("value") == "0")
// 				$("#search-value").attr("name", "id_filme");
// 			else 
// 				$("#search-value").attr("name", "nm_filme");
 					
//  		});
 		
//  		$(".btn-remove").on("click", function() {
//  			var id = $(this).parent().parent().attr("id");
//  			var filme = $("#"+ id).children().eq(1).html();
			
//  			if (confirm("Deseja realmente remover o filme " + filme + "?")) {
//  				AjaxRequest.removeFilme(id);
//  			}
			
//  		});
 		
//  		$(".btn-edit").on("click", function() {
//  			var id = $(this).parent().parent().attr("id");
//  			$("#form-edit-" + id).submit(function(){
				
//  			});
//  		});
				
//  		$(".crud-form").submit(function(e){
//  			try {
//  				e.preventDefault();
//  				ApiAjax.updateFilme(this);
//  			} catch(err){
//  				alert(err);
//  			}
//  		})
		
//  		$("#btn-edit").on("click", function() {
//  			$("#cell-edit").getParent();
//  		})
		
 	});
 </script> 
 </head> 
 <body> 
 	<jsp:include page = "templates/header.jsp" /> 
 	<h1 class="home-h1"><div class="wrapper">Filmes</div></h1> 
 	<div class="wrapper"> 
 		<div id="crud-container" class="ylw-box"> 
 			<nav id="crud-options-nav"> 
 				<ul> 
 					<!--<li id="search-li" class="selected"><i class="ico fa fa-search"></i>Pesquisar</li>--> 
 					<li id="edit-li" class="selected"><i class="ico fa fa-pencil"></i>Gerenciar filmes</li> 
 					<li id="add-li"><i class="ico fa fa-plus-circle"></i>Adicionar filmes</li> 
 				</ul> 
 			</nav> 
 			<!--<div id="search-div"> 
 				<form class="search-form" method="POST" action="filme.do"> 
 					<table border="0"> 
 						<tr> 
 							<td></td> 
 							<td> 
 								<input id="search-value" name="id_filme" type="text" /> 
 								<select id="search-option"> 
 									<option value="0">Código</option> 
 									<option value="1">Título</option> 
 								</select>
 								<input type="submit" value="Buscar" />
 							</td> 
 						</tr> 
 					</table> 
 				</form> 
 			</div>--> 
 			<div id="edit-div"> 
 				<form:form commandName="filme" modelAttribute="filme" id="edit-filme" class="add-edit-form" action="filme.do" method="POST"> 
 						<table border="0" cellpadding="0" cellspacing="0"> 
 							<tr> 
 								<td><label>Código</label></td> 
 								<td><form:input path="id_filme" id="c1" required="true"/></td> 
 							</tr> 
 							<tr> 
 								<td><label>Título</label></td> 
 								<td><form:input path="nm_filme" id="c2" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Gênero</label></td> 
 								<td><form:input path="categ_filme" id="c3" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Duraçao</label></td> 
 								<td><form:input path="duracao" id="c4" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Ano</label></td> 
 								<td><form:input path="ano" id="c5" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Diretor</label></td> 
 								<td><form:input path="dir_filme" id="c6" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Ator 1</label></td> 
 								<td><form:input path="ator1_filme" id="c7" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Ator 2</label></td> 
 								<td><form:input path="ator2_filme" id="c8" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Sinopse</label></td> 
 								<td><form:textarea path="sinopse_filme" id="c9" /></td> 
 							</tr> 
 							<tr> 
 								<td></td> 
 								<td> 
 									<input name="action" type="submit" value="Buscar"/>
 									<input name="action" type="submit" value="Editar"/>
 									<input name="action" type="submit" value="Excluir"/>
 									<input type="button" value="Limpar" onclick="limpa('edit-filme', 'c')"/>
 								</td>
 							</tr> 
 						</table>
 								</td> 
 							</tr> 
 					</table> 
 				</form:form> 
 			</div> 
 			<div id="add-div" style="display:none;"> 
 				<form:form commandName="filme" modelAttribute="filme" id="add-filme" class="add-edit-form" method="POST" action="filme.add"> 
 						<table border="0" cellpadding="0" cellspacing="0"> 
 							<tr> 
 								<td><label>Título</label></td> 
 								<td><form:input path="nm_filme" id="a1" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Gênero</label></td> 
 								<td><form:input path="categ_filme" id="a2" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Duraçao</label></td> 
 								<td><form:input path="duracao" id="a3" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Ano</label></td> 
 								<td><form:input path="ano" id="a4" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Diretor</label></td> 
 								<td><form:input path="dir_filme" id="a5" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Ator 1</label></td> 
 								<td><form:input path="ator1_filme" id="a6" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Ator 2</label></td> 
 								<td><form:input path="ator2_filme" id="a7" /></td> 
 							</tr> 
 							<tr> 
 								<td><label>Sinopse</label></td> 
 								<td><form:textarea path="sinopse_filme" id="a8" /></td> 
 							</tr> 
 							<tr> 
 								<td></td> 
 								<td> 
 									<input type="submit" class="btn-add" value="Adicionar"/>
 									<input type="button" value="Limpar" onclick="limpa('add-filme', 'a')" />
 								</td> 
 							</tr> 
 					</table> 
 				</form:form> 
				
 			</div> 

 		</div> 
 		<table class="tbl-data" cellspacing="0"> 
 			<tr> 
 				<th>Codigo</th> 
 				<th>Titulo</th> 
 				<th>Genero</th> 
 				<th>Duração</th> 
 				<th>Ano</th> 
 				<th>Direção</th> 
 				<th>Ator 1</th> 
 				<th>Ator 2</th> 
 				<th>Sinopse</th> 
<!--  				<th></th>  -->
<!--  				<th></th>  -->
 			</tr>						 

 			<c:forEach items="${filmeList}" var="filme"> 
 				<tr id="${filme.id_filme}"> 
 					<td>${filme.id_filme}</td> 
 					<td>${filme.nm_filme}</td> 
 					<td>${filme.categ_filme}</td> 
 					<td>${filme.duracao}</td> 
 					<td>${filme.ano}</td> 
 					<td>${filme.dir_filme}</td> 
 					<td>${filme.ator1_filme}</td> 
 					<td>${filme.ator2_filme}</td> 
 					<td>${filme.sinopse_filme}</td> 
<!--  					<td class="cell-edit">  -->
<!--  						<button class="btn-edit">  -->
<!--  							<i class="fa fa-pencil"></i>  -->
<!--  						</button>  -->
<!--  					</td>  -->
<!--  					<td class="cell-remove"> -->
<!--  						<button class="btn-remove">  -->
<!--  							<i class="fa fa-trash"></i>  -->
<!--  						</button>  -->
<!--  					</td>					  -->
 				</tr> 
 			</c:forEach> 
 		</table>  
 	</div>		 
 	<jsp:include page = "templates/footer.jsp" /> 
 </body> 
 </html>