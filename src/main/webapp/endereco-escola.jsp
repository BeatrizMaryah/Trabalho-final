<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Cadastro da escola</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>resources/css/style.css" />
<style><%@include file="/resources/css/style.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>
<link
	href="https://fonts.googleapis.com/css?family=Questrial&display=swap"
	rel="stylesheet">
</head>
<body>

	<form id="form" method="post" action="inserir-endereco">

		<ul id="progresso">
			<a href="<%=request.getContextPath()%>/nova-escola" target="_self">
				<li class="ativo">Informações Gerais</li>
			</a>
			<li class="ativo">Contato</li>

			<li class="ativo">Endereço</li>

		</ul>

		<fieldset>
			<h2>Endereço</h2>
			<h4>Insira o endereco da escola</h4>

			<input id="rua" type="text" name="rua" placeholder="Rua"
				required="required" autocomplete="off" value="<c:out value='${endereco.nome}'/>" /> <input
				id="cidade" type="text" name="cidade" placeholder="Cidade"
				required="required" autocomplete="off" value="<c:out value='${endereco.cidade}'/>" />
			<input id="numero" type="number" name="numero" placeholder="Número"
				required="required" autocomplete="off" value="<c:out value='${endereco.numero}'/>" />
			<input id="complemento" type="text" name="complemento"
				placeholder="Complemento(opcional)" autocomplete="off"
				value="<c:out value='${endereco.complemento}'/>" /> <input id="cep"
				type="number" name="cep" placeholder="CEP" required="required" autocomplete="off"
				value="<c:out value='${endereco.cep}'/>" /> 
				
				<a
				href="<%=request.getContextPath()%>/novo-contato-escola"
				target="_self"> <input class="voltar" type="button"
				name="voltar" value="Voltar" />
			</a> <input type="submit" value="Cadastrar" />

		</fieldset>

	</form>
</body>
</html>