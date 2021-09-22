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

	<form id="form" method="post" action="inserir-contato-escola">
		<ul id="progresso">
			<a href="cadastro-escola.jsp">
				<li class="ativo">Informações Gerais</li>
			</a>
			<li class="ativo">Contato</li>

			<li>Endereço</li>

		</ul>
		<fieldset>
			<h2>Contato</h2>
			<h4>Dados da Conta</h4>

			<input id="telefone" type="number" name="telefone"
				placeholder="Telefone" required="required"
				value="<c:out value='${contato.telefone}' />" /> <input
				id="celular" type="number" name="celular" placeholder="Celular"
				required="required" value="<c:out value='${contato.celular}' />" />
			<input id="email" type="email" name="email" placeholder="E-mail"
				required="required" value="<c:out value='${contato.email}' />" /> <a
				href="cadastro-escola.html"> <input class="voltar"
				type="button" name="voltar" value="Voltar" />
			</a> <input type="submit" value="Próximo" />


		</fieldset>


	</form>
</body>
</html>