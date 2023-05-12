-- Adminer 4.8.1 MySQL 8.0.32 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `hackathon_1`;
CREATE DATABASE `hackathon_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hackathon_1`;

DROP TABLE IF EXISTS `kata`;
CREATE TABLE `kata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `énoncé` text NOT NULL,
  `correction` text NOT NULL,
  `keyword` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `kata` (`id`, `titre`, `énoncé`, `correction`) VALUES
(1,	'Array to Array',	'/**\r\n * A partir d\'un tableau contenant des chiffres, en créer un second à deux dimensions\r\n * avec autant de case que mentionné dans le premier tableau\r\n * \r\n * [4][2][8][3][5]\r\n * \r\n * ==>\r\n * [4][4][4][4]\r\n * [2][2]\r\n * [8][8][8][8][8][8][8][8]\r\n * [3][3][3]\r\n * [5][5][5][5][5]\r\n * \r\n * puis afficher avec un print_r()\r\n */',	' $values = [4, 2, 8, 3, 5];\r\n\r\n $array =[ \r\n    [4, 4, 4, 4],\r\n    [2, 2],\r\n    [8, 8, 8, 8, 8, 8, 8, 8],\r\n    [3, 3, 3],\r\n    [5, 5, 5, 5, 5]\r\n ];\r\n\r\n print_r($values);'),
(2,	'Ages',	'/**\r\n * Afficher les ages des dates de naissances qui vous sont fournis\r\n */\r\n\r\n$birthDates = [\r\n    [\'year\' => 2010, \'month\' => 8, \'day\' => 12],\r\n    [\'year\' => 1978, \'month\' => 5, \'day\' => 2],\r\n    [\'year\' => 1999, \'month\' => 11, \'day\' => 14],\r\n    [\'year\' => 2008, \'month\' => 6, \'day\' => 23],\r\n    [\'year\' => 1985, \'month\' => 4, \'day\' => 28],\r\n    [\'year\' => 1955, \'month\' => 3, \'day\' => 17],\r\n];',	'foreach($birthDates as $birthDates) {\r\n    $date = new DateTime();\r\n    $date->setDate($birthDate[\'year\'], $birthday[\'month\'], $birthDate[\'day\']);\r\n    $age = ($date->diff(new DateTime()))->y;\r\n\r\n    echo \'la personne née le \' . $birthDate[\'day\'] .\r\n    \'/\' . $birthDate[\'month\'] .\r\n    \'/\' . $birthDate[\'year\'] . \r\n    \' est agée de \' . $age . \' ans\' . PHP_EOL;\r\n}'),
(3,	'Shuffle',	'/**\r\n * 1/ Prenez le tableau suivant et ranger le dans un ordre aléatoire\r\n * \r\n * 2/ Puis en suivant le nouvel ordre du tableau, afficher chaque membre dans une grande\r\n * sous traction, puis l\'effectuer\r\n * \r\n * Ex : \r\n * [9, 3, 5, 12]\r\n * \r\n * => 9 - 3 - 5 - 12 = -11\r\n */',	' $values = [6, 78, 3, 5, 26, 14, 1, 9];\r\n\r\nshuffle($values);\r\n\r\necho \"Nouvel ordre est \" . implode(\", \", $values) . \" \\n\";\r\n \r\n$total = $values[0];\r\n\r\nfor($i = 1; $i < count($values); $i++) {\r\n   $total -= $values[$i];\r\n}\r\n\r\necho implode(\' - \', $values) . \" = \" . $total;'),
(4,	'Square',	'/**\r\n * - Ecrire une fonction square() qui prend un chiffre en entrée et qui renvoi \r\n * ce même chiffre multiplié par lui-même\r\n * \r\n * \r\n * - Ecrire une fonction selectForSquare() qui prend deux chiffres en entrée, \r\n *  appeler la fonction square() sur le plus grand des deux et retourner le resultat\r\n * \r\n * - Ecrire une fonction qui génére deux chiffres aléatoirement et \r\n *  appelle SelectForSquare() avec, puis afficher le resultat.\r\n */',	'function square(int $num) : int {\r\n    return $num * $num;\r\n }\r\n\r\n function selectForSquare(int $num1, int $num2) : int {\r\n    if ($num1 > $num2) return square($num1);\r\n    return square($num2);\r\n }\r\n\r\nfunction randomNumbersGenerate() : void {\r\n    $num3 = rand(0, 100);\r\n    $num4 = rand(0, 100);\r\n    \r\n    echo selectForSquare($num3, $num4);\r\n}\r\n\r\nrandomNumbersGenerate(); '),
(5,	'Array',	'/**\r\n * En php, afficher le tableau suivant : \r\n * \r\n * [X][ ][ ][ ][ ]\r\n * [ ][X][ ][ ][ ]\r\n * [ ][ ][X][ ][ ]\r\n * [ ][ ][ ][X][ ]\r\n * [ ][ ][ ][ ][X]\r\n */',	' echo \'[X][ ][ ][ ][ ]\' . PHP_EOL;\r\n echo \'[ ][X][ ][ ][ ]\' . PHP_EOL;\r\n echo \'[ ][ ][X][ ][ ]\' . PHP_EOL;\r\n echo \'[ ][ ][ ][X][ ]\' . PHP_EOL;\r\n echo \'[ ][ ][ ][ ][X]\' . PHP_EOL;\r\n\r\n /* Toujours utiliser la solution la plus simple*/');

-- 2023-05-11 19:03:58