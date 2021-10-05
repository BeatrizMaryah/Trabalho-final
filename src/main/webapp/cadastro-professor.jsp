<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Cadastrar Professor</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/style.css"/>
<style><%@include file="/resources/css/style.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>
<link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
</head>
<body>
	<form id="form" method="post" action="inserir-professor">
	
		<fieldset>
			<h2>Cadastrar Professor</h2>
			<h4>Dados da Conta</h4>
			<input id="nome" type="text" name="nome" placeholder="Nome"
				required="required" autocomplete="off" value="<c:out value='${usuario.nome}'/>" /> <input
				id="login" type="text" name="login" placeholder="Login"
				required="required" autocomplete="off" value="<c:out value='${usuario.login}'/>" /> <input
				id="senha" type="password" name="senha" placeholder="Senha"
				required="required" autocomplete="off" value="<c:out value='${usuario.senha}'/>" /> 
				
			<input id="telefone" type="number" name="telefone"
				placeholder="Telefone(opcional)" autocomplete="off"
				value="<c:out value='${contato.telefone}'/>" /> <input id="celular"
				type="number" name="celular" placeholder="Celular"
				required="required" autocomplete="off" value="<c:out value='${contato.celular}'/>" /> <input
				id="email" type="email" name="email" placeholder="E-mail"
				required="required" autocomplete="off" value="<c:out value='${contato.email}'/>" /> 
				
				<input type="submit" value="Cadastrar" />
		</fieldset>
	</form>
</body>
</html>