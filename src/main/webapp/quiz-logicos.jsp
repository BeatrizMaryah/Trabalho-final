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
<form action="salvar-nota" method="post">
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
            <div class="qa_set">
                <h4>3. O que representa os simbolos seguintes símbolos? <br> !=; &&; ||</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a3">
                  <span>Significa E; NÃO; OU respctivamente.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Significa Maior; NÃO; OU respctivamente.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Significa Menor; Maior; E respctivamente.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3"  valid="valid" >
                    <span>Significa NÃO; OU; E respctivamente.</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>4. Quando é utilizado a expressão "||"?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a4" valid="valid">
                  <span>Utilizado quando precisamos que pelo meno um das expressões seja verdadeira.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a4">
                    <span>Utilizado quando desejamos que as duas expressões sejam verdadeiras.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4">
                    <span>Utilizado quando desejamos verificar se uma variável é maior ou igual a outra.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4" >
                    <span>Utilizado quando desejamos verificar se uma variável é menor ou igual a outra.</span>  
                  </div>
            </div>
            <div class="qa_set active">
                <h4>Seu score foi <span id="totalScore">0</span> de 100</h4>
                <input type="hidden" id="nota" name="nota" onsubmit="getNota();">
            </div>
        </div>  
        <div class="qa_footer">
            <span class="btn1" id="skip"><input type="submit" value="Próximo"/></span>
        </div>
    </div>
    </form>
    	<script><%@include file="/resources/js/quiz.js"%></script>
</body>
</html>