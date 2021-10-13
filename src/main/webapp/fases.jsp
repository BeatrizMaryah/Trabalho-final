<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Fases</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/fases.css"/>
	<style><%@include file="/resources/css/fases.css"%></style>	
	<script><%@include file="/resources/js/metodos.js"%></script>	
</head>
<body>
<div class="fases">
        <div class="fases1">

            <a href="<%=request.getContextPath()%>/teoria-system" target="_self" id=""><img src="imagens/cinza.jpg"></a>
           	<a href="<%=request.getContextPath()%>/teoria-variaveis" target="_self" id="2"><img src="imagens/cinza.jpg"></a>
            <a href="<%=request.getContextPath()%>/teoria-scanner" target="_self" id="3"><img src="imagens/cinza.jpg"></a>
            <a href="<%=request.getContextPath()%>/teoria-boolean" target="_self"id="4"><img src="imagens/cinza.jpg"></a>
            <a href="<%=request.getContextPath()%>/teoria-relacionais" target="_self" id="5"><img src="imagens/cinza.jpg"></a>
        </div>
        <div class="fases2">
            <a href="<%=request.getContextPath()%>/teoria-if" target="_self" id="6"><img src="imagens/cinza.jpg"></a>
            <a href="<%=request.getContextPath()%>/teoria-switch-case" target="_self" id="7"><img src="imagens/cinza.jpg"></a>
            <a href="<%=request.getContextPath()%>/teoria-logicos" target="_self" id="8"><img src="imagens/cinza.jpg"></a>
            <a href="<%=request.getContextPath()%>/teoria-while" target="_self" id="9"><img src="imagens/cinza.jpg"></a>
            <a href="<%=request.getContextPath()%>/teoria-for" target="_self" id="10"><img src="imagens/cinza.jpg"></a>
        </div>
    </div>
    <div class="balao">
        Clique em mim <br> e veja como jogar!
    </div>
    <div class="modal-container">
        <input id="modal-toggle" type="checkbox">
        <label class="modal-btn" for="modal-toggle" id="robo"><img src="imagens/robo.png"></label>
        <label class="modal-backdrop" for="modal-toggle"></label>
        <div class="modal-content">
            <label class="modal-close" for="modal-toggle">X</label>
            <h2>Como jogar</h2>
            <br />
            <br>Olá!<br> Para jogar é só seguir os passos abaixo:<br><br> 1º - Escolha uma fase.<br> 2º - Leia toda a teoria e vá passando para o próximo slide, não se preocupe se não entender na primeira vez que ler, você pode voltar para o slide anterior.<br>            3º - Clique no botão JOGAR!<br> 4º - Leia a pergunta e escolha uma das quatro alternativas. Você só poderá ir pra próxima questão se tiver escolhido uma das alternativas.<br> 5º - O resultado irá aparecer depois de resolver todas as questões.<br><br>            Viu como é fácil!<br> Bom jogo!
            </p>
            <label class="modal-content-btn" for="modal-toggle">OK</label>
        </div>

    </div>
    <div class="balao2">
        Ei! antes de qualque coisa, <br>veja a historia para entender o jogo.
    </div>
    <div class="iara">
        <a href="#"><img src="imagens/Icon Iara pronto.png" alt=""></a>
    </div>

</body>
</html>