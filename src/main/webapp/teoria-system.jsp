<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Teoria System</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/game.css" />
<style><%@include file="/resources/css/game.css"%></style>
</head>
<body>

	<%@ include file="base-teoria.jsp" %>
	
    <form method="post" action="quiz-system">
        <button class="botao">Jogar</button>
    </form>
</body>
</html>