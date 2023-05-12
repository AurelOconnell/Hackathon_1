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

    public function getRandomKata(): string
    {
        $kataManager = new KataManager();
        $kata = $kataManager->selectRandomOne();
        return json_encode($kata);
    }
}