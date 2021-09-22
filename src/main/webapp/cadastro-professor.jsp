<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Cadastrar Professor</title>
</head>
<body>
	<form id="form" method="post" action="inserir-professor">
		<ul id="progresso">
			<a href="cadastro-professor.jsp">
				<li class="ativo">Informações Gerais</li>
			</a>
			<li class="ativo">Contato</li>
		</ul>
		<fieldset>
			<h2>Cadastrar Escola</h2>
			<h4>Dados da Conta</h4>
			<input id="nome" type="text" name="nome" placeholder="Nome"
				required="required" value="<c:out value='${escola.nome}'/>" /> <input
				id="login" type="text" name="login" placeholder="Login"
				required="required" value="<c:out value='${escola.login}'/>" /> <input
				id="senha" type="password" name="senha" placeholder="Senha"
				required="required" value="<c:out value='${escola.senha}'/>" /> <input
				type="submit" value="Próximo" />
		</fieldset>
	</form>
</body>
</html>