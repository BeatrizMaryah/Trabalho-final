<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Quiz Lógicos</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/quiz.css"/>
<style><%@include file="/resources/css/quiz.css"%></style>	
</head>
<body>
        <div class="qa_box">
        <div class="qa_header">
            <span>Score: <span id="score">0</span></span>
            <span id="countdown">0</span>
        </div>
        <div class="qa_body">
            <div class="qa_set active">
                <h4>1. Assinale a alternativa que corresponde ao significado CORRETO de cada operação lógica:</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a1">
                  <span>&= E, ||= OU, != Diferente.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>!= OU, ||= Negação, &= E.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1" valid="valid">
                    <span>&= E, ||= OU, != Negação.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>Nenhuma das alternativas.</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>2. Para que resultado de A&&B seja verdadeiro, A e B precisam ser:</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a2">
                  <span>A=verdadeiro e B=falso.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>A=falso e B=verdadeiro.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>A=falso e B=falso.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2" valid="valid">
                    <span>A=verdadeiro e B=verdadeiro.</span>  
                  </div>
            </div>
            <div class="qa_set active">
                <h4>Seu score foi <span id="totalScore">0</span> de 100</h4>
            </div>
        </div>  
        <div class="qa_footer">
            <span class="btn1" id="skip">Próximo</span>
        </div>
    </div>
    	<script><%@include file="/resources/js/quiz.js"%></script>
</body>
</html>