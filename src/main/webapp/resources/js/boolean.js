const quizData = [{
            question: 'Boolean é uma ciência da computação...:',
            a: 'Tipo referencia e lógico.',
            b: 'De valor numérico.',
            c: 'Lógica e tipo primitivo.',
            d: 'Baseada em condição.',
            correct: 'c',
        },
        {
            question: 'O que são variáveis do tipo booleanas?',
            a: 'Variável do tipo referencia, contem um endereço de objeto.',
            b: 'Contém 2 valores que retornam verdadeiro ou falso.',
            c: 'Número Racional.',
            d: 'Que retorna um número.',
            correct: 'b',
        },
        {

            question: 'Assinale a alternativa CORRETA de como deve ser usada a variável boolean: ',
            a: 'Boolean isPrimo=true;',
            b: 'Boolean isPrimo=true{}',
            c: 'Boolean isPrimo=verdadeiro;',
            d: 'Boolean isPrimo=falso;',
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
    });