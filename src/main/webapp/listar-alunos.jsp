<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Listar Aluno</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/inicio-escola.css"/>
<style><%@include file="/resources/css/inicio-escola.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>	
</head>
<body>
	<%@ include file="menu.jsp" %>
	
	<div class="container">
			<h3>Lista De Alunos</h3>
			<hr>
			<br>
			<table class="bordered striped centered">
				<thead>
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