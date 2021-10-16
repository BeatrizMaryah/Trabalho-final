<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Notas</title>
 <link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/fases.css"/>
<style><%@include file="/resources/css/fases.css"%></style>		
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<nav role="navigation">
  <div id="menuToggle">
    <input type="checkbox" />
    	<span></span>
   	 	<span></span>
    	<span></span>
    <ul id="menu">
      <a href="<%=request.getContextPath()%>/fases" target="_self"><li>Fases</li></a>
      <a href="<%=request.getContextPath()%>/mostrar-notas-aluno" target="_self"><li>Notas</li></a>
      <a href="<%=request.getContextPath()%>/deslogar" target="_self"><li>Sair</li></a>
    </ul>
  </div>
</nav>

<div class="container">
		<h3>Lista de Fases</h3>
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