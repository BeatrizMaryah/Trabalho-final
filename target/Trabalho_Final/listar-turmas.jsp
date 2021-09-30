<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Turmas</title>
</head>
<body>
	<div>
		<h3>Lista de Turmas</h3>
		 <div class="modal-container">
        <input id="modal-toggle" type="checkbox">
        <label class="modal-btn" for="modal-toggle" id="robo"><img src="imagens/robo.png"></label>
        <label class="modal-backdrop" for="modal-toggle"></label>
        <div class="modal-content">
            <label class="modal-close" for="modal-toggle">X</label>
            <h2>Como jogar</h2>
            <br />
            <br>Olá!<br> Para jogar é só seguir os passos abaixo:<br><br> 1º - Escolha uma fase.<br> 2º - Leia toda a teoria e vá passando para o próximo slide, não se preocupe se não entender na primeira vez que ler, você pode voltar para o slide anterior.<br>            3º - Clique no botão JOGAR!<br> 4º - Leia a pergunta e escolha uma das quatro alternativas. Você só poderá ir pra próxima questão se tiver escolhido uma das alternativas.<br> 5º - O resultado irá aparecer depois de resolver todas as questões.<br><br>            Viu como é fácil!<br> Bom jogo!
            </p>
            <label class="modal-content-btn" for="modal-toggle">OK</label>
       		 </div>
   		 </div>
		<hr>
		<br>
		<table>
			<thead>
				<tr>
					<th>Nome</th>
					<th>Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="turma" items="${turmas}">
					<tr>
						<td><c:out value="${turma.nome}" /></td>
						<td><a href="editar-turma?id=<c:out value='${turma.id}'/>">Editar</a>
							<a href="deletar-turma?id=<c:out value='${turma.id}'/>">Deletar</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>