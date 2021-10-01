<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Teoria System</title>
</head>
<body>
<div class="outer-wrapper"></div>
    <div class="s-wrap s-type-1" role="slider">
        <input type="radio" id="s-1" name="slider-control" checked="checked">
        <input type="radio" id="s-2" name="slider-control">
        <input type="radio" id="s-3" name="slider-control">
        <input type="radio" id="s-4" name="slider-control">
        <input type="radio" id="s-5" name="slider-control">
        <ul class="s-content">
            <li class="s-item s-item-1"></li>
            <li class="s-item s-item-2"></li>
            <li class="s-item s-item-3"></li>
            <li class="s-item s-item-4"></li>
            <li class="s-item s-item-5"></li>
        </ul>
        <div class="s-control">
            <label class="s-c-1" for="s-1"></label>
            <label class="s-c-2" for="s-2"></label>
            <label class="s-c-3" for="s-3"></label>
            <label class="s-c-4" for="s-4"></label>
            <label class="s-c-5" for="s-5"></label>
        </div>
        <div class="s-nav">
            <label class="s-nav-1 right" for="s-2"></label>
            <label class="s-nav-2 left" for="s-1"></label>
            <label class="s-nav-2 right" for="s-3"></label>
            <label class="s-nav-3 left" for="s-2"></label>
            <label class="s-nav-3 right" for="s-4"></label>
            <label class="s-nav-4 left" for="s-3"></label>
            <label class="s-nav-4 right" for="s-5"></label>
            <label class="s-nav-5 left" for="s-4"></label>
        </div>
    </div>

    <form action="quiz-system">
        <button class="botao">Jogar</button>
    </form>
</body>
</html>