<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Tela Principal</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/style.css"/>
<style><%@include file="/resources/css/style.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>	
</head>
<body>

	<div class="sidenav" id="menu">
		<a href="<%=request.getContextPath()%>/listar-turmas" target="_self">Cadastrar Turma</a>
  		<a href="<%=request.getContextPath()%>/listar-turmas" target="_self">Turmas</a>
  		<a href="<%=request.getContextPath()%>/listar-disciplinas" target="_self">Cadastrar Disciplina</a>
  		<a href="<%=request.getContextPath()%>/listar-disciplinas" target="_self">Disciplinas</a>
		<a href="<%=request.getContextPath()%>/novo-professor" target="_self">Cadastrar Professor</a>
		<a href="<%=request.getContextPath()%>/listar-professores" target="_self">Professores</a>
		<a href="<%=request.getContextPath()%>/novo-aluno" target="_self">Cadastrar Aluno</a>
		<a href="<%=request.getContextPath()%>/listar-alunos" target="_self">Alunos</a>
		<a href="<%=request.getContextPath()%>/index" target="_self">Voltar</a>
	</div>

	<div class="main">
  		<h2>Texto Aleatorio</h2>
 		<p>Gerencie o cadastro dos seus alunos e professores, adicionando-os as suas respectivas turmas e disciplinas </p>
	</div>

</body>
</html>