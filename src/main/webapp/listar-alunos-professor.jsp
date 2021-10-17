<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Listar Aluno</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/inicio-escola.css"/>
<style><%@include file="/resources/css/inicio-escola.css"%></style>	
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">		
</head>
<body>
	<div class="header"></div>
        <input type="checkbox" class="openSidebarMenu" id="openSidebarMenu">
        <label for="openSidebarMenu" class="sidebarIconToggle">
            <div class="spinner diagonal part-1"></div>
            <div class="spinner horizontal"></div>
            <div class="spinner diagonal part-2"></div>
        </label>

    <div id ="sidebarMenu">
        <ul class="sidebarMenuInner">
            <li>
                <a href="<%=request.getContextPath()%>/listar-alunos-professor" target="_self">
                <i class="fi fi-rr-edit"></i>
                    <span class="links_name">Alunos</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/deslogar" target="_self">
                    <i class="fi-rr-scale"></i>
                    <span class="links_name">Sair</span>
                </a>
            </li>
	        </ul>
</div>

	<div class="container">
<div class="escolha">	
	<h4>Escolha uma Turma: </h4>
	<form id="form" method="post" action="escolher-turma-alunos-professor">
			<div class="select">
			<select id="standard-select" name="id-turma">
				<c:forEach var="turma" items="${turmas}">
					<option value="${turma.id}">
						<c:out value="${turma.nome}"/>
					</option>
				</c:forEach>
			</select>
		<span class="focus"></span>
		</div>
		
		<input type="submit" value="Escolher"/>
	</form>
</div>
		<hr>
		<br>
			<h3>Lista de Alunos</h3>
			<table class="table">
				<thead class="thead-light">
					<tr>
						<th>Nome</th>
						<th>Fases</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="aluno" items="${alunos}">
						<tr>
							<td><c:out value="${aluno.nome}" /></td>
							<td><a href="mostrar-fases-aluno?id=<c:out value='${aluno.id}'/>">Fase</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	</div>
</body>
</html>