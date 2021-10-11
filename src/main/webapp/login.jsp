<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Login</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/cadastros.css"/>
<style><%@include file="/resources/css/cadastros.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>	
<link
	href="https://fonts.googleapis.com/css?family=Questrial&display=swap"
	rel="stylesheet">
</head>
<body>
<form id="form" action="logar" method="post">
    <fieldset>
        <h2>Login</h2>
        <h4>Insira seus dados para entrar</h4>

        <input id="email" type="email" name="email" placeholder="E-mail" required="required" autocomplete="off" />
        <input id="senha" type="password" name="senha" placeholder="Senha" required="required" autocomplete="off" />

        <input type="submit" value="Entrar"/>

        <a href="<%=request.getContextPath()%>/nova-escola" target="_self">Cadastre sua escola!</a><br>

    </fieldset>
</form>
</body>
</html>