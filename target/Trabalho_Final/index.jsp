<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>index</title>
</head>
<body>
	<p> <a href="<%=request.getContextPath()%>/nova-escola" target="_self">Cadastro Escola</a></p>
	<p> <a href="<%=request.getContextPath()%>/novo-professor" target="_self">Cadastro Professor</a></p>
	<p> <a href="<%=request.getContextPath()%>/novo-aluno" target="_self">Cadastro Aluno</a></p>
	<p> <a href="<%=request.getContextPath()%>/nova-turma" target="_self">Cadastrar Turma</a></p>
	<p> <a href="<%=request.getContextPath()%>/listar-alunos" target="_self">Listar Alunos</a></p>
	<p> <a href="<%=request.getContextPath()%>/listar-professores" target="_self">Listar Professores</a></p>
	<p> <a href="<%=request.getContextPath()%>/listar-turmas" target="_self">Listar Turmas</a></p>

</body>
</html>