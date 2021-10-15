<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Quiz While</title>
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
                        <h4>1. Qual seria a condição para o while parar a execução?</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1">
                            <span>Quando na primeira verificação da condição, ela for verdadeira. Neste caso, o programa simplesmente irá “pular” para a execução da próxima instrução após o laço.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1">
                            <span>Quando na primeira verificação da condição, ela for falsa. Neste caso, o programa simplesmente irá parar a execução do programa.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1">
                            <span>Quando na primeira verificação da condição, ela for verdadeira. Neste caso, o programa simplesmente irá parar a execução do programa.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1" valid="valid">
                            <span>Quando na primeira verificação da condição, ela for falsa. Neste caso, o programa simplesmente irá “pular” para a execução da próxima instrução após o laço.</span>
                        </div>
                    </div>
                    <div class="qa_set">
                        <h4>2. Para que usamos a estrutura de controle while?</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2">
                            <span>Usada quando precisamos executar diversas vezes um mesmo bloco de código. </span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2">
                            <span>Usada quando sabemos quantas vezes um determinado bloco de código precisa ser repetido.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2" valid="valid">
                            <span>Usada quando não sabemos quantas vezes um determinado bloco de código precisa ser repetido.Usada quando não sabemos quantas vezes um determinado bloco de código precisa ser repetido.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2">
                            <span>Usada sempre.</span>
                        </div>
                    </div>
                    <div class="qa_set">
                        <h4>3. Qual seria a condição para o while continuar a execução?</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3">
                            <span>Enquanto ela for falsa, está estrutura continuará sendo executada.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3" valid="valid">
                            <span>Enquanto ela for verdadeira, está estrutura continuará sendo executada.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3">
                            <span>Enquanto ela for verdadeira, a estrutura finaliza a execução.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3">
                            <span>Enquanto ela for falsa, a estrutura finaliza a execução.</span>
                        </div>
                    </div>
                    <div class="qa_set">
                        <h4>4.While (i
                            <=1 2) {<br>
                                De acordo com o código acima, qual a resposta correta?</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4" valid="valid">
                            <span>O código será executado, indefinidamente, desde que uma variável (i) seja menor ou igual a 12.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4">
                            <span>O código será executado, indefinidamente, desde que uma variável (i) seja menor que 9.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4">
                            <span>O código será executado, indefinidamente, desde que uma variável (i) seja menor que 12.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4">
                            <span>O código será executado, indefinidamente, desde que uma variável (i) seja menor que 10.</span>
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