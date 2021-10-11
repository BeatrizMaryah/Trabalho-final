<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Quiz While</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/game.css"/>
<style><%@include file="/resources/css/game.css"%></style>	
</head>
<body>
        <%@ include file="base-quiz.jsp" %>
        <script type="text/javascript">const quizData = [{
            question: 'Qual seria a condição para o while parar a execução?',
            a: 'Quando na primeira verificação da condição, ela for verdadeira. Neste caso, o programa simplesmente irá “pular” para a execução da próxima instrução após o laço.',
            b: 'Quando na primeira verificação da condição, ela for falsa. Neste caso, o programa simplesmente irá parar a execução do programa.',
            c: 'Quando na primeira verificação da condição, ela for verdadeira. Neste caso, o programa simplesmente irá parar a execução do programa.',
            d: 'Quando na primeira verificação da condição, ela for falsa. Neste caso, o programa simplesmente irá “pular” para a execução da próxima instrução após o laço. ',
            correct: 'd',
        },
        {
            question: 'Para que usamos a estrutura de controle while?',
            a: 'Usada quando precisamos executar diversas vezes um mesmo bloco de código.',
            b: 'Usada quando sabemos quantas vezes um determinado bloco de código precisa ser repetido.',
            c: 'Usada quando não sabemos quantas vezes um determinado bloco de código precisa ser repetido.',
            d: 'Usada sempre.',
            correct: 'c',
        },
        {

            question: 'Qual seria a condição para o while continuar a execução?',
            a: 'Enquanto ela for falsa, está estrutura continuará sendo executada.',
            b: 'Enquanto ela for verdadeira, está estrutura continuará sendo executada.',
            c: 'Enquanto ela for verdadeira, a estrutura finaliza a execução.',
            d: 'Enquanto ela for falsa, a estrutura finaliza a execução.',
            correct: 'b',
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