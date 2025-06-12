-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `book_store`
--

DROP TABLE IF EXISTS `book_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_store` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL,
  `price` double NOT NULL,
  `published_date` date DEFAULT NULL,
  `stock` int NOT NULL,
  `volume` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_store`
--

LOCK TABLES `book_store` WRITE;
/*!40000 ALTER TABLE `book_store` DISABLE KEYS */;
INSERT INTO `book_store` VALUES (15,'Dr. Leo Grant','Biology Basics','Science','A beginner-friendly guide that simplifies core biological concepts. Covers cell biology, genetics, and ecology with clear explanations for easy understanding.',1,425.5,'2019-06-19',100,1),(16,'Rita Maxwell','Digital World','Technology','Explore how digital technology influences our daily lives, from communication to smart devices. This book offers an engaging overview of the digital era and its impact on modern society.',1,199,'2022-10-10',50,2),(17,'Nina Blake','The Art of Calm','Non-Fiction','Discover the secrets to maintaining inner peace amidst life\'s chaos. This book guides you through practical mindfulness techniques and calming rituals. Perfect for anyone seeking balance, clarity, and a more centered life',1,350,'2023-01-05',40,1),(18,'Tom Brooks','Einstein: The Genius','Biography','Dive into the remarkable life of Albert Einstein, the man behind the theory of relativity. From his early curiosity to groundbreaking scientific achievements, this biography captures it all.',1,560,'2020-08-18',10,1),(19,'Maya Stone','Coding with JavaScript','Technology','A beginner-friendly guide to mastering JavaScript for web development. Learn the basics of coding and build interactive websites from scratch.',1,450,'2021-12-15',45,1),(20,'Liam Hayes','Stars Above Us','Fiction','A gripping science fiction adventure spanning multiple universes. Follow brave explorers as they uncover secrets beyond the stars.',1,275,'2022-05-22',50,4),(21,'Dr.Amy Rivers','The Plant Cell','Science','An in-depth exploration of plant cell structure and functions. Perfect for students and enthusiasts of plant biology.',1,399,'2020-09-01',30,1),(22,'Kiran Patel','AI and Future','Technology','Explore how Artificial Intelligence is transforming various modern industries. From automation to decision-making, this book reveals the future shaped by AI.',1,380,'2024-02-11',50,2),(23,'Sophie Ray','Living Minimal','Non-Fiction','Simplify your life and home with the principles of minimalism. This book offers practical tips to declutter, prioritize, and find peace in simplicity.',1,320,'2023-07-30',80,1),(24,'Neil Waters','The Ocean\'s Voice','Biography','Story of a marine biologist’s adventures beneath the waves. Discover breathtaking marine life, thrilling research missions, and the quest to protect our oceans.',1,260,'2018-04-12',75,1),(25,'Aria Moon','Galactic Drift','','A gripping fictional saga that follows daring space travelers venturing into unknown galaxies. Packed with thrilling adventures, cosmic mysteries, and the enduring spirit of exploration beyond the stars.',1,315,'2022-11-03',90,2),(26,'Dr.Sam Lee','Human Anatomy','Science',' This detailed guide is essential for students and professionals seeking an in-depth understanding of anatomical systems and their practical applications.',1,499,'2019-01-10',35,3),(27,'Isha verma','Blockchain Basics','Technology','An insightful introduction to blockchain technology, explaining its core principles and mechanisms. This book explores various real-world use cases, illustrating how blockchain is transforming industries from finance to supply chain management.',1,390,'2021-05-28',60,1),(28,'Anjali Rao','The Truth Within','Non-Fiction','A heartfelt guide to personal growth through deep introspection and self-awareness. Anjali Rao invites readers on a transformative journey to discover their inner strength and embrace authentic living.',1,335,'2020-06-14',20,1),(29,'A.P.J. Abdul Kalam','Wings of fire','Biography','The inspiring autobiography of A.P.J. Abdul Kalam, India\'s renowned Missile Man, chronicling his journey from a small-town boy to a leading scientist. This memoir reveals his dedication, vision, and contributions to India\'s space and defense programs.',1,299,'1999-07-15',40,1),(30,'John Maverick','Cosmic Tales','Fiction','A thrilling collection of stories exploring distant galaxies and the mysteries of time travel. John Maverick weaves imaginative adventures that challenge the boundaries of space, time, and reality.',1,340,'2023-09-21',60,5),(31,'Dr.Tina Cooper','DNA and Us','Science','An insightful exploration of how genetics influence who we are, from physical traits to inherited conditions. Dr. Tina Cooper explains the science behind DNA and its profound impact on our identity and health.',1,470,'2021-04-19',65,2),(32,'Rahul Shah','Tech for Teens','Technology','A beginner-friendly tech guide designed to spark curiosity in young minds. Rahul Shah breaks down complex technology concepts into simple, engaging lessons perfect for teens exploring the digital world.',1,210,'2023-03-08',40,1),(33,'Grace mills','Daily Habits','Non-Fiction','A practical guide to building positive habits that enhance productivity, well-being, and personal growth. Grace Mills offers simple, actionable strategies to transform your daily routine and lead a more fulfilling life.',1,280,'2022-10-20',50,1),(34,'Walter Isaacson','Steve jobs: A Life','Biography','A compelling biography of Apple co-founder Steve Jobs, capturing his genius, vision, and complex personality. Walter Isaacson presents an in-depth portrait of the man who revolutionized technology and design in the modern world.',1,520,'2011-10-24',20,1);
/*!40000 ALTER TABLE `book_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKlqjrcobrh9jc8wpcar64q1bfh` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL),(2,'shine123','shinesha'),(3,'maria3','Maria'),(4,'m3','sh'),(5,'A3','anu'),(6,'A','anuww'),(7,'shanthi@1','shanthi'),(9,'chotta','bheem'),(10,'123','shanthi11'),(11,'ancy@1','Ancy'),(12,'Wilson@1','Wilson'),(13,'Wilson@1','Wilson123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-01 21:50:36
