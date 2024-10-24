CREATE DATABASE  IF NOT EXISTS `twitter_bot` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `twitter_bot`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: twitter_bot
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
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `posted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweets`
--

LOCK TABLES `tweets` WRITE;
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
INSERT INTO `tweets` VALUES (16,'החיים הם כמו גלים, צריך ללמוד לרכב עליהם.','C:\\chatGpt training\\XbotX\\assets\\images\\1.webp',0),(17,'רק כשהמים שקטים, אפשר לראות את ההשתקפות האמיתית.','C:\\chatGpt training\\XbotX\\assets\\images\\2.webp',0),(18,'הצעדים הקטנים הם אלו שיוצרים את המסע הגדול.','C:\\chatGpt training\\XbotX\\assets\\images\\3.webp',0),(19,'הקשבה אמיתית היא מתנה שאנו נותנים לאחר וגם לעצמנו.','C:\\chatGpt training\\XbotX\\assets\\images\\4.webp',0),(20,'לפעמים השקט הוא התשובה לכל השאלות.','C:\\chatGpt training\\XbotX\\assets\\images\\5.webp',0),(21,'לא ניתן להאיץ את הפריחה של הפרח, הכל בזמן הנכון.','C:\\chatGpt training\\XbotX\\assets\\images\\6.webp',0),(22,'הכוח האמיתי הוא לדעת מתי לשחרר.','C:\\chatGpt training\\XbotX\\assets\\images\\7.webp',0),(23,'החיים הם לא על כמה מהר אתה רץ, אלא על המסע עצמו.','C:\\chatGpt training\\XbotX\\assets\\images\\8.webp',0),(24,'הדרך לשלום מתחילה בחיוך.','C:\\chatGpt training\\XbotX\\assets\\images\\9.webp',0),(25,'מים רכים יכולים לשבור אבן קשה.','C:\\chatGpt training\\XbotX\\assets\\images\\10.webp',0),(26,'היופי נמצא בפרטים הקטנים.','C:\\chatGpt training\\XbotX\\assets\\images\\11.webp',0),(27,'הלב יודע את התשובות שהמוח שוכח.','C:\\chatGpt training\\XbotX\\assets\\images\\12.webp',0),(28,'הדרך הארוכה ביותר מתחילה בצעד אחד.','C:\\chatGpt training\\XbotX\\assets\\images\\13.webp',0),(29,'שום דבר בעולם לא נשאר כמו שהוא - הכל זמני.','C:\\chatGpt training\\XbotX\\assets\\images\\14.webp',0),(30,'הבנה עמוקה מגיעה מתוך השקט שבפנים.','C:\\chatGpt training\\XbotX\\assets\\images\\15.webp',0),(31,'אל תדחוף את הנהר, הוא זורם מעצמו.','C:\\chatGpt training\\XbotX\\assets\\images\\16.webp',0),(32,'כשאתה רודף אחרי הפרפר, הוא עף. כשאתה יושב בשקט, הוא בא אליך.','C:\\chatGpt training\\XbotX\\assets\\images\\17.webp',0),(33,'עץ חזק לא מפחד מהרוח.','C:\\chatGpt training\\XbotX\\assets\\images\\18.webp',0),(34,'החיים קצרים מדי בשביל לחכות לרגע המושלם.','C:\\chatGpt training\\XbotX\\assets\\images\\19.webp',0),(35,'העולם הוא השתקפות של מה שאנחנו חושבים ומרגישים.','C:\\chatGpt training\\XbotX\\assets\\images\\20.webp',0);
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-24 14:58:32
