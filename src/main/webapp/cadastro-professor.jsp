<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>
		<c:if test="${professor != null}">Editar professor</c:if> 
		<c:if test="${professor == null}">Cadastrar professor</c:if>
</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/style.css"/>
<style><%@include file="/resources/css/style.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>
<link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
</head>
<body>
	<c:if test="${professor != null}">
			<form id="form" action="atualizar-professor" method="post">
	</c:if>
	<c:if test="${professor == null}">
			<form id="form" action="inserir-professor" method="post">
	</c:if>
	
		<fieldset>
			<h2>
				<c:if test="${aluno != null}">Editar Professor</c:if>
				<c:if test="${aluno == null}">Cadastrar Professor</c:if>
			</h2>
			<h4>Dados da Conta</h4>
			
			<c:if test="${professor != null}">
			<input type="hidden" name="id" value="<c:out value="${professor.id}"/>" />
			</c:if>
			
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