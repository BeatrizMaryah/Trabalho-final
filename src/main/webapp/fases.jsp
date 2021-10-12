<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Fases</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/game.css"/>
	<style><%@include file="/resources/css/game.css"%></style>	
	<script><%@include file="/resources/js/metodos.js"%></script>	
</head>
<body>
 <div class="fases1">
        <a href="<%=request.getContextPath()%>/teoria-system" target="_self">Fase System</a>
        <a href="<%=request.getContextPath()%>/teoria-scanner" target="_self">Fase Scanner</a>
        <a href="<%=request.getContextPath()%>/teoria-variaveis" target="_self">Fase Variaveis</a>
        <a href="<%=request.getContextPath()%>/teoria-boolean" target="_self">Fase Boolean</a>
        <a href="<%=request.getContextPath()%>/teoria-for" target="_self">Fase For</a>
        <a href="<%=request.getContextPath()%>/teoria-relacionais" target="_self">Fase Relacionais</a>
        <a href="<%=request.getContextPath()%>/teoria-logicos" target="_self">Fase Logicos</a>
        <a href="<%=request.getContextPath()%>/teoria-switch-case" target="_self">Fase Switch Case</a>
        <a href="<%=request.getContextPath()%>/teoria-if" target="_self">Fase If</a>
        <a href="<%=request.getContextPath()%>/teoria-while" target="_self">Fase While</a>
    </div>
</body>
</html>