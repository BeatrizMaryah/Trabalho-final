<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html>
<head>
<title>Listar Aluno</title>
</head>
<body>
	<header>
		<nav>
			<ul>
				<li><a href="<%=request.getContextPath()%>/listar-alunos">Alunos</a>
				</li>
			</ul>
		</nav>
	</header>
	<br>
	<div>
		<div>
			<h3>Lista De Alunos</h3>
			<hr>
			<br>
			<table>
				<thead>
					<tr>
						<th>Nome</th>
						<th>Cpf</th>
						<th>Login</th>
						<th>Senha</th>
						<th>Turma</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="aluno" items="${alunos}">
						<tr>
							<td><c:out value="${aluno.nome}" /></td>
							<td><c:out value="${aluno.login}" /></td>
							<td><c:out value="${aluno.senha}"/></td>
							<td><c:out value="${aluno.cpf}" /></td>
							<td><c:out value="${aluno.turma}"/></td>
							<td><a href="editar?id=<c:out value='${aluno.id}'/>">Editar</a>	<a href="deletar?id=<c:out value='${aluno.id}'/>">Deletar</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>