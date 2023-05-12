const gameArea = document.getElementById('game-area');
const pauseBtn = document.getElementById('pause-btn');
const showAnswer = document.getElementById('show-answer');
const dino = document.getElementById('dino');
const answer = document.getElementById('answer');
const submit = document.getElementById('submitAnswer');
let pauseKata = "Pause";
let continueKata = "Continuer";

pauseBtn.innerHTML = "Pause";
answer.classList.add('d-none');
dino.classList.add('d-none');


pauseBtn.addEventListener('click', function(){
    
    gameArea.classList.toggle('invisible-game');
    dino.classList.toggle('d-none');
    
    if (pauseBtn.innerHTML === pauseKata)
    pauseBtn.innerHTML = continueKata;
    else
    pauseBtn.innerHTML = pauseKata;
})

showAnswer.addEventListener('click', function(){
    gameArea.classList.toggle('invisible-game');
    pauseBtn.classList.add('d-none');
    submit.classList.add('d-none');
    answer.classList.toggle('d-none');
    showAnswer.innerHTML = 'Génère un nouveau kata';
    showAnswer.id = 'new-generator';
})

function updateKata(enonce, correction) {
    document.getElementById('kata-instruction').innerHTML = enonce;
    document.getElementById('kata-answer').innerHTML = correction;
}


document.getElementById('new-generator').addEventListener('click', function () {
    fetch('/api/kata/random')
    .then(response => response.json())
    .then (data => updateKata(data.énoncé, data.correction))
    .catch(() => alert('error'));
});