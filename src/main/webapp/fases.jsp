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
    </div>
</body>
</html>