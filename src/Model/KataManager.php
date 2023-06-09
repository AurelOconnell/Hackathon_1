<?php

namespace App\Model;

class KataManager extends AbstractManager
{
    public const TABLE = 'kata';

    public function selectRandomOne()
    {
        $statement = $this->pdo->query("
        SELECT * 
        FROM " . static::TABLE . "
        ORDER BY RAND() LIMIT 1
        ");

        return $statement->fetch();
    }
}
