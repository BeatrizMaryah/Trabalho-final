<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html>
<head>
<title>Listar Professores</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/inicio-escola.css"/>
<style><%@include file="/resources/css/inicio-escola.css"%></style>		
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">	
</head>
<body>
	
	<%@ include file="menu.jsp" %>
	
	<div class="container">
<div class="escolha">	
	<h4>Escolha uma Turma: </h4>
	<form id="form" method="post" action="escolher-turma-professores">
			<div class="select">
			<select id="standard-select" name="id-turma">
				<c:forEach var="turma" items="${turmas}">
					<option value="${turma.id}">
						<c:out value="${turma.nome}"/>
					</option>
				</c:forEach>
			</select>
		<span class="focus"></span>
		</div>
		
		<input type="submit" value="Escolher"/>
	</form>
	</div>
		<hr>
		<br>
			<h3>Lista de Professores</h3>
			<hr>
			<br>
			<table class="table">
				<thead class="thead-light">
					<tr>
						<th>Nome</th>
						<th>Login</th>
						<th>Senha</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="professor" items="${professores}">
						<tr>
							<td><c:out value="${professor.nome}" /></td>
							<td><c:out value="${professor.login}" /></td>
							<td><c:out value="${professor.senha}" /></td>
							<td><a href="editar-professor?id=<c:out value='${professor.id}'/>">Editar</a>	<a href="deletar-professor?id=<c:out value='${professor.id}'/>">Deletar</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
</body>