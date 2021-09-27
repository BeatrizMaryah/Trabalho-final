<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>
		<c:if test="${escola != null}">Editar escola</c:if> 
		<c:if test="${escola == null}">Cadastrar escola</c:if>
</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/style.css"/>
<style><%@include file="/resources/css/style.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>	
<link
	href="https://fonts.googleapis.com/css?family=Questrial&display=swap"
	rel="stylesheet">
</head>
<body>
	<form id="form" method="post" action="inserir-escola">
		
		<ul id="progresso">

			<li class="ativo">Informações Gerais</li>
			<li>Contato</li>
			<li>Endereço</li>

		</ul>
		
		<fieldset>
			<h2>Cadastrar Escola</h2>
			<h4>Insira os dados da escola</h4>
			<input id="nome" type="text" name="nome" placeholder="Nome"
				required="required" autocomplete="off" value="<c:out value='${escola.nome}'/>" /> <input
				id="login" type="text" name="login" placeholder="Login"
				required="required" autocomplete="off" value="<c:out value='${escola.login}'/>" /> <input
				id="senha" type="password" name="senha" placeholder="Senha"
				required="required" autocomplete="off" value="<c:out value='${escola.senha}'/>" /> <input
				type="submit" value="Próximo"/>
		</fieldset>
	</form>
</body>
</html>