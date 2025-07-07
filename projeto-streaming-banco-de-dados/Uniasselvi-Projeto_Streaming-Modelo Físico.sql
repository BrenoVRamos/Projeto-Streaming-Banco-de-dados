-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: streaming_projeto
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `id_album` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `ano_lançamento` int DEFAULT NULL,
  `id_artista` int DEFAULT NULL,
  PRIMARY KEY (`id_album`),
  KEY `id_artista` (`id_artista`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'Amarelo',2022,1),(2,'Water cooler',2021,2),(3,'Viva la vida',2023,3),(4,'aiaiaiai',2024,4),(5,'Sei que sim',2021,5),(6,'A volta de quem não foi',2020,6);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apresentador`
--

DROP TABLE IF EXISTS `apresentador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apresentador` (
  `id_apresentador` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_apresentador`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apresentador`
--

LOCK TABLES `apresentador` WRITE;
/*!40000 ALTER TABLE `apresentador` DISABLE KEYS */;
INSERT INTO `apresentador` VALUES (1,'Breno','Brasil','Música'),(2,'Gusta','panama','RPG'),(3,'igor','argentina','Entrevista');
/*!40000 ALTER TABLE `apresentador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `id_artista` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `país` varchar(100) DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Lilzin','Brasil','MPB'),(2,'Gusta','Espanha','rock'),(3,'Galhas','frança','hip-hop'),(4,'Brunha','estados unidos','reggae'),(5,'Double','alemanha','eletronica'),(6,'farofa','austria','funk');
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodio`
--

DROP TABLE IF EXISTS `episodio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodio` (
  `id_episodio` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `duracao` time DEFAULT NULL,
  `data_publicacao` date DEFAULT NULL,
  `id_podcast` int DEFAULT NULL,
  PRIMARY KEY (`id_episodio`),
  KEY `id_podcast` (`id_podcast`),
  CONSTRAINT `episodio_ibfk_1` FOREIGN KEY (`id_podcast`) REFERENCES `podcast` (`id_podcast`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodio`
--

LOCK TABLES `episodio` WRITE;
/*!40000 ALTER TABLE `episodio` DISABLE KEYS */;
INSERT INTO `episodio` VALUES (1,'episodio 1','00:15:00','2023-12-06',1),(2,'episodio 1','00:18:00','2023-06-07',2),(3,'episodio 1','00:25:00','2023-11-08',3),(4,'episodio 2','00:30:00','2024-01-15',1);
/*!40000 ALTER TABLE `episodio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faixa`
--

DROP TABLE IF EXISTS `faixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faixa` (
  `id_faixa` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `duracao` time DEFAULT NULL,
  `id_album` int DEFAULT NULL,
  PRIMARY KEY (`id_faixa`),
  KEY `id_album` (`id_album`),
  CONSTRAINT `faixa_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faixa`
--

LOCK TABLES `faixa` WRITE;
/*!40000 ALTER TABLE `faixa` DISABLE KEYS */;
INSERT INTO `faixa` VALUES (1,'faixa 1','00:04:15',1),(2,'faixa 1-2','00:03:42',2),(3,'faixa 1-3','00:06:00',3),(4,'faixa 1-4','00:02:26',4),(5,'faixa 1-5','00:05:41',5),(6,'faixa 1-6','00:02:19',6);
/*!40000 ALTER TABLE `faixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faixa_playlist`
--

DROP TABLE IF EXISTS `faixa_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faixa_playlist` (
  `id_faixa` int NOT NULL,
  `id_playlist` int NOT NULL,
  PRIMARY KEY (`id_faixa`,`id_playlist`),
  KEY `id_playlist` (`id_playlist`),
  CONSTRAINT `faixa_playlist_ibfk_1` FOREIGN KEY (`id_faixa`) REFERENCES `faixa` (`id_faixa`),
  CONSTRAINT `faixa_playlist_ibfk_2` FOREIGN KEY (`id_playlist`) REFERENCES `playlist` (`id_playlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faixa_playlist`
--

LOCK TABLES `faixa_playlist` WRITE;
/*!40000 ALTER TABLE `faixa_playlist` DISABLE KEYS */;
INSERT INTO `faixa_playlist` VALUES (1,1),(2,1),(4,1),(3,2),(5,5);
/*!40000 ALTER TABLE `faixa_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `id_playlist` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `descricao` text,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id_playlist`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'Minhas músicas','minhas preferidas pra relaxar',1),(2,'Minhas músicas','minhas preferidas pra descansar',2),(3,'Minhas músicas','minhas preferidas pra roer sapatos',3),(4,'Minhas músicas','minhas preferidas pra dar aula',4),(5,'Minhas músicas','minhas preferidas pra fazer doces',5);
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcast`
--

DROP TABLE IF EXISTS `podcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `podcast` (
  `id_podcast` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `id_apresentador` int DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_podcast`),
  KEY `id_apresentador` (`id_apresentador`),
  CONSTRAINT `podcast_ibfk_1` FOREIGN KEY (`id_apresentador`) REFERENCES `apresentador` (`id_apresentador`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcast`
--

LOCK TABLES `podcast` WRITE;
/*!40000 ALTER TABLE `podcast` DISABLE KEYS */;
INSERT INTO `podcast` VALUES (1,'Ecletcast',1,'Entretenimento'),(2,'Ecletcast2',2,'RPG'),(3,'Flow',3,'entrevistas');
/*!40000 ALTER TABLE `podcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repodrucao_podcast`
--

DROP TABLE IF EXISTS `repodrucao_podcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repodrucao_podcast` (
  `id_usuario` int NOT NULL,
  `id_episodio` int NOT NULL,
  `data_hora` datetime NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_episodio`,`data_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repodrucao_podcast`
--

LOCK TABLES `repodrucao_podcast` WRITE;
/*!40000 ALTER TABLE `repodrucao_podcast` DISABLE KEYS */;
INSERT INTO `repodrucao_podcast` VALUES (1,1,'2024-06-20 08:00:00'),(2,2,'2024-06-20 09:15:00');
/*!40000 ALTER TABLE `repodrucao_podcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reproducao`
--

DROP TABLE IF EXISTS `reproducao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reproducao` (
  `id_reproducao` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_faixa` int DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  PRIMARY KEY (`id_reproducao`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_faixa` (`id_faixa`),
  CONSTRAINT `reproducao_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `reproducao_ibfk_2` FOREIGN KEY (`id_faixa`) REFERENCES `faixa` (`id_faixa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reproducao`
--

LOCK TABLES `reproducao` WRITE;
/*!40000 ALTER TABLE `reproducao` DISABLE KEYS */;
INSERT INTO `reproducao` VALUES (1,1,3,'2024-07-22 10:30:00'),(2,2,1,'2024-06-20 11:45:00'),(3,3,4,'2024-09-15 08:26:00'),(4,4,1,'2024-04-08 10:45:00'),(5,5,3,'2024-06-18 06:50:00');
/*!40000 ALTER TABLE `reproducao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` char(8) NOT NULL,
  `data_cadastro` date DEFAULT NULL,
  `tipo_conta` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Breno Ramos','brenoramos@gmail.com','breno','2021-01-10','premium'),(2,'Bianca Raquel','biancaraquel@gmail.com','bianca','2023-12-08','premium'),(3,'ducke','duckinho@gmail.com','ducke','2022-02-03','premium'),(4,'Bruno Ramos','brunoramos@gmail.com','bruno','2025-03-03','gratuito'),(5,'Neth','neth@gmail.com','neth','2024-12-08','gratuito');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-24  7:28:43
