<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Cadastrar Disciplina</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/cadastros.css"/>
<style><%@include file="/resources/css/cadastros.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>	
</head>
<body>
	<form id="form" method="post" action="inserir-disciplina">

		<fieldset>
			<h2>Cadastrar Disciplina</h2>
			<input id="nome" type="text" name="nome" placeholder="Nome"
				required="required" value="<c:out value='${disciplina.nome}'/>" /> 
				<input type="submit" value="Cadastrar" />
		</fieldset>
	</form>
</body>
</html>