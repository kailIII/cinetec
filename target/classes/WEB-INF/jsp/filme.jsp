<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Filmes Gerenciamento</title>
</head>
<body>




	<form:form action="filme.do" method="POST" commandName="filme">
		<table>
			<tr>
				<td>id</td>
				<td><form:input path="id_filme" /></td>
			</tr>
			<tr>
				<td>titulo</td>
				<td><form:input path="nm_filme" /></td>
			</tr>
			<tr>
				<td>genero</td>
				<td><form:input path="categ_filme" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" name="action" value="Add" />
					<input type="submit" name="action" value="Edit" />
					<input type="submit" name="action" value="Delete" />
					<input type="submit" name="action" value="Search" />
				</td>
			</tr>
		</table>
	</form:form>


<br>
<table border="1">
	<th>id</th>
	<th>titulo</th>
	<th>genero</th>
	<c:forEach items="${filmeList}" var="filme">
		<tr>
			<td>${filme.id_filme}</td>
			<td>${filme.nm_filme}</td>
			<td>${filme.categ_filme}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>