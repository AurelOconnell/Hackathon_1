<?php

namespace App\Controller;

use App\Model\KataManager;

class KataController extends AbstractController
{
    /**
     * Show Kata
     */
    public function show(int $id): string
    {
        $kataManager = new KataManager();
        $kata = $kataManager->selectOneById($id);

        return $this->twig->render('Home/index.html.twig', ['kata' => $kata]);
    }
}
