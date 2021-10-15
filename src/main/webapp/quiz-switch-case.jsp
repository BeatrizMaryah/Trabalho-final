<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Quiz Switch Case</title>
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
                <h4>1. O que faz a estrutura de decisão switch/case ?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a1" valid="valid">
                  <span>A estrutura switch compara o valor de cada caso com o da variável sequencialmente, e sempre que encontra um valor correspondente, executa o código associado ao caso.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>O condicional switch testa o valor contido em uma variável e o executa todos os valores fornecidos em cada caso, representados pela palavra reservada case.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>O condicional case testa o valor contido em uma variável e o compara com os valores fornecidos em cada caso, representados pela palavra reservada switch.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>O condicional switch recebe o valor de uma variável que é impressa através da palavra reservada case.</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>2. Assinale a alternativa INCORRETA:</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a2">
                  <span>Switch só pode ser usado com o operador lógico de igualdade. </span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a2" valid="valid">
                    <span>O case sempre deve ter um valor default.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>O comando break, quando executado, encerra a execução da estrutura onde ele se encontra.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>O valor do case deve ser do mesmo tipo da expressão switch.</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>3. Para que serve o comando break?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a3">
                  <span>Ele interrompe a execução do programa. Isso ocorre caso a condição imposta tenha sido atendida.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Quando usado em um laço de repetição, ele continua a execução do código.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3" valid="valid">
                    <span>Quando usado em um laço de repetição, ele interrompe a execução do código, continuando a execução do programa na próxima linha após o laço. Isso ocorre caso a condição imposta tenha sido atendida.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Não serva para nada, não altera nada na execução do código.</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>4. Quando usamos a estrutura de controle Switch/ case?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a4">
                  <span>Usamos quando precisamos de múltiplas condições for em um programa.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a4" valid="valid">
                    <span>Usamos quando precisamos de múltiplas condições if/ else em um programa.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4" >
                    <span>Usamos quando precisamos de múltiplas condições switch/ case em um programa.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4">
                    <span>Usamos quando precisamos de múltiplas condições boolean em um programa.</span>  
                  </div>
            </div>
            <div class="qa_set active">
                <h4>Seu score foi <span id="totalScore">0</span> de 100</h4>
                <input type="hidden" id="nota" name="nota" value="">
            </div>
        </div>  
        <div class="qa_footer">
            <span class="btn1" id="skip"><input type="submit" onsubmit="getNota();" value="Próximo"/></span>
        </div>
    </div>
    </form>
    
    <script><%@include file="/resources/js/quiz.js"%></script>
</body>
</html>