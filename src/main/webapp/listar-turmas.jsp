<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Turmas</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/inicio-escola.css"/>
<style><%@include file="/resources/css/inicio-escola.css"%></style>	
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">	
</head>
<body>

	<%@ include file="menu.jsp" %>
	
	<div class="container">
		
<!-- 	<h4>Escolha uma Escola: </h4>
		<form id="form" method="post" action="escolher-escola-turmas">
		<div class="select">
			<select id="standard-select" name="id-escola">
				<c:forEach var="escola" items="${escolas}">
					<option value="${escola.id}">
						<c:out value="${escola.nome}"/>
					</option>
				</c:forEach>
			</select>
			<span class="focus"></span>
		</div>
	<input type="submit" value="Escolher"/>
	</form>
		<hr>
		<br> -->	
		
		<h3>Lista de Turmas</h3>
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th>Nome</th>
					<th>Ações</th>
					<th>Alunos</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="turma" items="${turmas}">
					<tr>
						<td><c:out value="${turma.nome}" /></td>
						<td><a href="editar-turma?id=<c:out value='${turma.id}'/>">Editar</a>
							<a href="deletar-turma?id=<c:out value='${turma.id}'/>">Deletar</a></td>
						<td><a href="escolher-turma-alunos?id-escola=<c:out value='${turma.id}'/>" >Alunos</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
</body>
</html>