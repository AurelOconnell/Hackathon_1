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

    public function getRandomGif()
    {
        $url = "http://api.giphy.com/v1/gifs/search?q=ryan+gosling&api_key=YOUR_API_KEY&limit=5";
        print_r(json_decode(file_get_contents($url)));
    }
}