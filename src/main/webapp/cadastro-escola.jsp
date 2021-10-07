<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>
		<c:if test="${escola != null}">Editar escola</c:if> 
		<c:if test="${escola == null}">Cadastrar escola</c:if>
</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/cadastros.css"/>
<style><%@include file="/resources/css/cadastros.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>	
<link
	href="https://fonts.googleapis.com/css?family=Questrial&display=swap"
	rel="stylesheet">
</head>
<body>
		<c:if test="${escola != null}">
			<form id="form" action="atualizar-escola" method="post">
		</c:if>
		<c:if test="${escola == null}">
			<form id="form" action="inserir-escola" method="post">
		</c:if>
		
		<fieldset>
			<h2>
				<c:if test="${escola != null}">Editar Escola</c:if>
				<c:if test="${escola == null}">Cadastrar Escola</c:if>
			</h2>
			<h4>Insira os dados da escola</h4>
			
			<c:if test="${escola != null}">
			<input type="hidden" name="id" value="<c:out value="${escola.id}"/>" />
			</c:if>
			
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
				
				<input type="submit" value="Cadastrar"/>
				
		</fieldset>
	</form>
</body>
</html>