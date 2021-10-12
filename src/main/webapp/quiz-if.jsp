<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Quiz If e Else</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/game.css"/>
<style><%@include file="/resources/css/game.css"%></style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>		
</head>
<body>
        <%@ include file="base-quiz.jsp" %>
        <script type="text/javascript">
        const quizData = [{
            question: ' O que faz a função if/ else?',
            a: 'Testa uma condição e executa dois comandos ao mesmo tempo',
            b: 'esta duas condições e executa as duas se forem verdadeiras.',
            c: 'Testa uma condição e executa se a condição do bloco if é falsa caso contrário o bloco else é executado. ',
            d: 'Testa uma condição e executa se a condição do bloco if é verdadeira caso contrário o bloco else é executado. ',
            correct: 'd',
        },
        {
            question: 'Marque a alternativa INCORRETA:',
            a: 'A declaração else pode ser utilizada sem a declaração if.',
            b: 'Posso utilizar a declaração if mais de uma vez no código.',
            c: 'A declaração else só pode ser utilizada com uma ou mais declarações if .',
            d: ' A declaração if pode ser utilizada sem a declaração else.',
            correct: 'a',
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