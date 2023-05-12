function updateKata(kata) {
    document.getElementById('kata-instruction').innerHTML = kata;
}

document.getElementById('generator').addEventListener('click', function () {
    fetch('/api/kata/random')
    .then(response => response.json())
    .then (data => updateKata(data.énoncé))
    .catch(() => alert('error'));
});