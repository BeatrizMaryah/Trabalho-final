<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html>
<head>
<title>Listar Professores</title>
</head>
<body>
	<header>
		<nav>
			<ul>
				<li><a href="<%=request.getContextPath()%>/listar-professores">Professores</a>
				</li>
			</ul>
		</nav>
	</header>
	<br>
	<div>
		<div>
			<h3>Lista de Professores</h3>
			<hr>
			<br>
			<table>
				<thead>
					<tr>
						<th>Nome</th>
						<th>Login</th>
						<th>Senha</th>
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
							<td><c:out value="${professor.disciplina}" /></td>
							<td><a href="editar?id=<c:out value='${professor.id}'/>">Editar</a>	<a href="deletar?id=<c:out value='${professor.id}'/>">Deletar</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>