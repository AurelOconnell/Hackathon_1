const start = document.getElementById("start");
start.addEventListener("click",startTimer );

const stop = document.getElementById("stop");
stop.addEventListener("click",pauseTimer );

const departMinutes = 15;
let temps = departMinutes * 60;
let timerId;
let tempsRestant = temps; // Variable pour stocker le temps restant

const timerElement = document.getElementById('timer');

function startTimer(){
    timerId = setInterval(function(){
        let minutes = parseInt(tempsRestant / 60, 10);
        let secondes = parseInt(tempsRestant % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        secondes = secondes < 10 ? "0" + secondes : secondes;

        timerElement.innerText = minutes + ':' + secondes;
        tempsRestant = tempsRestant <= 0 ? 0 : tempsRestant - 1;

    }, 1000)
}

function pauseTimer() {
    clearInterval(timerId);
}

/* Show popup answer */

document.getElementById('submitAnswer').addEventListener('click', function() {
    document.getElementById('modal').style.display = 'block';
  });

  document.getElementById('modal-close').addEventListener('click', function() {
    document.getElementById('modal').style.display = 'none'
  })

