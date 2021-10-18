<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Cadastrar Professor</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/cadastros.css"/>
<style><%@include file="/resources/css/cadastros.css"%></style>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script><%@include file="/resources/js/metodos.js"%></script>
<link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
</head>
<body>
<form id="form" action="inserir-professor" method="post">
		<fieldset>
			<h2>Cadastrar Professor</h2>
			<h4>Dados da Conta</h4>
			
			<input id="nome" type="text" name="nome" placeholder="Nome" maxlength ="25"
				required="required" autocomplete="off" value="<c:out value='${usuario.nome}'/>" /> <input
				id="login" type="text" name="login" placeholder="Login" maxlength ="25"
				required="required" autocomplete="off" value="<c:out value='${usuario.login}'/>" /> <input
				id="senha" type="password" name="senha" placeholder="Senha" maxlength ="25"
				required="required" autocomplete="off" value="<c:out value='${usuario.senha}'/>" /> 
				
			<input id="telefone" type="text" name="telefone"
				placeholder="Telefone(opcional)" autocomplete="off"  size="16" maxlength="15"
				value="<c:out value='${contato.telefone}'/>" />
				<input id="email" type="email" name="email" placeholder="E-mail"
				required="required" autocomplete="off" value="<c:out value='${contato.email}'/>" /> 

		<label for="standard-select">Turma 1:</label>
			<div class="select">
			<select id="standard-select" name="id-turma-1">
				<c:forEach var="turma" items="${turmas1}">
					<option select value="${turma.id}">
						<c:out value="${turma.nome}"/>
					</option>
				</c:forEach>
			</select>
		<span class="focus"></span>
		</div>
			<br>
				<label for="standard-select">Turma 2:</label>
			<div class="select">
			<select id="standard-select" name="id-turma-2">
				<c:forEach var="turma" items="${turmas2}">
					<option select value="${turma.id}">
						<c:out value="${turma.nome}"/>
					</option>
				</c:forEach>
			</select>
		<span class="focus"></span>
		</div>
			<br>
				<label for="standard-select">Turma 3:</label>
			<div class="select">
			<select id="standard-select" name="id-turma-3">
				<c:forEach var="turma" items="${turmas3}">
					<option select value="${turma.id}">
						<c:out value="${turma.nome}"/>
					</option>
				</c:forEach>
			</select>
		<span class="focus"></span>
		</div>
			<br>
			
			<input type="submit" value="Cadastrar" />
		</fieldset>
	</form>
</body>
</html>