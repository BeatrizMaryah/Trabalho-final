<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Teoria Boolean</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/game.css" />
<style><%@include file="/resources/css/game.css"%></style>
</head>
<body>
	<%@ include file="base-teoria.jsp" %>
	
	<form  method="post" action="quiz-boolean">
        <button class="botao-teoria">Jogar</button>
    </form>
</body>
</html>