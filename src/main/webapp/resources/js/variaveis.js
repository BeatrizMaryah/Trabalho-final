const quizData = [{
        question: 'O que é uma variável?',
        a: 'É um conjunto de números e nomes que definimos para armazenar dados de formas simples. ',
        b: ' É um número que definimos para armazenar dados de formas simples.',
        c: 'É uma área de memória, associada a um nome, que pode armazenar valores de um determinado tipo. ',
        d: 'É um conjunto de nomes que definimos para armazenar dados de formas simples.',
        correct: 'c',
    },
    {
        question: 'O valor de uma variável pode ser alterado no andamento do algoritmo?',
        a: 'Não, por isso o nome é variável.',
        b: 'Depende da situação.',
        c: 'Não.',
        d: 'Sim, por isso o nome de variável. ',
        correct: 'd',
    },
    {
        question: 'Assinale os tipos de variáveis do tipo primitivas:',
        a: ' Boolean, byte, char, short, int, long, float e double. ',
        b: 'Strings, Arrays Primitivos e Objetos.',
        c: 'Boolean, byte, char e  Arrays Primitivos.',
        d: 'Arrays Primitivos, float e double. ',
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
          <form action="../mundo.html">
          <button onclick="location.reload()">Próximo</button>
          </form>`;
        }
    }
});