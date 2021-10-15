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
 	<div class="sair">
 	 <form action="deslogar" method="post" id="sair">
        <a href="#" onClick="document.getElementById('sair').submit();">
            <i class="fi fi-rr-sign-in"></i>
            <span class="links_name">Sair</span>
        </a>
     </form>
    </div>
<div class="fases">  
 	<div class="fases1"> 
        <form action="teoria-system" method="post" id="fase1">
        	<input type="hidden" name="id" id="id" value="1">
        	<a href="#" onClick="document.getElementById('fase1').submit();" id="1"><img src="/resources/imagens/fase1"></a>
        </form>
        <form action="teoria-variaveis" method="post" id="fase2">
       		<input type="hidden" name="id" id="id" value="2">
        	<a href="#" onClick="document.getElementById('fase2').submit();" id="2"><img src="imagens/cinza.jpg"></a>
        </form>
        <form action="teoria-scanner" method="post" id="fase3">
        	<input type="hidden" name="id" id="id" value="3">
        	<a href="#" onClick="document.getElementById('fase3').submit();" id="3"><img src="imagens/cinza.jpg"></a>
        </form>
        <form action="teoria-boolean" method="post" id="fase4">
        	<input type="hidden" name="id" id="id" value="4">
        	<a href="#" onClick="document.getElementById('fase4').submit();" id="4"><img src="imagens/cinza.jpg"></a>
        </form>
        <form action="teoria-relacionais" method="post" id="fase5">
        	<input type="hidden" name="id" id="id" value="5">
        	<a href="#" onClick="document.getElementById('fase5').submit();" id="5"><img src="imagens/cinza.jpg"></a>
        </form>
    </div>
    <div class="fases2">
    	<form action="teoria-if" method="post" id="fase6">
        	<input type="hidden" name="id" id="id" value="6">
        	<a href="#" onClick="document.getElementById('fase6').submit();" id="6"><img src="imagens/cinza.jpg"></a>
       </form>
       <form action="teoria-switch-case" method="post" id="fase7">
        	<input type="hidden" name="id" id="id" value="7">
        	<a href="#" onClick="document.getElementById('fase7').submit();" id="7"><img src="imagens/cinza.jpg"></a>
       </form>
       <form action="teoria-logicos" method="post" id="fase8">
        	<input type="hidden" name="id" id="id" value="8">
        	<a href="#" onClick="document.getElementById('fase8').submit();" id="8"><img src="imagens/cinza.jpg"></a>
       </form>
       <form action="teoria-while" method="post" id="fase9">
        	<input type="hidden" name="id" id="id" value="9">
        	<a href="#" onClick="document.getElementById('fase9').submit();" id="9"><img src="imagens/cinza.jpg"></a>
       </form>
       <form action="teoria-for" method="post" id="fase10">
        	<input type="hidden" name="id" id="id" value="10">
        	<a href="#" onClick="document.getElementById('fase10').submit();" id="10"><img src="imagens/cinza.jpg"></a>
       </form>
       
    </div>
</div>
</body>
</html>