<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Quiz Relacionais</title>
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
                <h4>1. Qual símbolo representa o valor "Diferente" na linguagem de programação Java?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a1">
                  <span>==</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span><></span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1"  valid="valid">
                    <span>!=</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>||</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>2. Para que são utilizados os operadores relacionais?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a2">
                  <span>São os operadores utilizados para realizar operações aritméticas. </span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a2"  valid="valid">
                    <span>São os operadores utilizados para comparar valores de dois operadores.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>São operadores que permitem criar expressões lógicas maiores a partir da junção de duas ou mais expressões.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>São os operadores utilizados para verificar se duas variáveis contêm o mesmo valor e imprime o resultado.</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>3. O símbolo "<=" é utilizado quando:</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a3">
                  <span>Desejamos verificar se uma variável é menor que outra.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Desejamos verificar se uma variável é maior ou igual a outra.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Desejamos verificar se uma variável é maior que outra.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3" valid="valid">
                    <span>Desejamos verificar se uma variável é menor ou igual a outra.</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>4. System.out.println (a > b);<br> De acordo com o trecho de código, marque a alternativa CORRETA:</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a4" valid="valid">
                  <span>Está testando se A é maior que B.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a4">
                    <span>Está testando se A é igual a B. </span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4">
                    <span>Está testando se A é menor que B.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4" >
                    <span>Está testando se A é maior ou igual ao B.</span>  
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