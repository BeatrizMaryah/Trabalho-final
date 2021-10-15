<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Quiz Scanner</title>
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
                <h4>1. O que é um Scanner?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a1">
                  <span>Uma variável para declarar um texto.</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a1" valid="valid">
                    <span>São para ler uma informação que o usuário escreve.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>Para fazer um laço no código.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>Usado para anexar documentos no programa.</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>2. Como fechar o Scanner no Java?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a2" valid="valid">
                  <span>Com o método "close() </span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>Com um "return;</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>Só com um "{}</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>Usando "Default</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>3. Como importar o Scanner?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a3">
                  <span>Só escrever "Scanner" abaixo do "main"</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Começar o código com um texto.</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3" valid="valid">
                    <span>Com "import java.util.Scanner;"</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Com "import util.java.Scanner;"</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>4. Assinale a alternativa INCORRETA:</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a4">
                  <span>import java.util.Scanner; Leitor scanner = new Scanner(System.in);</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a4">
                    <span>import java.util.Scanner; Scanner leitor = new Scanner(System.in);</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4">
                    <span>import java.util.Scanner; Scanner scanner = new Scanner(System.in);</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4" valid="valid">
                    <span>import java.util.Scanner; Scanner scanner = new Scanner(System.in);</span>  
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