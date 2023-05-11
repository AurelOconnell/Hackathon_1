const gameArea = document.getElementById('game-area');
const pauseBtn = document.getElementById('pause-btn');
let pauseKata = "Pause";
let continueKata = "Continuer";

pauseBtn.innerHTML = "Pause";


pauseBtn.addEventListener('click', function(){
    
    gameArea.classList.toggle('invisible-game');

    if (pauseBtn.innerHTML === pauseKata)
    pauseBtn.innerHTML = continueKata;
    else
    pauseBtn.innerHTML = pauseKata;
})
