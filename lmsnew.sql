-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.35 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for lms
CREATE DATABASE IF NOT EXISTS `lms` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lms`;


-- Dumping structure for table lms.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `AdminId` int(5) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(200) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `ContactNumber` varchar(50) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `NIC` varchar(50) DEFAULT NULL,
  `UserID` int(5) DEFAULT NULL,
  PRIMARY KEY (`AdminId`),
  KEY `FK__user` (`UserID`),
  CONSTRAINT `FK__user` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table lms.admin: ~2 rows (approximately)
DELETE FROM `admin`;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`AdminId`, `AdminName`, `DOB`, `ContactNumber`, `Position`, `NIC`, `UserID`) VALUES
	(1, 'mr admin', '1993-12-18', '123456789', 'sdefewfwe', '85296374V', 1),
	(2, 'adminname', '2016-12-15', '321456987', 'what ?', '85296374V', 7);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- Dumping structure for table lms.assignment
CREATE TABLE IF NOT EXISTS `assignment` (
  `AssignmentID` int(5) NOT NULL AUTO_INCREMENT,
  `AssignmentName` varchar(100) DEFAULT NULL,
  `DeadLine` date DEFAULT NULL,
  `FilePath` varchar(5000) DEFAULT NULL,
  `ModuleID` int(5) DEFAULT NULL,
  `BatchID` int(5) DEFAULT NULL,
  `LecturerID` int(5) DEFAULT NULL,
  PRIMARY KEY (`AssignmentID`),
  KEY `ModuleID` (`ModuleID`),
  KEY `LecturerID` (`LecturerID`),
  KEY `BatchID` (`BatchID`),
  CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`ModuleID`) REFERENCES `module` (`ModuleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`LecturerID`) REFERENCES `lecturer` (`LecturerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `assignment_ibfk_3` FOREIGN KEY (`BatchID`) REFERENCES `batch` (`BatchID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lms.assignment: ~0 rows (approximately)
DELETE FROM `assignment`;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;


-- Dumping structure for table lms.assignmentmark
CREATE TABLE IF NOT EXISTS `assignmentmark` (
  `AssignmentMarkID` int(5) NOT NULL AUTO_INCREMENT,
  `StudentID` int(5) DEFAULT NULL,
  `AssignmentID` int(5) DEFAULT NULL,
  PRIMARY KEY (`AssignmentMarkID`),
  KEY `StudentID` (`StudentID`),
  KEY `AssignmentID` (`AssignmentID`),
  CONSTRAINT `assignmentmark_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `assignmentmark_ibfk_2` FOREIGN KEY (`AssignmentID`) REFERENCES `assignment` (`AssignmentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lms.assignmentmark: ~0 rows (approximately)
DELETE FROM `assignmentmark`;
/*!40000 ALTER TABLE `assignmentmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignmentmark` ENABLE KEYS */;


-- Dumping structure for table lms.batch
CREATE TABLE IF NOT EXISTS `batch` (
  `BatchID` int(5) NOT NULL AUTO_INCREMENT,
  `BatchName` varchar(100) DEFAULT NULL,
  `Start_date` date DEFAULT NULL,
  `CourseID` int(5) DEFAULT NULL,
  PRIMARY KEY (`BatchID`),
  KEY `FK__course` (`CourseID`),
  CONSTRAINT `FK__course` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table lms.batch: ~2 rows (approximately)
DELETE FROM `batch`;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
INSERT INTO `batch` (`BatchID`, `BatchName`, `Start_date`, `CourseID`) VALUES
	(1, 'abtch', NULL, 4),
	(2, 'Batch 1', '2016-12-07', 4);
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;


-- Dumping structure for table lms.chatchannel
CREATE TABLE IF NOT EXISTS `chatchannel` (
  `uuid` varchar(256) NOT NULL,
  `userIdOne` int(11) NOT NULL,
  `userIdTwo` int(11) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `userIdOne` (`userIdOne`),
  KEY `userIdTwo` (`userIdTwo`),
  CONSTRAINT `chatchannel_ibfk_1` FOREIGN KEY (`userIdOne`) REFERENCES `user` (`UserID`),
  CONSTRAINT `chatchannel_ibfk_2` FOREIGN KEY (`userIdTwo`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lms.chatchannel: ~0 rows (approximately)
DELETE FROM `chatchannel`;
/*!40000 ALTER TABLE `chatchannel` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatchannel` ENABLE KEYS */;


-- Dumping structure for table lms.chatmessage
CREATE TABLE IF NOT EXISTS `chatmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorUserId` int(11) NOT NULL,
  `recipientUserId` int(11) NOT NULL,
  `contents` text NOT NULL,
  `timeSent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `authorUserId` (`authorUserId`),
  KEY `recipientUserId` (`recipientUserId`),
  CONSTRAINT `chatmessage_ibfk_1` FOREIGN KEY (`authorUserId`) REFERENCES `user` (`UserID`),
  CONSTRAINT `chatmessage_ibfk_2` FOREIGN KEY (`recipientUserId`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lms.chatmessage: ~0 rows (approximately)
DELETE FROM `chatmessage`;
/*!40000 ALTER TABLE `chatmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatmessage` ENABLE KEYS */;


-- Dumping structure for table lms.course
CREATE TABLE IF NOT EXISTS `course` (
  `CourseID` int(5) NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(100) DEFAULT '0',
  `FeeID` int(5) DEFAULT '0',
  `Duration` int(3) DEFAULT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `FK__fee` (`FeeID`),
  CONSTRAINT `FK__fee` FOREIGN KEY (`FeeID`) REFERENCES `fee` (`FeeID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table lms.course: ~1 rows (approximately)
DELETE FROM `course`;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`CourseID`, `CourseName`, `FeeID`, `Duration`) VALUES
	(4, NULL, NULL, NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


-- Dumping structure for table lms.coursecontent
CREATE TABLE IF NOT EXISTS `coursecontent` (
  `CourseContentID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Path` varchar(1000) DEFAULT NULL,
  `Heading` varchar(1000) DEFAULT NULL,
  `SubHeading` varchar(1000) DEFAULT NULL,
  `Body` varchar(50000) DEFAULT NULL,
  `ModuleID` int(5) DEFAULT NULL,
  `BatchID` int(5) DEFAULT NULL,
  PRIMARY KEY (`CourseContentID`),
  KEY `FK_CourseContent_module` (`ModuleID`),
  KEY `FK_CourseContent_batch` (`BatchID`),
  CONSTRAINT `FK_CourseContent_batch` FOREIGN KEY (`BatchID`) REFERENCES `batch` (`BatchID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CourseContent_module` FOREIGN KEY (`ModuleID`) REFERENCES `module` (`ModuleID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table lms.coursecontent: ~2 rows (approximately)
DELETE FROM `coursecontent`;
/*!40000 ALTER TABLE `coursecontent` DISABLE KEYS */;
INSERT INTO `coursecontent` (`CourseContentID`, `Name`, `Path`, `Heading`, `SubHeading`, `Body`, `ModuleID`, `BatchID`) VALUES
	(1, 'temp_appytgy', 'E:\\SAND_BOX\\LAN_SHARED_FILES\\_lms_\\build\\web\\images/a.pdfjava.text.SimpleDateFormat@4bcd0cc0.pdf', 'juhu.yu', 'hghu,guy', 'jhubk.ihjbk.iiioi', 1, 1),
	(2, 'kjjhjhy', 'E:\\SAND_BOX\\LAN_SHARED_FILES\\_lms_\\build\\web\\images/COM 1501 S.pdfjava.text.SimpleDateFormat@4bcd0cc0.pdf', 'uyuyjb', 'uiujnk', 'kjkjhuh', 1, 1);
/*!40000 ALTER TABLE `coursecontent` ENABLE KEYS */;


-- Dumping structure for table lms.coursemodule
CREATE TABLE IF NOT EXISTS `coursemodule` (
  `CourseModuleID` int(5) NOT NULL AUTO_INCREMENT,
  `CourseID` int(5) DEFAULT NULL,
  `ModuleID` int(5) DEFAULT NULL,
  PRIMARY KEY (`CourseModuleID`),
  KEY `CourseID` (`CourseID`),
  KEY `ModuleID` (`ModuleID`),
  CONSTRAINT `coursemodule_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coursemodule_ibfk_2` FOREIGN KEY (`ModuleID`) REFERENCES `module` (`ModuleID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lms.coursemodule: ~0 rows (approximately)
DELETE FROM `coursemodule`;
/*!40000 ALTER TABLE `coursemodule` DISABLE KEYS */;
/*!40000 ALTER TABLE `coursemodule` ENABLE KEYS */;


-- Dumping structure for table lms.exam
CREATE TABLE IF NOT EXISTS `exam` (
  `ExamID` int(5) NOT NULL AUTO_INCREMENT,
  `ExamName` varchar(100) DEFAULT NULL,
  `NumberOfQuestions` int(3) DEFAULT NULL,
  `Duration` varchar(100) DEFAULT NULL,
  `ModuleID` int(5) DEFAULT NULL,
  `LecturerID` int(5) DEFAULT NULL,
  PRIMARY KEY (`ExamID`),
  KEY `ModuleID` (`ModuleID`),
  KEY `LecturerID` (`LecturerID`),
  CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`ModuleID`) REFERENCES `module` (`ModuleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `exam_ibfk_2` FOREIGN KEY (`LecturerID`) REFERENCES `lecturer` (`LecturerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lms.exam: ~0 rows (approximately)
DELETE FROM `exam`;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;


-- Dumping structure for table lms.fee
CREATE TABLE IF NOT EXISTS `fee` (
  `FeeID` int(5) NOT NULL AUTO_INCREMENT,
  `FeeAmount` double(10,2) DEFAULT '0.00',
  PRIMARY KEY (`FeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table lms.fee: ~2 rows (approximately)
DELETE FROM `fee`;
/*!40000 ALTER TABLE `fee` DISABLE KEYS */;
INSERT INTO `fee` (`FeeID`, `FeeAmount`) VALUES
	(1, 25252520.00),
	(2, 2000.00);
/*!40000 ALTER TABLE `fee` ENABLE KEYS */;


-- Dumping structure for table lms.lecturer
CREATE TABLE IF NOT EXISTS `lecturer` (
  `LecturerID` int(5) NOT NULL AUTO_INCREMENT,
  `LecturerName` varchar(500) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `UserID` int(5) DEFAULT NULL,
  PRIMARY KEY (`LecturerID`),
  KEY `FK_lecturer_user` (`UserID`),
  CONSTRAINT `FK_lecturer_user` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table lms.lecturer: ~1 rows (approximately)
DELETE FROM `lecturer`;
/*!40000 ALTER TABLE `lecturer` DISABLE KEYS */;
INSERT INTO `lecturer` (`LecturerID`, `LecturerName`, `DOB`, `Address`, `UserID`) VALUES
	(1, 'mr lecturer', '2001-12-18', 'dgbfdgfbdgb', 2);
/*!40000 ALTER TABLE `lecturer` ENABLE KEYS */;


-- Dumping structure for table lms.message
CREATE TABLE IF NOT EXISTS `message` (
  `MessageID` int(5) NOT NULL AUTO_INCREMENT,
  `FromUserID` int(5) DEFAULT NULL,
  `ToUserID` int(5) DEFAULT NULL,
  `Contact` varchar(200) DEFAULT NULL,
  `Body` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`MessageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lms.message: ~0 rows (approximately)
DELETE FROM `message`;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;


-- Dumping structure for table lms.module
CREATE TABLE IF NOT EXISTS `module` (
  `ModuleID` int(5) NOT NULL AUTO_INCREMENT,
  `ModuleName` varchar(100) DEFAULT NULL,
  `ModuleDescription` varchar(500) DEFAULT NULL,
  `ModulePath` varchar(10000) DEFAULT NULL,
  `LecturerID` int(5) DEFAULT NULL,
  PRIMARY KEY (`ModuleID`),
  KEY `FK_Module_lecturer` (`LecturerID`),
  CONSTRAINT `FK_Module_lecturer` FOREIGN KEY (`LecturerID`) REFERENCES `lecturer` (`LecturerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table lms.module: ~1 rows (approximately)
DELETE FROM `module`;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` (`ModuleID`, `ModuleName`, `ModuleDescription`, `ModulePath`, `LecturerID`) VALUES
	(1, '321', '963', '852', 1);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;


-- Dumping structure for table lms.payment
CREATE TABLE IF NOT EXISTS `payment` (
  `PaymentID` int(5) NOT NULL AUTO_INCREMENT,
  `PaidAmount` varchar(10) DEFAULT NULL,
  `StudentID` int(5) DEFAULT NULL,
  `FeeID` int(5) DEFAULT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `StudentID` (`StudentID`),
  KEY `FeeID` (`FeeID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`FeeID`) REFERENCES `fee` (`FeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lms.payment: ~0 rows (approximately)
DELETE FROM `payment`;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


-- Dumping structure for table lms.question
CREATE TABLE IF NOT EXISTS `question` (
  `QuestionID` int(5) NOT NULL AUTO_INCREMENT,
  `Question` varchar(10000) DEFAULT NULL,
  `CorrectAnswer` varchar(10000) DEFAULT NULL,
  `ExamID` int(5) DEFAULT NULL,
  `MCQAnswers` varchar(40530) DEFAULT NULL,
  PRIMARY KEY (`QuestionID`),
  KEY `ExamID` (`ExamID`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`ExamID`) REFERENCES `exam` (`ExamID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lms.question: ~0 rows (approximately)
DELETE FROM `question`;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;


-- Dumping structure for table lms.registration
CREATE TABLE IF NOT EXISTS `registration` (
  `RegistrationID` int(5) NOT NULL AUTO_INCREMENT,
  `CourseID` int(5) DEFAULT NULL,
  `StudentID` int(5) DEFAULT NULL,
  `BatchID` int(5) DEFAULT NULL,
  `RegByAdminID` int(5) DEFAULT NULL,
  `RegisteredOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`RegistrationID`),
  KEY `CourseID` (`CourseID`),
  KEY `StudentID` (`StudentID`),
  KEY `BatchID` (`BatchID`),
  KEY `RegByAdminID` (`RegByAdminID`),
  CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `registration_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `registration_ibfk_3` FOREIGN KEY (`BatchID`) REFERENCES `batch` (`BatchID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `registration_ibfk_4` FOREIGN KEY (`RegByAdminID`) REFERENCES `admin` (`AdminId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table lms.registration: ~2 rows (approximately)
DELETE FROM `registration`;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` (`RegistrationID`, `CourseID`, `StudentID`, `BatchID`, `RegByAdminID`, `RegisteredOn`) VALUES
	(1, 4, NULL, 1, 1, NULL),
	(2, 4, 1, 2, 2, '2016-12-20 22:42:27');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;


-- Dumping structure for table lms.result
CREATE TABLE IF NOT EXISTS `result` (
  `ResultID` int(5) NOT NULL AUTO_INCREMENT,
  `Result` varchar(10) DEFAULT NULL,
  `ExamID` int(5) DEFAULT NULL,
  `StudentID` int(5) DEFAULT NULL,
  PRIMARY KEY (`ResultID`),
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lms.result: ~0 rows (approximately)
DELETE FROM `result`;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
/*!40000 ALTER TABLE `result` ENABLE KEYS */;


-- Dumping structure for table lms.student
CREATE TABLE IF NOT EXISTS `student` (
  `StudentID` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `UserID` int(5) DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table lms.student: ~2 rows (approximately)
DELETE FROM `student`;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`StudentID`, `Name`, `DOB`, `Address`, `UserID`) VALUES
	(1, 'mr student', '2000-12-18', 'gdrgrthbyujyuk', 3),
	(2, '5465465', '2016-12-01', '32154liuh', 6);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


-- Dumping structure for table lms.studentanswer
CREATE TABLE IF NOT EXISTS `studentanswer` (
  `StudentAnswerID` int(5) NOT NULL AUTO_INCREMENT,
  `QuestionNumber` int(3) DEFAULT NULL,
  `AnswerStatus` int(1) DEFAULT NULL,
  `StudentID` int(5) DEFAULT NULL,
  PRIMARY KEY (`StudentAnswerID`),
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `studentanswer_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lms.studentanswer: ~0 rows (approximately)
DELETE FROM `studentanswer`;
/*!40000 ALTER TABLE `studentanswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentanswer` ENABLE KEYS */;


-- Dumping structure for table lms.user
CREATE TABLE IF NOT EXISTS `user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(256) DEFAULT NULL,
  `UserRole` varchar(10) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table lms.user: ~7 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`UserID`, `UserName`, `Password`, `UserRole`, `DateCreated`) VALUES
	(1, 'user_1', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'ADMIN', '2016-12-18'),
	(2, 'user_2', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'LECTURER', '2016-12-18'),
	(3, 'user_3', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'STUDENT', '2016-12-18'),
	(4, 'user_4', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'STUDENT', '2016-12-18'),
	(5, 'user_5', 'b3a8e0e1f9ab1bfe3a36f231f676f78bb30a519d2b21e6c530c0eee8ebb4a5d0', 'STUDENT', '2016-12-18'),
	(6, 'user_6', 'b3a8e0e1f9ab1bfe3a36f231f676f78bb30a519d2b21e6c530c0eee8ebb4a5d0', 'STUDENT', '2016-12-18'),
	(7, 'user_7', 'b3a8e0e1f9ab1bfe3a36f231f676f78bb30a519d2b21e6c530c0eee8ebb4a5d0', 'STUDENT', '2016-12-18');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
