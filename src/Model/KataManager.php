<?php

namespace App\Model;

use PDO;

class KataManager extends AbstractManager
{
    public const TABLE = 'kata';

     /**
     * Get kata from database by ID.
     */
    public function selectOneById(int $kata): array|false
    {
        // prepared request
        $statement = $this->pdo->prepare("SELECT id FROM " . static::TABLE . " WHERE `id` = :id");
        $statement->bindValue('kata', $kata, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch();
    }
}
