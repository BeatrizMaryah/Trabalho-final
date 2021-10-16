<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Fases</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/fases.css"/>
	<style><%@include file="/resources/css/fases.css"%></style>		
</head>
<body>

<nav role="navigation">
  <div id="menuToggle">
    <input type="checkbox" />
    	<span></span>
   	 	<span></span>
    	<span></span>
    <ul id="menu">
      <a href="<%=request.getContextPath()%>/fases" target="_self"><li>Fases</li></a>
      <a href="<%=request.getContextPath()%>/mostrar-notas-aluno" target="_self"><li>Notas</li></a>
      <a href="<%=request.getContextPath()%>/deslogar" target="_self"><li>Sair</li></a>
    </ul>
  </div>
</nav>

<div class="fases">  
 	<div class="fases1"> 
        <form action="teoria-system" method="post" id="fase1">
        	<input type="hidden" name="id" id="id" value="1">
        	<a href="#" onClick="document.getElementById('fase1').submit();" id="1" class="button button-circle button-highlight">System</a>
        </form>
        <form action="teoria-variaveis" method="post" id="fase2">
       		<input type="hidden" name="id" id="id" value="2">
        	<a href="#" onClick="document.getElementById('fase2').submit();" id="2" class="button button-circle button-highlight">Variáveis</a>
        </form>
        <form action="teoria-scanner" method="post" id="fase3">
        	<input type="hidden" name="id" id="id" value="3">
        	<a href="#" onClick="document.getElementById('fase3').submit();" id="3" class="button button-circle button-highlight">Scanner</a>
        </form>
        <form action="teoria-boolean" method="post" id="fase4">
        	<input type="hidden" name="id" id="id" value="4">
        	<a href="#" onClick="document.getElementById('fase4').submit();" id="4" class="button button-circle button-highlight">Boolean</a>
        </form>
        <form action="teoria-relacionais" method="post" id="fase5">
        	<input type="hidden" name="id" id="id" value="5">
        	<a href="#" onClick="document.getElementById('fase5').submit();" id="5" class="button button-circle button-highlight">Relacionais</a>
        </form>
    </div>
    <div class="fases2">
    	<form action="teoria-if" method="post" id="fase6">
        	<input type="hidden" name="id" id="id" value="6">
        	<a href="#" onClick="document.getElementById('fase6').submit();" id="6" class="button button-circle button-highlight">If e Else</a>
       </form>
       <form action="teoria-switch-case" method="post" id="fase7">
        	<input type="hidden" name="id" id="id" value="7">
        	<a href="#" onClick="document.getElementById('fase7').submit();" id="7" class="button button-circle button-highlight">Switch Case</a>
       </form>
       <form action="teoria-logicos" method="post" id="fase8">
        	<input type="hidden" name="id" id="id" value="8">
        	<a href="#" onClick="document.getElementById('fase8').submit();" id="8" class="button button-circle button-highlight">Lógicos</a>
       </form>
       <form action="teoria-while" method="post" id="fase9">
        	<input type="hidden" name="id" id="id" value="9">
        	<a href="#" onClick="document.getElementById('fase9').submit();" id="9" class="button button-circle button-highlight">While</a>
       </form>
       <form action="teoria-for" method="post" id="fase10">
        	<input type="hidden" name="id" id="id" value="10">
        	<a href="#" onClick="document.getElementById('fase10').submit();" id="10" class="button button-circle button-highlight">For</a>
       </form>
    <div class="modal-container">
        <input id="modal-toggle" type="checkbox">
        <label class="modal-btn" for="modal-toggle" id="robo"><a class="button button-circle">Como Jogar</a></label>
        <label class="modal-backdrop" for="modal-toggle"></label>
        <div class="modal-content">
            <label class="modal-close" for="modal-toggle">X</label>
            <h2>Como jogar</h2>
            <br />
            <br>Olá!<br> Para jogar é só seguir os passos abaixo:<br><br> 1º - Escolha uma fase.<br> 2º - Leia toda a teoria e vá passando para o próximo slide, não se preocupe se não entender na primeira vez que ler, você pode voltar para o slide anterior.<br>            3º - Clique no botão JOGAR!<br> 4º - Leia a pergunta e escolha uma das quatro alternativas. Você só poderá ir pra próxima questão se tiver escolhido uma das alternativas.<br> 5º - O resultado irá aparecer depois de resolver todas as questões.<br><br>            Viu como é fácil!<br> Bom jogo!
            <label class="modal-content-btn" for="modal-toggle">OK</label>
        </div>
    </div>
</div>
</div>
</body>
</html>