<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Cadastrar Turma</title>
</head>
<body>

<form id="form" method="post" action="inserir-turma">

	<a href="<%=request.getContextPath()%>/inicio-escola" target="_self">Voltar</a>
	
		<fieldset>
			<h2>Cadastrar Turma</h2>
			<input id="nome" type="text" name="nome" placeholder="Nome"
				required="required" autocomplete="off" value="<c:out value='${turma.nome}'/>" />
				<input type="submit" value="Cadastrar"/>
		</fieldset>
	</form>

</body>
</html>