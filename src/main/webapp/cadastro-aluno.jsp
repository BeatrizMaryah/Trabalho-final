<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>
		<c:if test="${aluno != null}">Editar aluno</c:if> 
		<c:if test="${aluno == null}">Cadastrar aluno</c:if>
</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/cadastros.css" />
<style><%@include file="/resources/css/cadastros.css"%></style>
<script><%@include file="/resources/js/metodos.js"%></script>
<link
	href="https://fonts.googleapis.com/css?family=Questrial&display=swap"
	rel="stylesheet">
</head>
<body>
		<c:if test="${aluno != null}">
			<form id="form" action="atualizar-aluno" method="post">
		</c:if>
		<c:if test="${aluno == null}">
			<form id="form" action="inserir-aluno" method="post">
		</c:if>
		
	<fieldset>
		<h2>
			<c:if test="${aluno != null}">Editar aluno</c:if>
			<c:if test="${aluno == null}">Cadastrar aluno</c:if>
		</h2>
		<h4>Insira os dados do aluno</h4>
		
		<c:if test="${aluno != null}">
			<input type="hidden" name="id" value="<c:out value="${aluno.id}"/>" />
		</c:if>

			<input id="nome" type="text" name="nome" placeholder="Nome"
				required="required" autocomplete="off"
				value="<c:out value='${aluno.nome}'/>" /> <input id="login"
				type="text" name="login" placeholder="Login" required="required"
				autocomplete="off" value="<c:out value='${aluno.login}'/>" /> <input
				id="senha" type="password" name="senha" placeholder="Senha"
				required="required" autocomplete="off"
				value="<c:out value='${aluno.senha}'/>" /> <input id="cpf"
				type="number" name="cpf" placeholder="CPF" required="required"
				autocomplete="off" value="<c:out value='${aluno.cpf}'/>" /> 
				
				<input id="telefone" type="number" name="telefone"
				placeholder="Telefone Responsável(opcional)" autocomplete="off"
				value="<c:out value='${contato.telefone}'/>" /> <input id="celular"
				type="number" name="celular" placeholder="Celular(opcional)"
				autocomplete="off" value="<c:out value='${contato.celular}'/>" />
				<input id="email" type="email" name="email" placeholder="E-mail"
				required="required" autocomplete="off" value="<c:out value='${contato.email}'/>" />	
			
			<label>Turma:</label>
			<select class="form-control" id="id-turma" name="id-turma">
				<c:forEach var="turma" items="${turmas}">
					<option value="${turma.id}">
						<c:out value="${turma.nome}"/>
					</option>
				</c:forEach>
			</select>
			
				<input type="submit" value="Cadastrar" />
				
	</fieldset>
</form>
</body>
</html>