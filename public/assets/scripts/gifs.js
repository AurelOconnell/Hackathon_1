const GIPHY_API_KEY = 'Bo7Vgu7CaPL9cCzq1S7b4qBVLa4C0QtN';
const giphy = new GiphyJSAPI(GIPHY_API_KEY);

giphy.search('cat').then((response) => {
    const gifUrl = response.data[0].images.original.url;
    const gifImg = document.createElement('img');
    gifImg.setAttribute('src', gifUrl);
    document.getElementById('giphy-container').appendChild(gifImg);
  });