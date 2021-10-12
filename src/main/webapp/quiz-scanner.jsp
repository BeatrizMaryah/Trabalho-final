<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Quiz Scanner</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/game.css"/>
<style><%@include file="/resources/css/game.css"%></style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>		
</head>
<body>        
        <%@ include file="base-quiz.jsp" %>
        <script type="text/javascript">
        const quizData = [{
            question: ' O que é um Scanner?',
            a: 'Uma variável para declarar um texto.',
            b: ' São para imprimir algo na tela. ',
            c: 'Para fazer um laço no código.',
            d: 'Usado para anexar documentos no programa.',
            correct: 'b',
        },
        {
            question: 'Como fechar o Scanner no Java?',
            a: ' Com o método "close()"',
            b: ' Com um "return;".',
            c: 'Só com um "{}".',
            d: 'Usando "Default".',
            correct: 'a',
        },
        {
            question: 'Como importar o Scanner?',
            a: 'Só escrever "Scanner" abaixo do "main".',
            b: 'Começar o código com um texto.',
            c: 'Com "import java.util.Scanner;". ',
            d: 'Com "import util.java.Scanner;".',
            correct: 'c',
        },
        {
            question: 'Assinale a alternativa INCORRETA:',
            a: 'import java.util.Scanner; Leitor scanner = new Scanner(System.in);',
            b: 'import java.util.Scanner; Scanner leitor = new Scanner(System.in);',
            c: 'import java.util.Scanner; Scanner scanner = new Scanner(System.in);',
            d: 'import java.util.Scanner; Scanner scanner = new Scanner(System.in);',
            correct: 'd',
        },
    ];

    const quiz = document.getElementById("quiz");
    const answerEls = document.querySelectorAll(".answer");
    const questionEl = document.getElementById("question");
    const a_text = document.getElementById("a_text");
    const b_text = document.getElementById("b_text");
    const c_text = document.getElementById("c_text");
    const d_text = document.getElementById("d_text");
    const submitBtn = document.getElementById("submit");

    let currentQuiz = 0;
    let score = 0;

    loadQuiz();

    function loadQuiz() {
        deselectAnswers();

        const currentQuizData = quizData[currentQuiz];

        questionEl.innerText = currentQuizData.question;
        a_text.innerText = currentQuizData.a;
        b_text.innerText = currentQuizData.b;
        c_text.innerText = currentQuizData.c;
        d_text.innerText = currentQuizData.d;
    }

    function getSelected() {
        let answer = undefined;

        answerEls.forEach((answerEl) => {
            if (answerEl.checked) {
                answer = answerEl.id;
            }
        });
        return answer;
    }

    function deselectAnswers() {
        answerEls.forEach((answerEl) => {
            answerEl.checked = false;
        });
    }

    submitBtn.addEventListener('click', () => {
        const answer = getSelected();

        if (answer) {
            if (answer === quizData[currentQuiz].correct) {
                score++;
            }

            currentQuiz++;
            if (currentQuiz < quizData.length) {
                loadQuiz();
            } else {
                quiz.innerHTML = `
              <h2>Você acertou ${score}/${quizData.length} questões. </h2>
              <form action="fases">
              <button onclick="location.reload()">Próximo</button>
              </form>`;
            }
        }
    });</script>
</body>
</html>