<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Quiz For</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/game.css"/>
<style><%@include file="/resources/css/game.css"%></style>	
</head>
<body>
        <%@ include file="base-quiz.jsp" %>
        <script type="text/javascript">const quizData = [{
            question: 'Qual a função da estrutura de repetição for?',
            a: 'Utilizamos quando precisamos executar diversas vezes um mesmo bloco de código.',
            b: 'Utilizamos quando precisamos executar o código.',
            c: 'Utilizamos quando precisamos executar uma vez um mesmo bloco de código.',
            d: 'Utilizamos sempre.',
            correct: 'a',
        },
        {
            question: 'A repetição for contem três partes importantes, assinale a alternativa que explica CORRETAMENTE essas partes:',
            a: 'Parte 1: onde nós declaramos uma variável; Parte 2: onde nós colocamos uma condição para que continue ou seja terminado; Parte 3: onde nós deixamos o código funcionar.',
            b: 'Parte 1: onde nós declaramos uma variável; Parte 2: onde nós deixamos o programa funcionar; Parte 3: onde nós incrementamos a nossa variável.',
            c: 'Parte 1: onde nós declaramos uma variável; Parte 2: onde nós colocamos uma condição para que continue ou seja terminado; Parte 3: onde nós incrementamos a nossa variável.',
            d: 'Parte 1: onde nós deixamos o código escolher uma variável; Parte 2: onde nós colocamos uma condição para que continue ou seja terminado; Parte 3: onde nós incrementamos a nossa variável.',
            correct: 'c',
        },
        {

            question: 'Qual a diferença entre um operador de incremento e um operador de decremento?',
            a: 'Incremento: incrementa três valores em um. Decremento diminui um valor em um.',
            b: 'Incremento: diminui um valor em um. Decremento: incrementa um valor em um.',
            c: 'Incremento: incrementa um valor em um. Decremento: diminui quatro valores em um.',
            d: 'Incremento: incrementa um valor em um. Decremento: diminui um valor em um.',
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