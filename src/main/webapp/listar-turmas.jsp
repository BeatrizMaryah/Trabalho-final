<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Turmas</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
</head>
<body>
	<div class="sidenav" id="menu">
  		<a href="<%=request.getContextPath()%>/listar-turmas" target="_self">Turmas</a>
  		<a href="<%=request.getContextPath()%>/listar-disciplinas" target="_self">Disciplinas</a>
		<a href="<%=request.getContextPath()%>/novo-professor" target="_self">Cadastrar Professor</a>
		<a href="<%=request.getContextPath()%>/listar-professores" target="_self">Professores</a>
		<a href="<%=request.getContextPath()%>/novo-aluno" target="_self">Cadastrar Aluno</a>
		<a href="<%=request.getContextPath()%>/listar-alunos" target="_self">Listar Alunos</a>
		<a href="<%=request.getContextPath()%>/index" target="_self">Voltar</a>
	</div>
	
		<div class="container">
		<h3>Lista de Turmas</h3>
		<hr>
		<table>
			<thead>
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
						<td><a href="<%=request.getContextPath()%>/listar-alunos" target="_self">Alunos</a></td>
					</tr>
					
				</c:forEach>
			</tbody>
		</table>
		</div>
</body>
</html>