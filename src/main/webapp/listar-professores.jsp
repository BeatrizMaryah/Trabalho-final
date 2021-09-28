<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html>
<head>
<title>Listar Professores</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
</head>
<body>
	<div class="container">
			<h3>Lista de Professores</h3>
			<hr>
			<br>
			<table>
				<thead>
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