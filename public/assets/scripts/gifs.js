gifGen = document.getElementById('gif-generator');

gifGen.addEventListener('click', function () {

    apiKey = 'Bo7Vgu7CaPL9cCzq1S7b4qBVLa4C0QtN';
    url = "http://api.giphy.com/v1/gifs/search?q=" + 'numbers' + "&api_key=" + apiKey + "&limit=1";

    fetch(url)
    .then(response => response.json())
    .then (data => console.log(data[0].url))
    .catch(() => alert('error'));
});