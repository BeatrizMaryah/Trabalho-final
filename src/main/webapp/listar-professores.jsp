<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html>
<head>
<title>Listar Professores</title>
</head>
<body>
	<div>
		<div>
			<h3>Lista de Professores e Disciplinas</h3>
			<hr>
			<br>
			<table>
				<thead>
					<tr>
						<th>Nome</th>
						<th>Login</th>
						<th>Senha</th>
						<th>Ações</th>
						<th>Disciplina</th>
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
					
					<c:forEach var="disciplina" items="${disciplinas}">
						<tr>
							<td><c:out value="${disciplina.nome}" /></td>
							<td><a href="editar-disciplina?id=<c:out value='${disciplina.id}'/>">Editar</a>	<a href="deletar-disciplina?id=<c:out value='${disciplina.id}'/>">Deletar</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>