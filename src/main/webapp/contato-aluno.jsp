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

	<form id="form" method="post" action="inserir-contato-aluno">

		<fieldset>
			<h2>Contato do Aluno</h2>
			<h4>Insira os dados do aluno</h4>

			<input id="telefone" type="number" name="telefone"
				placeholder="Telefone Responsável(opcional)" autocomplete="off"
				value="<c:out value='${contato.telefone}'/>" /> <input id="celular"
				type="number" name="celular" placeholder="Celular(opcional)"
				autocomplete="off" value="<c:out value='${contato.celular}'/>" />
			<input id="email" type="email" name="email" placeholder="E-mail"
				required="required" autocomplete="off" value="<c:out value='${contato.email}'/>" /> <a
				href="<%=request.getContextPath()%>/novo-aluno" target="_self">
				<input class="voltar" type="button" name="voltar" value="Voltar" />
			</a> <input type="submit" value="Cadastrar" />
		</fieldset>

	</form>
</body>
</html>