<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<form id="form" method="post" action="inserir-escola">
		
		<fieldset>
			<h2>Cadastrar Escola</h2>
			<h4>Insira os dados da escola</h4>
			<input id="nome" type="text" name="nome" placeholder="Nome"
				required="required" autocomplete="off" value="<c:out value='${escola.nome}'/>" /> <input
				id="login" type="text" name="login" placeholder="Login"
				required="required" autocomplete="off" value="<c:out value='${escola.login}'/>" /> <input
				id="senha" type="password" name="senha" placeholder="Senha"
				required="required" autocomplete="off" value="<c:out value='${escola.senha}'/>" />
				
				    <input id="telefone" type="number" name="telefone"
                placeholder="Telefone" required="required" autocomplete="off"
                value="<c:out value='${contato.telefone}'/>" /> <input id="celular"
                type="number" name="celular" placeholder="Celular"
                required="required" autocomplete="off" value="<c:out value='${contato.celular}'/>" />
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
                type="number" name="cep" placeholder="CEP" required="required" autocomplete="off"
                value="<c:out value='${endereco.cep}'/>" /> 
				
				<input type="submit" value="Próximo"/>
				
		</fieldset>
	</form>
</body>
</html>