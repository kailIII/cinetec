 <%@ include file="/WEB-INF/jsp/includes.jsp"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cinetec Portal</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/res/css/font-awesome.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/res/css/estilo.css"/> 
		<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.servletContext.contextPath}/res/js/highlights.js"></script>
	</head>
	<body>
		<jsp:include page = "templates/header.jsp" />
			
		<h1 align="center" class="home-h1">Próximas sessões</h1>
		<div class="wrapper" id="sessoes-list">
		
			<%for(int i = 0; i < 4; i++) {%>
			<div class="cover-box">
				<div class="cover-on-hover">
					<div>
						<a href="#"><i class="ico fa fa-shopping-cart"></i>Comprar</a><br><a href="#"><i class="ico fa fa-clock-o"></i>Ver horários</a>
					</div>
				</div>
				<div id="cover-title">Nome do filme</div>
				<div id="cover-img">
					<img width="300" height="300" border="0" src=""/>
				</div>
				<div id="cover-content">ABCDEF</div>
			</div>
			<%}%>
		</div>
		
		<h1 align="center" class="home-h1">Filmes em cartaz</h1>
		
		<div class="wrapper" id="filmes-list">
			<c:forEach items="${filmeList}" var="filme">
				<div class="cover-box">
					<div class="cover-on-hover">
						<div><a href="#"><i class="ico fa fa-shopping-cart"></i>Comprar</a><br><a href="#"><i class="ico fa fa-clock-o"></i>Ver horários</a></div>
					</div>
					<div id="cover-title">${filme.nm_filme}</div>
					<div id="cover-img">
						<img width="300" height="300" border="0" src=""/>
					</div>
					<div id="cover-content">${filme.sinopse_filme}</div>
				</div>
			</c:forEach>
		</div>
		
		<jsp:include page = "templates/footer.jsp" />
	</body>
</html>