<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Tela Principal</title>
</head>
<body>
	<p> <a href="<%=request.getContextPath()%>/nova-turma" target="_self">Cadastrar Turma</a></p>
	<p> <a href="<%=request.getContextPath()%>/listar-turmas" target="_self">Turmas</a></p>
	
	<p> <a href="<%=request.getContextPath()%>/novo-professor" target="_self">Cadastrar Professor</a></p>
	<p> <a href="<%=request.getContextPath()%>/listar-professores" target="_self">Professores</a></p>
	
	<p> <a href="<%=request.getContextPath()%>/index" target="_self">Voltar</a></p>
</body>
</html>