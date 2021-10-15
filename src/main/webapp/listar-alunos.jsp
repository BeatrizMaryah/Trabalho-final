<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Listar Aluno</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/inicio-escola.css"/>
<style><%@include file="/resources/css/inicio-escola.css"%></style>	
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">		
</head>
<body>
	<%@ include file="menu.jsp" %>
	
	<div class="container">
<div class="escolha">	
	<h4>Escolha uma Turma: </h4>
	<form id="form" method="post" action="escolher-turma-alunos">
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
			<h3>Lista de Alunos</h3>
			<table class="table">
				<thead class="thead-light">
					<tr>
						<th>Nome</th>
						<th>Cpf</th>
						<th>Login</th>
						<th>Senha</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="aluno" items="${alunos}">
						<tr>
							<td><c:out value="${aluno.nome}" /></td>
							<td><c:out value="${aluno.cpf}" /></td>
							<td><c:out value="${aluno.login}" /></td>
							<td><c:out value="${aluno.senha}"/></td>
							<td><a href="atualizar-aluno?id=<c:out value='${aluno.id}'/>">Editar</a>	<a href="deletar-aluno?id=<c:out value='${aluno.id}'/>">Deletar</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	</div>
</body>
</html>