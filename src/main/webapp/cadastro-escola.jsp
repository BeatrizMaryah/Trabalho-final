<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Cadastrar Escola</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/cadastros.css"/>
<style><%@include file="/resources/css/cadastros.css"%></style>		
<link
	href="https://fonts.googleapis.com/css?family=Questrial&display=swap"
	rel="stylesheet">
</head>
<body>
<form id="form" action="inserir-escola" method="post">
		
		<fieldset>
			<h2>Cadastrar Escola</h2>
			<h4>Insira os dados da escola</h4>
			
			<input id="nome" type="text" name="nome" placeholder="Nome" maxlength ="25"
				required="required" autocomplete="off" value="<c:out value='${escola.nome}'/>" /> <input
				id="login" type="text" name="login" placeholder="Login" maxlength ="25"
				required="required" autocomplete="off" value="<c:out value='${escola.login}'/>" /> <input
				id="senha" type="password" name="senha" placeholder="Senha" maxlength ="25"
				required="required" autocomplete="off" value="<c:out value='${escola.senha}'/>" />
				
			<input id="telefone" type="text" name="telefone"
                placeholder="Telefone" required="required" size="16" maxlength="15" autocomplete="off"
                value="<c:out value='${contato.telefone}'/>" />
            <input id="email" type="email" name="email" placeholder="E-mail"
                required="required" autocomplete="off" value="<c:out value='${contato.email}'/>" /> 
 
            <input id="rua" type="text" name="rua" placeholder="Rua"
                required="required" autocomplete="off" value="<c:out value='${endereco.nome}'/>" /> <input
                id="cidade" type="text" name="cidade" placeholder="Cidade"
                required="required" autocomplete="off" value="<c:out value='${endereco.cidade}'/>" />
            <input id="numero" type="number" name="numero" placeholder="Número"
                required="required" autocomplete="off" value="<c:out value='${endereco.numero}'/>" />
            <input id="complemento" type="text" name="complemento"
                placeholder="Complemento(opcional)" autocomplete="off"
                value="<c:out value='${endereco.complemento}'/>" /> <input id="cep"
                type="text" name="cep" placeholder="CEP" maxlength="8" required="required" autocomplete="off"
                value="<c:out value='${endereco.cep}'/>" /> 
				
				<input type="submit" value="Cadastrar"/>
				
		</fieldset>
	</form>
	<script><%@include file="/resources/js/metodos.js"%></script>
</body>
</html>