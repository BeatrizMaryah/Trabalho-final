<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>Editar Aluno</title>
<link rel="stylesheet" href="../css/style.css" />
<link
	href="https://fonts.googleapis.com/css?family=Questrial&display=swap"
	rel="stylesheet">
</head>
<body>
<form id="form" method="post" action="atualizar-aluno">

	<fieldset>
		<h2>Editar Aluno</h2>

		<input type="hidden" name="id" value="<c:out value='${aluno.id}' />" />
		
		<input id="nome" type="text" name="nome" placeholder="Nome"
			required="required" value="<c:out value='${aluno.nome}'/>" /> <input
			id="cpf" type="number" name="cpf" placeholder="CPF"
			required="required" value="<c:out value='${aluno.cpf}'/>" /> <input
			id="login" type="text" name="login" placeholder="Login"
			required="required" value="<c:out value='${aluno.login}'/>" /> <input
			id="senha" type="password" name="senha" placeholder="Senha"
			required="required" value="<c:out value='${aluno.senha}'/>" /> <input
			type="submit" value="Salvar" />
	</fieldset>

</form>
</body>