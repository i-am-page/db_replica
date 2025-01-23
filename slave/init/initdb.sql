-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for lunch_ordering
CREATE DATABASE IF NOT EXISTS `lunch_ordering` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lunch_ordering`;

CHANGE MASTER TO
  MASTER_HOST = 'master', -- Use the master container's hostname or IP
  MASTER_USER = 'replica_user', -- Replication user created on master
  MASTER_PASSWORD = '12345', -- Replication user password
  MASTER_LOG_FILE = 'mysql-bin.000003', -- Binary log file from the master (e.g. mysql-bin.000001)
  MASTER_LOG_POS = 157; -- Log position from the master (e.g. 12345)

-- Start the replication:
START SLAVE;