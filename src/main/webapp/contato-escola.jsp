<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Cadastrar Escola</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/style.css"/>
<style><%@include file="/resources/css/style.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>
<link
	href="https://fonts.googleapis.com/css?family=Questrial&display=swap"
	rel="stylesheet">
</head>
<body>
	<form id="form" method="post" action="inserir-contato-escola">

		<ul id="progresso">
			<a href="<%=request.getContextPath()%>/nova-escola" target="_self">
				<li class="ativo">Informações Gerais</li>
			</a>
			<li class="ativo">Contato</li>

			<li>Endereço</li>
		</ul>

		<fieldset>
			<h2>Contato da escola</h2>
			<h4>Insira o contato da escola</h4>
			
			<input type="hidden" name="id"
						value="<c:out value='${usario.id}' />" />
						
			<input id="telefone" type="number" name="telefone"
				placeholder="Telefone" required="required" autocomplete="off"
				value="<c:out value='${contato.telefone}'/>" /> <input id="celular"
				type="number" name="celular" placeholder="Celular"
				required="required" autocomplete="off" value="<c:out value='${contato.celular}'/>" />
			<input id="email" type="email" name="email" placeholder="E-mail"
				required="required" autocomplete="off" value="<c:out value='${contato.email}'/>" /> <a
				href="<%=request.getContextPath()%>/nova-escola" target="_self">
				<input class="voltar" type="button" name="voltar" value="Voltar" />
			</a> <input type="submit" value="Próximo" />

		</fieldset>

	</form>
</body>
</html>