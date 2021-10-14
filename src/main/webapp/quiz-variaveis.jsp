<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Quiz Variáveis</title>
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
                        <h4>1. O que é uma variável?</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1">
                            <span>É um conjunto de números e nomes que definimos para armazenar dados de formas simples.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1">
                            <span>É um número que definimos para armazenar dados de formas simples.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1" valid="valid">
                            <span>É uma área de memória, associada a um nome, que pode armazenar valores de um determinado tipo.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a1">
                            <span>É um conjunto de nomes que definimos para armazenar dados de formas simples.</span>
                        </div>
                    </div>
                    <div class="qa_set">
                        <h4>2. O valor de uma variável pode ser alterado no andamento do algoritmo?</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2">
                            <span>Não, por isso o nome é variável. </span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2">
                            <span>Depende da situação.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2">
                            <span>Não.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a2" valid="valid">
                            <span>Sim, por isso o nome de variável.</span>
                        </div>
                    </div>
                    <div class="qa_set">
                        <h4>4. int valor;<br> valor = 100;<br> System.out.println(valor);
                            <br>
                        </h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3">
                            <span>Declaramos uma variável do tipo int, de nome valor. Na linha seguinte atribuímos o número inteiro 100 a variável valor. Por fim, utilizamos a função println(). para imprimirmos na tela qualquer valor inteiro.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3" valid="valid">
                            <span>Declaramos uma variável do tipo int, de nome valor. Na linha seguinte atribuímos o número inteiro 100 a variável valor. Por fim, utilizamos a função println(). para imprimirmos na tela o valor contido na variável valor.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3">
                            <span> Declaramos uma variável do tipo float, de nome valor. Na linha seguinte atribuímos o número inteiro 100 a variável valor. Por fim, utilizamos a função println(). para imprimirmos na tela o valor contido na variável valor. </span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a3">
                            <span>Declaramos uma variável do tipo boolean, de nome valor. Na linha seguinte atribuímos o número inteiro 100 a variável valor. Por fim, utilizamos a função println(). para imprimirmos na tela o valor contido na variável valor.</span>
                        </div>
                    </div>
                    <div class="qa_set">
                        <h4>4.Assinale os tipos de variáveis do tipo primitivas:</h4>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4">
                            <span>Boolean, byte, char e  Arrays Primitivos.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4">
                            <span>Arrays Primitivos, float e double.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4" valid="valid">
                            <span>Boolean, byte, char, short, int, long, float e double.</span>
                        </div>
                        <div class="qa_ans_row">
                            <input type="radio" name="a4">
                            <span>Strings, Arrays Primitivos e Objetos.</span>
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