<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Quiz If e Else</title>
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
                        <h4>1. O que faz a função if/ else?</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1">
                            <span>Testa uma condição e executa dois comandos ao mesmo tempo</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1">
                            <span>Testa duas condições e executa as duas se forem verdadeiras.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1">
                            <span>Testa uma condição e executa se a condição do bloco if é falsa caso contrário o bloco else é executado.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1" valid="valid">
                            <span>Testa uma condição e executa se a condição do bloco if é verdadeira caso contrário o bloco else é executado.</span>
                        </div>
                    </div>
                    <div class="qa_set">
                        <h4>2. Marque a alternativa INCORRETA:</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2" valid="valid">
                            <span>A declaração else pode ser utilizada sem a declaração if.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2">
                            <span>Posso utilizar a declaração if mais de uma vez no código.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2">
                            <span>A declaração else só pode ser utilizada com uma ou mais declarações if.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2">
                            <span>A declaração if pode ser utilizada sem a declaração else.</span>
                        </div>
                    </div>
                    <div class="qa_set">
                        <h4>3.Sobre if/else assinale a alternativa CORRETA:</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3">
                            <span> A estrutura condicional if/else é usada em operações lógicas como conjunção, disjunção, disjunção exclusiva, equivalência lógica e negação.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3" valid="valid">
                            <span>A estrutura condicional if/else permite ao programa avaliar uma expressão como sendo verdadeira ou falsa.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3">
                            <span>A estrutura condicional é usada quando não sabemos quantas vezes um determinado bloco de instruções precisa ser repetido. </span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3">
                            <span>A estrutura condicional controla o fluxo do programa permitindo ao programador especificar código diferente para ser executado em várias condições.</span>
                        </div>
                    </div>
                    <div class="qa_set">
                        <h4>4.Assinale a alternativa correta:</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4">
                            <span>A declaração do else é obrigatória todas as vezes que se usa o if.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4" valid="valid">
                            <span> A declaração do else não é obrigatória. Para muitas situações apenas o if é suficiente para a lógica sendo implementada.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4">
                            <span>If e else possuem a mesma função e não é necessário usar os dois no mesmo código.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4">
                            <span>Nenhuma das respostas anteriores.</span>
                        </div>
                    </div>

            <div class="qa_set active">
                <h4>Seu score foi <span id="totalScore">0</span> de 100</h4>
            </div>
            <input type="hidden" id="nota" name="nota" onsubmit="getNota();">
        </div>  
        <div class="qa_footer">
            <span class="btn1" id="skip"><input type="submit" value="Próximo"/></span>
        </div>
    </div>
    </form>
    	<script><%@include file="/resources/js/quiz.js"%></script>
</body>
</html>