<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Quiz System</title>
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
                <h4>1. O System.out.print(); é usado para?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a1">
                  <span>Para declarar um variável.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a1" valid="valid">
                    <span>Para mostrar algo na tela.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>Adicionar um comando.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>Finalizar um programa.</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>2. Assinale a alternativa CORRETA:</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a2" valid="valid">
                  <span>System.out.print() é a saída padrão, que permite exibir as Strings no console (terminal) de comando quando o aplicativo de Java é executado. </span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>System.out.print()  é uma classe de entrada responsável por digitalizar imagens.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>System.out.print() especifica o formato da entrada do tipo de valor, que deve ser o mesmo tipo de dados apontado na instrução.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>System.out.print()  insere uma nova linha, deixando o marcador posicionado na linha abaixo.</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>3. Assinale a alternativa INCORRETA:</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a3">
                  <span>System.out.print();</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>System.out.println();</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>System.out.printf();</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3" valid="valid">
                    <span>System.out.printl();</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>4. Qual a diferença entre System.out.print(); e System.out.println();</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a4">
                  <span>System.out.print é uma string de formato que pode consistir em texto fixo e System.out.println  insere uma nova linha, deixando o marcador posicionado na linha abaixo.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a4">
                    <span>System.out.print especifica o formato da entrada do tipo de valor e System.out.println mantém o cursor na mesma linha.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4" valid="valid">
                    <span>System.out.println insere uma nova linha e System.out.print  mantém o cursor na mesma linha.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4" >
                    <span>System.out.println é a saída padrão, que permite exibir as Strings no console e System.out.print é uma classe de entrada responsável por digitalizar imagens.</span>  
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