<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Cadastrar Aluno</title>
<link rel="stylesheet" href="../css/style.css" />
<link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">

<form id="form" method="post" action="inserir-contato-aluno">

    <li class="ativo"><a href="<%=request.getContextPath()%>/novo-aluno" target="_self">Voltar</a></li>
    
	<fieldset>
		<h2>Contato</h2>
		<h4>Dados da Conta</h4>

        <input id="telefone" type="number" name="telefone" placeholder="Telefone Responsável" required="required" value="<c:out value='${contato.telefone}'/>" />
        <input id="celular" type="number" name="celular" placeholder="Celular" required="required"  value="<c:out value='${contato.celular}'/>" />
        <input id="email" type="email" name="email" placeholder="E-mail" required="required"  value="<c:out value='${contato.email}'/>" />
        
            <a href="cadastro-aluno.jsp" >
            <input class="voltar" type="button" name="voltar" value="Voltar" />
            </a> 

            <input type="submit" value="Cadastrar" />       
        
	</fieldset>


</form>