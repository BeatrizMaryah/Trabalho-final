<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Notas do Aluno</title>
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
		<h3><c:out value="${aluno.nome}" /></h3>
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th>Nome</th>
					<th>Ordem</th>
					<th>Nota</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="fase" items="${fases}">
					<tr>
						<td><c:out value="${fase.nome}" /></td>
						<td><c:out value="${fase.ordem}" /></td>
						<td><c:out value="${fase.nota}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>