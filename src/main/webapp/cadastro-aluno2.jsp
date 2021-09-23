<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aluno</title>
</head>
<body>
	<div>
		<div>
			<div>
				<c:if test="${aluno != null}">
					<form action="atualizar-aluno" method="post">
				</c:if>
				<c:if test="${aluno == null}">
					<form action="inserir-aluno" method="post">
				</c:if>
				<caption>
					<h2>
						<c:if test="${aluno != null}">Editar Aluno</c:if>
						<c:if test="${aluno == null}">Inserir Aluno</c:if>
					</h2>
				</caption>
				<c:if test="${aluno != null}">
					<input type="hidden" name="id" 
						value="<c:out value='${aluno.id}' />" />
				</c:if>
					<input type="text" placeholder="Nome" required="required"
						value="<c:out value='${aluno.nome}' />" name="nome">
					<input type="number" placeholder="cpf" required="required"
						value="<c:out value='${aluno.cpf}'/>" name="cpf">
					<input type="text" placeholder="login" required="required"
						value="<c:out value='${aluno.login}'/>" name="login">
					<input type="text" placeholder="senha" required="required"
						value="<c:out value='${aluno.senha}'/>" name="login">
				<button type="submit">Salvar</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>