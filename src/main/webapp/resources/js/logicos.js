const quizData = [{
        question: 'Assinale a alternativa que corresponde ao significado CORRETO de cada operação lógica:',
        a: '&= E, ||= OU, != Diferente.',
        b: '!= OU, ||= Negação, &= E.',
        c: '&= E, ||= OU, != Negação.',
        d: 'Nenhuma das alternativas.',
        correct: 'c',
    },
    {
        question: 'Para que resultado de A&&B seja verdadeiro, A e B precisam ser:',
        a: 'A=verdadeiro e B=falso.',
        b: 'A=falso e B=verdadeiro.',
        c: 'A=falso e B=falso.',
        d: 'A=verdadeiro e B=verdadeiro. ',
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
          <form action="../mundo.html">
          <button onclick="location.reload()">Próximo</button>
          </form>`;
        }
    }
});