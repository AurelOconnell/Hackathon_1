CREATE DATABASE  IF NOT EXISTS `hackathon_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hackathon_1`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: hackathon_1
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kata`
--

DROP TABLE IF EXISTS `kata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `énoncé` text NOT NULL,
  `correction` text NOT NULL,
  `gif` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kata`
--

LOCK TABLES `kata` WRITE;
/*!40000 ALTER TABLE `kata` DISABLE KEYS */;
INSERT INTO `kata` VALUES (1,'Array to Array','/**\r\n * A partir d\'un tableau contenant des chiffres, en créer un second à deux dimensions\r\n * avec autant de case que mentionné dans le premier tableau\r\n * \r\n * [4][2][8][3][5]\r\n * \r\n * ==>\r\n * [4][4][4][4]\r\n * [2][2]\r\n * [8][8][8][8][8][8][8][8]\r\n * [3][3][3]\r\n * [5][5][5][5][5]\r\n * \r\n * puis afficher avec un print_r()\r\n */',' $values = [4, 2, 8, 3, 5];\r\n\r\n $array =[ \r\n    [4, 4, 4, 4],\r\n    [2, 2],\r\n    [8, 8, 8, 8, 8, 8, 8, 8],\r\n    [3, 3, 3],\r\n    [5, 5, 5, 5, 5]\r\n ];\r\n\r\n print_r($values);','https://media.giphy.com/media/RbDKaczqWovIugyJmW/giphy.gif'),(2,'Ages','/**\r\n * Afficher les ages des dates de naissances qui vous sont fournis\r\n */\r\n\r\n$birthDates = [\r\n    [\'year\' => 2010, \'month\' => 8, \'day\' => 12],\r\n    [\'year\' => 1978, \'month\' => 5, \'day\' => 2],\r\n    [\'year\' => 1999, \'month\' => 11, \'day\' => 14],\r\n    [\'year\' => 2008, \'month\' => 6, \'day\' => 23],\r\n    [\'year\' => 1985, \'month\' => 4, \'day\' => 28],\r\n    [\'year\' => 1955, \'month\' => 3, \'day\' => 17],\r\n];','foreach($birthDates as $birthDates) {\r\n    $date = new DateTime();\r\n    $date->setDate($birthDate[\'year\'], $birthday[\'month\'], $birthDate[\'day\']);\r\n    $age = ($date->diff(new DateTime()))->y;\r\n\r\n    echo \'la personne née le \' . $birthDate[\'day\'] .\r\n    \'/\' . $birthDate[\'month\'] .\r\n    \'/\' . $birthDate[\'year\'] . \r\n    \' est agée de \' . $age . \' ans\' . PHP_EOL;\r\n}','https://media.giphy.com/media/Ws6T5PN7wHv3cY8xy8/giphy.gif'),(3,'Shuffle','/**\r\n * 1/ Prenez le tableau suivant et ranger le dans un ordre aléatoire\r\n * \r\n * 2/ Puis en suivant le nouvel ordre du tableau, afficher chaque membre dans une grande\r\n * sous traction, puis l\'effectuer\r\n * \r\n * Ex : \r\n * [9, 3, 5, 12]\r\n * \r\n * => 9 - 3 - 5 - 12 = -11\r\n */',' $values = [6, 78, 3, 5, 26, 14, 1, 9];\r\n\r\nshuffle($values);\r\n\r\necho \"Nouvel ordre est \" . implode(\", \", $values) . \" \\n\";\r\n \r\n$total = $values[0];\r\n\r\nfor($i = 1; $i < count($values); $i++) {\r\n   $total -= $values[$i];\r\n}\r\n\r\necho implode(\' - \', $values) . \" = \" . $total;','https://media.giphy.com/media/Dh5q0sShxgp13DwrvG/giphy-downsized.gif'),(4,'Square','/**\r\n * - Ecrire une fonction square() qui prend un chiffre en entrée et qui renvoi \r\n * ce même chiffre multiplié par lui-même\r\n * \r\n * \r\n * - Ecrire une fonction selectForSquare() qui prend deux chiffres en entrée, \r\n *  appeler la fonction square() sur le plus grand des deux et retourner le resultat\r\n * \r\n * - Ecrire une fonction qui génére deux chiffres aléatoirement et \r\n *  appelle SelectForSquare() avec, puis afficher le resultat.\r\n */','function square(int $num) : int {\r\n    return $num * $num;\r\n }\r\n\r\n function selectForSquare(int $num1, int $num2) : int {\r\n    if ($num1 > $num2) return square($num1);\r\n    return square($num2);\r\n }\r\n\r\nfunction randomNumbersGenerate() : void {\r\n    $num3 = rand(0, 100);\r\n    $num4 = rand(0, 100);\r\n    \r\n    echo selectForSquare($num3, $num4);\r\n}\r\n\r\nrandomNumbersGenerate(); ','https://media.giphy.com/media/bAQH7WXKqtIBrPs7sR/giphy.gif'),(5,'Array','/**\r\n * En php, afficher le tableau suivant : \r\n * \r\n * [X][ ][ ][ ][ ]\r\n * [ ][X][ ][ ][ ]\r\n * [ ][ ][X][ ][ ]\r\n * [ ][ ][ ][X][ ]\r\n * [ ][ ][ ][ ][X]\r\n */',' echo \'[X][ ][ ][ ][ ]\' . PHP_EOL;\r\n echo \'[ ][X][ ][ ][ ]\' . PHP_EOL;\r\n echo \'[ ][ ][X][ ][ ]\' . PHP_EOL;\r\n echo \'[ ][ ][ ][X][ ]\' . PHP_EOL;\r\n echo \'[ ][ ][ ][ ][X]\' . PHP_EOL;\r\n\r\n /* Toujours utiliser la solution la plus simple*/','https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExZjk4MjVmYWJhNDA0OTg2NmY0N2Q3MDZkODQyMjgzZWU2N2I4ZTc1MiZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PWc/349qKnoIBHK1i/giphy.gif');
/*!40000 ALTER TABLE `kata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-12 13:50:04
