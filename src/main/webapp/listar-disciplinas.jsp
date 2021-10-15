<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Disciplinas</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/inicio-escola.css"/>
<style><%@include file="/resources/css/inicio-escola.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>	
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">	
</head>
<body>

	<%@ include file="menu.jsp" %>
	<div class="container">
		<h3>Lista de Disciplinas</h3>
		<hr>
		<br>
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th>Nome</th>
					<th>Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="disciplina" items="${disciplinas}">
					<tr>
						<td><c:out value="${disciplina.nome}" /></td>
						<td><a href="editar-disciplina?id=<c:out value='${disciplina.id}'/>">Editar</a>
							<a href="deletar-disciplina?id=<c:out value='${disciplina.id}'/>">Deletar</a></td>	
					</tr>
					
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>