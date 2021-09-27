<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Cadastrar Aluno</title>
<link rel="stylesheet" href="../css/style.css" />
<link
	href="https://fonts.googleapis.com/css?family=Questrial&display=swap"
	rel="stylesheet">
</head>
<body>
<form id="form" method="post" action="inserir-aluno">

	<ul id="progresso">

		<li class="ativo"><a href="<%=request.getContextPath()%>/index" target="_self">Voltar</a></li>
		
	</ul>

	<fieldset>
		<h2>Cadastro do Aluno</h2>
		<h4>Insira os dados do aluno</h4>

		<input id="nome" type="text" name="nome" placeholder="Nome"
			required="required" value="<c:out value='${aluno.nome}'/>" /> <input
			id="cpf" type="number" name="cpf" placeholder="CPF"
			required="required" value="<c:out value='${aluno.cpf}'/>" /> <input
			id="login" type="text" name="login" placeholder="Login"
			required="required" value="<c:out value='${aluno.login}'/>" /> <input
			id="senha" type="password" name="senha" placeholder="Senha"
			required="required" value="<c:out value='${aluno.senha}'/>" /> <input
			type="submit" value="Próximo" />
	</fieldset>

</form>
</body>
</html>