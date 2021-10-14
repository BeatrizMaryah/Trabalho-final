<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Quiz Boolean</title>
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
                <h4>1. Boolean é uma ciência da computação...:</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a1">
                  <span>Tipo referencia e lógico.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>De valor numérico.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1" valid="valid">
                    <span>Lógica e tipo primitivo.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>Baseada em condição.</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>2. O que são variáveis do tipo booleanas?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a2">
                  <span>Variável do tipo referencia, contem um endereço de objeto.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a2" valid="valid">
                    <span>Contém 2 valores que retornam verdadeiro ou falso.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>Número Racional.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>Que retorna um número.</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>3. Assinale a alternativa CORRETA de como deve ser usada a variável boolean:</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a3" valid="valid">
                  <span>Boolean isPrimo=true;</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Boolean isPrimo=true{}</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Boolean isPrimo=verdadeiro;</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Boolean isPrimo=falso;</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>4. Em uma linguagem mais matemática, os tipos booleanos estão relacionados com quais operadores lógicos?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a4" >
                  <span>Maior e menor (< >)</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a4">
                    <span>Diferente de (!=)</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4" valid="valid">
                    <span>And e Or (E e Ou)</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4">
                    <span>Menor ou igual (<=) </span>  
                  </div>
            </div>
            <div class="qa_set active">
                <h4>Seu score foi <span id="totalScore">0</span> de 100</h4>
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