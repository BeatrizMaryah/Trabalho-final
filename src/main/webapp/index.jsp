<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Início</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/inicio.css"/>
<style><%@include file="/resources/css/inicio.css"%></style>	
<script><%@include file="/resources/js/metodos.js"%></script>
</head>
<body>
<nav>
    <div class="navbar">
      <div class="logo">START TO CODE</div>
      <ul class="nav-links">
        <li><a href="<%=request.getContextPath()%>/fases" target="_self">Jogo</a></li>
        <li><a href="<%=request.getContextPath()%>/login" target="_self">Login</a></li>
        <li><a href="<%=request.getContextPath()%>/nova-escola" target="_self">Cadastrar Escola</a></li>
        <li><a href="<%=request.getContextPath()%>/inicio-escola" target="_self">Inicio Escola</a></li>
    </ul>
      </div>
        </nav>
  <section class="home-content">
    <div class="texts">
            <h2 class="text"><span>Start to Code</span></h2>
      <p>É um sistema desenvolvido com o objetivo de deixar o ensino de programação menos maçante e mais lúdico. Ele é composto, principalmente, de um módulo estudantil para atividades complementares de programação. Desta forma, o aprendizado do aluno dar-se-á por meio de atividades de múltipla escolha relacionadas ao conteúdo ministrado, tendo como fio condutor uma história.</p>
 </section>
</body>
</html>