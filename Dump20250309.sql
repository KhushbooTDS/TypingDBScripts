CREATE DATABASE  IF NOT EXISTS `typingdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `typingdb`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 195.250.21.87    Database: typingdb
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Computer Typing'),(2,'Test'),(3,'Test2');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursefee`
--

DROP TABLE IF EXISTS `coursefee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursefee` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CourseId` int DEFAULT NULL,
  `StudentType` varchar(200) DEFAULT NULL,
  `Fees` double DEFAULT NULL,
  `subjectid` int DEFAULT NULL,
  `Instituteid` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursefee`
--

LOCK TABLES `coursefee` WRITE;
/*!40000 ALTER TABLE `coursefee` DISABLE KEYS */;
INSERT INTO `coursefee` VALUES (1,1,'1',5000,1,1),(2,1,'1',4000,2,1),(3,1,'1',1500,4,1),(4,1,'1',55,1,NULL),(5,2,'2',50000,8,NULL),(6,2,'1',9999,2,NULL),(8,1,'1',2000,3,3);
/*!40000 ALTER TABLE `coursefee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursepractices`
--

DROP TABLE IF EXISTS `coursepractices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursepractices` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `PracticeName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursepractices`
--

LOCK TABLES `coursepractices` WRITE;
/*!40000 ALTER TABLE `coursepractices` DISABLE KEYS */;
INSERT INTO `coursepractices` VALUES (1,'Basic home key 1 74%(Accuracy)'),(2,'Basic home key 2 93% (Accuracy)'),(3,'Basic Upper key 1 100%(Accuracy)'),(4,'Basic Upper key 2 100%(Accuracy)'),(5,'Basic Upper key 3 100%(Accuracy)'),(6,'Basic lower key 1 100%(Accuracy)'),(7,'Basic lower key 2 100%(Accuracy)'),(8,'Basic lower key 3 100%(Accuracy)'),(9,'Letter1'),(10,'Letter2'),(11,'Passage1'),(12,'Passage2'),(13,'Statement1'),(14,'Statement2');
/*!40000 ALTER TABLE `coursepractices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursesupload`
--

DROP TABLE IF EXISTS `coursesupload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursesupload` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CourseId` int DEFAULT NULL,
  `SubjectId` int DEFAULT NULL,
  `PracticeId` int DEFAULT NULL,
  `PracticeData` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `InstituteId` int DEFAULT NULL,
  `UniCodePracticeData` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursesupload`
--

LOCK TABLES `coursesupload` WRITE;
/*!40000 ALTER TABLE `coursesupload` DISABLE KEYS */;
INSERT INTO `coursesupload` VALUES (1,1,1,1,'ghtdyu;iy',NULL,NULL,NULL),(2,1,2,3,'आज लगभग',12,3,NULL),(3,1,1,1,'tdsfc;g',12,3,'tdsfc;g'),(4,1,1,1,'yuuoiuy;ggg',12,3,'yuuoiuy;ggg'),(5,1,1,1,'jsdgfjdshgbhfdhkjgjhlkgjhklkgjl;khg;lkjhgscfdhsgfhgsd hgsafj hgsfdhsgfgj hgsafdhsgfgsdfgf hgfuhyretrtweyuerytiuryityu nbsfvndbvncxbvxcvc',12,3,'jsdgfjdshgbhfdhkjgjhlkgjhklkgjl;khg;lkjhgscfdhsgfhgsd hgsafj hgsfdhsgfgj hgsafdhsgfgsdfgf hgfuhyretrtweyuerytiuryityu nbsfvndbvncxbvxcvc');
/*!40000 ALTER TABLE `coursesupload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrolledsubject`
--

DROP TABLE IF EXISTS `enrolledsubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrolledsubject` (
  `EnrolledSubjectId` bigint NOT NULL AUTO_INCREMENT,
  `GRNumber` bigint DEFAULT NULL,
  `SubjectName` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UserName` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CreateBy` bigint DEFAULT NULL,
  PRIMARY KEY (`EnrolledSubjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrolledsubject`
--

LOCK TABLES `enrolledsubject` WRITE;
/*!40000 ALTER TABLE `enrolledsubject` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrolledsubject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Female'),(2,'Male'),(3,'Other'),(4,'Trans');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grnumber`
--

DROP TABLE IF EXISTS `grnumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grnumber` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Gr_Number` varchar(200) DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `Instituteid` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grnumber`
--

LOCK TABLES `grnumber` WRITE;
/*!40000 ALTER TABLE `grnumber` DISABLE KEYS */;
INSERT INTO `grnumber` VALUES (1,'456',4,NULL),(2,'1100',4,NULL),(3,'1100',12,3),(4,'1000',4,2),(5,'88888',4,2);
/*!40000 ALTER TABLE `grnumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hadicap`
--

DROP TABLE IF EXISTS `hadicap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hadicap` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `HadicapName` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hadicap`
--

LOCK TABLES `hadicap` WRITE;
/*!40000 ALTER TABLE `hadicap` DISABLE KEYS */;
INSERT INTO `hadicap` VALUES (1,'Yes'),(2,'No'),(4,'NA'),(5,'Blind'),(6,'Deaf');
/*!40000 ALTER TABLE `hadicap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hallticket`
--

DROP TABLE IF EXISTS `hallticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hallticket` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `GrNumber` varchar(200) DEFAULT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentSub` varchar(200) DEFAULT NULL,
  `CenterName` varchar(200) DEFAULT NULL,
  `ExamTime` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hallticket`
--

LOCK TABLES `hallticket` WRITE;
/*!40000 ALTER TABLE `hallticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `hallticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitydoc`
--

DROP TABLE IF EXISTS `identitydoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identitydoc` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `DocName` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitydoc`
--

LOCK TABLES `identitydoc` WRITE;
/*!40000 ALTER TABLE `identitydoc` DISABLE KEYS */;
INSERT INTO `identitydoc` VALUES (1,'Aadhar');
/*!40000 ALTER TABLE `identitydoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute`
--

DROP TABLE IF EXISTS `institute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institute` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `InstituteName` varchar(250) NOT NULL,
  `PrincipalName` varchar(250) DEFAULT NULL,
  `InstituteAddress` varchar(1000) DEFAULT NULL,
  `InstituteCode` varchar(200) DEFAULT NULL,
  `ContactNo` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `NoOfComputer` int DEFAULT NULL,
  `PrincipalPhotoUrl` varchar(250) DEFAULT NULL,
  `InstituteSymbolUrl` varchar(250) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute`
--

LOCK TABLES `institute` WRITE;
/*!40000 ALTER TABLE `institute` DISABLE KEYS */;
INSERT INTO `institute` VALUES (1,'GLA University Mathura','akhil','Bharat Petrol Pump Cross RoadBeside Kanha Duplex, Mathura','234','8273494384','akhilmittal@gmail.com',1,'','inst1.jpg',''),(2,'Narsee Monjai','Mukesh','Pune','Pune-Msc-123','9876543210','punemsc@gmail.com',30,NULL,NULL,'Active'),(3,'BITS Pilani','Akhilesh','Pimpri Chinchwada, Pune','Pune-MSC-23456','9876543210','punemsc@gmail.com',20,NULL,NULL,'Active'),(4,'lkj','lkjljl','ljljk','lkj','lklkj','kjj',99,'/ImagesUpload/Screenshot (6).png','/ImagesUpload/Screenshot (9).png','Active'),(5,'Wankar Computer Typing Insitute','Prabhu Wankar','Mahavir Chowk, Nachangoa Road Pulgaon','740250006008','7709824530','wankarinstitute@gmail.com',18,'/ImagesUpload/logo.png','/ImagesUpload/logo.png','Active');
/*!40000 ALTER TABLE `institute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutesessions`
--

DROP TABLE IF EXISTS `institutesessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institutesessions` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `StartSession` varchar(200) DEFAULT NULL,
  `EndSession` varchar(200) DEFAULT NULL,
  `InstituteId` int DEFAULT NULL,
  `startSessionYY` varchar(20) DEFAULT NULL,
  `EndSessionYY` varchar(20) DEFAULT NULL,
  `startMonth` int DEFAULT NULL,
  `EndMonth` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutesessions`
--

LOCK TABLES `institutesessions` WRITE;
/*!40000 ALTER TABLE `institutesessions` DISABLE KEYS */;
INSERT INTO `institutesessions` VALUES (1,'January','June',1,'2025','2025',1,6),(2,'January','June',2,'2026','2026',1,6),(3,'January','July',3,'2025','2025',1,7),(4,'August','December',3,'2025','2025',8,12),(6,'January','January',2,'2022','2023',1,1),(7,'March','March',2,'2022','2025',3,3);
/*!40000 ALTER TABLE `institutesessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutetimings`
--

DROP TABLE IF EXISTS `institutetimings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institutetimings` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `StartTime` varchar(200) DEFAULT NULL,
  `EndTime` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutetimings`
--

LOCK TABLES `institutetimings` WRITE;
/*!40000 ALTER TABLE `institutetimings` DISABLE KEYS */;
INSERT INTO `institutetimings` VALUES (1,'9:00 AM','10:00 AM'),(2,'10:00 AM','11:00 AM'),(3,'11:00 AM','12:00 PM'),(4,'12:00 PM','1:00 PM'),(5,'1:00 PM','2:00 PM');
/*!40000 ALTER TABLE `institutetimings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `InstructorFirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `FatherName` varchar(200) DEFAULT NULL,
  `MotherName` varchar(200) DEFAULT NULL,
  `MobileNo` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `PermanentAddress` varchar(500) DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  `Identity` varchar(100) DEFAULT NULL,
  `IdentityNo` varchar(100) DEFAULT NULL,
  `Pic` varchar(100) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `InstituteId` int DEFAULT NULL,
  `InstructorPassword` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `InstructorUserName` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'first','Last','father','mother','8820000000','abc@gmail.com','1','address','graduate','/ImagesUpload/Screenshot (6).png','123456789','/ImagesUpload/Screenshot (7).png','Active',2,'123','user'),(2,'instructor','d','khl','lhlk','890000000','abc@gmai.com','1','add','ggg','/ImagesUpload/Screenshot (9).png','12345','/ImagesUpload/Screenshot (6).png','Active',2,'123','instructor123');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notices` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ToUserId` int DEFAULT NULL,
  `NoticeText` varchar(1000) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` VALUES (1,1,'test notice','2024-12-31 21:01:58',1),(2,4,'dfrg','2025-01-11 08:15:32',1),(3,4,'monthly payment alert','2025-01-12 19:52:10',1),(4,4,'hello','2025-01-21 23:21:18',1),(5,12,'Collect Student Installments by End of the February!','2025-02-17 13:26:03',1),(6,7,'adadadsf','2025-02-17 00:00:00',2),(7,13,'Hello Kirti, Please pay your fees on time.','2025-02-24 18:30:25',1);
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `PaymentDate` date DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `Amount` decimal(10,0) DEFAULT NULL,
  `PaymentMode` varchar(200) DEFAULT NULL,
  `ChequeNo` varchar(200) DEFAULT NULL,
  `ChequeDate` datetime DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  `CourseId` bigint DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'2025-01-09',1,500,'Cash','234567','2025-01-15 00:00:00','2025-01-09 18:18:32',NULL),(2,'2025-01-10',1,9000,'Cash',NULL,'0001-01-01 00:00:00','2025-01-10 22:55:40',NULL),(3,'2025-01-10',1,9000,'Cash',NULL,'0001-01-01 00:00:00','2025-01-10 22:57:37',NULL),(4,'2025-01-10',7,5000,'Cash',NULL,'0001-01-01 00:00:00','2025-01-10 22:59:27',NULL),(5,'2025-01-05',1,5000,'Cash',NULL,'0001-01-01 00:00:00','2025-01-10 23:28:36',NULL),(6,'2025-01-01',5,1000,'Cash',NULL,'0001-01-01 00:00:00','2025-01-10 23:42:30',NULL),(7,'2025-01-01',1,2000,'Cash',NULL,'0001-01-01 00:00:00','2025-01-10 23:43:53',NULL),(8,'2025-01-11',5,500,'Cash',NULL,'0001-01-01 00:00:00','2025-01-10 23:47:44',NULL),(9,'2025-01-02',5,100,'Online',NULL,'0001-01-01 00:00:00','2025-01-10 23:50:19',NULL),(10,'2025-01-30',5,4500,'Cash',NULL,'0001-01-01 00:00:00','2025-01-11 00:07:10',NULL),(11,'2025-01-17',5,3000,'Cash',NULL,'0001-01-01 00:00:00','2025-01-11 00:10:20',NULL),(12,'2025-01-18',5,4500,'Cash',NULL,'0001-01-01 00:00:00','2025-01-11 00:41:18',NULL),(13,'2025-01-11',7,3000,'Cash',NULL,'0001-01-01 00:00:00','2025-01-11 00:51:52',NULL),(14,'2025-01-11',5,6500,'Cash',NULL,'0001-01-01 00:00:00','2025-01-11 01:06:18',NULL),(15,'2025-01-12',1,987,'Cash',NULL,'0001-01-01 00:00:00','2025-01-11 07:36:22',NULL),(16,'2025-02-17',13,8900,'Cash',NULL,'0001-01-01 00:00:00','2025-02-17 14:19:08',1),(17,'2025-02-18',13,7000,'Online',NULL,'0001-01-01 00:00:00','2025-02-18 12:16:25',1);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipts` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `InstallmentDate` date DEFAULT NULL,
  `StudentType` varchar(200) DEFAULT NULL,
  `StudentUserName` varchar(200) DEFAULT NULL,
  `SubjectIds` varchar(50) DEFAULT NULL,
  `TotalAmountDue` decimal(10,0) DEFAULT NULL,
  `AmountPaid` decimal(10,0) DEFAULT NULL,
  `BalanceAmountDue` decimal(10,0) DEFAULT NULL,
  `PaymentMadeBy` varchar(100) DEFAULT NULL,
  `ChequeNo` varchar(200) DEFAULT NULL,
  `ChequeDate` date DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` VALUES (1,'2025-01-10','1','akhil@','1,2,',5000,5000,0,'Cash',NULL,'0001-01-01','2025-01-10 22:59:27'),(2,'2025-01-05','1','ravi','1,2,4,5,6,',9000,5000,4000,'Cash',NULL,'0001-01-01','2025-01-10 23:28:36'),(3,'2025-01-01','1','akhil@12','1,2,4,5,6,',9000,1000,8000,'Cash',NULL,'0001-01-01','2025-01-10 23:42:30'),(4,'2025-01-01','1','ravi','1,2,4,5,6,',9000,2000,7000,'Cash',NULL,'0001-01-01','2025-01-10 23:43:54'),(5,'2025-01-11','1','akhil@12','1,2,4,5,6,',9000,500,8500,'Cash',NULL,'0001-01-01','2025-01-10 23:47:44'),(6,'2025-01-02','1','akhil@12','1,2,4,5,6,',9000,100,8900,'Online',NULL,'0001-01-01','2025-01-10 23:50:19'),(7,'2025-01-30','1','akhil@12','1,2,4,5,6,',9000,4500,4500,'Cash',NULL,'0001-01-01','2025-01-11 00:07:10'),(8,'2025-01-17','1','akhil@12','1,2,4,5,6,',9000,3000,6000,'Cash',NULL,'0001-01-01','2025-01-11 00:10:20'),(9,'2025-01-18','1','akhil@12','1,2,4,5,6,',9000,4500,4500,'Cash',NULL,'0001-01-01','2025-01-11 00:41:18'),(10,'2025-01-11','1','akhil@','1,2,3,4,5,6,',5000,3000,2000,'Cash',NULL,'0001-01-01','2025-01-11 00:51:52'),(11,'2025-01-11','1','akhil@12','1,2,4,5,6,',9000,6500,2500,'Cash',NULL,'0001-01-01','2025-01-11 01:06:18'),(12,'2025-01-12','1','ravi','1,2,4,5,6,',9000,987,8013,'Cash',NULL,'0001-01-01','2025-01-11 07:36:23'),(13,'2025-02-17','1','kirti','1,2,',9000,8900,100,'Cash',NULL,'0001-01-01','2025-02-17 14:19:08'),(14,'2025-02-18','1','kirti','1,2,',9000,7000,2000,'Online',NULL,'0001-01-01','2025-02-18 12:16:25');
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `Id` int NOT NULL,
  `RoleName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Student'),(2,'Admin/Principal/Head of Institite'),(3,'Super Admin'),(4,'Instructor');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speedpracticeupload`
--

DROP TABLE IF EXISTS `speedpracticeupload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speedpracticeupload` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CourseId` int DEFAULT NULL,
  `SubjectId` int DEFAULT NULL,
  `PracticeId` int DEFAULT NULL,
  `FilePath` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FilToken` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `Instituteid` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speedpracticeupload`
--

LOCK TABLES `speedpracticeupload` WRITE;
/*!40000 ALTER TABLE `speedpracticeupload` DISABLE KEYS */;
INSERT INTO `speedpracticeupload` VALUES (1,1,1,11,'C:\\Courses\\Passage\\Passage1.docx','764538DDF',13,3),(3,1,1,12,'C:\\Courses\\Passage\\Passage2.docx','764538EDF',13,3),(4,1,1,9,'C:\\Courses\\Letter\\Letter1.docx','764538DDG',13,3),(5,1,1,10,'C:\\Courses\\Letter\\Letter2.docx','764538EDM',13,3),(6,1,1,13,'C:\\Courses\\Statement\\Statement1.xlsx','864538DDG',13,3),(7,1,1,14,'C:\\Courses\\Statement\\Statement2.xlsx','964538EDM',13,3);
/*!40000 ALTER TABLE `speedpracticeupload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `LastName` varchar(100) DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `MobileNumber` varchar(20) DEFAULT NULL,
  `EMailId` varchar(50) DEFAULT NULL,
  `PaermentAddress` varchar(100) DEFAULT NULL,
  `School` varchar(100) DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  `PhotoIdentityURL` varchar(250) DEFAULT NULL,
  `OtherIdentityURL` varchar(250) DEFAULT NULL,
  `IdentityNo` int DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `DateAdd` varchar(250) DEFAULT NULL,
  `SelectSub30wpm` varchar(100) DEFAULT NULL,
  `SelectSub40wpm` varchar(100) DEFAULT NULL,
  `Session` varchar(50) DEFAULT NULL,
  `StudentPassword` varchar(50) DEFAULT NULL,
  `StudentPicURL` varchar(250) DEFAULT NULL,
  `IdentityPicURL` varchar(250) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `StudentUserName` varchar(200) DEFAULT NULL,
  `StudentType` int DEFAULT NULL,
  `Cast` varchar(100) DEFAULT NULL,
  `UID` varchar(100) NOT NULL,
  `GRNumber` varchar(200) DEFAULT NULL,
  `Gender` bigint DEFAULT NULL,
  `Handicap` bigint DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Gupta','Reena','Mukesh Kumar','Smriti','9876543210','abc@gmail.com','test','kothari international school','12th','abc','abc',123,'2000-02-09','2025-01-01','Hindi30','Marathi40','1','12345678','abc','xyz','Locked',NULL,1,NULL,'',NULL,1,1,0),(4,'mittal','akhil','dfr','fgt','6767678990','abcd@gmail.com','test','kothari international school','12th','abc','abc',234,'1993-10-30','2025-01-08','English30,Hindi30','English40,Hindi40,Marathi40','2','12345678','abc','xyz','Locked','akhil@12',1,NULL,'',NULL,1,1,0),(5,'singh','gaurav','mahendra','suman','8273494384','akhilmittal10@gmail.com','no','dps','12th','hjk','fgt',456,'2001-06-12','2025-01-09','English30,Hindi30,Marathi30','English40,Hindi40,Marathi40','1','akhil1234','yui','wer','Active','akhil1234',1,NULL,'',NULL,1,1,0),(6,'gupta','arun','vinay','suman','8273494384','akhilmittal162@gmail.com','rty','ertt','ed','fg','rt',23,'2012-02-25','2025-01-09','English30,Hindi30,Marathi30','English40,Hindi40,Marathi40','1','123456789','sde','ews','Locked','gupta',1,NULL,'',NULL,1,1,0),(7,'Verma','Kirti','Rajeev Kumar Verma','Seema','9876453210','kirti@gmail.com','Pune','BITS School','12th','1bc2c577-eef3-4bf7-9b5c-98708ec61eaa_15_2_2025_17_38_35_701.png','bb89fd91-8ffc-4acf-9260-0d94cde38aee_15_2_2025_17_38_35_715.webp',765433,'2021-06-08','2025-02-15','English30,Hindi30',NULL,'3',NULL,'94b8401e-2011-444a-96e4-44dc287b069f_15_2_2025_17_38_35_694.webp','a067d895-3218-45f3-8f5c-caa6ba4cd71c_15_2_2025_17_40_53_766.webp','Active','kirti',1,'General','6754320987',NULL,1,2,0),(8,'Gupta','Priyank','Mukesh','Meena','9876453210','priyank@gmail.com','Gujrat','BITS School','B.Sc','be8f1907-f049-4f66-a500-8abd654691a8_15_2_2025_18_17_10_904.png','ba815fe7-6169-4209-bfbe-fc54b4c2717a_15_2_2025_18_17_10_927.webp',567889999,'2020-09-15','2025-02-15','English30',NULL,'4','123','66bed2e8-a7f6-4e2e-9f86-e82fdebcafd9_15_2_2025_18_17_10_877.png','0d445ed8-6d28-46db-8efa-258790982a7f_15_2_2025_18_17_10_914.webp','Active','priyankg',1,'OBC','5768877888',NULL,2,2,0),(9,'Kashyap','Amit','Mahavir singh','Rupvati devi','09971509093','kumaramitg81@gmail.com','RC 684 VANDNA ENCLAVE KHORA COLONY','Agrshen','MCA','6132f360-7830-479a-9f78-9a5179156e38_18_2_2025_21_12_56_707.png','0e294901-ba39-4ffb-a845-4a9cd3277e28_18_2_2025_21_12_56_735.png',9898,'2025-02-06','2025-02-08','English30,Hindi30,Marathi30','English40,Hindi40,Marathi40','3','123','29ba8849-774b-49be-8dbe-1ebdbe8f7149_18_2_2025_21_12_56_675.png','97cdd141-6449-461b-a492-61fa227fb25d_18_2_2025_21_12_56_728.png','Active','amit',1,'Test','123',NULL,2,1,0),(10,'LastName','FirstName','FatherName','MotherName','990000000','abc@gmail.com','perma','school','edu','/ImagesUpload/Screenshot (6).png','/ImagesUpload/Screenshot (7).png',123456789,'22 February 2025','22 February 2025','English30,Hindi30','English40,Hindi40,Marathi40','1','123','/ImagesUpload/Screenshot (8).png','/ImagesUpload/Screenshot (9).png','Active','student',1,'cast','1222',NULL,1,1,0),(11,'kk','ll','ooo','sdfad','1234567890','abc@gamil.com','add',';pjp','lkjj','','',54,'22 February 2025','22 February 2025','English30','English40','7','123','','','Active','std123',1,'dfd','ljkklj',NULL,1,1,0);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studenttype`
--

DROP TABLE IF EXISTS `studenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studenttype` (
  `Id` int NOT NULL,
  `StudentType` varchar(200) DEFAULT NULL,
  `StudentTypeDesc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studenttype`
--

LOCK TABLES `studenttype` WRITE;
/*!40000 ALTER TABLE `studenttype` DISABLE KEYS */;
INSERT INTO `studenttype` VALUES (1,'RegularStudent','Regular Student'),(2,'ReAppear','ReAppear');
/*!40000 ALTER TABLE `studenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CourseiD` int NOT NULL,
  `SubjectName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,1,'English30'),(2,1,'Hindi30'),(3,1,'Marathi30'),(4,1,'English40'),(5,1,'Hindi40'),(6,1,'Marathi40'),(7,1,NULL),(8,1,'Test');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typingresult`
--

DROP TABLE IF EXISTS `typingresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typingresult` (
  `TypingResultId` bigint NOT NULL AUTO_INCREMENT,
  `StudentId` bigint DEFAULT NULL,
  `UserName` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PracticeId` bigint DEFAULT NULL,
  `SubjectId` bigint DEFAULT NULL,
  `TotalCorrectCharacters` int DEFAULT NULL,
  `TotalIncorrectCharacters` int DEFAULT NULL,
  `GrossSpeedPerMinute` int DEFAULT NULL,
  `NetSpeedPerMinute` int DEFAULT NULL,
  `CreateDate` date DEFAULT NULL,
  `Accuracy` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`TypingResultId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typingresult`
--

LOCK TABLES `typingresult` WRITE;
/*!40000 ALTER TABLE `typingresult` DISABLE KEYS */;
INSERT INTO `typingresult` VALUES (1,1,'akhil@12',1,1,9,2,1,1,NULL,NULL),(2,1,'akhil@12',1,1,9,0,1,1,NULL,NULL),(3,1,'akhil@12',1,1,0,1,0,0,NULL,NULL),(4,1,'akhil@12',1,1,0,1,0,0,NULL,NULL),(5,1,'ravi',1,1,9,0,1,1,NULL,NULL),(6,1,'akhil@12',1,1,9,1,1,1,NULL,NULL),(7,1,'akhil@12',1,1,9,1,1,1,NULL,NULL),(8,1,'akhil@12',1,1,9,1,1,1,'2025-02-01',100),(9,13,'kirti',1,1,7,2,1,1,'2025-02-15',100),(10,13,'kirti',0,0,0,0,0,0,'2025-02-17',0),(11,14,'priyankg',1,1,2,1,0,0,'2025-02-18',0),(12,13,'kirti',1,1,11,1,2,2,'2025-02-18',100),(13,13,'kirti',1,1,13,5,2,1,'2025-02-18',50),(14,13,'kirti',1,1,13,5,2,1,'2025-02-18',50),(15,13,'kirti',1,1,3,3,0,0,'2025-02-18',0),(16,13,'kirti',1,1,3,3,0,0,'2025-02-18',0);
/*!40000 ALTER TABLE `typingresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogins`
--

DROP TABLE IF EXISTS `userlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlogins` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` int DEFAULT NULL,
  `Login` datetime DEFAULT NULL,
  `LogOut` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogins`
--

LOCK TABLES `userlogins` WRITE;
/*!40000 ALTER TABLE `userlogins` DISABLE KEYS */;
INSERT INTO `userlogins` VALUES (1,12,'2025-02-15 22:10:39','0001-01-01 00:00:00'),(2,12,'0001-01-01 00:00:00','2025-02-15 22:10:59'),(3,12,'2025-02-15 17:47:04','0001-01-01 00:00:00'),(4,12,'0001-01-01 00:00:00','2025-02-15 17:47:31'),(5,2,'2025-02-15 17:59:14','0001-01-01 00:00:00'),(6,2,'0001-01-01 00:00:00','2025-02-15 18:01:09'),(7,12,'2025-02-15 18:01:16','0001-01-01 00:00:00'),(8,12,'2025-02-15 18:03:09','0001-01-01 00:00:00'),(9,2,'2025-02-15 19:05:16','0001-01-01 00:00:00'),(10,2,'0001-01-01 00:00:00','2025-02-15 19:05:21'),(11,12,'2025-02-15 19:05:26','0001-01-01 00:00:00'),(12,12,'0001-01-01 00:00:00','2025-02-15 19:05:29'),(13,13,'2025-02-15 19:05:37','0001-01-01 00:00:00'),(14,13,'0001-01-01 00:00:00','2025-02-15 19:05:57'),(15,12,'2025-02-15 19:06:02','0001-01-01 00:00:00'),(16,12,'0001-01-01 00:00:00','2025-02-15 19:06:48'),(17,13,'2025-02-15 19:06:56','0001-01-01 00:00:00'),(18,13,'0001-01-01 00:00:00','2025-02-15 19:07:26'),(19,12,'2025-02-15 19:07:32','0001-01-01 00:00:00'),(20,12,'0001-01-01 00:00:00','2025-02-15 19:07:42'),(21,13,'2025-02-15 19:07:46','0001-01-01 00:00:00'),(22,13,'0001-01-01 00:00:00','2025-02-15 19:08:21'),(23,12,'2025-02-15 19:08:28','0001-01-01 00:00:00'),(24,12,'0001-01-01 00:00:00','2025-02-15 19:08:31'),(25,2,'2025-02-16 01:53:02','0001-01-01 00:00:00'),(26,2,'2025-02-16 07:57:36','0001-01-01 00:00:00'),(27,12,'2025-02-17 07:37:04','0001-01-01 00:00:00'),(28,12,'2025-02-17 07:46:27','0001-01-01 00:00:00'),(29,12,'2025-02-17 08:19:41','0001-01-01 00:00:00'),(30,12,'2025-02-17 13:20:34','0001-01-01 00:00:00'),(31,12,'2025-02-17 13:24:52','0001-01-01 00:00:00'),(32,12,'0001-01-01 00:00:00','2025-02-17 13:24:57'),(33,2,'2025-02-17 13:25:04','0001-01-01 00:00:00'),(34,2,'0001-01-01 00:00:00','2025-02-17 13:26:06'),(35,4,'0001-01-01 00:00:00','2025-02-17 13:26:23'),(36,2,'2025-02-17 18:57:41','0001-01-01 00:00:00'),(37,2,'0001-01-01 00:00:00','2025-02-17 18:58:00'),(38,12,'2025-02-17 14:16:59','0001-01-01 00:00:00'),(39,12,'0001-01-01 00:00:00','2025-02-17 14:20:14'),(40,13,'2025-02-17 14:20:21','0001-01-01 00:00:00'),(41,13,'2025-02-17 19:52:22','0001-01-01 00:00:00'),(42,13,'2025-02-17 19:54:17','0001-01-01 00:00:00'),(43,13,'2025-02-17 19:55:02','0001-01-01 00:00:00'),(44,13,'2025-02-17 19:56:08','0001-01-01 00:00:00'),(45,13,'2025-02-17 19:57:55','0001-01-01 00:00:00'),(46,2,'2025-02-17 17:08:35','0001-01-01 00:00:00'),(47,2,'0001-01-01 00:00:00','2025-02-17 17:09:19'),(48,4,'0001-01-01 00:00:00','2025-02-17 17:09:39'),(49,2,'2025-02-17 17:09:42','0001-01-01 00:00:00'),(50,2,'2025-02-17 22:45:08','0001-01-01 00:00:00'),(51,2,'0001-01-01 00:00:00','2025-02-17 22:45:29'),(52,1,'0001-01-01 00:00:00','2025-02-17 22:45:50'),(53,4,'0001-01-01 00:00:00','2025-02-17 22:47:10'),(54,3,'0001-01-01 00:00:00','2025-02-17 22:47:24'),(55,4,'0001-01-01 00:00:00','2025-02-17 22:48:22'),(56,12,'2025-02-17 22:48:35','0001-01-01 00:00:00'),(57,2,'0001-01-01 00:00:00','2025-02-17 17:36:05'),(58,12,'2025-02-17 17:36:11','0001-01-01 00:00:00'),(59,0,'0001-01-01 00:00:00','2025-02-18 07:28:06'),(60,14,'2025-02-18 07:28:18','0001-01-01 00:00:00'),(61,14,'0001-01-01 00:00:00','2025-02-18 07:29:17'),(62,12,'2025-02-18 07:29:21','0001-01-01 00:00:00'),(63,12,'2025-02-18 08:12:50','0001-01-01 00:00:00'),(64,12,'2025-02-18 08:13:33','0001-01-01 00:00:00'),(65,12,'2025-02-18 08:16:40','0001-01-01 00:00:00'),(66,2,'2025-02-18 06:50:19','0001-01-01 00:00:00'),(67,2,'2025-02-18 10:56:36','0001-01-01 00:00:00'),(68,2,'2025-02-18 11:32:52','0001-01-01 00:00:00'),(69,2,'2025-02-18 12:00:42','0001-01-01 00:00:00'),(70,2,'0001-01-01 00:00:00','2025-02-18 12:04:53'),(71,12,'2025-02-18 12:04:58','0001-01-01 00:00:00'),(72,12,'0001-01-01 00:00:00','2025-02-18 12:22:09'),(73,13,'2025-02-18 12:22:15','0001-01-01 00:00:00'),(74,13,'0001-01-01 00:00:00','2025-02-18 12:24:55'),(75,12,'2025-02-18 12:25:02','0001-01-01 00:00:00'),(76,12,'0001-01-01 00:00:00','2025-02-18 12:25:35'),(77,13,'2025-02-18 12:25:39','0001-01-01 00:00:00'),(78,12,'2025-02-18 12:29:49','0001-01-01 00:00:00'),(79,12,'0001-01-01 00:00:00','2025-02-18 12:35:16'),(80,13,'2025-02-18 12:35:29','0001-01-01 00:00:00'),(81,13,'2025-02-18 12:35:29','0001-01-01 00:00:00'),(82,12,'2025-02-18 21:00:36','0001-01-01 00:00:00'),(83,12,'2025-02-18 21:10:04','0001-01-01 00:00:00'),(84,12,'2025-02-18 21:53:11','0001-01-01 00:00:00'),(85,12,'2025-02-18 21:58:04','0001-01-01 00:00:00'),(86,12,'2025-02-18 22:04:21','0001-01-01 00:00:00'),(87,12,'2025-02-18 22:13:52','0001-01-01 00:00:00'),(88,12,'2025-02-18 22:22:27','0001-01-01 00:00:00'),(89,12,'2025-02-18 22:28:40','0001-01-01 00:00:00'),(90,2,'2025-02-18 17:00:04','0001-01-01 00:00:00'),(91,12,'2025-02-18 22:31:29','0001-01-01 00:00:00'),(92,2,'0001-01-01 00:00:00','2025-02-18 17:01:13'),(93,2,'2025-02-19 12:37:49','0001-01-01 00:00:00'),(94,2,'0001-01-01 00:00:00','2025-02-19 12:37:53'),(95,2,'2025-02-19 17:02:42','0001-01-01 00:00:00'),(96,2,'2025-02-19 17:03:27','0001-01-01 00:00:00'),(97,2,'2025-02-19 17:04:58','0001-01-01 00:00:00'),(98,2,'2025-02-19 17:16:37','0001-01-01 00:00:00'),(99,2,'2025-02-19 17:22:06','0001-01-01 00:00:00'),(100,2,'2025-02-19 17:58:46','0001-01-01 00:00:00'),(101,2,'2025-02-19 17:59:05','0001-01-01 00:00:00'),(102,2,'2025-02-19 18:01:33','0001-01-01 00:00:00'),(103,2,'2025-02-19 18:03:07','0001-01-01 00:00:00'),(104,2,'2025-02-19 18:07:50','0001-01-01 00:00:00'),(105,2,'2025-02-19 18:09:56','0001-01-01 00:00:00'),(106,2,'2025-02-19 18:15:57','0001-01-01 00:00:00'),(107,2,'2025-02-19 18:20:23','0001-01-01 00:00:00'),(108,2,'2025-02-19 18:22:28','0001-01-01 00:00:00'),(109,2,'2025-02-19 18:23:42','0001-01-01 00:00:00'),(110,2,'2025-02-19 18:54:37','0001-01-01 00:00:00'),(111,2,'2025-02-19 18:57:58','0001-01-01 00:00:00'),(112,2,'2025-02-19 19:00:34','0001-01-01 00:00:00'),(113,12,'2025-02-19 21:18:21','0001-01-01 00:00:00'),(114,12,'2025-02-19 16:25:59','0001-01-01 00:00:00'),(115,12,'0001-01-01 00:00:00','2025-02-19 16:26:54'),(116,12,'2025-02-19 16:26:57','0001-01-01 00:00:00'),(117,12,'2025-02-19 16:27:10','0001-01-01 00:00:00'),(118,12,'2025-02-19 16:38:02','0001-01-01 00:00:00'),(119,12,'0001-01-01 00:00:00','2025-02-19 16:57:25'),(120,3,'0001-01-01 00:00:00','2025-02-19 16:57:34'),(121,13,'2025-02-19 16:57:41','0001-01-01 00:00:00'),(122,13,'0001-01-01 00:00:00','2025-02-19 16:58:41'),(123,12,'2025-02-19 16:58:46','0001-01-01 00:00:00'),(124,12,'0001-01-01 00:00:00','2025-02-19 16:58:50'),(125,13,'2025-02-19 16:58:57','0001-01-01 00:00:00'),(126,12,'2025-02-19 22:30:14','0001-01-01 00:00:00'),(127,12,'2025-02-19 22:46:07','0001-01-01 00:00:00'),(128,12,'2025-02-19 23:16:52','0001-01-01 00:00:00'),(129,12,'2025-02-19 23:20:45','0001-01-01 00:00:00'),(130,12,'2025-02-19 23:25:44','0001-01-01 00:00:00'),(131,12,'2025-02-19 23:34:48','0001-01-01 00:00:00'),(132,2,'2025-02-20 07:49:10','0001-01-01 00:00:00'),(133,2,'2025-02-20 07:49:24','0001-01-01 00:00:00'),(134,13,'2025-02-20 07:49:33','0001-01-01 00:00:00'),(135,2,'2025-02-20 08:10:23','0001-01-01 00:00:00'),(136,2,'2025-02-20 13:43:02','0001-01-01 00:00:00'),(137,2,'2025-02-20 13:46:06','0001-01-01 00:00:00'),(138,2,'2025-02-20 13:47:43','0001-01-01 00:00:00'),(139,2,'2025-02-20 14:47:21','0001-01-01 00:00:00'),(140,2,'2025-02-20 14:54:49','0001-01-01 00:00:00'),(141,2,'2025-02-20 15:02:12','0001-01-01 00:00:00'),(142,2,'2025-02-20 15:06:00','0001-01-01 00:00:00'),(143,2,'2025-02-20 15:07:48','0001-01-01 00:00:00'),(144,2,'2025-02-20 15:15:02','0001-01-01 00:00:00'),(145,2,'2025-02-20 15:21:33','0001-01-01 00:00:00'),(146,2,'2025-02-20 15:22:55','0001-01-01 00:00:00'),(147,2,'2025-02-20 15:25:00','0001-01-01 00:00:00'),(148,2,'2025-02-20 15:28:55','0001-01-01 00:00:00'),(149,2,'2025-02-20 15:32:31','0001-01-01 00:00:00'),(150,2,'2025-02-20 15:34:18','0001-01-01 00:00:00'),(151,2,'2025-02-20 15:36:13','0001-01-01 00:00:00'),(152,2,'2025-02-20 15:38:27','0001-01-01 00:00:00'),(153,2,'2025-02-20 15:40:22','0001-01-01 00:00:00'),(154,2,'2025-02-20 15:47:18','0001-01-01 00:00:00'),(155,2,'2025-02-20 15:49:33','0001-01-01 00:00:00'),(156,2,'2025-02-20 15:53:35','0001-01-01 00:00:00'),(157,2,'2025-02-20 15:56:14','0001-01-01 00:00:00'),(158,2,'0001-01-01 00:00:00','2025-02-20 15:56:23'),(159,2,'2025-02-20 10:35:27','0001-01-01 00:00:00'),(160,2,'0001-01-01 00:00:00','2025-02-20 10:35:38'),(161,2,'2025-02-20 10:35:41','0001-01-01 00:00:00'),(162,12,'2025-02-20 21:20:39','0001-01-01 00:00:00'),(163,12,'2025-02-20 21:28:23','0001-01-01 00:00:00'),(164,12,'2025-02-20 21:33:17','0001-01-01 00:00:00'),(165,12,'2025-02-20 21:36:44','0001-01-01 00:00:00'),(166,12,'2025-02-20 21:40:15','0001-01-01 00:00:00'),(167,12,'2025-02-20 21:47:17','0001-01-01 00:00:00'),(168,12,'2025-02-20 21:55:05','0001-01-01 00:00:00'),(169,12,'2025-02-20 22:14:31','0001-01-01 00:00:00'),(170,12,'2025-02-20 22:37:05','0001-01-01 00:00:00'),(171,12,'2025-02-20 23:39:59','0001-01-01 00:00:00'),(172,12,'2025-02-20 23:48:05','0001-01-01 00:00:00'),(173,12,'2025-02-21 00:10:05','0001-01-01 00:00:00'),(174,12,'2025-02-21 00:13:23','0001-01-01 00:00:00'),(175,2,'2025-02-21 11:41:04','0001-01-01 00:00:00'),(176,2,'0001-01-01 00:00:00','2025-02-21 11:41:17'),(177,12,'2025-02-21 11:41:23','0001-01-01 00:00:00'),(178,12,'2025-02-21 17:29:39','0001-01-01 00:00:00'),(179,12,'2025-02-21 17:31:58','0001-01-01 00:00:00'),(180,12,'2025-02-21 17:54:47','0001-01-01 00:00:00'),(181,12,'2025-02-21 17:55:55','0001-01-01 00:00:00'),(182,12,'0001-01-01 00:00:00','2025-02-21 17:56:19'),(183,13,'2025-02-21 18:07:08','0001-01-01 00:00:00'),(184,13,'0001-01-01 00:00:00','2025-02-21 18:08:05'),(185,3,'2025-02-21 18:14:50','0001-01-01 00:00:00'),(186,3,'2025-02-21 18:26:41','0001-01-01 00:00:00'),(187,3,'2025-02-21 18:27:40','0001-01-01 00:00:00'),(188,3,'2025-02-21 18:30:53','0001-01-01 00:00:00'),(189,3,'2025-02-21 18:32:47','0001-01-01 00:00:00'),(190,13,'2025-02-21 13:11:46','0001-01-01 00:00:00'),(191,13,'0001-01-01 00:00:00','2025-02-21 13:12:13'),(192,12,'2025-02-21 13:12:16','0001-01-01 00:00:00'),(193,12,'0001-01-01 00:00:00','2025-02-21 13:13:16'),(194,2,'2025-02-21 17:00:52','0001-01-01 00:00:00'),(195,12,'2025-02-22 09:11:45','0001-01-01 00:00:00'),(196,12,'2025-02-22 09:26:43','0001-01-01 00:00:00'),(197,12,'2025-02-22 09:42:34','0001-01-01 00:00:00'),(198,12,'2025-02-22 09:44:16','0001-01-01 00:00:00'),(199,12,'2025-02-22 09:48:34','0001-01-01 00:00:00'),(200,12,'2025-02-22 09:58:33','0001-01-01 00:00:00'),(201,12,'2025-02-22 10:07:18','0001-01-01 00:00:00'),(202,12,'2025-02-22 10:07:18','0001-01-01 00:00:00'),(203,12,'2025-02-22 10:10:39','0001-01-01 00:00:00'),(204,12,'2025-02-22 10:14:33','0001-01-01 00:00:00'),(205,12,'2025-02-22 10:20:13','0001-01-01 00:00:00'),(206,12,'2025-02-22 10:21:37','0001-01-01 00:00:00'),(207,12,'2025-02-22 10:42:14','0001-01-01 00:00:00'),(208,12,'2025-02-22 10:55:52','0001-01-01 00:00:00'),(209,12,'2025-02-22 11:00:01','0001-01-01 00:00:00'),(210,12,'2025-02-22 06:10:35','0001-01-01 00:00:00'),(211,4,'2025-02-22 15:05:43','0001-01-01 00:00:00'),(212,1,'2025-02-22 15:13:07','0001-01-01 00:00:00'),(213,1,'0001-01-01 00:00:00','2025-02-22 15:13:16'),(214,1,'0001-01-01 00:00:00','2025-02-22 15:13:16'),(215,4,'2025-02-22 15:13:26','0001-01-01 00:00:00'),(216,4,'2025-02-22 16:16:54','0001-01-01 00:00:00'),(217,12,'2025-02-22 17:09:17','0001-01-01 00:00:00'),(218,13,'2025-02-22 12:01:19','0001-01-01 00:00:00'),(219,13,'2025-02-22 17:38:58','0001-01-01 00:00:00'),(220,13,'2025-02-22 17:43:36','0001-01-01 00:00:00'),(221,13,'2025-02-22 17:51:10','0001-01-01 00:00:00'),(222,12,'2025-02-22 17:57:55','0001-01-01 00:00:00'),(223,1,'2025-02-22 18:08:20','0001-01-01 00:00:00'),(224,12,'2025-02-22 18:28:31','0001-01-01 00:00:00'),(225,12,'2025-02-22 18:36:45','0001-01-01 00:00:00'),(226,2,'2025-02-22 13:12:54','0001-01-01 00:00:00'),(227,13,'2025-02-22 18:43:25','0001-01-01 00:00:00'),(228,12,'2025-02-22 18:44:48','0001-01-01 00:00:00'),(229,12,'2025-02-22 18:44:56','0001-01-01 00:00:00'),(230,13,'2025-02-22 18:45:21','0001-01-01 00:00:00'),(231,13,'2025-02-22 18:46:36','0001-01-01 00:00:00'),(232,13,'2025-02-22 18:48:11','0001-01-01 00:00:00'),(233,12,'2025-02-22 18:49:46','0001-01-01 00:00:00'),(234,12,'2025-02-22 18:58:12','0001-01-01 00:00:00'),(235,12,'0001-01-01 00:00:00','2025-02-22 19:01:36'),(236,13,'2025-02-22 19:06:02','0001-01-01 00:00:00'),(237,13,'2025-02-22 19:07:51','0001-01-01 00:00:00'),(238,13,'2025-02-22 19:08:59','0001-01-01 00:00:00'),(239,13,'2025-02-22 19:10:01','0001-01-01 00:00:00'),(240,13,'2025-02-22 19:11:50','0001-01-01 00:00:00'),(241,13,'2025-02-22 19:13:33','0001-01-01 00:00:00'),(242,13,'2025-02-22 19:16:41','0001-01-01 00:00:00'),(243,13,'2025-02-22 13:53:49','0001-01-01 00:00:00'),(244,12,'2025-02-22 19:36:18','0001-01-01 00:00:00'),(245,12,'2025-02-22 19:39:44','0001-01-01 00:00:00'),(246,12,'2025-02-22 19:41:35','0001-01-01 00:00:00'),(247,12,'2025-02-22 19:49:26','0001-01-01 00:00:00'),(248,13,'2025-02-22 20:47:26','0001-01-01 00:00:00'),(249,13,'2025-02-22 20:48:16','0001-01-01 00:00:00'),(250,13,'2025-02-22 20:54:48','0001-01-01 00:00:00'),(251,13,'2025-02-22 20:55:48','0001-01-01 00:00:00'),(252,13,'2025-02-22 20:57:29','0001-01-01 00:00:00'),(253,12,'2025-02-22 20:58:24','0001-01-01 00:00:00'),(254,13,'2025-02-22 20:59:38','0001-01-01 00:00:00'),(255,12,'2025-02-22 21:00:19','0001-01-01 00:00:00'),(256,13,'2025-02-22 21:02:26','0001-01-01 00:00:00'),(257,13,'2025-02-22 21:04:00','0001-01-01 00:00:00'),(258,12,'2025-02-22 21:05:11','0001-01-01 00:00:00'),(259,13,'2025-02-22 21:04:54','0001-01-01 00:00:00'),(260,12,'2025-02-22 21:06:42','0001-01-01 00:00:00'),(261,13,'2025-02-22 21:06:58','0001-01-01 00:00:00'),(262,12,'2025-02-22 21:09:59','0001-01-01 00:00:00'),(263,12,'2025-02-22 21:12:20','0001-01-01 00:00:00'),(264,12,'2025-02-22 21:13:45','0001-01-01 00:00:00'),(265,13,'2025-02-22 15:52:18','0001-01-01 00:00:00'),(266,12,'2025-02-22 21:26:58','0001-01-01 00:00:00'),(267,13,'2025-02-22 21:28:19','0001-01-01 00:00:00'),(268,13,'2025-02-22 21:30:07','0001-01-01 00:00:00'),(269,12,'2025-02-22 21:31:19','0001-01-01 00:00:00'),(270,12,'2025-02-22 21:35:23','0001-01-01 00:00:00'),(271,12,'2025-02-22 21:37:35','0001-01-01 00:00:00'),(272,13,'2025-02-22 21:39:49','0001-01-01 00:00:00'),(273,12,'2025-02-22 21:41:03','0001-01-01 00:00:00'),(274,13,'2025-02-22 21:53:16','0001-01-01 00:00:00'),(275,13,'2025-02-22 16:29:56','0001-01-01 00:00:00'),(276,13,'2025-02-22 17:48:22','0001-01-01 00:00:00'),(277,12,'2025-02-23 11:05:24','0001-01-01 00:00:00'),(278,12,'2025-02-23 11:08:18','0001-01-01 00:00:00'),(279,13,'2025-02-23 07:27:09','0001-01-01 00:00:00'),(280,13,'0001-01-01 00:00:00','2025-02-23 07:28:26'),(281,13,'2025-02-23 07:30:00','0001-01-01 00:00:00'),(282,13,'2025-02-23 07:37:35','0001-01-01 00:00:00'),(283,13,'2025-02-23 07:40:38','0001-01-01 00:00:00'),(284,13,'0001-01-01 00:00:00','2025-02-23 07:47:28'),(285,13,'2025-02-23 07:47:52','0001-01-01 00:00:00'),(286,13,'2025-02-23 07:56:44','0001-01-01 00:00:00'),(287,12,'2025-02-23 09:36:20','0001-01-01 00:00:00'),(288,13,'2025-02-23 10:15:28','0001-01-01 00:00:00'),(289,13,'2025-02-24 11:39:33','0001-01-01 00:00:00'),(290,13,'2025-02-24 18:07:28','0001-01-01 00:00:00'),(291,13,'0001-01-01 00:00:00','2025-02-24 18:29:49'),(292,12,'2025-02-24 18:30:01','0001-01-01 00:00:00'),(293,12,'0001-01-01 00:00:00','2025-02-24 18:30:29'),(294,13,'2025-02-24 18:30:35','0001-01-01 00:00:00'),(295,2,'2025-02-26 07:19:15','0001-01-01 00:00:00'),(296,13,'2025-02-26 16:19:24','0001-01-01 00:00:00'),(297,2,'2025-02-28 08:22:27','0001-01-01 00:00:00'),(298,2,'2025-02-28 09:09:45','0001-01-01 00:00:00'),(299,12,'2025-02-28 09:33:46','0001-01-01 00:00:00'),(300,12,'2025-02-28 12:48:31','0001-01-01 00:00:00'),(301,12,'0001-01-01 00:00:00','2025-02-28 13:18:22'),(302,3,'2025-02-28 13:18:28','0001-01-01 00:00:00'),(303,3,'0001-01-01 00:00:00','2025-02-28 13:21:32'),(304,13,'2025-02-28 13:21:37','0001-01-01 00:00:00'),(305,13,'2025-03-06 04:29:45','0001-01-01 00:00:00'),(306,12,'2025-03-06 09:03:58','0001-01-01 00:00:00'),(307,12,'2025-03-08 10:04:29','0001-01-01 00:00:00'),(308,12,'0001-01-01 00:00:00','2025-03-08 10:04:58'),(309,2,'2025-03-08 10:05:05','0001-01-01 00:00:00'),(310,2,'0001-01-01 00:00:00','2025-03-08 10:05:34'),(311,2,'2025-03-08 10:48:49','0001-01-01 00:00:00'),(312,2,'0001-01-01 00:00:00','2025-03-08 10:57:35'),(313,13,'2025-03-08 10:57:41','0001-01-01 00:00:00'),(314,13,'0001-01-01 00:00:00','2025-03-08 10:58:12'),(315,12,'2025-03-08 10:58:31','0001-01-01 00:00:00'),(316,12,'0001-01-01 00:00:00','2025-03-08 11:00:15'),(317,13,'2025-03-08 11:00:20','0001-01-01 00:00:00'),(318,13,'0001-01-01 00:00:00','2025-03-08 11:33:42'),(319,12,'2025-03-08 11:33:47','0001-01-01 00:00:00'),(320,12,'0001-01-01 00:00:00','2025-03-08 11:41:09'),(321,13,'2025-03-08 11:41:13','0001-01-01 00:00:00');
/*!40000 ALTER TABLE `userlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `InstituteId` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ravi','ravi123',_binary '',1,'',1),(2,'superadmin','123',_binary '',3,'',0),(3,'instructor','123',_binary '',4,'',1),(4,'admin','123',_binary '',2,'admin@gmail.com',2),(5,'akhil@12','12345678',_binary '',1,'abcd@gmail.com',1),(6,'akhil1234','akhil1234',_binary '',1,'akhilmittal10@gmail.com',1),(7,'akhil@','123456789',_binary '',1,'akhilmittal162@gmail.com',1),(9,'pr1','1234',_binary '',2,'pr1@gmail.com',1),(10,'amitverma','123',_binary '',1,'amitverma@gmail.com',1),(11,'amitverma','123',_binary '',1,'amitverma@gmail.com',1),(12,'bitsadmin','123',_binary '',2,'bitsadmin@gmail.com',3),(13,'kirti','123',_binary '',1,'kirti@gmail.com',3),(14,'priyankg','123',_binary '',1,'priyank@gmail.com',3),(15,'AdminTest','123',_binary '',2,'abc@gmail.com',2),(16,'NewPrinciple','123',_binary '',2,'abc@gmai.com',2),(17,'amit','123',_binary '',1,'kumaramitg81@gmail.com',3),(18,'instructor123','123',_binary '',4,'abc@gmai.com',2),(19,'std123','123',_binary '',1,'abc@gamil.com',2),(20,'740256008','123',_binary '',2,'wankarinsitute@gmail.com',5);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-09 20:41:09
