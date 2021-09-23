<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Turmas</title>
</head>
<body>
	<div>
		<h3>Lista de Professores</h3>
		<hr>
		<br>
		<table>
			<thead>
				<tr>
					<th>Nome</th>
					<th>Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="turma" items="${turmas}">
					<tr>
						<td><c:out value="${turma.nome}" /></td>
						<td><a href="editar-turma?id=<c:out value='${turma.id}'/>">Editar</a>
							<a href="deletar-turma?id=<c:out value='${turma.id}'/>">Deletar</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>