<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Cadastro</title>
<link rel="stylesheet" href="style.css" />
<link
	href="https://fonts.googleapis.com/css?family=Questrial&display=swap"
	rel="stylesheet">
</head>
<body>

	<form id="form" method="post" action="inserir-endereco">

		<ul id="progresso">
			
			<li class="ativo">Informações Gerais</li>
			<li class="ativo">Contato</li>
			<li class="ativo">Endereço</li>

		</ul>

		<fieldset>
			<h2>Endereço</h2>
			<h4>Dados da Conta</h4>

			<input id="rua" type="text" name="rua" placeholder="Rua"
				required="required" value="<c:out value='${endereco.nome}'/>" /> <input
				id="cidade" type="text" name="cidade" placeholder="Cidade"
				required="required" value="<c:out value='${endereco.cidade}'/>" />
			<input id="numero" type="number" name="numero" placeholder="Número"
				required="required" value="<c:out value='${endereco.numero}'/>" /> <input
				id="complemento" type="text" name="complemento"
				placeholder="Complemento" required="required"
				value="<c:out value='${endereco.complemento}'/>" /> <input id="cep"
				type="number" name="cep" placeholder="CEP" required="required"
				value="<c:out value='${endereco.cep}'/>" /> <a
				href="contato-escola.html"> <input class="voltar" type="button"
				name="voltar" value="Voltar" />
			</a> <input type="submit" value="Cadastrar" />


		</fieldset>


	</form>
</body>
</html>