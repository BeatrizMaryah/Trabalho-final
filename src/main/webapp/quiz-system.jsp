<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Quiz</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/game.css"/>
<style><%@include file="/resources/css/game.css"%></style>	
<script><%@include file="/resources/js/system.js"%></script>	
</head>
<body>
 <div class="quiz-container" id="quiz">
        <div class="quiz-header">
            <h2 id="question"></h2>
            <ul>

                <li><input type="radio" id="a" name="answer" class="answer"><label for="a" id="a_text"></label>
                </li>
                <li><input type="radio" id="b" name="answer" class="answer"><label for="b" id="b_text"></label>
                </li>
                <li><input type="radio" id="c" name="answer" class="answer"><label for="c" id="c_text"></label>
                </li>
                <li><input type="radio" id="d" name="answer" class="answer"><label for="d" id="d_text"></label>
                </li>
            </ul>
        </div>

        <button id="submit">Próximo</button>

    </div>
</body>
</html>