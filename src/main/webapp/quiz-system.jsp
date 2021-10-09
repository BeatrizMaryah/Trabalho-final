<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Quiz System</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/game.css"/>	
<style><%@include file="/resources/css/game.css"%></style>	
</head>
<body>
        <%@ include file="base-quiz.jsp" %>
        <script type="text/javascript">const quizData = [{
            question: 'O System.out.print(); é usado para?',
            a: 'Para declarar um variável.',
            b: 'Para mostrar algo na tela.',
            c: 'Adicionar um comando.',
            d: 'Finalizar um programa.',
            correct: 'b',
        },
        {
            question: 'Assinale a alternativa CORRETA:',
            a: 'System.out.print() é a saída padrão, que permite exibir as Strings no console (terminal) de comando quando o aplicativo de Java é executado. ',
            b: 'System.out.print()  é uma classe de entrada responsável por digitalizar imagens.',
            c: 'System.out.print() especifica o formato da entrada do tipo de valor, que deve ser o mesmo tipo de dados apontado na instrução.',
            d: 'System.out.print()  insere uma nova linha, deixando o marcador posicionado na linha abaixo.',
            correct: 'a',
        },
        {
            question: 'Assinale a alternativa INCORRETA:',
            a: 'System.out.print();',
            b: 'System.out.println();',
            c: 'System.out.printf();',
            d: 'System.out.printl();',
            correct: 'd',
        },
        {
            question: 'Qual a diferença entre System.out.print(); e System.out.println();',
            a: 'System.out.print é uma string de formato que pode consistir em texto fixo e System.out.println  insere uma nova linha, deixando o marcador posicionado na linha abaixo. ',
            b: 'System.out.print especifica o formato da entrada do tipo de valor e System.out.println mantém o cursor na mesma linha.  ',
            c: 'System.out.println insere uma nova linha e System.out.print  mantém o cursor na mesma linha. ',
            d: 'System.out.println é a saída padrão, que permite exibir as Strings no console e System.out.print é uma classe de entrada responsável por digitalizar imagens.',
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
              <form action="../mundo.html">
              <button onclick="location.reload()">Próximo</button>
              </form>`;
            }
        }
    });</script>	
</body>
</html>