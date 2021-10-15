<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Quiz For</title>
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
                        <h4>1. Qual a função da estrutura de repetição for?</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1" valid="valid">
                            <span>Utilizamos quando precisamos executar diversas vezes um mesmo bloco de código.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1">
                            <span>Utilizamos quando precisamos executar o código.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1">
                            <span>Utilizamos quando precisamos executar uma vez um mesmo bloco de código.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1">
                            <span>Utilizamos sempre.</span>
                        </div>
                    </div>
                    <div class="qa_set">
                        <h4>2. A repetição for contem três partes importantes, assinale a alternativa que explica CORRETAMENTE essas partes:</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2">
                            <span>Parte 1: onde nós declaramos uma variável; Parte 2: onde nós colocamos uma condição para que continue ou seja terminado; Parte 3: onde nós deixamos o código funcionar.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2">
                            <span>Parte 1: onde nós declaramos uma variável; Parte 2: onde nós deixamos o programa funcionar; Parte 3: onde nós incrementamos a nossa variável.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2" valid="valid">
                            <span>Parte 1: onde nós declaramos uma variável; Parte 2: onde nós colocamos uma condição para que continue ou seja terminado; Parte 3: onde nós incrementamos a nossa variável.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2">
                            <span>Parte 1: onde nós deixamos o código escolher uma variável; Parte 2: onde nós colocamos uma condição para que continue ou seja terminado; Parte 3: onde nós incrementamos a nossa variável.</span>
                        </div>
                    </div>
                    <div class="qa_set">
                        <h4>3. Qual a diferença entre um operador de incremento e um operador de decremento?</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3">
                            <span>Incremento: incrementa três valores em um. Decremento diminui um valor em um.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3">
                            <span>Incremento: diminui um valor em um. Decremento: incrementa um valor em um.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3">
                            <span>Incremento: incrementa um valor em um. Decremento: diminui quatro valores em um.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3" valid="valid">
                            <span>Incremento: incrementa um valor em um. Decremento: diminui um valor em um.</span>
                        </div>
                    </div>
                    <div class="qa_set">
                        <h4>4.for (int i = 0; i
                            <=1 0; i++)<br>
                                De acordo com o código apresentado, qual a sua função?</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4">
                            <span>Nenhuma das alternativas.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4">
                            <span>A saída do código acima mostra que a mensagem foi escrita por 10 vezes, onde o “i” variou de 0 até 10.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4">
                            <span>A saída do código acima mostra que a mensagem foi escrita por 09 vezes, onde o “i” variou de 0 até 10.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4" valid="valid">
                            <span>A saída do código acima mostra que a mensagem foi escrita por 11 vezes, onde o “i” variou de 0 até 10.</span>
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