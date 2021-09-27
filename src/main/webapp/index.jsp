<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>index</title>
</head>
<body>
	<p> <a href="<%=request.getContextPath()%>/nova-escola" target="_self">Cadastro Escola</a></p>
	<p> <a href="<%=request.getContextPath()%>/inicio-escola" target="_self">Tela inicial da Escola</a></p>
	<p> <a href="<%=request.getContextPath()%>/listar-alunos" target="_self">Listar Alunos</a></p>
</body>
</html>