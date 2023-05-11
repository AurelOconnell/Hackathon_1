<?php

namespace App\Controller;

use App\Model\KataManager;

class AjaxController extends AbstractController
{
    public function __construct()
    {
        parent::__construct();

        header('Content-Type: application/json');
    }

    public function getRandomGif($keyword, $id)
    {
        $katamanager = new KataManager;
        $kata = $katamanager->selectOneById($id);

        $apiKey = 'Bo7Vgu7CaPL9cCzq1S7b4qBVLa4C0QtN';
        $url = "http://api.giphy.com/v1/gifs/search?q=". $keyword ."&api_key=" . $apiKey . "&limit=1";
        

        return json_decode(file_get_contents($url));
    }
}