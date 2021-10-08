<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Cadastrar Turma</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/cadastros.css"/>
<style><%@include file="/resources/css/cadastros.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>	
</head>
<body>
<form id="form" method="post" action="inserir-turma">
		<fieldset>
			<h2>Cadastrar Turma</h2>
			<input id="nome" type="text" name="nome" placeholder="Nome"
				required="required" autocomplete="off" value="<c:out value='${turma.nome}'/>" />
			
				<br>
				
		<label>Escola:</label>
			<select class="select" id="id-escola" name="id-escola">
				<c:forEach var="escola" items="${escolas}">
					<option value="${escola.id}">
						<c:out value="${escola.nome}"/>
					</option>
				</c:forEach>
			</select>
		
			<br>
			
			<input type="submit" value="Cadastrar"/>
		</fieldset>
	</form>
</body>
</html>