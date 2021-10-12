<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Quiz Switch Case</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/game.css"/>
<style><%@include file="/resources/css/game.css"%></style>	
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>     
        <%@ include file="base-quiz.jsp" %>
        <script type="text/javascript">
        const quizData = [{
            question: 'O que faz a estrutura de decisão switch/case ?',
            a: 'A estrutura switch compara o valor de cada caso com o da variável sequencialmente, e sempre que encontra um valor correspondente, executa o código associado ao caso. ',
            b: 'O condicional switch testa o valor contido em uma variável e o executa todos os valores fornecidos em cada caso, representados pela palavra reservada case.',
            c: 'O condicional case testa o valor contido em uma variável e o compara com os valores fornecidos em cada caso, representados pela palavra reservada switch. ',
            d: 'O condicional switch recebe o valor de uma variável que é impressa através da palavra reservada case.',
            correct: 'a',
        },
        {
            question: 'Assinale a alternativa INCORRETA:',
            a: 'Switch só pode ser usado com o operador lógico de igualdade.',
            b: 'O case sempre deve ter um valor default.',
            c: 'O comando break, quando executado, encerra a execução da estrutura onde ele se encontra.',
            d: 'O valor do case deve ser do mesmo tipo da expressão switch.',
            correct: 'b',
        },
        {

            question: 'Para que serve o comando break?',
            a: 'Ele interrompe a execução do programa. Isso ocorre caso a condição imposta tenha sido atendida.',
            b: 'Quando usado em um laço de repetição, ele continua a execução do código. ',
            c: 'Quando usado em um laço de repetição, ele interrompe a execução do código, continuando a execução do programa na próxima linha após o laço. Isso ocorre caso a condição imposta tenha sido atendida. ',
            d: 'Não serva para nada, não altera nada na execução do código.',
            correct: 'c',
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