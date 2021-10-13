<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz</title>
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
                <h4>1. Pergunta UM?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a1" valid="valid">
                  <span>Resposta Um</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>Resposta Dois</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>Resposta Tres</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a1">
                    <span>Resposta Quatro</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>2. Pergunta Dois?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a2">
                  <span>Resposta Um</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>Resposta Dois</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2"  valid="valid">
                    <span>Resposta Tres</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a2">
                    <span>Resposta Quatro</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>3. Pergunta Tres?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a3">
                  <span>Resposta Um</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Resposta Dois</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3">
                    <span>Resposta Tres</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a3" valid="valid">
                    <span>Resposta Quatro</span>  
                  </div>
            </div>
            <div class="qa_set">
                <h4>4. Pergunta Quatro?</h4>
                <div class="qa_ans_row">
                  <input type="radio" name="a4">
                  <span>Resposta Um</span>  
                </div>
                <div class="qa_ans_row">
                    <input type="radio" name="a4" valid="valid">
                    <span>Resposta Dois</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4">
                    <span>Resposta Tres</span>  
                  </div>
                  <div class="qa_ans_row">
                    <input type="radio" name="a4" >
                    <span>Resposta Quatro</span>  
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