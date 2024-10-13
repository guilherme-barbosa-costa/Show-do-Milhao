CREATE DATABASE  IF NOT EXISTS `quiz` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `quiz`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: quiz
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,1,'Esportes'),(2,1,'Ciencia e Natureza'),(3,1,'Entretenimento'),(4,1,'Tecnologia'),(5,1,'Geral');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perguntas`
--

DROP TABLE IF EXISTS `perguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) DEFAULT NULL,
  `pergunta` varchar(255) NOT NULL,
  `alternativa1` varchar(255) NOT NULL,
  `alternativa2` varchar(255) NOT NULL,
  `alternativa3` varchar(255) NOT NULL,
  `alternativa4` varchar(255) NOT NULL,
  `correta` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `perguntas_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perguntas`
--

LOCK TABLES `perguntas` WRITE;
/*!40000 ALTER TABLE `perguntas` DISABLE KEYS */;
INSERT INTO `perguntas` VALUES (1,1,'Qual e o time com mais titulos da Copa do Mundo?','Alemanha','Brasil','Italia','Argentina','Brasil'),(2,1,'Em qual ano Michael Jordan se aposentou definitivamente da NBA?','1999','2001','2003','2005','2003'),(3,1,'Quem e conhecido como o \"Pele do futebol feminino\"?','Marta','Mia Hamm','Abby Wambach','Birgit Prinz','Marta'),(4,1,'Qual pais sediou as Olimpiadas de 2008?','Grecia','China','Brasil','Japao','China'),(5,1,'Quem venceu a Copa do Mundo de 2018?','Alemanha','Brasil','Franca','Croacia','Franca'),(6,1,'Qual e o recorde de medalhas olimpicas de Michael Phelps?','18','22','28','30','28'),(7,1,'Qual e o esporte mais popular no mundo?','Basquete','Futebol','Criquete','Tenis','Futebol'),(8,1,'Quem ganhou o Tour de France em 2020?','Tadej Pogacar','Primoz Roglic','Egan Bernal','Chris Froome','Tadej Pogacar'),(9,1,'Qual e o pais de origem do rugby?','Franca','Inglaterra','Nova Zelandia','Australia','Inglaterra'),(10,1,'Qual jogador de tenis tem o maior numero de titulos de Grand Slam?','Roger Federer','Rafael Nadal','Novak Djokovic','Pete Sampras','Novak Djokovic'),(11,2,'Qual e o elemento quimico mais abundante no universo?','Oxigenio','Hidrogenio','Carbono','Helio','Hidrogenio'),(12,2,'Qual e o maior mamifero terrestre?','Elefante africano','Baleia azul','Girafa','Rinoceronte branco','Elefante africano'),(13,2,'Quantos planetas ha no sistema solar?','7','8','9','10','8'),(14,2,'Qual e o orgao mais pesado do corpo humano?','Coracao','Figado','Cerebro','Pulmoes','Figado'),(15,2,'Qual e a unidade basica da vida?','Celula','Atomo','Molecula','Organela','Celula'),(16,2,'Qual gas e essencial para a respiracao?','Oxigenio','Nitrogenio','Dioxido de carbono','Hidrogenio','Oxigenio'),(17,2,'Qual cientista formulou a teoria da relatividade?','Isaac Newton','Galileu Galilei','Albert Einstein','Niels Bohr','Albert Einstein'),(18,2,'Qual e a maior floresta tropical do mundo?','Floresta Amazonica','Floresta do Congo','Floresta da Bacia do Orinoco','Floresta de Daintree','Floresta Amazonica'),(19,2,'Qual planeta e conhecido como o Planeta Vermelho?','Mercurio','Marte','Jupiter','Saturno','Marte'),(20,2,'Qual e a velocidade da luz?','300,000 km/s','150,000 km/s','450,000 km/s','600,000 km/s','300,000 km/s'),(21,3,'Qual filme ganhou o Oscar de Melhor Filme em 2020?','1917','Coringa','Parasita','Era Uma Vez em... Hollywood','Parasita'),(22,3,'Qual serie de TV tem como personagens principais um grupo de amigos vivendo em Nova York?','How I Met Your Mother','Friends','Seinfeld','The Big Bang Theory','Friends'),(23,3,'Quem interpretou Jack Dawson em Titanic?','Leonardo DiCaprio','Brad Pitt','Johnny Depp','Tom Cruise','Leonardo DiCaprio'),(24,3,'Qual e o nome do parque tematico da Disney localizado na California?','Epcot','Disneyland','Magic Kingdom','Animal Kingdom','Disneyland'),(25,3,'Qual cantor e conhecido como o Rei do Pop?','Elvis Presley','Michael Jackson','Prince','Madonna','Michael Jackson'),(26,3,'Qual e o nome do hobbit interpretado por Elijah Wood na trilogia \"O Senhor dos Aneis\"?','Bilbo Baggins','Frodo Baggins','Samwise Gamgee','Peregrin Took','Frodo Baggins'),(27,3,'Qual e o nome do primeiro filme da serie \"Harry Potter\"?','Harry Potter e a Camara Secreta','Harry Potter e a Pedra Filosofal','Harry Potter e o Prisioneiro de Azkaban','Harry Potter e o Calice de Fogo','Harry Potter e a Pedra Filosofal'),(28,3,'Qual e o nome da mae dos dragoes em \"Game of Thrones\"?','Cersei Lannister','Sansa Stark','Daenerys Targaryen','Margaery Tyrell','Daenerys Targaryen'),(29,3,'Qual banda lancou o album \"Abbey Road\"?','The Rolling Stones','The Beatles','Pink Floyd','Led Zeppelin','The Beatles'),(30,3,'Quem dirigiu o filme \"Inception\"?','Steven Spielberg','James Cameron','Christopher Nolan','Martin Scorsese','Christopher Nolan'),(31,4,'Qual empresa desenvolveu o sistema operacional Windows?','Apple','Google','Microsoft','IBM','Microsoft'),(32,4,'Qual foi o primeiro smartphone da Apple?','iPhone 3G','iPhone 4','iPhone 5','iPhone','iPhone'),(33,4,'Quem e conhecido como o pai da computacao?','Alan Turing','Charles Babbage','John von Neumann','Steve Jobs','Alan Turing'),(34,4,'Qual e o nome do sistema operacional de codigo aberto mais popular?','Windows','MacOS','Linux','Android','Linux'),(35,4,'Qual e a linguagem de programacao mais utilizada para desenvolvimento web?','Python','Java','C++','JavaScript','JavaScript'),(36,4,'O que significa a sigla \"HTTP\"?','HyperText Transfer Protocol','HyperText Transmission Protocol','HyperText Translation Protocol','HyperText Transaction Protocol','HyperText Transfer Protocol'),(37,4,'Qual foi a primeira rede social a alcancar um bilhao de usuarios?','Facebook','Twitter','Instagram','LinkedIn','Facebook'),(38,4,'Quem e o fundador da Amazon?','Bill Gates','Elon Musk','Jeff Bezos','Mark Zuckerberg','Jeff Bezos'),(39,4,'O que e um URL?','User Resource Locator','Uniform Resource Locator','Universal Resource Locator','Unified Resource Locator','Uniform Resource Locator'),(40,4,'Qual empresa comprou o YouTube em 2006?','Microsoft','Amazon','Facebook','Google','Google'),(41,5,'Qual e a capital da Australia?','Sydney','Melbourne','Canberra','Brisbane','Canberra'),(42,5,'Em que ano ocorreu a queda do Muro de Berlim?','1985','1987','1989','1991','1989'),(43,5,'Qual e o maior pais do mundo em area?','China','Canada','Russia','Estados Unidos','Russia'),(44,5,'Quem pintou a Mona Lisa?','Vincent van Gogh','Pablo Picasso','Leonardo da Vinci','Claude Monet','Leonardo da Vinci'),(45,5,'Qual e o idioma oficial do Brasil?','Espanhol','Portugues','Ingles','Frances','Portugues'),(46,5,'Qual e o rio mais longo do mundo?','Nilo','Amazonas','Yangtze','Mississippi','Amazonas'),(47,5,'Qual e o maior oceano do mundo?','Oceano Atlantico','Oceano Indico','Oceano Artico','Oceano Pacifico','Oceano Pacifico'),(48,5,'Quem escreveu \"Dom Quixote\"?','William Shakespeare','Miguel de Cervantes','Gabriel Garcia Marquez','J.K. Rowling','Miguel de Cervantes'),(49,5,'Qual e a montanha mais alta do mundo?','Everest','Monte Kilimanjaro','Monte Fuji','Monte Aconcagua','Everest'),(50,5,'Quem foi o primeiro homem a pisar na lua?','Neil Armstrong','Yuri Gagarin','Buzz Aldrin','Alan Shepard','Neil Armstrong');
/*!40000 ALTER TABLE `perguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking`
--

DROP TABLE IF EXISTS `ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `pontuacao` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking`
--

LOCK TABLES `ranking` WRITE;
/*!40000 ALTER TABLE `ranking` DISABLE KEYS */;
INSERT INTO `ranking` VALUES (1,1,'Joao',5),(2,2,'Maria',8),(3,3,'Pedro',9),(4,4,'Ana',7),(5,5,'Luiza',6),(6,6,'1',0);
/*!40000 ALTER TABLE `ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'user1','Alice Silva','1234'),(2,'user2','Bruno Costa','abcd'),(3,'user3','Carlos Santos','4321'),(4,'user4','Diana Lima','dcba'),(5,'user5','Eduardo Ferreira','5678'),(6,'1','1','1');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-12 23:31:08
