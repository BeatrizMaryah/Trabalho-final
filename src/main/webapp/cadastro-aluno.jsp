<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>
		<c:if test="${aluno != null}">Editar aluno</c:if> 
		<c:if test="${aluno == null}">Cadastrar aluno</c:if>
</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/style.css" />
<style><%@include file="/resources/css/style.css"%></style>
<script><%@include file="/resources/js/metodos.js"%></script>
<link
	href="https://fonts.googleapis.com/css?family=Questrial&display=swap"
	rel="stylesheet">
</head>
<body>
		<c:if test="${aluno != null}">
			<form id="form" action="atualizar-aluno" method="post">
		</c:if>
		<c:if test="${aluno == null}">
			<form id="form" action="inserir-aluno" method="post">
		</c:if>
		
	<fieldset>
		<h2>
			<c:if test="${aluno != null}">Editar Contato</c:if>
			<c:if test="${aluno == null}">Inserir Contato</c:if>
		</h2>
		
		<c:if test="${aluno != null}">
			<input type="hidden" name="id" value="<c:out value="${aluno.id}"/>" />
		</c:if>
		
		<h4>Insira os dados do aluno</h4>
			<input id="nome" type="text" name="nome" placeholder="Nome"
				required="required" autocomplete="off"
				value="<c:out value='${aluno.nome}'/>" /> <input id="login"
				type="text" name="login" placeholder="Login" required="required"
				autocomplete="off" value="<c:out value='${aluno.login}'/>" /> <input
				id="senha" type="password" name="senha" placeholder="Senha"
				required="required" autocomplete="off"
				value="<c:out value='${aluno.senha}'/>" /> <input id="cpf"
				type="number" name="cpf" placeholder="CPF" required="required"
				autocomplete="off" value="<c:out value='${aluno.cpf}'/>" /> <input
				type="submit" value="Próximo" />
		
	</fieldset>
</form>
</body>
</html>