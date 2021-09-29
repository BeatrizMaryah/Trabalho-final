<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Cadastrar Aluno</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>resources/css/style.css" />
<style><%@include file="/resources/css/style.css"%></style>
<script><%@include file="/resources/js/metodos.js"%></script>
<link
	href="https://fonts.googleapis.com/css?family=Questrial&display=swap"
	rel="stylesheet">
</head>
<body>

	<fieldset>
		<h2>Cadastro do Aluno</h2>
		<h4>Insira os dados do aluno</h4>

		<form id="form" method="post" action="inserir-aluno">

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
		</form>
	</fieldset>

</body>
</html>