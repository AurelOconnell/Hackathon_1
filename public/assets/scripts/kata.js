function updateKata(enonce, correction, titre) {
    document.getElementById('kata-instruction').innerHTML = enonce;
    document.getElementById('kata-answer').innerHTML = correction;
    document.getElementById('kata-title').innerHTML = '"' + titre + '"';
}

document.getElementById('generator').addEventListener('click', function () {
    fetch('/api/kata/random')
    .then(response => response.json())
    .then (data => updateKata(data.énoncé, data.correction, data.titre))
    .catch(() => alert('error'));
});
