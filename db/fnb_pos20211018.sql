CREATE DATABASE  IF NOT EXISTS `fnb_pos` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fnb_pos`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: fnb_pos
-- ------------------------------------------------------
-- Server version	5.7.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hub_host`
--

DROP TABLE IF EXISTS `hub_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hub_host` (
  `hubID` int(11) NOT NULL AUTO_INCREMENT,
  `serverID` int(11) NOT NULL,
  `hubName` varchar(50) NOT NULL,
  `companyAuthKey` varchar(50) NOT NULL,
  `flagPrimary` tinyint(1) NOT NULL DEFAULT '0',
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`hubID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hub_host`
--

LOCK TABLES `hub_host` WRITE;
/*!40000 ALTER TABLE `hub_host` DISABLE KEYS */;
/*!40000 ALTER TABLE `hub_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hub_menu`
--

DROP TABLE IF EXISTS `hub_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hub_menu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `hubID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `sourceMenuID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hub_menu`
--

LOCK TABLES `hub_menu` WRITE;
/*!40000 ALTER TABLE `hub_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `hub_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_brandsetting`
--

DROP TABLE IF EXISTS `lk_brandsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_brandsetting` (
  `brandSettingID` int(11) NOT NULL AUTO_INCREMENT,
  `key1` varchar(100) DEFAULT NULL,
  `key2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`brandSettingID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_brandsetting`
--

LOCK TABLES `lk_brandsetting` WRITE;
/*!40000 ALTER TABLE `lk_brandsetting` DISABLE KEYS */;
INSERT INTO `lk_brandsetting` VALUES (1,'POS','External Member'),(2,'POS','Membership Type'),(3,'POS','Get Token API Url'),(4,'POS','Get Member API Url'),(5,'POS','Transaction Member API Url'),(6,'POS','Point Conversion'),(7,'EZO','TA Theme Color'),(8,'EZO','Menu Placeholder Notes EN'),(9,'EZO','Menu Placeholder Notes ID'),(10,'POS','Get Token Voucher API Url'),(11,'POS','Transaction Voucher API Url'),(12,'EZO','Xendit API Key'),(13,'EZO','Xendit Verification Token'),(14,'EZO','Xendit Public Key'),(15,'EZO','Midtrans Server Key'),(16,'EZO','Faspay Merchant ID'),(17,'EZO','Faspay Password'),(18,'EZO','ShopeePay Client ID'),(19,'EZO','ShopeePay Secret'),(20,'EZO','ShopeePay Merchant Ext ID'),(21,'EZO','ShopeePay Store Ext ID'),(22,'POS','Xendit API Key'),(23,'POS','Xendit Verification Token'),(24,'POS','Midtrans Server Key'),(25,'EZO','Xendit Payout API Key'),(26,'EZO','iPay88 Merchant Code'),(27,'EZO','iPay88 Merchant Key'),(28,'POS','Static Token'),(30,'POS','Employee Type'),(31,'EZO','BCA VA Client ID'),(32,'EZO','BCA VA Client Secret'),(33,'EZO','BCA VA API Key'),(34,'EZO','BCA VA API Secret'),(35,'EZO','BCA VA Company Code'),(36,'EZO','BCA VA Sub Company'),(40,'POS','Burn Voucher API Url'),(41,'POS','Unburn Voucher API Url'),(42,'EZO','iPay88 CC Payment ID'),(48,'EZO','Logo URL'),(49,'POS','Get Access Token API Grab Url'),(50,'POS','Grab Client ID'),(51,'POS','Grab Client Secret'),(52,'POS','Grab Access Token'),(55,'EZO','YUKK Client ID'),(56,'EZO','YUKK Client Secret'),(57,'EXTERNAL','Menu Notification API Url'),(58,'EXTERNAL','Menu Notification API Token'),(59,'EXTERNAL','ODS Notification API Url'),(60,'EXTERNAL','ODS Notification API Key'),(61,'EXTERNAL','Delivery Notification Token API Url'),(62,'EXTERNAL','Delivery Notification Transaction API Url'),(99,'POS','Get Employee Limit API Url');
/*!40000 ALTER TABLE `lk_brandsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_day`
--

DROP TABLE IF EXISTS `lk_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_day` (
  `dayID` int(11) NOT NULL AUTO_INCREMENT,
  `dayName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dayID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_day`
--

LOCK TABLES `lk_day` WRITE;
/*!40000 ALTER TABLE `lk_day` DISABLE KEYS */;
INSERT INTO `lk_day` VALUES (1,'Monday'),(2,'Tuesday'),(3,'Wednesday'),(4,'Thursday'),(5,'Friday'),(6,'Saturday'),(7,'Sunday');
/*!40000 ALTER TABLE `lk_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_gender`
--

DROP TABLE IF EXISTS `lk_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_gender` (
  `genderID` int(11) NOT NULL AUTO_INCREMENT,
  `genderName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`genderID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_gender`
--

LOCK TABLES `lk_gender` WRITE;
/*!40000 ALTER TABLE `lk_gender` DISABLE KEYS */;
INSERT INTO `lk_gender` VALUES (1,'Male'),(2,'Female');
/*!40000 ALTER TABLE `lk_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_membertype`
--

DROP TABLE IF EXISTS `lk_membertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_membertype` (
  `memberTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `memberTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`memberTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_membertype`
--

LOCK TABLES `lk_membertype` WRITE;
/*!40000 ALTER TABLE `lk_membertype` DISABLE KEYS */;
/*!40000 ALTER TABLE `lk_membertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_menusize`
--

DROP TABLE IF EXISTS `lk_menusize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_menusize` (
  `menuSizeID` int(11) NOT NULL,
  `menuSizeName` varchar(50) NOT NULL,
  `width` decimal(2,1) NOT NULL,
  `height` decimal(2,1) NOT NULL,
  PRIMARY KEY (`menuSizeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_menusize`
--

LOCK TABLES `lk_menusize` WRITE;
/*!40000 ALTER TABLE `lk_menusize` DISABLE KEYS */;
INSERT INTO `lk_menusize` VALUES (1,'1 x 1',1.0,1.0),(2,'1.5 x 1',1.5,1.0),(3,'1.5 x 2',1.5,2.0),(4,'2 x 1',2.0,1.0),(5,'2 x 2',2.0,2.0),(6,'3 x 2',3.0,2.0);
/*!40000 ALTER TABLE `lk_menusize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_paymentmethodtype`
--

DROP TABLE IF EXISTS `lk_paymentmethodtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_paymentmethodtype` (
  `paymentMethodTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `paymentMethodTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`paymentMethodTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_paymentmethodtype`
--

LOCK TABLES `lk_paymentmethodtype` WRITE;
/*!40000 ALTER TABLE `lk_paymentmethodtype` DISABLE KEYS */;
INSERT INTO `lk_paymentmethodtype` VALUES (1,'CASH'),(2,'CARD'),(3,'COMPLIMENT'),(4,'VOUCHER'),(5,'OTHER VOUCHER'),(6,'MEMBER DEPOSIT'),(7,'NON SALES'),(8,'BANK');
/*!40000 ALTER TABLE `lk_paymentmethodtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_posaccesscontrol`
--

DROP TABLE IF EXISTS `lk_posaccesscontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_posaccesscontrol` (
  `posAccessID` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `node` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  PRIMARY KEY (`posAccessID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_posaccesscontrol`
--

LOCK TABLES `lk_posaccesscontrol` WRITE;
/*!40000 ALTER TABLE `lk_posaccesscontrol` DISABLE KEYS */;
INSERT INTO `lk_posaccesscontrol` VALUES ('A','Table List','/table','object-group',1),('B','Sales Recapitulation','/sales','newspaper-o',5),('C','Member','/member','address-book',6),('D','Member Deposit','/member-deposit','money',7),('E','Member Withdrawal','/member-withdrawal','credit-card',8),('F','Shift In / Out','/shift','clock-o',9),('G','Shift Log','/shift-log','ticket',10),('H','Branch Menu','/branch-menu','book',11),('I','Station','/station','inbox',12),('J','Tools','/tools','wrench',13);
/*!40000 ALTER TABLE `lk_posaccesscontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_poscalculation`
--

DROP TABLE IF EXISTS `lk_poscalculation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_poscalculation` (
  `posCalculationID` int(11) NOT NULL,
  `posCalculationName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`posCalculationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_poscalculation`
--

LOCK TABLES `lk_poscalculation` WRITE;
/*!40000 ALTER TABLE `lk_poscalculation` DISABLE KEYS */;
INSERT INTO `lk_poscalculation` VALUES (1,'Before Discount'),(2,'After Discount');
/*!40000 ALTER TABLE `lk_poscalculation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_posexternalpayment`
--

DROP TABLE IF EXISTS `lk_posexternalpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_posexternalpayment` (
  `posExternalPaymentID` varchar(10) NOT NULL,
  `posExternalPaymentName` varchar(50) NOT NULL,
  `posExternalPaymentType` varchar(20) DEFAULT NULL,
  `minimumPaymentAmount` decimal(20,4) DEFAULT '0.0000',
  PRIMARY KEY (`posExternalPaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_posexternalpayment`
--

LOCK TABLES `lk_posexternalpayment` WRITE;
/*!40000 ALTER TABLE `lk_posexternalpayment` DISABLE KEYS */;
INSERT INTO `lk_posexternalpayment` VALUES ('dana','DANA','E-PAYMENT',0.0000),('edcbca','EDC BCA','EDC',0.0000),('edcbni','EDC BNI','EDC',0.0000),('edccimb','EDC CIMB','EDC',0.0000),('gopay','GOPAY','E-PAYMENT',0.0000),('ovo','OVO','E-PAYMENT',0.0000),('qris','QRIS','E-PAYMENT',1500.0000),('wirecard','WIRECARD','EDC',0.0000);
/*!40000 ALTER TABLE `lk_posexternalpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_posfilteraccess`
--

DROP TABLE IF EXISTS `lk_posfilteraccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_posfilteraccess` (
  `posAccessID` varchar(10) NOT NULL,
  `filterAccessID` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `subNodes` varchar(500) NOT NULL,
  `action` text,
  `orderID` int(11) DEFAULT NULL,
  PRIMARY KEY (`posAccessID`,`filterAccessID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_posfilteraccess`
--

LOCK TABLES `lk_posfilteraccess` WRITE;
/*!40000 ALTER TABLE `lk_posfilteraccess` DISABLE KEYS */;
INSERT INTO `lk_posfilteraccess` VALUES ('A','A1','Create Order','/take-away,/take-away-classic','order/book-table,order/view,table,table/use,order/update,order/print-order,order/print-checker,order/print-all-checker,order/request-bill,order/print-bill,order/take-away,order/index-take-away,order/request-bill,user/check-session,user/login,user/get-user,user/logout,user/change-password,menu,voucher,voucher/validate',1),('A','A10','Add Promotion','','promo,promo/apply-bill,promo/apply-order-head,promo/apply-order-menu,promo/get-subs-menu',10),('A','A12','Split Bill','',NULL,12),('A','A13','Open Price','',NULL,13),('A','A14','Print Bill','',NULL,14),('A','A15','Order Fee','',NULL,15),('A','A16','Delivery Cost','',NULL,16),('A','A17','Deposit Receivable','',NULL,17),('A','A18','Promotion Authorization','',NULL,18),('A','A2','Cancel Order','',NULL,2),('A','A3','Merge Table','','order/merge',3),('A','A4','Move Table','',NULL,4),('A','A5','Move Item','',NULL,5),('A','A6','Link Table','','order/link',6),('A','A7','Cancel Table','','order/cancel-table',7),('A','A8','Payment Auth Payment Method','',NULL,8),('A','A9','Save Payment','/payment,/take-away/payment,/take-away-classic/payment','payment,setting/get-payment-method,payment/view,payment/create,payment/view-for-edit,payment/print,payment/reprint,payment/print-edited,payment/print-void',9),('B','B1','Today Sales','','sales,sales/view',1),('B','B10','Backdate Void Sales Item','','sales/menu-void',10),('B','B2','History Sales','',NULL,2),('B','B3','Reprint Receipt','',NULL,3),('B','B4','Edit Payment','/edit-payment',NULL,4),('B','B5','Void Sales','','sales/void',5),('B','B6','Edit Remarks','','sales/update-rermarks',6),('B','B7','Void Sales Item','','sales/menu-void',7),('B','B8','Backdate Edit Payment','/edit-payment','',8),('B','B9','Backdate Void Sales','','sales/void',9),('C','C1','Member List','','member,member/view',1),('C','C2','Create Member','/add','member/create',2),('C','C3','Edit Member','/edit','member/update',3),('D','D1','Deposit List','','deposit',1),('D','D2','Create Deposit','/add','deposit/create,deposit/print',2),('D','D3','Deposit Auth Payment Method','',NULL,3),('E','E1','Withdrawal List','','withdrawal',1),('E','E2','Create Withdrawal','/add','withdrawal/create,withdrawal/print',2),('E','E3','Withdrawal Auth Payment Method','',NULL,3),('F','F1','View Current Shift','','shift,shift/current',1),('F','F2','Shift In','','shift/in',2),('F','F3','End Shift','','shift/end,shift/print-end',3),('F','F4','Shift Out','','shift/out',4),('F','F5','Show Shift Detail','','shift',5),('F','F6','Start Day More Than 1 Times','','',6),('G','G1','Shift Log List','','shift/print-out',1),('G','G2','Shift Detail','','shift/view',2),('G','G3','Reprint Shift Report','',NULL,3),('H','H1','Branch Menu List','/sold-out-limit-info',NULL,1),('H','H2','Edit Branch menu','','branch-menu/save',2),('I','I1','Station List','',NULL,1),('I','I2','Edit Station','','station/save',2),('J','J1','Edit POS Setting','','setting,setting/local,setting/local-setting,setting/get-cancel-reason,setting/get-cash-denom,setting/get-gender,setting/get-notes,setting/get-payment-method,setting/get-pos-data,setting/get-printer-connection,setting/get-printer-type,setting/get-station,setting/get-visit-purpose,setting/unsubscribe-to-topic,setting/save,setting/save-shift-out-printing-settings,setting/get-dual-display-image,pos-update,pos-update/check-version,pos-update/apply-update',1),('J','J2','Test Print','','setting/test-print',2),('J','J3','Open Drawer','','setting/open-drawer',3),('J','J4','Synchronize Data','','sync,sync/push,sync/fetch,install,install/get-branch,install/run,migrate,migrate/get-branch,migrate/run',4),('J','J5','Edit Printing Setting','',NULL,5),('J','J6','Branch Event List','',NULL,6),('J','J7','Reporting','','shift',7),('J','J8','Promotion List','','',8),('K','K1','Special Withdrawal List','','withdrawal',1),('K','K2','Create Special Withdrawal','/add','withdrawal/create,withdrawal/print',2);
/*!40000 ALTER TABLE `lk_posfilteraccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_posmode`
--

DROP TABLE IF EXISTS `lk_posmode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_posmode` (
  `posModeID` int(11) NOT NULL AUTO_INCREMENT,
  `posModeName` varchar(50) NOT NULL,
  PRIMARY KEY (`posModeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_posmode`
--

LOCK TABLES `lk_posmode` WRITE;
/*!40000 ALTER TABLE `lk_posmode` DISABLE KEYS */;
INSERT INTO `lk_posmode` VALUES (1,'Full Services'),(2,'Quick Services');
/*!40000 ALTER TABLE `lk_posmode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_printerconnection`
--

DROP TABLE IF EXISTS `lk_printerconnection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_printerconnection` (
  `printerConnectionID` int(11) NOT NULL AUTO_INCREMENT,
  `printerConnectionName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`printerConnectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_printerconnection`
--

LOCK TABLES `lk_printerconnection` WRITE;
/*!40000 ALTER TABLE `lk_printerconnection` DISABLE KEYS */;
INSERT INTO `lk_printerconnection` VALUES (1,'Network Printer Connection'),(2,'Windows Printer Connection'),(3,'Android Bluetooth Connection'),(4,'Android Network Connection'),(5,'Cups Printer Connection'),(6,'ODS Printer Connection');
/*!40000 ALTER TABLE `lk_printerconnection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_printertype`
--

DROP TABLE IF EXISTS `lk_printertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_printertype` (
  `printerTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `printerTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`printerTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_printertype`
--

LOCK TABLES `lk_printertype` WRITE;
/*!40000 ALTER TABLE `lk_printertype` DISABLE KEYS */;
INSERT INTO `lk_printertype` VALUES (1,'Thermal Printer'),(2,'Sticker Printer'),(3,'Dot Matrix Printer'),(4,'Star mPOP Printer'),(5,'Thermal CX-58D'),(6,'Epson Sticker Printer'),(7,'Gprinter Sticker'),(8,'Sato Printer'),(9,'Zebra Printer'),(10,'Bixolon Printer'),(11,'Brother Printer');
/*!40000 ALTER TABLE `lk_printertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_printingmode`
--

DROP TABLE IF EXISTS `lk_printingmode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_printingmode` (
  `printingModeID` int(11) NOT NULL AUTO_INCREMENT,
  `printingModeName` varchar(50) NOT NULL,
  PRIMARY KEY (`printingModeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_printingmode`
--

LOCK TABLES `lk_printingmode` WRITE;
/*!40000 ALTER TABLE `lk_printingmode` DISABLE KEYS */;
INSERT INTO `lk_printingmode` VALUES (1,'Standard Printing'),(2,'Single Menu Printing'),(3,'Qty Menu Printing');
/*!40000 ALTER TABLE `lk_printingmode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_promotionmembertype`
--

DROP TABLE IF EXISTS `lk_promotionmembertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_promotionmembertype` (
  `promotionMemberTypeID` int(11) NOT NULL,
  `promotionMemberTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`promotionMemberTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_promotionmembertype`
--

LOCK TABLES `lk_promotionmembertype` WRITE;
/*!40000 ALTER TABLE `lk_promotionmembertype` DISABLE KEYS */;
INSERT INTO `lk_promotionmembertype` VALUES (0,'All Transaction'),(1,'Member & Staff'),(2,'Staff Only'),(3,'Member Only');
/*!40000 ALTER TABLE `lk_promotionmembertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_promotiontype`
--

DROP TABLE IF EXISTS `lk_promotiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_promotiontype` (
  `promotionTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionTypeDesc` varchar(50) NOT NULL,
  PRIMARY KEY (`promotionTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_promotiontype`
--

LOCK TABLES `lk_promotiontype` WRITE;
/*!40000 ALTER TABLE `lk_promotiontype` DISABLE KEYS */;
INSERT INTO `lk_promotiontype` VALUES (1,'DISCOUNT (%)'),(3,'BILL DISCOUNT(RP)'),(4,'FREE ITEM'),(5,'PROMO DISCOUNT (%) EZO'),(6,'PROMO DISCOUNT (Rp) EZO'),(7,'MENU SUBSTITUTION'),(8,'MENU SPECIAL PRICE EZO'),(9,'MENU DISCOUNT(RP)'),(10,'DISCOUNT LIMIT (%)'),(11,'OPEN BILL DISCOUNT (%)'),(12,'OPEN BILL DISCOUNT (RP)'),(13,'PROMO DELIVERY');
/*!40000 ALTER TABLE `lk_promotiontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_status`
--

DROP TABLE IF EXISTS `lk_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_status` (
  `statusID` int(11) NOT NULL AUTO_INCREMENT,
  `statusName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`statusID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_status`
--

LOCK TABLES `lk_status` WRITE;
/*!40000 ALTER TABLE `lk_status` DISABLE KEYS */;
INSERT INTO `lk_status` VALUES (1,'New'),(2,'Rejected'),(3,'Authorized'),(4,'Receiving'),(5,'Received'),(6,'Delivering'),(7,'Delivered'),(8,'Finished'),(9,'Half Paid'),(10,'Full Paid'),(11,'Invoice'),(12,'Cancelled'),(13,'Preparing'),(14,'Served'),(15,'Billing'),(16,'In Progress'),(17,'Result Sign Off'),(18,'Production Finished'),(19,'Print Cancelled'),(20,'Active'),(21,'Not Active'),(22,'Redeem'),(23,'Expired'),(24,'Void'),(25,'Closed'),(26,'Pending Release'),(27,'Released'),(28,'Available'),(30,'Partially Completed'),(31,'Completed'),(32,'Partially Released'),(33,'Pending'),(34,'Prepared'),(35,'Processed'),(36,'Process Refund'),(37,'Refunded'),(38,'Waiting For Approval'),(39,'Full Returned'),(40,'Finish by Outlet'),(41,'Draft');
/*!40000 ALTER TABLE `lk_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_tabletype`
--

DROP TABLE IF EXISTS `lk_tabletype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lk_tabletype` (
  `tableTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `tableTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tableTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_tabletype`
--

LOCK TABLES `lk_tabletype` WRITE;
/*!40000 ALTER TABLE `lk_tabletype` DISABLE KEYS */;
INSERT INTO `lk_tabletype` VALUES (1,'Square'),(2,'Rectangle'),(3,'Circle'),(4,'Small Square'),(5,'Small Rectangle');
/*!40000 ALTER TABLE `lk_tabletype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_branchposcustomerdisplay`
--

DROP TABLE IF EXISTS `map_branchposcustomerdisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_branchposcustomerdisplay` (
  `posCustomerDisplayID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`posCustomerDisplayID`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_branchposcustomerdisplay`
--

LOCK TABLES `map_branchposcustomerdisplay` WRITE;
/*!40000 ALTER TABLE `map_branchposcustomerdisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_branchposcustomerdisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_branchvisitpurpose`
--

DROP TABLE IF EXISTS `map_branchvisitpurpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_branchvisitpurpose` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) DEFAULT NULL,
  `visitPurposeID` int(11) DEFAULT NULL,
  `additionalTaxValue` decimal(20,4) DEFAULT NULL,
  `flagOtherTaxVat` tinyint(1) DEFAULT NULL,
  `taxValue` decimal(20,4) DEFAULT NULL,
  `orderFee` decimal(20,4) DEFAULT NULL,
  `menuTemplateID` int(11) DEFAULT NULL,
  `flagSelfOrder` tinyint(1) DEFAULT NULL,
  `pendingOrder` tinyint(1) DEFAULT '0',
  `flagKiosk` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_branchvisitpurpose`
--

LOCK TABLES `map_branchvisitpurpose` WRITE;
/*!40000 ALTER TABLE `map_branchvisitpurpose` DISABLE KEYS */;
INSERT INTO `map_branchvisitpurpose` VALUES (35,9,3,0.0000,1,10.0000,0.0000,14,0,0,0),(36,9,1,0.0000,1,10.0000,0.0000,13,0,0,1);
/*!40000 ALTER TABLE `map_branchvisitpurpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_menuicon`
--

DROP TABLE IF EXISTS `map_menuicon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_menuicon` (
  `menuIconID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  PRIMARY KEY (`menuIconID`,`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_menuicon`
--

LOCK TABLES `map_menuicon` WRITE;
/*!40000 ALTER TABLE `map_menuicon` DISABLE KEYS */;
INSERT INTO `map_menuicon` VALUES (1,50),(1,54),(1,368),(2,367),(5,377);
/*!40000 ALTER TABLE `map_menuicon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_menutemplatelayout`
--

DROP TABLE IF EXISTS `map_menutemplatelayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_menutemplatelayout` (
  `menuTemplateID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `menuSizeID` int(11) NOT NULL,
  `posX` int(11) NOT NULL,
  `posY` int(11) NOT NULL,
  PRIMARY KEY (`menuTemplateID`,`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_menutemplatelayout`
--

LOCK TABLES `map_menutemplatelayout` WRITE;
/*!40000 ALTER TABLE `map_menutemplatelayout` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_menutemplatelayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_selfordercampaignbranch`
--

DROP TABLE IF EXISTS `map_selfordercampaignbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_selfordercampaignbranch` (
  `selfOrderCampaignID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`selfOrderCampaignID`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_selfordercampaignbranch`
--

LOCK TABLES `map_selfordercampaignbranch` WRITE;
/*!40000 ALTER TABLE `map_selfordercampaignbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_selfordercampaignbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_selfordercampaignbranchdetail`
--

DROP TABLE IF EXISTS `map_selfordercampaignbranchdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_selfordercampaignbranchdetail` (
  `selfOrderCampaignID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `usedQty` decimal(20,4) NOT NULL,
  PRIMARY KEY (`selfOrderCampaignID`,`branchID`,`detailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_selfordercampaignbranchdetail`
--

LOCK TABLES `map_selfordercampaignbranchdetail` WRITE;
/*!40000 ALTER TABLE `map_selfordercampaignbranchdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_selfordercampaignbranchdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_selforderpaymentmethod`
--

DROP TABLE IF EXISTS `map_selforderpaymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_selforderpaymentmethod` (
  `selfOrderPaymentMethodID` varchar(10) NOT NULL,
  `branchID` int(11) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  PRIMARY KEY (`selfOrderPaymentMethodID`,`branchID`,`paymentMethodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_selforderpaymentmethod`
--

LOCK TABLES `map_selforderpaymentmethod` WRITE;
/*!40000 ALTER TABLE `map_selforderpaymentmethod` DISABLE KEYS */;
INSERT INTO `map_selforderpaymentmethod` VALUES ('dana',9,10),('ovo',9,9);
/*!40000 ALTER TABLE `map_selforderpaymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_stationposcustomerdisplay`
--

DROP TABLE IF EXISTS `map_stationposcustomerdisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_stationposcustomerdisplay` (
  `posCustomerDetailID` int(11) NOT NULL,
  `stationID` int(11) NOT NULL,
  PRIMARY KEY (`posCustomerDetailID`,`stationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_stationposcustomerdisplay`
--

LOCK TABLES `map_stationposcustomerdisplay` WRITE;
/*!40000 ALTER TABLE `map_stationposcustomerdisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_stationposcustomerdisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1614657577),('m191019_045741_init_db_v_2_1',1614657582),('m191019_103601_create_map_branchvisitpurpose',1614657582),('m191019_103602_add_action_lk_posfilteraccess',1614657582),('m191019_103603_add_branch_settings_ms_branch',1614657583),('m191019_103604_add_menu_code_ms_menu',1614657583),('m191019_103605_create_ms_menutemplatedetail',1614657583),('m191019_103606_create_ms_menutemplatehead',1614657583),('m191019_103607_add_settings_ms_paymentmethod',1614657583),('m191019_103608_add_flag_member_ms_promotionhead',1614657583),('m191019_103609_add_member_code_tr_depositwithdrawalhead',1614657583),('m191019_103610_add_member_code_tr_memberdeposit',1614657583),('m191019_103611_add_bill_num_tr_saleshead',1614657584),('m191019_103612_add_member_code_tr_saleshead',1614657584),('m191019_103613_add_idx_table_id_tr_saleshead',1614657584),('m191019_103614_add_original_price_tr_salesmenu',1614657584),('m191019_103615_add_full_payment_amount_tr_salespayment',1614657584),('m191019_103616_insert_ms_setting_v_2_2_8',1614657584),('m191023_110329_insert_printer_lk_printertype',1614657584),('m191023_110721_insert_ms_settings_v_2_2_9',1614657584),('m191023_112135_insert_procedure_spESBTable',1614657584),('m191023_112135_insert_procedure_spESBTableApi',1614657584),('m191023_113640_insert_procedure_spESBOutstandingTable',1614657584),('m191023_113917_insert_procedure_spESBOutstandingOrder',1614657584),('m191023_113917_insert_procedure_spESBOutstandingOrderApi',1614657584),('m191023_114029_insert_procedure_spESBBilledOrder',1614657584),('m191023_114029_insert_procedure_spESBBilledOrderApi',1614657584),('m191026_025505_insert_ms_settings_v_2_2_10',1614657584),('m191026_034620_add_flag_inclusive_ms_menutemplatehead',1614657584),('m191028_104912_insert_ms_settings_v_2_2_11',1614657584),('m191112_042657_insert_ms_settings_v_2_3_0',1614657584),('m191112_043721_create_tr_queue',1614657585),('m191112_055954_add_company_code_ms_branch',1614657585),('m191112_063600_create_tr_notification',1614657585),('m191112_071634_create_tr_salesmenucompletion',1614657585),('m191112_075106_add_self_order_id_tr_sales_payment',1614657585),('m191112_075804_create_map_selforderpaymentmethod',1614657585),('m191112_090649_add_flag_self_order_map_branchvisitpurpose',1614657585),('m191112_113508_add_imageurl_ms_menu',1614657585),('m191112_114958_add_description_ms_menu',1614657585),('m191114_094907_add_imageurl_ms_menu_category_detail',1614657585),('m191115_062234_create_tr_temp_order',1614657586),('m191120_024117_add_setting_print_checker_ms_setting',1614657586),('m191124_025502_insert_ms_settings_v_2_4_1',1614657586),('m191129_114352_insert_ms_setting_checker_mode',1614657586),('m191205_092535_add_flag_kiosk_map_branchvisitpurpose',1614657586),('m191230_060008_create_hub_menu',1614657586),('m191230_060030_create_hub_host',1614657586),('m191230_090245_create_hub_menu',1614657586),('m191230_090506_create_hub_host',1614657586),('m191231_070315_alter_column_paymentmethodid_coano_hub',1614657586),('m200107_112537_alter_column_menucategorydetailid_menuid',1614657587),('m200108_034150_alter_column_postaxcalculationid_posothertaxcalculationid',1614657587),('m200108_085424_alter_value_tr_salesmenu',1614657587),('m200109_092153_alter_value_tr_salesmenuextra',1614657587),('m200110_075032_alter_flaginclusive_tr_saleshead',1614657588),('m200113_113255_printing_kitchen_date_time_ms_setting',1614657588),('m200114_045031_alter_column_menu_category_id_ms_promotioncategory',1614657588),('m200116_024418_insert_hide_tax_ms_setting',1614657588),('m200116_065818_add_printing_kitchen_visit_purpose_ms_setting',1614657588),('m200116_073041_insert_uac_show_shift_detail',1614657588),('m200120_040323_alter_column_flag_menu_package_extra_ms_promotionhead',1614657588),('m200127_072154_add_non_sales_bill_menu_ms_setting',1614657588),('m200204_023409_add_show_billing_visit_purpose_ms_setting',1614657588),('m200205_070919_create_ms_promotiontime',1614657588),('m200212_043741_alter_column_posmodeid_ms_branch',1614657588),('m200212_044130_create_lk_posmode',1614657588),('m200212_045133_insert_value_lk_posmode',1614657588),('m200212_100754_create_lk_printingmode',1614657588),('m200212_103632_alter_column_flag_single_menu_print_ms_station',1614657589),('m200213_071518_add_sales_mode_ms_setting',1614657589),('m200213_072343_add_show_sales_number_ms_setting',1614657589),('m200213_075420_add_printing_end_shift_ms_setting',1614657589),('m200213_083913_add_printing_order_ms_setting',1614657589),('m200214_093305_alter_column_image_ms_tablesection',1614657589),('m200217_022501_alter_column_voucherdiscounttotal_tr_saleshead',1614657589),('m200217_022515_alter_column_vouchertypeid_ms_paymentmethod',1614657589),('m200217_022535_alter_column_vouchercode_tr_salespayment',1614657589),('m200217_022550_create_table_tr_salesvoucherusage',1614657589),('m200217_050547_add_rounding_decimal_ms_setting',1614657589),('m200218_040030_add_print_shift_sales_by_menu_value_ms_setting',1614657589),('m200218_041707_insert_swipe_code_ms_setting',1614657589),('m200218_041958_add_column_employee_code_tr_saleshead',1614657590),('m200220_042317_insert_branch_event_lk_posfilteraccess',1614657590),('m200221_022028_alter_column_fixedamount_ms_paymentmethod',1614657590),('m200226_035301_create_lk_poscalculation',1614657590),('m200226_050115_add_column_remarks_tr_saleshead',1614657590),('m200226_051306_add_edit_remarks_lk_posfilteraccess',1614657590),('m200226_082305_insert_sales_by_menu_group_ms_setting',1614657590),('m200227_053245_insert_uac_reporting',1614657590),('m200227_082138_create_sp_outstanding_table',1614657590),('m200304_074328_add_column_openprice_ms_menu',1614657590),('m200306_024147_insert_ms_setting_print_guest_comment_qr',1614657590),('m200306_024223_insert_ms_setting_guest_comment_qr_text',1614657590),('m200306_024934_insert_split_bill_access_control_posfilteraccess',1614657590),('m200306_031846_insert_split_bill_access_control_ms_posuseraccess',1614657590),('m200306_043507_insert_ms_setting_print_sales_menu_by_mode',1614657590),('m200316_074228_alter_column_vouchercode_tr_salespayment',1614657590),('m200317_093440_create_ms_tendcard',1614657591),('m200318_044000_add_column_sales_type_tr_salesmenu',1614657591),('m200319_030532_insert_ms_setting_ezo_ta_print_receipt',1614657591),('m200319_085642_insert_ms_setting_ezo_fs_print_table_checker',1614657591),('m200324_043143_add_column_orderid_ms_menucategory',1614657591),('m200324_043444_add_column_orderid_ms_menucategorydetail',1614657591),('m200324_044241_add_column_orderid_ms_menutemplatedetail',1614657591),('m200326_024557_create_ms_specialpricehead',1614657591),('m200326_024606_create_ms_specialpriceday',1614657591),('m200326_024612_create_ms_specialpricemenu',1614657592),('m200326_024618_create_ms_specialpricetime',1614657592),('m200326_134338_alter_column_checkerstationid_stationid_ms_branchmenu',1614657592),('m200327_071112_insert_uac_void_sales_item',1614657592),('m200328_061754_alter_posexternalpaymentid_ms_paymentmethod',1614657592),('m200402_075039_create_tr_salesordercampaign',1614657592),('m200402_141107_insert_ms_setting_marugame_directory',1614657592),('m200406_024819_add_column_tr_saleshead',1614657593),('m200406_080225_create_lk_promotionmembertype',1614657593),('m200406_081137_insert_value_lk_promotionmembertype',1614657593),('m200406_082653_insert_ms_setting_employee_type',1614657593),('m200406_090001_create_ms_brand',1614657593),('m200406_094814_add_column_brandid_ms_branch',1614657593),('m200406_114202_alter_value1_value2_ms_setting',1614657593),('m200409_033826_insert_qrtext_ms_setting',1614657593),('m200409_073512_lk_brandsetting',1614657593),('m200409_073524_ms_brandsetting',1614657593),('m200420_032220_create_ms_brandapicontent',1614657594),('m200420_044351_add_column_voucherSourceID_ms_paymentmethod',1614657594),('m200420_133439_add_column_externalvoucher_tr_salespayment',1614657594),('m200424_050829_inser_print_visit_purpose_ms_setting',1614657594),('m200424_071428_add_receipt_qr_code_encryption_ms_setting',1614657594),('m200430_015539_add_column_delivery_cost_tr_saleshead',1614657595),('m200430_042259_insert_delivery_cost_tax_ms_setting',1614657595),('m200505_020009_create_map_selfordercampaignbranch',1614657595),('m200505_020055_create_map_selfordercampaignbranchdetail',1614657595),('m200505_020125_create_ms_question',1614657595),('m200505_020133_create_ms_questionoption',1614657595),('m200505_020203_create_ms_selfordercampaignhead',1614657595),('m200505_020221_create_ms_selfordercampaignitem',1614657595),('m200505_020336_create_tr_questionanswer',1614657595),('m200506_082801_alter_ms_question',1614657595),('m200512_083936_alter_column_transactionmodeid_tr_saleshead',1614657596),('m200514_131127_add_column_menurefid_menuextra',1614657596),('m200515_081732_add_column_flag_separate_print_package_ms_menu',1614657596),('m200518_034611_insert_ms_setting_guest_comment_url',1614657596),('m200526_054946_insert_ms_setting',1614657596),('m200528_100449_add_column_promotionmembertypeid_ms_promotionhead',1614657596),('m200529_034322_create_table_tr_receipttexthead',1614657596),('m200529_044525_create_table_tr_receipttextdetail',1614657597),('m200529_073111_add_column_flaguseemployeelimit_ms_paymentmethod',1614657597),('m200603_054821_create_table_map_menutemplatelayout',1614657597),('m200603_060453_create_table_lk_menusize',1614657597),('m200604_102012_insert_ordertimeout_ms_setting',1614657597),('m200604_104910_add_column_ordertimeout_tr_saleshead',1614657597),('m200605_025003_insert_print_summary_special_price_ms_setting',1614657597),('m200605_060845_add_column_locktable_tr_saleshead',1614657598),('m200611_015121_add_column_altmenuname_ms_menu',1614657598),('m200611_020256_create_ms_menuicon',1614657598),('m200611_020309_create_map_menuicon',1614657598),('m200614_052757_alter_column_ms_paymentmethod',1614657598),('m200614_052807_alter_column_tr_salespayment',1614657599),('m200615_033531_create_lk_posexternalpayment',1614657599),('m200616_043016_create_tr_devicetransaction',1614657599),('m200616_043929_alter_column_ms_selfordercampaignhead',1614657599),('m200616_060815_create_table_ms_menutemplatecategory',1614657599),('m200616_061243_create_table_ms_menutemplatecategorydetail',1614657599),('m200618_014521_alter_print_sales_by_menu',1614657599),('m200618_014551_insert_print_sales_by_menu_qty',1614657599),('m200622_022550_create_tr_salesinfo',1614657600),('m200622_034906_add_column_ms_paymentmethod',1614657600),('m200624_022813_add_column_terminalid_tr_saleshead',1614657600),('m200624_041736_alter_ms_setting',1614657600),('m200625_040308_add_column_minqty_ms_selfordercampaignhead',1614657600),('m200629_063833_add_column_flag_dine_in_ms_visitpurpose',1614657600),('m200629_064314_add_column_flag_quick_service_ms_visitpurpose',1614657600),('m200701_022639_add_column_tr_devicetransaction',1614657600),('m200703_031118_create_table_ms_employee',1614657600),('m200703_070040_add_column_station_id_ms_table',1614657601),('m200710_105518_insert_local_setting_print_sales_per_menu_category',1614657601),('m200715_032445_insert_lk_promotiontype_menu_discount_rp',1614657601),('m200720_054614_insert_initial_menu_template_category',1614657601),('m200720_054622_insert_initial_menu_template_category_detail',1614657601),('m200721_022939_add_column_custommenuname_tr_salesmenu',1614657601),('m200721_072223_insert_print_custom_menu_sales',1614657601),('m200727_085756_insert_dinein_print_checker',1614657601),('m200729_042325_add_index_ms_menutemplatedetail',1614657602),('m200803_031946_add_column_inclusive_discount_value_tr_salesmenu',1614657602),('m200803_034555_add_column_inclusive_discount_value_tr_salesmenuextra',1614657602),('m200803_065452_update_soldoutlimitinfo_lk_posfilteraccess',1614657602),('m200804_015407_add_column_inclusive_price_tr_salesmenu',1614657602),('m200804_015429_add_column_inclusive_price_tr_salesmenuextra',1614657602),('m200804_061701_insert_menu_subtitution_lk_promotionype',1614657602),('m200804_062025_add_column_menuSubsID_ms_promotiondetail',1614657603),('m200804_064506_create_view_tax_jakarta',1614657603),('m200805_045617_add_column_paymentmethodcode_ms_paymentmethod',1614657603),('m200811_064557_create_table_ms_employeegroup',1614657603),('m200811_064607_create_table_ms_employeegroupdetail',1614657603),('m200811_064621_create_table_ms_promotionemployeegroup',1614657603),('m200822_135400_add_column_extBranchCode_ms_branch',1614657603),('m200827_025903_insert_show_menu_promotion_on_receipt_ms_setting',1614657603),('m200902_082751_update_preamountmessage_ms_selfordercampaignhead',1614657603),('m200902_111505_insert_lk_promotiontype',1614657603),('m200903_022804_add_access_backdate_edit_payment_void_sales',1614657603),('m200904_064151_create_ms_poscustomerdisplayhead',1614657604),('m200904_064727_create_ms_poscustomerdisplaydetail',1614657604),('m200904_065102_create_map_branchposcustomerdisplay',1614657604),('m200907_094051_fix_table_mapbranchposcustomerdisplay',1614657604),('m200909_032216_create_mapstationposcustomerdisplay',1614657604),('m200909_100420_fix_msposcustomerdisplaydetail_auto_increment',1614657604),('m200910_030638_add_flagshowezo_msbranchmenu_msmenutemplatedetail',1614657604),('m200910_063546_add_column_queue_tr_saleshead',1614657605),('m200911_063755_add_fee_order_map_branch_visit_purpose',1614657605),('m200911_063845_add_fee_order_tr_saleshead',1614657605),('m200911_072336_alter_table_queuenum_tr_saleshead',1614657605),('m200913_023345_add_index_ms_branchmenu_menuID',1614657605),('m200916_022254_create_tr_salesmenuqueue',1614657605),('m200916_151559_create_table_ms_productdetailmenu',1614657605),('m200916_152738_create_table_tr_branchmenutransaction',1614657605),('m200918_070854_alter_column_notes_tr_salesmenu',1614657606),('m200921_073740_add_column_external_membership_type_id_tr_saleshead',1614657606),('m200928_040645_add_column_paymentMethodID_ms_promotionhead',1614657606),('m201007_091602_insert_access_printbill',1614657606),('m201008_092406_insert_posuseraccess_print_bill',1614657606),('m201016_114758_add_column_orderID_ms_menuextra',1614657606),('m201102_024226_insert_access_orderfee_deliverycost',1614657606),('m201102_095928_create_tr_salesshiftpaymentdetail',1614657606),('m201102_095934_create_tr_salesshiftpaymenthead',1614657606),('m201104_065710_add_column_buttonColor_ms_menuextra',1614657606),('m201110_055926_insert_access_deposit_receivable',1614657606),('m201111_030034_create_table_ms_vouchertemplate',1614657606),('m201113_093434_add_index_syncDate_tr_branchevent',1614657606),('m201118_075604_insert_access_promotion_authorization',1614657606),('m201118_080732_add_column_flagAuthorization_ms_promotionhead',1614657607),('m201119_114047_update_ms_setting',1614657607),('m201123_030014_create_sync_optimize',1614657607),('m201123_074238_alter_table_brandcontent',1614657607),('m201126_025308_add_column_orderID_menuPackage',1614657607),('m201126_025316_add_column_orderID_menuGroup',1614657607),('m201126_055346_alter_tbl_salesmenu_pendingorder',1614657607),('m201127_093408_create_table_ms_visitortype',1614657607),('m201127_094448_add_column_visitortypeid_tr_saleshead',1614657608),('m201210_035513_add_column_max_usage_self_order_campaign',1614657608),('m201218_084501_add_column_expectedpayment_tr_salesshiftpayment',1614657608),('m201222_081139_add_column_id_tr_salesmenuqueue',1614657608),('m210112_100303_alter_table_mapbranchvisitpurpose_pendingorder',1614657608),('m210114_044421_create_tbl_notificationhead',1614657608),('m210114_045722_create_tbl_notificationdetail',1614657609),('m210119_111244_create_table_msbranchbusinesshour',1614657609),('m210121_092552_create_tbl_salesshiftpaymentdenom',1614657609),('m210125_025634_add_column_minimumpaymentamount_lkposexternalpayment',1614657609),('m210201_085403_alter_table_ms_notificationhead',1614657609),('m210203_082252_delete_print_sales_visit_purpose_ms_setting',1614657609),('m210222_034733_add_flag_edc_active_ms_paymentmethod',1614657609),('m210223_052134_update_saleshead_syncdate_issue',1614657609),('m210223_053749_update_esb_order_fs_url',1614657609),('m210223_053809_update_esb_order_qs_url',1614657609),('m210224_154512_insert_print_by_visit_purpose',1614657609);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_branch`
--

DROP TABLE IF EXISTS `ms_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_branch` (
  `branchID` int(11) NOT NULL AUTO_INCREMENT,
  `companyCode` varchar(5) DEFAULT NULL,
  `branchTypeID` int(11) NOT NULL,
  `branchCode` varchar(20) DEFAULT NULL,
  `extBranchCode` varchar(20) DEFAULT NULL,
  `branchName` varchar(50) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `printingHeader` varchar(500) NOT NULL,
  `printingFooter` varchar(500) NOT NULL,
  `printingCheckerFooter` varchar(500) DEFAULT NULL,
  `additionalTaxName` varchar(100) NOT NULL,
  `additionalTaxValue` decimal(18,2) NOT NULL,
  `flagOtherTaxVat` tinyint(1) NOT NULL,
  `image` longtext,
  `menuTemplateID` int(11) DEFAULT NULL,
  `posModeID` int(11) DEFAULT '0',
  `posTaxCalculationID` int(11) DEFAULT '0',
  `posOtherTaxCalculationID` int(11) DEFAULT '0',
  `brandID` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`branchID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_branch`
--

LOCK TABLES `ms_branch` WRITE;
/*!40000 ALTER TABLE `ms_branch` DISABLE KEYS */;
INSERT INTO `ms_branch` VALUES (9,'TRN',2,'ETK',NULL,'Es Teh Indonesia - Kebon Jeruk','','+62-10212013131','Es Teh Indonesia\r>><<Kebon Jeruk','-- Thank You --','','Service Charge',0.00,1,NULL,NULL,3,2,2,1,1,'TRNVIN','2021-01-14 15:51:55','TRNVIN','2021-02-02 17:13:56');
/*!40000 ALTER TABLE `ms_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_branchbusinesshour`
--

DROP TABLE IF EXISTS `ms_branchbusinesshour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_branchbusinesshour` (
  `branchID` int(11) NOT NULL,
  `dayID` int(11) NOT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  PRIMARY KEY (`branchID`,`dayID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_branchbusinesshour`
--

LOCK TABLES `ms_branchbusinesshour` WRITE;
/*!40000 ALTER TABLE `ms_branchbusinesshour` DISABLE KEYS */;
INSERT INTO `ms_branchbusinesshour` VALUES (9,1,NULL,NULL),(9,2,NULL,NULL),(9,3,NULL,NULL),(9,4,NULL,NULL),(9,5,NULL,NULL),(9,6,NULL,NULL),(9,7,NULL,NULL);
/*!40000 ALTER TABLE `ms_branchbusinesshour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_branchmenu`
--

DROP TABLE IF EXISTS `ms_branchmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_branchmenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `checkerStationID` varchar(50) DEFAULT NULL,
  `stationID` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `flagSoldOut` tinyint(1) NOT NULL,
  `flagShowEzo` int(1) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_branchMenu_menuID` (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_branchmenu`
--

LOCK TABLES `ms_branchmenu` WRITE;
/*!40000 ALTER TABLE `ms_branchmenu` DISABLE KEYS */;
INSERT INTO `ms_branchmenu` VALUES (37,9,6,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:05:41'),(38,9,7,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:05:42'),(39,9,9,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:05:43'),(40,9,11,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:05:43'),(41,9,12,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:14'),(42,9,13,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:14'),(43,9,14,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:16'),(44,9,51,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:16'),(45,9,52,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:16'),(46,9,53,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:17'),(47,9,55,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:17'),(48,9,56,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:18'),(49,9,57,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:18'),(50,9,69,'0','0',0,1,NULL,1,'TRNESBHAU','2021-02-08 15:30:22','TRNESBHAU','2021-02-08 15:30:22','2021-02-08 23:11:03'),(51,9,71,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:22'),(52,9,72,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:25'),(53,9,74,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:26'),(54,9,75,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:27'),(55,9,336,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:26'),(56,9,337,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:27'),(57,9,338,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:27'),(58,9,339,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:28'),(59,9,340,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:28'),(60,9,341,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:29'),(61,9,342,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:29'),(62,9,343,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:29'),(63,9,344,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:29'),(64,9,345,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:30'),(65,9,346,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:30'),(66,9,347,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:30'),(67,9,349,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:28'),(68,9,350,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:29'),(69,9,351,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:29'),(70,9,352,'0','0',0,0,NULL,1,'2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:03:35','2021-03-02 11:06:29'),(71,9,353,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-02-18 16:57:22'),(72,9,354,'0','0',0,0,NULL,1,'2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-19 20:30:02','2021-01-20 08:46:31');
/*!40000 ALTER TABLE `ms_branchmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_brand`
--

DROP TABLE IF EXISTS `ms_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_brand` (
  `brandID` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(50) NOT NULL,
  `posXenditApiKey` varchar(100) DEFAULT NULL,
  `posXenditVerificationToken` varchar(100) DEFAULT NULL,
  `posMidtransServerKey` varchar(100) DEFAULT NULL,
  `ezoXenditApiKey` varchar(100) DEFAULT NULL,
  `ezoXenditVerificationToken` varchar(100) DEFAULT NULL,
  `ezoMidtransServerKey` varchar(100) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`brandID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_brand`
--

LOCK TABLES `ms_brand` WRITE;
/*!40000 ALTER TABLE `ms_brand` DISABLE KEYS */;
INSERT INTO `ms_brand` VALUES (1,'QA',NULL,NULL,NULL,NULL,NULL,NULL,1,'TRNANNISA','2020-07-04 18:58:02','TRNANNISA','2020-07-04 18:58:02'),(2,'Duck King',NULL,NULL,NULL,NULL,NULL,NULL,1,'TRNWIL','2020-07-11 19:45:48','TRNWIL','2020-07-11 19:45:48'),(3,'Hoghock',NULL,NULL,NULL,NULL,NULL,NULL,1,'TRNWIL','2020-09-29 16:00:49','TRNWIL','2020-09-29 16:00:49'),(4,'DailyBox',NULL,NULL,NULL,NULL,NULL,NULL,1,'TRNESBHAU','2021-02-08 15:22:30','TRNESBHAU','2021-02-08 15:22:30');
/*!40000 ALTER TABLE `ms_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_brandapicontent`
--

DROP TABLE IF EXISTS `ms_brandapicontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_brandapicontent` (
  `brandID` int(11) NOT NULL,
  `brandSettingID` int(11) NOT NULL,
  `keyAttribute` varchar(200) NOT NULL,
  `valueAttribute` varchar(400) NOT NULL,
  PRIMARY KEY (`brandID`,`brandSettingID`,`keyAttribute`,`valueAttribute`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_brandapicontent`
--

LOCK TABLES `ms_brandapicontent` WRITE;
/*!40000 ALTER TABLE `ms_brandapicontent` DISABLE KEYS */;
INSERT INTO `ms_brandapicontent` VALUES (1,3,'grant_type','uUvqwFlSXOwlLTodwW0dozE5N2EyMzFmNGUxMzllNDBjNWRmYjczMGExMWIyNjAyOGMzMTFjNGRmN2UzMzUxOWQ4MThjYTQ2M2NlYjJjZDFU+er0jNAIwzRlb65zNL2YXMUxfQYXsGEbNsD1NOGrGA=='),(1,3,'password','ACQSP9iyT2H5VapN4FpSV2NlYWI1MGU3NjY5ZmU5OWE5YjJhZjM1OWIwYjg0ZjQ4MzVkYTQwZjFlNDYyOGU4Mzc5MTk5N2JjMzllZjk2MWK3mXmP6ZdhDIQyMzxhkP7h8La5+F3WV3bY1nX5QY0klmip4dY18prgZlIwvApBrkH5FDwlktvXGCsT/gFtVM9j'),(1,3,'username','Ej3nOA7J3vvnIUzriyNhRzZiZDRjNWExMjY2YzM0YmIzOTU0MzdhN2VjNDA4MzZiMGE1MWZhNTAzYTdiMWI2ZjgyN2ZlNzJlZTc3Mjg2NWb9+kari+bMeXV4/gPFwEFrosEEmLF73Z7F+/QepbUILA==');
/*!40000 ALTER TABLE `ms_brandapicontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_brandsetting`
--

DROP TABLE IF EXISTS `ms_brandsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_brandsetting` (
  `brandID` int(11) NOT NULL,
  `brandSettingID` int(11) NOT NULL,
  `value1` text,
  `value2` text,
  PRIMARY KEY (`brandID`,`brandSettingID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_brandsetting`
--

LOCK TABLES `ms_brandsetting` WRITE;
/*!40000 ALTER TABLE `ms_brandsetting` DISABLE KEYS */;
INSERT INTO `ms_brandsetting` VALUES (1,1,'0',''),(1,2,'',''),(1,3,'jkEK3QIKbpb2hwuSikFkbGY2NWMxOTRkM2FlMWRiMzkzMjg1MjFlOWIyNjZjMzcyNzMyYmE1ZWMzYjRiNzk5MWM0NDY2MTBiNWM3M2U4Y2HESdDr3abCxqiD2/wjCWF6I3Npqsu/L4mBECWPnBQ5re2+8ejnn1/5Oz9U8UUi/HXhrxQtHfiwyXh/tPVk1vXQ',''),(1,4,'EVJHEsuUwlbv//bZvfHxBWU5ZTBhMzBlOGZiNWVjNTI1YzY0NDA5YzY4MTE0OWE2ODEzNzJkMTI3MmU2OThjOTFiNzEzMTI5MmU0MzYwYWK4tLFVtzX3WSIqFN/7A561nX0ewZMWHef5jBKEfmpVh/gvj4QxGxtO9usOxpm/y9hunUGyVvaD/jiXvvEqlHcf',''),(1,5,'Wwj4SdVtxAI6gyTDvg2HNjk1YTliZDNiODczYjFlMDg1OTEzZTNkNjJhYjNiZjlmYTI4NTFmZmI5NWQ0YjcyYTliN2I2YzY0YzE3NDVlNGKWa2vKU2hWMTgxPbaZymRMuZbL9VnOjQfhVRFXRqUYP50YHoomOq6aesEEQieT2u/yFAedNH8WWsjn6RsK40M4',''),(1,6,'',''),(1,7,'#ff9900',''),(1,8,'e.g less ice, add chili, extra spice',''),(1,9,'e.g less ice, add chili, extra spice',''),(1,10,'kzxZDjL9HCmPmY0UI70X7DZkNjAwYjAxOWQxOWVmYTFiMWIzZDY2NjcwOWE2YTU0YzIxN2U0OTYwZWMxNDIxY2FhYWZlMzIzYzU5MThmZGan6cUtvoMyBHtBr9l/B2AAku7U6AUO8Wig+p1QiiQGIQ==',''),(1,11,'RVemsL/i3gS8m7ztloi5DjRjODk2NjUzZTkxOTFlNDM4ZWRlZTIwNGE3ZjI0YjZlZDcwMjBlNTY5NDBkNWJhNzJkNDVjMzkxYmE4NTljYTQ7aFcMZZORYNXqr9nIWrhjTiJNoEePR9Yjsqo/Xit7TQjICARfbmdiUcR8KdTSmrECuZSQ6wjSl+I+JO5hpenj',''),(1,12,'xnd_production_3NF1IVthmSQe9QUJgnOdeftjHMOSoCI6N8HsRMeqj7pjuBB386cf4FJR6O3MyE',''),(1,13,'04e35587c71fecf246dcd7747845311d3611b8ad6d47da5f35327ce58ef75c3c',''),(1,14,'xnd_public_production_aqPZJCojBHnwPjIOeUVGbtE7HcT8EWnUqay7DPxIqRE5BJGlXd1272Om0va8rm',''),(1,15,'SB-Mid-server-zSWDRWSQt_89-vuUA9ScjboN',''),(1,16,'esb',''),(1,17,'yopgx',''),(1,18,'ESB',''),(1,19,'yKKEVFqZEwhcocigqxfv3VxHhrXnLYFQ',''),(1,20,'ESB-EZO',''),(1,21,'ESB-EZO',''),(1,22,'',''),(1,23,'',''),(1,24,'Mid-server-ra4POWHeVcxuDVfOQCfW3k61',''),(1,25,NULL,NULL),(1,26,'ID01473',NULL),(1,27,'UalxuYC1s2',NULL),(1,30,NULL,NULL),(1,31,'',NULL),(1,32,'',NULL),(1,33,'',NULL),(1,34,'',NULL),(1,35,'',NULL),(1,36,'',NULL),(1,40,'TTWSoQ7uO1hfZzOsId/YCDkyOThiOWFjNWQ1MjE2ZmRkYzUzODkxMzQ0NDcyZmJhNmUzN2VmMjI2NjU0MmZjZjkyMTYwNjJjMzY0ZWY5ZTVaz8XBR3Va704kh+aVskpGFgsSH4DQVVTJT5l4xLZ0huHom/glZZuAlZ0yeO57PeGegDa01kXcmCybgh0npzxq',''),(1,41,'tsLi8w93k/gqeKKm4rgkLzc3MWE2YzA2NGRlOTg4YmFkOWVhNTJjNDlmYzEwMTE5ZWUxNjIyODU3MDIxMWQyYjYzMTZlMTljYjQzZGIzODU8I2fLYMPw1pls38yHbkEVXCFT6OFNZ1t7uHHAx+Q257awgwf4yu0URxnAlfXs15tW01FXWhvkaKMStayomBn9',''),(1,42,'',NULL),(1,48,NULL,NULL),(1,49,'',''),(1,50,'',''),(1,51,'',''),(1,52,NULL,NULL),(1,55,'',NULL),(1,56,'',NULL),(1,99,NULL,''),(2,1,'0',''),(2,2,'',''),(2,3,'kVq0DxnmpZEii4/cBAQ2STE4MjFhYTViNmYxZTkzM2ZlNzExMzMxOGJkN2FiODJkYmExNjM1NGE2YTZjMWI3NTExYWRkM2NkNGYzODFjOTm3kdWDQRtUjQ3O4gaa2HLtOmxEqs7FVzsPBsudJdVfpQ==',''),(2,4,'GpocQgyMsIQrEjcK7kp79jY5ZmQxZGY4NTViZTRkYTBjNWVlYWE0OTQ0NDIyZGMwN2YxMDhhZTZlZTdkYmQ2MTI3MWZmZmViNWIyODZhOGYTMu+CDbjqCFEKh7Eq60O4FzearS0U2Djl7hr70fFOXg==',''),(2,5,'fjHSw6hi1ZYEHwb8QkDiVGY3OTYxZWU3MjU5ZTg4ZTUzOWFhMjU2ODVkMzRmNmI2Y2JlN2M2NWQxZDBlOTVjYmQ1ZDhhZWIzYjdjMjZkOWUnkq8xZyT5CsUHhskFpsZiTlKxd9Mm0reC8FNHl35X0w==',''),(2,6,'',''),(2,7,'#783f04',''),(2,8,'',''),(2,9,'',''),(2,10,'whnyBgfWKNcNaMEV4TdxZDNjYjdkODE0MDVlZDU0ODMzNzlmMzZlMDE1ZjQ5ZTlmNDg0ZTEyYWJmY2Y1N2I4NzRkM2M1ZWJkZjI3NjNkNGMfgkFTaRTsEjCKZJrXBc0DlnE4v85pomYaJ4fSDqTxdg==',''),(2,11,'QgwIocB59uXCR46iWJvFrTRhODc3YzIzN2VkNjUyNTA3Mjc0MjgyOTRiYzY4YWI5NGIxNTdlNjM5NGFhYTQxMTFhMWYxNTczN2YyMzMxZjgv55zTuua1icY0UmvILfq3gu0JOw4iNdxb5wmWFeyQiw==',''),(2,12,'xnd_production_3NF1IVthmSQe9QUJgnOdeftjHMOSoCI6N8HsRMeqj7pjuBB386cf4FJR6O3MyE',''),(2,13,'04e35587c71fecf246dcd7747845311d3611b8ad6d47da5f35327ce58ef75c3c',''),(2,14,'xnd_public_production_aqPZJCojBHnwPjIOeUVGbtE7HcT8EWnUqay7DPxIqRE5BJGlXd1272Om0va8rm',''),(2,15,'',''),(2,16,'',''),(2,17,'',''),(2,18,'',''),(2,19,'',''),(2,20,'',''),(2,21,'',''),(2,22,'xnd_production_3NF1IVthmSQe9QUJgnOdeftjHMOSoCI6N8HsRMeqj7pjuBB386cf4FJR6O3MyE',''),(2,23,'04e35587c71fecf246dcd7747845311d3611b8ad6d47da5f35327ce58ef75c3c',''),(2,24,'Mid-server-ra4POWHeVcxuDVfOQCfW3k61',''),(2,25,NULL,NULL),(2,26,'',NULL),(2,27,'',NULL),(2,30,NULL,NULL),(2,31,'',NULL),(2,32,'',NULL),(2,33,'',NULL),(2,34,'',NULL),(2,35,'',NULL),(2,36,'',NULL),(2,40,'JVKNUUj++Uh5sR3VP6PvWDBiNGNhYzk1ZDA2YjU1ZjlmMWQ0OGU2OGQ2NWVjZDJiMzI2MGMyODYzMDlhNDdlNmYzZTJhMzllY2M5MDZiYTS0/hQ4N/rHfKaIX9oG8vuiZbnWw3msgZvNkp8Ek1K40g==',''),(2,41,'z9AfP+WTK4dpqXCGN/nsJmIxYmEyYTg4Yzg5MGU0NTI0NDkxODIyYzFjYzNiZTk1MmRlNjZjNjIxNWY0ZTdkMTlhOTVkYjc1ODdhMDYzYjGY4mfbhraKP5kbdHVzos0shDocR78oLXfJtTDgm9sXrA==',''),(2,42,'',NULL),(2,48,'https://esb-bucket.oss-ap-southeast-5.aliyuncs.com/ezo/TRN/BLG_2_20200906172921.png',NULL),(2,99,NULL,''),(3,1,'0',''),(3,2,'',''),(3,3,'eINRVW0D8Wodcpes6J1bLzcyYmE0MzY1OWFhMGVlNjBkNzhkYTIyYWQ5NTI2OTRkMGNhMjRmZTM1OTVjY2IyOTBiZjUzOTQ2MjY3ZTlkNTnwPH2IJfy14ajhnekryjhqhyrGj+Ke1A7arTqK9m7tDQ==',''),(3,4,'2PKrwV1ZB4/8MVePJOHRAGFmYzM2OTU2Mzc4ZGFhNzcyYmRmZGY5OWJlNzg4MDZhZTUxOWM1ZTNjNDM2OGJlYmYxNDU2NTdhOWNmYWFhNTNS48jNXx6qtGhGTQUz1VFsMGLPbfCNGDmgO1Jo4Wl6BA==',''),(3,5,'qp6lg7O1pf+u2kifvKdIhjhkYjgzMzk2ZTBmMWFmYzYxYjRmMTVmZWQyOTZlM2IwYThiYmI5NjgxMGM0M2Y4MTAwNTFmMTY1YTU1YTNlODWwx7WEU2gKYYDQFGFAK8UnKlImyiT+LSsh1T2XewbUVw==',''),(3,6,'',''),(3,7,'#30700f',''),(3,8,'',''),(3,9,'',''),(3,10,'Lbhvk+SGJuELvt0Ha5YA4WNhM2QyNjNmYTEzODYwYjg0YjFlNzI2MThjMmFlYzkyZjJjYWFlYWZkZWU5YzViM2M3OTNjZDE1YWExNzQ2Zjk/fS0ndpyYu0gFAQt9iwWzYNGKqlkEZiw0mIvb0Myhdg==',''),(3,11,'lkW9F3JdQPa9zJUFYEczyjE4YzhkNzZiZTRmODI5ODU3YTkwYjg3YjcxNGRjMTY5NzU2Yzk2ZmM4NzgwMWQ2NDhiZDUwMjUzOTA0ZjA1NmaBHTKz1jSVd1KMU6RwcczmW6Z1P3LE4WPZMhvAEZEJLw==',''),(3,12,'xnd_production_3NF1IVthmSQe9QUJgnOdeftjHMOSoCI6N8HsRMeqj7pjuBB386cf4FJR6O3MyE',''),(3,13,'04e35587c71fecf246dcd7747845311d3611b8ad6d47da5f35327ce58ef75c3c',''),(3,14,'xnd_public_production_aqPZJCojBHnwPjIOeUVGbtE7HcT8EWnUqay7DPxIqRE5BJGlXd1272Om0va8rm',''),(3,15,'',''),(3,16,'',''),(3,17,'',''),(3,18,'',''),(3,19,'',''),(3,20,'',''),(3,21,'',''),(3,22,'xnd_production_3NF1IVthmSQe9QUJgnOdeftjHMOSoCI6N8HsRMeqj7pjuBB386cf4FJR6O3MyE',''),(3,23,'04e35587c71fecf246dcd7747845311d3611b8ad6d47da5f35327ce58ef75c3c',''),(3,24,'Mid-server-ra4POWHeVcxuDVfOQCfW3k61',''),(3,25,NULL,NULL),(3,26,'',NULL),(3,27,'',NULL),(3,30,NULL,NULL),(3,31,'',NULL),(3,32,'',NULL),(3,33,'',NULL),(3,34,'',NULL),(3,35,'',NULL),(3,36,'',NULL),(3,40,'CLD+zH7myjWINQgmsesU7GQ2MTRmMjIzYjk1OGE0N2NmNmM1NDdmMWZhMTE2ZWIxZTliOTk0ZTcwODkyOGVlNzNlNjBhNTUzMTlkYTc0OTVxA3FbLsTtUnkI27SFUQc9raWTWZ/wSmCuN2iKDg0oEg==',''),(3,41,'P6852fF+zZLljP/C6Icu9DI4Yjg2NGE0ZTA3ZTcwYjYyZmFmNWE4ZTYxYTQyZjcyMTgzYjg2ZGMxMTY4OTEyMTZlYzlmODI2ZjViMWMzZmI4InkoWYY9h+OlQ+FQBMxjIcnFUHVJJcLw9cjzk0QlzA==',''),(3,42,'',NULL),(3,48,NULL,NULL),(3,99,NULL,''),(4,1,'0',''),(4,2,'',''),(4,3,'Pb6KxfQaol7NLxm+n0skUmFlYzA2NTZmYzFiNzliOGQ0ZmM3MmZjNmFhMmI1NjBjMDhkZWVkMzI4MjQzOTA4ODU2ZWRhMjZkY2E0NTdlODEhTMrfF8IJiOmKjbPi1bqi/+n6BzADg8Q0UNHlND9Zbw==',''),(4,4,'AXaX2gFsVut4S/uQyFhpWmE2YzYyZjQ2MDY1NDFmYzIxYTJhZTJmYWVlM2IwM2E3MTE4MDdkNWUxNWJkODBjZjIxMTc1NDcwNTQ3MGEyMjm+TGJrHBRrB3rgVLjb7YJ9aUDvgZKMFlSn33OUTPNmaw==',''),(4,5,'FKJ4dVMHPYQw6WmDv1dBfWM1YzZkNDgzY2YwMzg1ZWI1ZmJkY2FhYWFkOWZiOTQ0YjcyYjhkMGU5NWNlN2I0OTFjY2UzZjNkOWYyZDM2ZjC74V/IP7ceHlTql2jHhrwzttGI0/mXH6Es+OaYdU7dMQ==',''),(4,6,'',''),(4,7,'#ff0000',''),(4,8,'',''),(4,9,'',''),(4,10,'bdHAv+6luzRBFQi6va7VrTM0NDk0YzZiNmUzOGY2MzcwYmUzYWY2N2Q4MzJlNDgxMTIwNjJiMjc2OGRlNWM4NTRhYmZmOGYxNTFiMDA4ZjNzRRN6ieihbn1vIQ9BqrSICOTjh4fI0RF58k2ur8Y9MQ==',''),(4,11,'YLY3nc7JUBMW/nrkSkq0QDU3NjEzNjJkMTQyYjE5YTVmZWFhZTk4ODRlZmZiNzE5MTk1MGMzNDVkNmQ4ZTZjOTI0NDRjODlmOWE4NzZhNDAzobQE1HVpiNmyJzzE/1chwjygTcNpxzhkRkgxhSgBQg==',''),(4,12,'',''),(4,13,'',''),(4,14,'',''),(4,15,'',''),(4,16,'',''),(4,17,'',''),(4,18,'',''),(4,19,'',''),(4,20,'',''),(4,21,'',''),(4,22,'',''),(4,23,'',''),(4,24,'',''),(4,25,NULL,NULL),(4,26,'',NULL),(4,27,'',NULL),(4,30,NULL,NULL),(4,31,'',NULL),(4,32,'',NULL),(4,33,'',NULL),(4,34,'',NULL),(4,35,'',NULL),(4,36,'',NULL),(4,40,'fLZ1qQpBoVbxacznR1NO0ThjYzA2NjhmMWI3OGNmZGQ1ZWMzODRlNzU4YjkwYzUxMDFiYjk0N2VmOTAwNzljN2Y1OTc1NGVmNzU0NjIxYzE0YY9vtFus+10n0H8dc9NDRvLWXJfH0Pthm8Xgo8r/cw==',''),(4,41,'wFjS2iwTgHJuaQR8KdSjtjNkMTE5YjhiMTg5MzZmODg0ZmVmY2ZiNzBmZjdmM2ZhNzRhNGVhNTllMDM5NmNmMWZhMmZkZDg5Y2NiZGE0ZmHT7e3SZ0J9iOgBk4Nd1FyTrQ1HTfQ6fteFqBQ+YodzYA==',''),(4,42,'',NULL),(4,48,NULL,NULL),(4,49,'',''),(4,50,'',''),(4,51,'',''),(4,52,NULL,NULL),(4,55,'',NULL),(4,56,'',NULL),(4,59,'',NULL),(4,60,'',NULL),(4,61,'',NULL),(4,62,'',NULL),(4,99,NULL,'');
/*!40000 ALTER TABLE `ms_brandsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_cancelreason`
--

DROP TABLE IF EXISTS `ms_cancelreason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_cancelreason` (
  `cancelReasonID` int(11) NOT NULL AUTO_INCREMENT,
  `cancelReasonDesc` varchar(50) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`cancelReasonID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_cancelreason`
--

LOCK TABLES `ms_cancelreason` WRITE;
/*!40000 ALTER TABLE `ms_cancelreason` DISABLE KEYS */;
INSERT INTO `ms_cancelreason` VALUES (1,'Complaints',1,'TRNyoga','2020-02-19 17:55:55','TRNWIL','2020-07-11 19:40:24'),(2,'Customer Cancel',1,'TRNWIL','2020-07-11 19:40:08','TRNWIL','2020-07-11 19:40:08');
/*!40000 ALTER TABLE `ms_cancelreason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_cashmethod`
--

DROP TABLE IF EXISTS `ms_cashmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_cashmethod` (
  `cashMethodID` int(11) NOT NULL AUTO_INCREMENT,
  `cashMethodAmount` decimal(20,4) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`cashMethodID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_cashmethod`
--

LOCK TABLES `ms_cashmethod` WRITE;
/*!40000 ALTER TABLE `ms_cashmethod` DISABLE KEYS */;
INSERT INTO `ms_cashmethod` VALUES (21,100000.0000,1,'SYSTEM','2019-12-31 09:16:50',NULL,NULL),(22,50000.0000,1,'SYSTEM','2019-12-31 09:16:50',NULL,NULL),(23,20000.0000,1,'SYSTEM','2019-12-31 09:16:50',NULL,NULL),(24,10000.0000,1,'SYSTEM','2019-12-31 09:16:50',NULL,NULL),(25,5000.0000,1,'SYSTEM','2019-12-31 09:16:50',NULL,NULL),(26,2000.0000,1,'SYSTEM','2019-12-31 09:16:50',NULL,NULL),(27,1000.0000,1,'SYSTEM','2019-12-31 09:16:50',NULL,NULL),(28,500.0000,1,'SYSTEM','2019-12-31 09:16:50',NULL,NULL),(29,200.0000,1,'SYSTEM','2019-12-31 09:16:50',NULL,NULL),(30,100.0000,1,'SYSTEM','2019-12-31 09:16:50',NULL,NULL);
/*!40000 ALTER TABLE `ms_cashmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_employee`
--

DROP TABLE IF EXISTS `ms_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_employee` (
  `employeeCode` varchar(50) NOT NULL,
  `employeeName` varchar(100) NOT NULL,
  `genderID` int(11) NOT NULL,
  `birthDate` date DEFAULT NULL,
  `address` varchar(200) DEFAULT 'NULL',
  `phone` varchar(20) DEFAULT 'NULL',
  `email` varchar(50) DEFAULT 'NULL',
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT 'NULL',
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`employeeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_employee`
--

LOCK TABLES `ms_employee` WRITE;
/*!40000 ALTER TABLE `ms_employee` DISABLE KEYS */;
INSERT INTO `ms_employee` VALUES ('ABC123TEST','ADI SYAH',1,NULL,'','','',1,'TRNADI','2020-12-14 17:05:37','TRNADI','2020-12-14 17:05:37'),('EPW','Adi',1,NULL,'','','',1,'TRNADI','2020-09-03 14:16:36','TRNADI','2021-02-01 11:13:20'),('ESB','ESB 01',1,NULL,'','+62-81888999888','',1,'TRNWIL','2020-07-11 19:25:02','TRNWIL','2020-11-07 23:51:17'),('HOG','HogHock',1,NULL,'','','',1,'TRNWIL','2020-11-07 23:53:26','TRNWIL','2020-11-07 23:53:26');
/*!40000 ALTER TABLE `ms_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_employeegroup`
--

DROP TABLE IF EXISTS `ms_employeegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_employeegroup` (
  `employeeGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `employeeGroupName` varchar(100) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`employeeGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_employeegroup`
--

LOCK TABLES `ms_employeegroup` WRITE;
/*!40000 ALTER TABLE `ms_employeegroup` DISABLE KEYS */;
INSERT INTO `ms_employeegroup` VALUES (1,'ESB',1,'TRNADI','2020-09-03 14:16:45','TRNADI','2020-12-14 17:13:55'),(2,'HOGHOCK',1,'TRNWIL','2020-11-07 23:53:51','TRNWIL','2020-11-07 23:53:51');
/*!40000 ALTER TABLE `ms_employeegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_employeegroupdetail`
--

DROP TABLE IF EXISTS `ms_employeegroupdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_employeegroupdetail` (
  `employeeGroupID` int(11) NOT NULL,
  `employeeCode` varchar(50) NOT NULL,
  PRIMARY KEY (`employeeGroupID`,`employeeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_employeegroupdetail`
--

LOCK TABLES `ms_employeegroupdetail` WRITE;
/*!40000 ALTER TABLE `ms_employeegroupdetail` DISABLE KEYS */;
INSERT INTO `ms_employeegroupdetail` VALUES (1,'ABC123TEST'),(1,'EPW'),(1,'ESB'),(2,'HOG');
/*!40000 ALTER TABLE `ms_employeegroupdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_member`
--

DROP TABLE IF EXISTS `ms_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_member` (
  `memberID` int(11) NOT NULL AUTO_INCREMENT,
  `memberName` varchar(100) NOT NULL,
  `memberTypeID` int(11) NOT NULL,
  `memberCode` varchar(20) NOT NULL,
  `genderID` int(11) NOT NULL,
  `memberBirthDate` date DEFAULT NULL,
  `memberAddress` varchar(200) DEFAULT NULL,
  `memberPhone` varchar(20) DEFAULT NULL,
  `memberEmail` varchar(50) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`memberID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_member`
--

LOCK TABLES `ms_member` WRITE;
/*!40000 ALTER TABLE `ms_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menu`
--

DROP TABLE IF EXISTS `ms_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menu` (
  `menuID` int(11) NOT NULL AUTO_INCREMENT,
  `menuCategoryDetailID` int(11) NOT NULL,
  `bomID` int(11) DEFAULT NULL,
  `menuName` varchar(100) NOT NULL,
  `menuShortName` varchar(50) NOT NULL,
  `altMenuName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `menuCode` varchar(50) DEFAULT '',
  `estimatedCost` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `flagTax` tinyint(1) NOT NULL,
  `flagOtherTax` tinyint(1) NOT NULL,
  `zeroValueText` varchar(12) NOT NULL,
  `flagCustomerPrint` tinyint(1) NOT NULL,
  `flagSeparatePrintPackage` tinyint(1) DEFAULT '0',
  `salesCoaNo` varchar(20) NOT NULL,
  `cogsCoaNo` varchar(20) NOT NULL,
  `discountCoaNo` varchar(20) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `imageUrl` text,
  `description` text,
  `openPrice` tinyint(1) DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`menuID`),
  KEY `idx_menu_menuName` (`menuName`),
  KEY `idx_menu_menuCategoryDetailID` (`menuCategoryDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menu`
--

LOCK TABLES `ms_menu` WRITE;
/*!40000 ALTER TABLE `ms_menu` DISABLE KEYS */;
INSERT INTO `ms_menu` VALUES (1,1,0,'Beng-beng Wafer','Beng-beng Wafer',NULL,'',0.0000,0.0000,0,0,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNVIN','2020-02-15 23:32:54','TRNyoga','2020-02-19 18:07:16'),(2,1,0,'Choki choki Cashew','Choki choki Cashew',NULL,'',0.0000,0.0000,0,0,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNVIN','2020-02-15 23:36:31','TRNVIN','2020-02-15 23:36:31'),(3,1,0,'Superstar Tripple Chocolate','Superstar Tripple Chocolate',NULL,'',0.0000,0.0000,0,0,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNVIN','2020-02-15 23:37:42','TRNVIN','2020-02-15 23:37:42'),(4,2,14,'AAA','AAA','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 02','4 1 01 05','',1,'','',0,'TRNADI','2020-04-17 15:12:38','TRNADI','2021-02-18 16:55:39'),(5,3,0,'Beijing Duck','Beijing Duck','','',0.0000,0.0000,1,1,'Custom',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Bebek Peking',0,'TRNWIL','2020-07-10 09:13:28','TRNADI','2021-01-21 14:51:06'),(6,8,0,'HALF','HALF','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNWIL','2020-07-10 09:14:55','TRNWIL','2020-07-10 09:14:55'),(7,8,0,'WHOLE','WHOLE','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNWIL','2020-07-10 09:15:11','TRNWIL','2020-07-10 09:15:11'),(8,4,0,'Braised Superior Shark Fin in Shark\'s Bone Gravy','Superior Shark Fin','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Hisit Superior dengan Kaldu Tulang Ikan Hiu',0,'TRNWIL','2020-07-10 09:20:09','TRNWIL','2020-07-12 19:09:41'),(9,4,2,'Steamed Chicken, Black Mushroom, Ham, and Vegetables','Steamed Chicken,Mush,Ham,Veg','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Tim Ayam dengan Jamur Hitam dan Ham',0,'TRNWIL','2020-07-10 09:31:42','TRNADI','2021-02-08 23:10:53'),(10,5,0,'Steamed Lazy Fish with Superior Soya Sauce','Steamed Lazy Fish Soy Sauce','','',0.0000,0.0000,1,1,'PER GRAMS',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Tim Ikan Malas dengan Kecap Asin Superior',1,'TRNWIL','2020-07-10 09:33:32','TRNWIL','2020-07-12 19:11:01'),(11,9,0,'Jasmine Tea','Jasmine','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNWIL','2020-07-10 09:39:44','TRNWIL','2020-07-10 09:40:43'),(12,9,0,'Chrysanthemum Tea','Chrysanthemum','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNWIL','2020-07-10 09:40:29','TRNWIL','2020-07-10 09:40:29'),(13,9,0,'Oolong Tea','Oolong','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNWIL','2020-07-10 09:41:07','TRNWIL','2020-07-10 09:41:07'),(14,9,0,'Kwan Im Tea','Kwan Im','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNWIL','2020-07-10 09:41:26','TRNWIL','2020-07-10 09:41:26'),(15,6,0,'Chinese Tea (2 Cups)','Chinese Tea 2 Cups','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNWIL','2020-07-10 09:44:22','TRNWIL','2020-07-10 09:45:23'),(16,5,0,'Wok-baked Live Crab with Black Pepper Sauce','Black Pepper Crab','','',0.0000,0.0000,1,1,'/100Grams',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Tumis Kepiting dengan Saus Lada Hitam',0,'TRNWIL','2020-07-12 19:08:46','TRNWIL','2020-07-12 19:18:34'),(17,5,0,'Deep-fried Squids with Salt and Chili','Squids with Salt and Chili','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Cumi Goreng dengan Cabe Garam',0,'TRNWIL','2020-07-12 19:16:04','TRNWIL','2020-07-12 19:18:59'),(18,8,0,'Test Food','Test Food','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNWIL','2020-07-12 19:30:10','TRNWIL','2020-07-12 19:30:10'),(19,11,4,'AYAM KIMUKATKAT MENU NAME','AYAM KIMUKATKAT CHECKER','','Anak',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNADI','2020-08-04 10:46:53','TRNADI','2020-12-08 18:49:53'),(20,11,0,'CHICKEN KARAAGE','CHICKEN KARAAGE','','KARAGE',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNADI','2020-08-10 09:47:01','TRNADI','2020-08-10 09:47:01'),(46,12,0,'PORK CORDON BLEU W/ TERIYAKI SAUCE','PORK CRDN BLEU W/TERIYAKI SAUC',NULL,'',0.0000,35000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-09-29 15:56:11','TRNWIL','2020-09-29 15:56:11'),(47,12,0,'CRISPY PORK SKIN','CRISPY PORK SKIN',NULL,'',0.0000,20000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-09-29 15:56:11','TRNWIL','2020-09-29 15:56:11'),(48,12,0,'FRENCH FRIES','FRENCH FRIES','','',0.0000,20000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-30 10:53:58'),(49,12,0,'BACON CHEESE BOMBS','BACON CHEESE BOMBS',NULL,'',0.0000,35000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(50,13,0,'GIANT PORK SATAY','GIANT PORK SATAY','','',0.0000,0.0000,1,1,'30K - 105K',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 16:14:15'),(51,13,0,'SATAY 2 PCS','SATAY 2 PCS',NULL,'',0.0000,30000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(52,13,0,'SATAY 4 PCS','SATAY 4 PCS',NULL,'',0.0000,50000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(53,13,0,'SATAY 10 PCS','SATAY 10 PCS',NULL,'',0.0000,105000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(54,13,0,'SLOW ROASTED TERIYAKI PORK RIBS','SLOW ROASTED TERIYAKI PORK RIB','','',0.0000,0.0000,1,1,'68K - 450K',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Over night roasted pork ribs grilled with aromatic homemade teriyaki sauce served with straight cut french fries and broccoli',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 16:14:05'),(55,13,0,'SINGLE PORK RIBS','SINGLE PORK RIBS',NULL,'',0.0000,68000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(56,13,0,'HALF RACK PORK RIBS','HALF RACK PORK RIBS',NULL,'',0.0000,270000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(57,13,0,'FULL RACK PORK RIBS','FULL RACK PORK RIBS',NULL,'',0.0000,450000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(58,14,0,'PORK KNUCKLE BURGER','PORK KNUCKLE BURGER',NULL,'',0.0000,42000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'','Pork knuckle inside of soft bun burger, mixed with Hoghocks burger sauce',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(59,14,0,'PATTY CHEESE BURGER','PATTY CHEESE BURGER',NULL,'',0.0000,50000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'','Combination of pork patty and cheese inside of soft bun burger, mixed with burger sauce',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(60,14,0,'PORKIN DELICIOUS BURGER','PORKIN DELICIOUS BURGER',NULL,'',0.0000,68000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'','The best pork burger in town! Perfect combination of pork knuckle, pork patty, cheese and bacon inside of soft bun burger, mixed with Hoghocks burger sauce',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(61,15,0,'NASI CAMPUR CLASSIC','NASI CAMPUR CLASSIC',NULL,'',0.0000,65000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'','Crispy roast pork, poached chicken and giant pork satay in a bowl, served with crispy pork skin, hoishin sauce and sambal',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(62,15,0,'NASI CAMPUR HOGHOCK','NASI CAMPUR HOGHOCK',NULL,'',0.0000,65000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'','Pork knuckle, bbq pork belly, and giant pork satay in a bowl, served with crispy pork skin and sambal hijau or matah',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(63,15,0,'PORK KNUCKLE','PORK KNUCKLE',NULL,'',0.0000,45000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'','stir-fry minced pork knuckle, crispy pork skin and sambal hijau or matah over rice',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(64,15,0,'HOT CURRY PORK KNUCKLE','HOT CURRY PORK KNUCKLE',NULL,'',0.0000,45000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'','Indonesian curry pork knuckle, crispy pork skin, sambal hijau over rice',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(65,15,0,'CRISPY ROAST PORK','CRISPY ROAST PORK',NULL,'',0.0000,55000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'','Combination of crackling chinese pork belly and bacon serve with crispy pork skin over rice',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(66,15,0,'BBQ PORK BELLY','BBQ PORK BELLY','','',0.0000,50000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','BBQ style pork belly, crispy pork skin, sambal hijau or matah over rice',0,'TRNWIL','2020-09-29 15:56:12','TRNADI','2021-01-21 14:51:07'),(67,15,0,'KOREAN SPICY PORK BELLY','KOREAN SPICY PORK BELLY',NULL,'',0.0000,55000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'','slice of pork belly with korean spicy sauce serve with crispy pork skin over rice',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(68,22,0,'PORK SATAY','PORK SATAY',NULL,'',0.0000,10000.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(69,22,0,'HAINAN RICE','HAINAN RICE','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNWIL','2020-09-29 15:56:12','TRNADI','2021-02-08 23:11:03'),(70,16,0,'TROPICAL FRUIT TEA','TROPICAL FRUIT TEA','','',0.0000,0.0000,1,1,'35K - 95K',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','Shaken tea, mint leaves, strawberry and peach',0,'TRNWIL','2020-09-29 15:56:12','TRNADI','2021-01-26 11:04:29'),(71,16,0,'TROPICAL FRUIT TEA GLASS','TROPICAL FRUIT TEA GLASS','','',0.0000,35000.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNWIL','2020-09-29 15:56:12','TRNADI','2021-02-16 12:42:32'),(72,16,0,'TROPICAL FRUIT TEA PITCHER','TROPICAL FRUIT TEA PITCHER','','',0.0000,95000.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNWIL','2020-09-29 15:56:12','TRNADI','2021-02-16 12:42:33'),(73,16,0,'LYCHEE MINT MOJITO','LYCHEE MINT MOJITO','','',0.0000,0.0000,1,1,'35K - 95K',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','Lychee, soda, mint leaves and fresh lime',0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 16:13:24'),(74,16,0,'LYCHEE MINT MOJITO GLASS','LYCHEE MINT MOJITO GLASS',NULL,'',0.0000,35000.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(75,16,0,'LYCHEE MINT MOJITO PITCHER','LYCHEE MINT MOJITO PITCHER',NULL,'',0.0000,95000.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-09-29 15:56:12','TRNWIL','2020-09-29 15:56:12'),(76,23,0,'Adult','Adult','','A001',0.0000,0.0000,1,0,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNWIL','2020-11-15 14:00:11','TRNyoga','2021-01-20 12:10:25'),(77,23,0,'Children','Children','','A002',0.0000,0.0000,1,0,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNWIL','2020-11-15 14:00:35','TRNyoga','2021-01-20 12:10:51'),(78,24,0,'Meeting Room (PAX)','Meeting Room (PAX)','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNEKA','2020-11-20 10:29:28','TRNEKA','2020-11-20 10:29:28'),(79,24,0,'Refleksi','Refleksi','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',0,'TRNEKA','2020-11-20 10:30:59','TRNEKA','2020-11-20 10:30:59'),(80,25,0,'NASI GORENG','NASI GORENG','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNEKA','2020-11-20 10:33:48','TRNyoga','2021-02-11 15:53:23'),(81,26,0,'Nasi Goreng (Per 100 Gram)','Nasi Goreng (Per 100 Gram)','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNEKA','2020-11-20 10:38:58','TRNEKA','2020-11-20 10:38:58'),(82,11,0,'Free AYAM KIMUKATKAT','Free AYAM KIMUKATKAT','','',0.0000,0.0000,0,0,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNADI','2020-12-01 11:10:34','TRNADI','2021-01-26 10:49:33'),(245,27,0,'Siew Mai - PM','Siew Mai',NULL,'PS07',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:52','TRNWIL','2020-12-03 11:40:52'),(246,27,0,'Chicken Glutinous Rice  - PM','Chicken Glutinous Rice',NULL,'PS09',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:52','TRNWIL','2020-12-03 11:40:52'),(247,27,0,'Supreme BBQ Pork Bun - PM','Supreme BBQ Pork Bun',NULL,'PS10',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:52','TRNWIL','2020-12-03 11:40:52'),(248,28,0,'Nam Heong Egg Tart (1pcs) - PM','Nam Heong Egg Tart (1pcs)',NULL,'PS01',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:52','TRNWIL','2020-12-03 11:40:52'),(249,28,0,'Nam Heong Egg Tart (6pcs) - PM','Nam Heong Egg Tart (6pcs)',NULL,'PS02',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:52','TRNWIL','2020-12-03 11:40:52'),(250,28,0,'Nam Heong Chicken Sou (1pcs) - PM','Nam Heong Chicken Sou (1pcs)',NULL,'PS03',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:52','TRNWIL','2020-12-03 11:40:52'),(251,28,0,'Nam Heong Chicken Sou (6pcs) - PM','Nam Heong Chicken Sou (6pcs)',NULL,'PS04',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:52','TRNWIL','2020-12-03 11:40:52'),(252,29,0,'Nam Heong Chicken Hor Fun - PM','Nam Heong Chicken Hor Fun',NULL,'PN01',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:52','TRNWIL','2020-12-03 11:40:52'),(253,29,0,'Supreme Prawn Noodles - PM','Supreme Prawn Noodles',NULL,'PN02',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:52','TRNWIL','2020-12-03 11:40:52'),(254,29,0,'Signature Dry Assam Curry Noodles - PM','Sgn Dry Assam Curry Noodles',NULL,'PN03',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:52','TRNWIL','2020-12-03 11:40:52'),(255,29,0,'Signature Assam Curry Noodles - PM','Signature Assam Curry Noodles',NULL,'PN04',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(256,29,0,'Ipoh Chee Cheong Fun - PM','Ipoh Chee Cheong Fun',NULL,'PN05',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(257,29,0,'Ipoh Chee Cheong Fun Minced Meat & Mushroom Sauce - PM','Ipoh Chee Chg Mcd Mt & Mhm Sce',NULL,'PN06',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(258,29,0,'Traditional Pan Mee (Dry, Soup) - PM','Trd Pan Mee (Dry, Soup)',NULL,'PN07',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(259,29,0,'Dry Chili Pan Mee - PM','Dry Chili Pan Mee',NULL,'PN08',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(260,29,0,'Wanton Egg Noodles (Dry, Soup) - PM','Wanton Egg Noodles (Dry, Soup)',NULL,'PN09',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(261,29,0,'Fried Wanton Egg Noodles (Dry, Soup ) - PM','Frd Wtn Egg Ndles(Dry, Soup )',NULL,'PN10',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(262,36,0,'Nam Heong Ipoh White Coffee (Cold) - PM','Nam Heong Ipoh Wht Coff(Cold)',NULL,'PB01C',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(263,36,0,'Nam Heong Ipoh White Coffee (Hot) - PM','Nam Heong Ipoh Wht Coff(Hot)',NULL,'PB01H',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(264,36,0,'Signature Coffee \'O\' (Cold) - PM','Signature Coffee \'O\' (Cold)',NULL,'PB02C',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(265,36,0,'Signature Coffee \'O\' (Hot) - PM','Signature Coffee \'O\' (Hot)',NULL,'PB02H',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(266,36,0,'Cham (Cold) - PM','Cham (Cold)',NULL,'PB03C',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(267,36,0,'Cham (Hot) - PM','Cham (Hot)',NULL,'PB03H',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(268,36,0,'Teh (Cold) - PM','Teh (Cold)',NULL,'PB04C',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(269,36,0,'Teh (Hot) - PM','Teh (Hot)',NULL,'PB04H',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(270,36,0,'Coffee Cincau (Cold) - PM','Coffee Cincau (Cold)',NULL,'PB05',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(271,36,0,'Vintage Nan Yang Coffee C (Cold) - PM','Vtge Nan Yang Coff C (Cold)',NULL,'PB06C',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(272,36,0,'Vintage Nan Yang Coffee C (Hot) - PM','Vtge Nan Yang Coff C (Hot)',NULL,'PB06H',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(273,36,0,'Lemon Tea (Cold) - PM','Lemon Tea (Cold)',NULL,'PB07C',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(274,36,0,'Lemon Tea (Hot) - PM','Lemon Tea (Hot)',NULL,'PB07H',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(275,36,0,'Pandan Trinity Coffee - PM','Pandan Trinity Coffee',NULL,'PB08',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(276,36,0,'Gula Melaka Trinity Coffee - PM','Gula Melaka Trinity Coffee',NULL,'PB09',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(277,36,0,'Pandan Trinity Tea - PM','Pandan Trinity Tea',NULL,'PB10',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(278,36,0,'Gula Melaka Trinity Tea - PM','Gula Melaka Trinity Tea',NULL,'PB11',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(279,37,0,'Coca-Cola - PM','Coca-Cola',NULL,'PB20',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(280,37,0,'100 Plus - PM','100 Plus',NULL,'PB21',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(281,37,0,'7 Up - PM','7 Up',NULL,'PB22',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(282,37,0,'Coca-Cola Lemon - PM','Coca-Cola Lemon',NULL,'PB23',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(283,37,0,'Red Bean Slush - PM','Red Bean Slush',NULL,'PB30',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(284,37,0,'Honey Lemon (Cold) - PM','Honey Lemon (Cold)',NULL,'PB31C',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(285,37,0,'Honey Lemon (Hot) - PM','Honey Lemon (Hot)',NULL,'PB31H',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(286,37,0,'Lo Han Guo (Cold) - PM','Lo Han Guo (Cold)',NULL,'PB32C',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(287,37,0,'Lo Han Guo (Warm) - PM','Lo Han Guo (Warm)',NULL,'PB32H',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(288,37,0,'Soya Milk (Cold) - PM','Soya Milk (Cold)',NULL,'PB33',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(289,37,0,'Soya Milk + Cincau (Cold) - PM','Soya Milk + Cincau (Cold)',NULL,'PB34',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(290,37,0,'Milo (Cold) - PM','Milo (Cold)',NULL,'PB35C',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(291,37,0,'Milo (Hot) - PM','Milo (Hot)',NULL,'PB35H',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(292,37,0,'Lime Kick - PM','Lime Kick',NULL,'PB36',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(293,37,0,'Mineral Water (Small Bottle) - PM','Mineral Water (Small Bottle)',NULL,'PB37',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(294,31,0,'Soft Boiled Kampung Eggs - PM','Soft Boiled Kampung Eggs',NULL,'PT01',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(295,31,0,'Eggs on Toast - PM','Eggs on Toast',NULL,'PT02',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(296,31,0,'President Toast - PM','President Toast',NULL,'PT03',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(297,31,0,'Steamed President Toast - PM','Steamed President Toast',NULL,'PT04',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(298,31,0,'President Flaky Croissant  - PM','President Flaky Croissant',NULL,'PT05',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(299,31,0,'Fresh Baked Butter Polo Bun  - PM','Fresh Baked Butter Polo Bun',NULL,'PT06',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(300,31,0,'Ipoh Kaya Puff - PM','Ipoh Kaya Puff',NULL,'PT07',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(301,31,0,'Ipoh Style Golden Curry Mixed Meat  - PM','Ipoh Style Gldn Cury Mxe Mt',NULL,'PT08',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(302,30,0,'Nasi Lemak with Curry Pork - PM','Nasi Lemak with Curry Pork',NULL,'PR01',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(303,30,0,'The Legendary Pork Belly Rice - PM','The Legendary Pork Belly Rice',NULL,'PR02',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(304,30,0,'Ipoh Salted Chicken Rice - PM','Ipoh Salted Chicken Rice',NULL,'PR03',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(305,30,0,'Nasi Lemak with Monster Curry Chicken - PM','Nasi Lemak with Mnsr Cury Ckn',NULL,'PR04',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(306,32,0,'Red Bean Dessert Soup - PM','Red Bean Dessert Soup',NULL,'PD01',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(307,32,0,'Ipoh Caramel Egg Custard - PM','Ipoh Caramel Egg Custard',NULL,'PD02',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(308,32,0,'Ipoh Tau Fu Fah - PM','Ipoh Tau Fu Fah',NULL,'PD03',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(309,34,0,'Spiral Biscuit - PM','Spiral Biscuit',NULL,'PRC06',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(310,33,0,'Strawberry Peanut Butter Toast - PM','Strbry Peanut Butter Toast',NULL,'NTS01',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(311,33,0,'Granpa’s Rich Toast - PM','Granpa’s Rich Toast',NULL,'NTS02',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(312,33,0,'Roti Muthu - PM','Roti Muthu',NULL,'NTS03',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(313,33,0,'President Croissant - PM','President Croissant',NULL,'NTS04',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(314,33,0,'Strawberry Peanut Butter Croissant - PM','Strbry Peanut Butter Croissant',NULL,'NTS05',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(315,31,0,'Herbal Tea Egg','Herbal Tea Egg',NULL,'',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(316,34,0,'Kacang Putih Mixed','Kacang Putih Mixed',NULL,'',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(317,34,0,'Kacang Putih Palcoda','Kacang Putih Palcoda',NULL,'',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(318,34,0,'Kacang Putih Star','Kacang Putih Star',NULL,'',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(319,33,0,'Dissy President Croissant','Dissy President Croissant',NULL,'',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(320,33,0,'Shopee Pay President Discount','Shopee Pay President Discount',NULL,'',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(321,30,0,'Salted Chicken Rice','Salted Chicken Rice',NULL,'GF32',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(322,30,0,'Nasi lemak curry chicken','Nasi lemak curry chicken',NULL,'GF33',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(323,30,0,'Nasi Lemak curry pork','Nasi Lemak curry pork',NULL,'GF29',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(324,35,0,'Signature BBQ Bun','Signature BBQ Bun',NULL,'GF119',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:53','TRNWIL','2020-12-03 11:40:53'),(325,35,0,'Nam Heong Chicken Hor Fun','Nam Heong Chicken Hor Fun',NULL,'GF120',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:54','TRNWIL','2020-12-03 11:40:54'),(326,35,0,'Signature Roasted Chicken Rice','Signature Roasted Chicken Rice',NULL,'GF121',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:54','TRNWIL','2020-12-03 11:40:54'),(327,35,0,'Traditional Pan mee (DRY)','Traditional Pan mee (DRY)',NULL,'GF122',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:54','TRNWIL','2020-12-03 11:40:54'),(328,35,0,'Ipoh Tau Fu Fa','Ipoh Tau Fu Fa',NULL,'GF123',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:54','TRNWIL','2020-12-03 11:40:54'),(329,35,0,'Nam Heong White Coffee (Cold)','Nam Heong White Coffee (Cold)',NULL,'GF124',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:54','TRNWIL','2020-12-03 11:40:54'),(330,35,0,'Nam Heong White Coffee (Hot)','Nam Heong White Coffee (Hot)',NULL,'GF125',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:54','TRNWIL','2020-12-03 11:40:54'),(331,27,0,'Ipoh Traditional Fried Fish Ball - PM','Ipoh Trdtnl Frd Fish Ball 2pcs',NULL,'PS08',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05',NULL,1,'',NULL,0,'TRNWIL','2020-12-03 11:40:54','TRNWIL','2020-12-03 11:40:54'),(332,11,0,'Chix','Chix','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNADI','2020-12-07 14:41:10','TRNADI','2020-12-07 14:41:10'),(333,33,0,'CYO Toast','CYO Toast','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',1,'TRNWIL','2020-12-17 09:45:44','TRNWIL','2020-12-17 09:46:04'),(334,2,2,'Extra BBB','Extra BBB','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 02','4 1 01 05','',1,'','',0,'TRNADI','2020-12-17 15:35:50','TRNADI','2021-02-16 12:38:44'),(335,2,0,'Test CCC','Test CCC','','',0.0000,0.0000,1,1,'0',0,0,'4 1 01 01','5 1 01 02','4 1 01 05','',1,'','',0,'TRNADI','2020-12-18 10:18:47','TRNADI','2021-02-16 12:37:30'),(336,38,0,'Medium','Medium','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-14 16:00:59','TRNVIN','2021-01-14 16:00:59'),(337,38,0,'Large','Large','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-14 16:01:21','TRNVIN','2021-01-14 16:01:21'),(338,38,0,'Es thai tea','Es thai tea','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-14 16:04:43','TRNVIN','2021-01-14 16:12:13'),(339,38,0,'Es teh red relvet','Es teh red relvet','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-14 16:14:05','TRNVIN','2021-01-14 16:14:05'),(340,38,0,'Es teh original','Es teh original','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-14 16:14:38','TRNVIN','2021-01-14 16:14:38'),(341,38,0,'Es teh susu','Es teh susu','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-14 16:15:17','TRNVIN','2021-01-14 16:15:17'),(342,38,0,'Es teh taro','Es teh taro','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-14 16:16:00','TRNVIN','2021-01-14 16:16:00'),(343,38,0,'Milo','Milo','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-14 16:17:07','TRNVIN','2021-01-14 16:17:07'),(344,38,0,'Ovaltine','Ovaltine','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-14 16:17:59','TRNVIN','2021-01-14 16:17:59'),(345,38,0,'Brown sugar','Brown sugar','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-14 16:18:46','TRNVIN','2021-01-14 16:18:46'),(346,38,0,'Es teh leci','Es teh leci','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-14 16:19:25','TRNVIN','2021-01-14 16:19:25'),(347,38,0,'Es teh lemon','Es teh lemon','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-14 16:20:16','TRNVIN','2021-01-14 16:20:16'),(348,40,0,'Kopi Susu','Kopi Susu','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNADI','2021-01-19 17:25:35','TRNADI','2021-01-19 17:37:23'),(349,40,0,'Kopi Susu Large Hot','Kopi Susu Large Hot','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNADI','2021-01-19 17:27:25','TRNADI','2021-01-19 17:27:25'),(350,40,0,'Kopi Susu Large Cold','Kopi Susu Large Cold','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNADI','2021-01-19 17:27:26','TRNADI','2021-01-19 17:27:26'),(351,40,0,'Kopi Susu Small Cold','Kopi Susu Small Cold','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNADI','2021-01-19 17:27:27','TRNADI','2021-01-19 17:27:27'),(352,40,0,'Kopi Susu Small Hot','Kopi Susu Small Hot','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNADI','2021-01-19 17:27:29','TRNADI','2021-01-19 17:27:29'),(353,39,9,'Add Cincau','Add Cincau','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-19 20:07:41','TRNADI','2021-02-18 16:57:22'),(354,39,0,'Add Sea Salt Cream Tea','Add Sea Salt Cream Tea','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',0,'TRNVIN','2021-01-19 20:08:31','TRNVIN','2021-01-19 20:08:31'),(355,23,0,'Ambassador Internal','Ambassador Internal','','A003',0.0000,0.0000,0,0,'0',0,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',1,'TRNyoga','2021-01-20 10:27:41','TRNyoga','2021-01-20 12:11:03'),(356,23,0,'Ambassador External-LION AIR','Ambassador External-LION AIR','','',0.0000,0.0000,0,0,'0',0,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',1,'TRNyoga','2021-01-20 10:30:23','TRNyoga','2021-01-20 10:30:23'),(357,23,0,'Ambassador External-GARUDA','Ambassador External-GARUDA','','',0.0000,0.0000,0,0,'0',0,0,'4 1 01 03','5 1 01 03','4 1 01 05','',1,'','',1,'TRNyoga','2021-01-20 10:35:18','TRNyoga','2021-01-20 10:35:18'),(358,41,0,'Kokoro','Kokoro','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNEKA','2021-01-23 10:46:47','TRNEKA','2021-01-23 10:46:47'),(359,41,0,'Bekal Piknik','Bekal Piknik','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNEKA','2021-01-23 11:03:36','TRNEKA','2021-01-23 11:03:36'),(360,40,0,'Open Coffee','Open Coffee','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 01','5 1 01 01','4 1 01 05','',1,'','',1,'TRNADI','2021-01-26 09:04:40','TRNADI','2021-01-26 09:04:40'),(361,14,0,'CYO Burger','CYO Burger','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',1,'TRNWIL','2021-01-30 13:08:36','TRNWIL','2021-01-30 13:08:36'),(362,14,0,'Order Live Seafood','Live Seafood','','',0.0000,0.0000,1,1,'as Weighted',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNWIL','2021-01-30 18:32:57','TRNWIL','2021-01-30 18:32:57'),(363,14,0,'Ikan Kerapu Bakar Kecap @100GR','Kerapu Kecap @100GR','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNWIL','2021-01-30 22:25:26','TRNWIL','2021-01-30 22:25:26'),(364,42,0,'Nasi Rakyat','Nasi Rakyat','','',0.0000,0.0000,1,0,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Selera Rakyat. Protein lengkap: ayam, telur, tempe orek, nasi, dan sambal',0,'TRNESBHAU','2021-02-11 16:57:07','TRNESBHAU','2021-02-11 16:57:07'),(365,42,0,'Sparta','Sparta','','',0.0000,0.0000,1,0,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Nasi dengan spam ayam, telur dan saus mentaiko',0,'TRNESBHAU','2021-02-11 16:58:12','TRNESBHAU','2021-02-13 21:18:09'),(366,42,0,'Butter Soy Sauce Chicken','Butter Soy Sauce Chicken','','',0.0000,0.0000,1,1,'0',1,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Chicken karage dengan saus mentega, ajdkahfahof',0,'TRNESBHAU','2021-02-11 16:59:44','TRNESBHAU','2021-02-11 16:59:44'),(367,42,0,'Sparta','Sparta','','',0.0000,0.0000,1,1,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',0,'','',0,'TRNESBHAU','2021-02-13 20:57:47','TRNESBHAU','2021-02-13 21:16:25'),(368,42,0,'Basil Chicken','Basil Chicken','','',0.0000,0.0000,1,1,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Ayam cincang dimasak dengan saus kemangi khas thailand dengan irisan cabe merah dan rawit hijau dan daun kemangi yang membangkitkan selera makan, dilengkapi buncis dan babycorn',0,'TRNESBHAU','2021-02-13 20:59:57','TRNESBHAU','2021-02-13 21:20:06'),(369,42,0,'Chicken Karage Salted Egg','Chicken Karage Salted Egg','','',0.0000,0.0000,1,1,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Chicken Karage dengan saus Salted Egg yang gurih asin',0,'TRNESBHAU','2021-02-13 21:01:23','TRNESBHAU','2021-02-13 21:19:13'),(370,42,0,'Nasi Rakyat','Nasi Rakyat','','',0.0000,0.0000,1,1,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','Selera rakyat dengan protein lengkap ayam suir, telur, tempe orek dan sambal balado',0,'TRNESBHAU','2021-02-13 21:03:44','TRNESBHAU','2021-02-13 21:03:44'),(371,45,0,'Sunny Side Up','Sunny Side Up','','',0.0000,0.0000,1,1,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNESBHAU','2021-02-13 21:04:27','TRNESBHAU','2021-02-13 21:04:27'),(372,45,0,'Scrambled Egg','Scrambled Egg','','',0.0000,0.0000,1,1,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNESBHAU','2021-02-13 21:05:03','TRNESBHAU','2021-02-13 21:05:03'),(373,45,0,'Nasi','Nasi','','',0.0000,0.0000,1,1,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNESBHAU','2021-02-13 21:07:51','TRNESBHAU','2021-02-13 21:07:51'),(374,45,0,'Wagyu aja','Wagyu aja','','',0.0000,0.0000,1,1,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNESBHAU','2021-02-13 21:09:21','TRNESBHAU','2021-02-13 21:09:21'),(375,44,0,'Mala Wings','Mala Wings','','',0.0000,0.0000,1,1,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNESBHAU','2021-02-13 21:10:09','TRNESBHAU','2021-02-13 21:10:09'),(376,43,0,'Chicken Gochujang','Chicken Gochujang','','',0.0000,0.0000,1,1,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNESBHAU','2021-02-13 21:13:52','TRNESBHAU','2021-02-13 21:13:52'),(377,43,0,'Beef Bulgogi','Beef Bulgogi','','',0.0000,0.0000,1,1,'0',0,0,'4 1 01 02','5 1 01 02','4 1 01 05','',1,'','',0,'TRNESBHAU','2021-02-13 21:15:34','TRNESBHAU','2021-02-13 21:15:34');
/*!40000 ALTER TABLE `ms_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menucategory`
--

DROP TABLE IF EXISTS `ms_menucategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menucategory` (
  `menuCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `menuCategoryDesc` varchar(50) NOT NULL,
  `salesCoaNo` varchar(20) NOT NULL,
  `cogsCoaNo` varchar(20) NOT NULL,
  `discountCoaNo` varchar(20) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`menuCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menucategory`
--

LOCK TABLES `ms_menucategory` WRITE;
/*!40000 ALTER TABLE `ms_menucategory` DISABLE KEYS */;
INSERT INTO `ms_menucategory` VALUES (1,'SNACK','4 1 01 03','5 1 01 03','4 1 01 05','',NULL,1,'TRNVIN','2020-02-15 23:29:24','TRNyoga','2020-02-19 17:49:51'),(2,'FOOD','4 1 01 01','5 1 01 02','4 1 01 05','',NULL,1,'TRNyoga','2020-02-19 17:50:10','TRNADI','2021-02-16 12:50:36'),(3,'Food DK','4 1 01 02','5 1 01 02','4 1 01 05','',NULL,1,'TRNWIL','2020-07-10 09:08:57','TRNWIL','2020-07-10 09:08:57'),(4,'Beverages DK','4 1 01 01','5 1 01 01','4 1 01 05','',NULL,1,'TRNWIL','2020-07-10 09:10:12','TRNADI','2020-11-18 10:56:56'),(5,'Promo DK','4 1 01 03','5 1 01 03','4 1 01 05','',NULL,1,'TRNWIL','2020-07-10 09:10:54','TRNWIL','2020-07-10 09:10:54'),(6,'MODIFIER DK','4 1 01 03','5 1 01 03','4 1 01 05','',NULL,1,'TRNWIL','2020-07-10 09:14:27','TRNWIL','2020-07-10 09:14:27'),(7,'Kimukatsu Food','4 1 01 02','5 1 01 02','4 1 01 05','',NULL,1,'TRNADI','2020-08-04 10:46:20','TRNADI','2020-08-04 10:46:20'),(8,'HOG FOOD','4 1 01 02','5 1 01 02','4 1 01 05','',NULL,1,'TRNWIL','2020-09-29 15:15:50','TRNWIL','2020-09-29 15:35:29'),(9,'HOG DRINK','4 1 01 01','5 1 01 01','4 1 01 05','',NULL,1,'TRNWIL','2020-09-29 15:17:47','TRNWIL','2020-09-29 15:18:17'),(10,'Lounge','4 1 01 03','5 1 01 03','4 1 01 05','',NULL,1,'TRNWIL','2020-11-15 13:57:57','TRNEKA','2020-11-20 10:28:56'),(11,'BUFFET','4 1 01 02','5 1 01 02','4 1 01 05','',NULL,1,'TRNEKA','2020-11-20 10:31:42','TRNEKA','2020-11-20 10:38:08'),(12,'NH FOOD','4 1 01 02','5 1 01 02','4 1 01 05','',NULL,1,'TRNWIL','2020-12-03 11:19:37','TRNWIL','2020-12-03 11:19:37'),(13,'NH BEVERAGES','4 1 01 01','5 1 01 01','4 1 01 05','',NULL,1,'TRNWIL','2020-12-03 11:20:07','TRNWIL','2020-12-03 11:20:07'),(14,'Es Teh Indonesia','4 1 01 01','5 1 01 01','4 1 01 05','',NULL,1,'TRNVIN','2021-01-14 15:59:28','TRNVIN','2021-01-14 15:59:28'),(15,'Coffee','4 1 01 01','5 1 01 01','4 1 01 05','',NULL,1,'TRNADI','2021-01-19 17:25:09','TRNADI','2021-01-19 17:25:09'),(16,'SaladStop','4 1 01 02','5 1 01 02','4 1 01 05','',NULL,1,'TRNEKA','2021-01-23 10:46:19','TRNEKA','2021-01-23 10:46:19'),(17,'DailyBox','4 1 01 02','5 1 01 02','4 1 01 05','',NULL,1,'TRNESBHAU','2021-02-11 16:54:42','TRNESBHAU','2021-02-13 20:54:41');
/*!40000 ALTER TABLE `ms_menucategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menucategorydetail`
--

DROP TABLE IF EXISTS `ms_menucategorydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menucategorydetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `menuCategoryID` int(11) NOT NULL,
  `menuCategoryDetailDesc` varchar(100) NOT NULL,
  `imageUrl` text,
  `orderID` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_menucategorydetail_menuCategoryID` (`menuCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menucategorydetail`
--

LOCK TABLES `ms_menucategorydetail` WRITE;
/*!40000 ALTER TABLE `ms_menucategorydetail` DISABLE KEYS */;
INSERT INTO `ms_menucategorydetail` VALUES (1,1,'Snack','',NULL,1),(2,2,'1234','',0,1),(3,3,'Beijing Duck','',0,1),(4,3,'House Specialities','',1,1),(5,3,'Live Seafood','',2,1),(6,4,'Drinks','',0,1),(7,5,'PACKAGE SPECIALITIES','',0,1),(8,6,'FOOD MOD','',0,1),(9,6,'DRINK MOD','',1,1),(10,6,'OTHERS MOD','',2,1),(11,7,'Chicken','',0,1),(12,8,'HOG APPETIZER','',0,1),(13,8,'HOG PORK','',1,1),(14,8,'HOG BURGER','',2,1),(15,8,'HOG OVER RICE','',3,1),(16,9,'HOG SIGNATURE DRINK','',0,1),(17,9,'HOG FLAVOUR TEA','',1,1),(18,9,'HOG FLAVOUR LATTE','',2,1),(19,9,'HOG COFFEE','',3,1),(20,9,'HOG PREMIUM TEA','',4,1),(21,9,'HOG OTHER','',5,1),(22,8,'HOG ADD ON','',4,1),(23,10,'LOUNGE','',0,1),(24,10,'ADDITIONAL SERVICE','',1,1),(25,11,'BUFFET REFILL','',0,1),(26,11,'WASTE','',1,1),(27,12,'STEAMED','',0,1),(28,12,'FRIED','',1,1),(29,12,'NOODLE','',2,1),(30,12,'RICE','',3,1),(31,12,'TOAST & SNACK','',4,1),(32,12,'DESSERT','',5,1),(33,12,'TOAST SERIES','',6,1),(34,12,'RETAIL','',7,1),(35,12,'TASTE THE WORLD','',8,1),(36,13,'COFFEE & TEA','',0,1),(37,13,'NON-COFFEE','',1,1),(38,14,'Es Teh','',0,1),(39,14,'Topping','',1,1),(40,15,'Coffee','',0,1),(41,16,'Warm Protein Bowl','',0,1),(42,17,'Rice Box','',0,1),(43,17,'K-Series','',3,1),(44,17,'x William Gozali','',2,1),(45,17,'Lauk Aja','',1,1);
/*!40000 ALTER TABLE `ms_menucategorydetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menuextra`
--

DROP TABLE IF EXISTS `ms_menuextra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menuextra` (
  `menuExtraID` int(11) NOT NULL AUTO_INCREMENT,
  `menuID` int(11) NOT NULL,
  `menuRefID` int(11) DEFAULT NULL,
  `bomID` int(11) DEFAULT NULL,
  `menuGroupID` int(11) NOT NULL,
  `menuExtraName` varchar(100) NOT NULL,
  `menuExtraShortName` varchar(30) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `flagMandatory` tinyint(1) NOT NULL,
  `minExtraQty` decimal(20,4) NOT NULL,
  `maxExtraQty` decimal(20,4) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `buttonColor` varchar(50) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`menuExtraID`),
  KEY `idx_menuextra_menuGroupID` (`menuGroupID`),
  KEY `idx_menuextra_menuID` (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menuextra`
--

LOCK TABLES `ms_menuextra` WRITE;
/*!40000 ALTER TABLE `ms_menuextra` DISABLE KEYS */;
INSERT INTO `ms_menuextra` VALUES (1,1,NULL,0,0,'Menu Extra','Menu Extra',1.0000,0,1.0000,1.0000,'',NULL,NULL,1,'TRNyoga','2020-02-19 18:08:08','TRNyoga','2020-02-19 18:08:08'),(2,4,334,2,0,'Extra BBB','Extra BBB',5000.0000,0,1.0000,999.0000,'','',0,1,'TRNADI','2020-12-17 15:36:23','TRNADI','2021-02-18 16:55:39'),(3,335,348,0,0,'Kopi Susu','Kopi Susu',5000.0000,0,1.0000,99.0000,'','#11e830',0,1,'TRNADI','2021-01-26 09:12:25','TRNADI','2021-02-16 12:37:30'),(4,335,4,0,0,'AAA','AAA',6000.0000,0,1.0000,99.0000,'','#df7c24',1,1,'TRNADI','2021-01-26 09:12:25','TRNADI','2021-02-16 12:37:30'),(5,376,371,0,0,'Sunny Side Up','Sunny Side Up',5000.0000,0,1.0000,2.0000,'','',0,1,'TRNESBHAU','2021-02-13 21:13:52','TRNESBHAU','2021-02-13 21:13:52'),(6,376,372,0,0,'Scrambled Egg','Scrambled Egg',5000.0000,0,1.0000,2.0000,'','',1,1,'TRNESBHAU','2021-02-13 21:13:52','TRNESBHAU','2021-02-13 21:13:52'),(7,377,371,0,0,'Sunny Side Up','Sunny Side Up',5000.0000,0,1.0000,2.0000,'','',0,1,'TRNESBHAU','2021-02-13 21:15:34','TRNESBHAU','2021-02-13 21:15:34'),(8,377,372,0,0,'Scrambled Egg','Scrambled Egg',5000.0000,0,1.0000,2.0000,'','',1,1,'TRNESBHAU','2021-02-13 21:15:34','TRNESBHAU','2021-02-13 21:15:34'),(9,365,371,0,0,'Sunny Side Up','Sunny Side Up',5000.0000,0,1.0000,2.0000,'','',0,1,'TRNESBHAU','2021-02-13 21:18:09','TRNESBHAU','2021-02-13 21:18:09'),(10,365,372,0,0,'Scrambled Egg','Scrambled Egg',5000.0000,0,1.0000,2.0000,'','',1,1,'TRNESBHAU','2021-02-13 21:18:09','TRNESBHAU','2021-02-13 21:18:09'),(11,369,371,0,0,'Sunny Side Up','Sunny Side Up',5000.0000,0,1.0000,2.0000,'','',0,1,'TRNESBHAU','2021-02-13 21:19:13','TRNESBHAU','2021-02-13 21:19:13'),(12,369,372,0,0,'Scrambled Egg','Scrambled Egg',5000.0000,0,1.0000,2.0000,'','',1,1,'TRNESBHAU','2021-02-13 21:19:13','TRNESBHAU','2021-02-13 21:19:13'),(13,368,371,0,0,'Sunny Side Up','Sunny Side Up',5000.0000,0,1.0000,2.0000,'','',0,1,'TRNESBHAU','2021-02-13 21:20:06','TRNESBHAU','2021-02-13 21:20:06'),(14,368,372,0,0,'Scrambled Egg','Scrambled Egg',5000.0000,0,1.0000,2.0000,'','',1,1,'TRNESBHAU','2021-02-13 21:20:06','TRNESBHAU','2021-02-13 21:20:06');
/*!40000 ALTER TABLE `ms_menuextra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menugroup`
--

DROP TABLE IF EXISTS `ms_menugroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menugroup` (
  `menuGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `menuID` int(11) NOT NULL,
  `menuGroup` varchar(50) NOT NULL,
  `minQty` decimal(20,4) NOT NULL,
  `maxQty` decimal(20,4) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`menuGroupID`),
  KEY `idx_menugroup_menuID` (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menugroup`
--

LOCK TABLES `ms_menugroup` WRITE;
/*!40000 ALTER TABLE `ms_menugroup` DISABLE KEYS */;
INSERT INTO `ms_menugroup` VALUES (1,5,'Portion',1.0000,1.0000,'',0,1),(2,15,'Tea',1.0000,1.0000,'',0,1),(3,4,'Rice',1.0000,1.0000,'',0,1),(4,50,'SATAY',1.0000,1.0000,'',0,1),(5,54,'Portion',1.0000,1.0000,'',0,1),(6,73,'Portion',1.0000,1.0000,'',0,0),(7,70,'Portion',1.0000,1.0000,'',0,1),(8,338,'Size',1.0000,1.0000,'',0,1),(9,348,' Reguler',0.0000,1.0000,'',0,1),(10,348,'Large',1.0000,1.0000,'',1,0),(11,348,'Large',0.0000,1.0000,'',1,1),(12,4,'Vegetables',1.0000,1.0000,'',1,1),(13,4,'Mushroom',1.0000,1.0000,'',2,1);
/*!40000 ALTER TABLE `ms_menugroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menuicon`
--

DROP TABLE IF EXISTS `ms_menuicon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menuicon` (
  `menuIconID` int(11) NOT NULL AUTO_INCREMENT,
  `menuIconName` varchar(100) NOT NULL,
  `menuIconUrl` text,
  PRIMARY KEY (`menuIconID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menuicon`
--

LOCK TABLES `ms_menuicon` WRITE;
/*!40000 ALTER TABLE `ms_menuicon` DISABLE KEYS */;
INSERT INTO `ms_menuicon` VALUES (1,'Recommended','recommended.png'),(2,'New','new.png'),(3,'Promoted','promoted.png'),(4,'Vegetarian','vegetarian.png'),(5,'Spicy','spicy.png');
/*!40000 ALTER TABLE `ms_menuicon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menupackage`
--

DROP TABLE IF EXISTS `ms_menupackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menupackage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `menuGroupID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `flagDefault` tinyint(1) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_menupackage_menuGroupID` (`menuGroupID`),
  KEY `idx_menupackage_menuID` (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menupackage`
--

LOCK TABLES `ms_menupackage` WRITE;
/*!40000 ALTER TABLE `ms_menupackage` DISABLE KEYS */;
INSERT INTO `ms_menupackage` VALUES (1,1,6,213000.0000,0,0,1,'TRNWIL','2020-07-10 09:15:57','TRNADI','2021-01-21 14:51:06'),(2,1,7,350000.0000,1,0,1,'TRNWIL','2020-07-10 09:15:57','TRNADI','2021-01-21 14:51:06'),(3,2,11,0.0000,0,0,1,'TRNWIL','2020-07-10 09:44:22','TRNWIL','2020-07-10 09:45:23'),(4,2,14,0.0000,2,0,1,'TRNWIL','2020-07-10 09:44:22','TRNWIL','2020-07-10 09:45:23'),(5,2,12,0.0000,1,0,1,'TRNWIL','2020-07-10 09:44:22','TRNWIL','2020-07-10 09:45:23'),(6,2,13,0.0000,3,0,1,'TRNWIL','2020-07-10 09:44:22','TRNWIL','2020-07-10 09:45:23'),(8,4,51,30000.0000,0,0,1,'TRNWIL','2020-09-29 16:08:57','TRNWIL','2020-09-29 16:14:15'),(9,4,52,50000.0000,1,0,1,'TRNWIL','2020-09-29 16:08:57','TRNWIL','2020-09-29 16:14:15'),(10,4,53,105000.0000,2,0,1,'TRNWIL','2020-09-29 16:08:57','TRNWIL','2020-09-29 16:14:15'),(11,5,55,68000.0000,0,0,1,'TRNWIL','2020-09-29 16:10:15','TRNWIL','2020-09-29 16:14:05'),(12,5,56,270000.0000,1,0,1,'TRNWIL','2020-09-29 16:10:15','TRNWIL','2020-09-29 16:14:05'),(13,5,57,450000.0000,2,0,1,'TRNWIL','2020-09-29 16:10:15','TRNWIL','2020-09-29 16:14:05'),(16,6,74,35000.0000,0,0,1,'TRNWIL','2020-09-29 16:12:10','TRNWIL','2020-09-29 16:12:10'),(17,6,75,95000.0000,1,0,1,'TRNWIL','2020-09-29 16:12:10','TRNWIL','2020-09-29 16:12:10'),(18,7,71,35000.0000,0,0,1,'TRNWIL','2020-09-29 16:12:42','TRNADI','2021-01-26 11:04:30'),(19,7,72,95000.0000,1,0,1,'TRNWIL','2020-09-29 16:12:42','TRNADI','2021-01-26 11:04:30'),(22,8,336,0.0000,0,0,1,'TRNVIN','2021-01-14 16:04:43','TRNVIN','2021-01-14 16:12:13'),(23,8,337,5000.0000,1,0,1,'TRNVIN','2021-01-14 16:04:43','TRNVIN','2021-01-14 16:12:13'),(24,9,351,0.0000,0,0,1,'TRNADI','2021-01-19 17:28:54','TRNADI','2021-01-19 17:37:23'),(25,9,352,0.0000,1,0,1,'TRNADI','2021-01-19 17:28:54','TRNADI','2021-01-19 17:37:23'),(26,10,349,5000.0000,0,0,1,'TRNADI','2021-01-19 17:28:54','TRNADI','2021-01-19 17:28:54'),(27,10,350,5000.0000,1,0,1,'TRNADI','2021-01-19 17:28:54','TRNADI','2021-01-19 17:28:54'),(30,11,350,5000.0000,0,0,1,'TRNADI','2021-01-19 17:37:23','TRNADI','2021-01-19 17:37:23'),(31,11,349,5000.0000,1,0,1,'TRNADI','2021-01-19 17:37:23','TRNADI','2021-01-19 17:37:23'),(32,3,69,0.0000,0,1,1,'TRNADI','2021-02-04 18:08:53','TRNADI','2021-02-18 16:55:39'),(33,12,9,0.0000,0,1,1,'TRNADI','2021-02-04 18:08:53','TRNADI','2021-02-18 16:55:39'),(34,13,9,0.0000,0,1,1,'TRNADI','2021-02-04 18:08:53','TRNADI','2021-02-18 16:55:39');
/*!40000 ALTER TABLE `ms_menupackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menupromotion`
--

DROP TABLE IF EXISTS `ms_menupromotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menupromotion` (
  `menuPromotionID` int(11) NOT NULL AUTO_INCREMENT,
  `headID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `promotionPrice` decimal(20,4) NOT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuPromotionID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menupromotion`
--

LOCK TABLES `ms_menupromotion` WRITE;
/*!40000 ALTER TABLE `ms_menupromotion` DISABLE KEYS */;
INSERT INTO `ms_menupromotion` VALUES (1,1,1,1000.0000,1);
/*!40000 ALTER TABLE `ms_menupromotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menupromotionday`
--

DROP TABLE IF EXISTS `ms_menupromotionday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menupromotionday` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `headID` int(11) NOT NULL,
  `dayID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menupromotionday`
--

LOCK TABLES `ms_menupromotionday` WRITE;
/*!40000 ALTER TABLE `ms_menupromotionday` DISABLE KEYS */;
INSERT INTO `ms_menupromotionday` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7);
/*!40000 ALTER TABLE `ms_menupromotionday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menupromotionhead`
--

DROP TABLE IF EXISTS `ms_menupromotionhead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menupromotionhead` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `branchID` int(11) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menupromotionhead`
--

LOCK TABLES `ms_menupromotionhead` WRITE;
/*!40000 ALTER TABLE `ms_menupromotionhead` DISABLE KEYS */;
INSERT INTO `ms_menupromotionhead` VALUES (1,'2020-02-01 18:05:00','2020-02-19 18:55:00',0,'',1,'TRNyoga','2020-02-19 18:09:31','TRNyoga','2020-02-19 18:09:31');
/*!40000 ALTER TABLE `ms_menupromotionhead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menutemplatecategory`
--

DROP TABLE IF EXISTS `ms_menutemplatecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menutemplatecategory` (
  `menuTemplateID` int(11) NOT NULL,
  `menuCategoryID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  PRIMARY KEY (`menuTemplateID`,`menuCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menutemplatecategory`
--

LOCK TABLES `ms_menutemplatecategory` WRITE;
/*!40000 ALTER TABLE `ms_menutemplatecategory` DISABLE KEYS */;
INSERT INTO `ms_menutemplatecategory` VALUES (13,14,1),(14,14,1);
/*!40000 ALTER TABLE `ms_menutemplatecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menutemplatecategorydetail`
--

DROP TABLE IF EXISTS `ms_menutemplatecategorydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menutemplatecategorydetail` (
  `menuTemplateID` int(11) NOT NULL,
  `menuCategoryDetailID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  PRIMARY KEY (`menuTemplateID`,`menuCategoryDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menutemplatecategorydetail`
--

LOCK TABLES `ms_menutemplatecategorydetail` WRITE;
/*!40000 ALTER TABLE `ms_menutemplatecategorydetail` DISABLE KEYS */;
INSERT INTO `ms_menutemplatecategorydetail` VALUES (13,38,1),(13,39,2),(14,38,1),(14,39,2);
/*!40000 ALTER TABLE `ms_menutemplatecategorydetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menutemplatedetail`
--

DROP TABLE IF EXISTS `ms_menutemplatedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menutemplatedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `menuTemplateID` varchar(50) DEFAULT NULL,
  `menuID` int(11) DEFAULT NULL,
  `beforePrice` decimal(20,4) DEFAULT NULL,
  `price` decimal(20,4) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) DEFAULT NULL,
  `flagShowEzo` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_menuTemplateID_ms_menutemplatedetail` (`menuTemplateID`),
  KEY `idx_menuID_ms_menutemplatedetail` (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menutemplatedetail`
--

LOCK TABLES `ms_menutemplatedetail` WRITE;
/*!40000 ALTER TABLE `ms_menutemplatedetail` DISABLE KEYS */;
INSERT INTO `ms_menutemplatedetail` VALUES (200,'13',338,10000.0000,5000.0000,1,1,1),(201,'13',337,0.0000,0.0000,2,0,0),(202,'13',336,0.0000,0.0000,3,0,0),(203,'13',339,0.0000,15000.0000,0,1,NULL),(204,'13',340,0.0000,8000.0000,0,1,NULL),(205,'13',341,0.0000,10000.0000,0,1,NULL),(206,'13',342,0.0000,12000.0000,0,1,NULL),(207,'13',343,0.0000,16000.0000,0,1,NULL),(208,'13',344,0.0000,16000.0000,0,1,NULL),(209,'13',345,0.0000,18000.0000,0,1,NULL),(210,'13',346,0.0000,12000.0000,0,1,NULL),(211,'13',347,0.0000,12000.0000,0,1,NULL),(217,'13',353,0.0000,3000.0000,0,1,NULL),(218,'13',354,0.0000,3000.0000,0,1,NULL),(222,'14',345,0.0000,20000.0000,1,1,0),(223,'14',346,0.0000,14000.0000,2,1,0),(224,'14',347,0.0000,14000.0000,3,1,0),(225,'14',340,0.0000,10000.0000,4,1,0),(226,'14',339,0.0000,15000.0000,5,1,0),(227,'14',341,0.0000,10000.0000,6,1,0),(228,'14',342,0.0000,12000.0000,7,1,0),(229,'14',343,0.0000,16000.0000,8,1,0),(230,'14',344,0.0000,16000.0000,9,1,0),(231,'14',338,0.0000,5000.0000,10,1,0),(232,'14',353,0.0000,3000.0000,11,1,0),(233,'14',354,0.0000,3000.0000,12,1,0);
/*!40000 ALTER TABLE `ms_menutemplatedetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_menutemplatehead`
--

DROP TABLE IF EXISTS `ms_menutemplatehead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_menutemplatehead` (
  `menuTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `menuTemplateName` varchar(50) DEFAULT NULL,
  `activeDate` date DEFAULT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `flagInclusive` tinyint(1) DEFAULT '0',
  `flagActive` tinyint(1) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`menuTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_menutemplatehead`
--

LOCK TABLES `ms_menutemplatehead` WRITE;
/*!40000 ALTER TABLE `ms_menutemplatehead` DISABLE KEYS */;
INSERT INTO `ms_menutemplatehead` VALUES (13,'Es Teh Indonesia','2021-01-14','',0,1,'TRNVIN','2021-01-14 16:06:07','TRNVIN','2021-01-14 16:06:07'),(14,'Es Teh Indonesia Online','2021-01-20','',0,1,'TRNVIN','2021-01-20 11:44:39','TRNVIN','2021-01-20 11:44:39');
/*!40000 ALTER TABLE `ms_menutemplatehead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_notes`
--

DROP TABLE IF EXISTS `ms_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_notes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `notesCategoryID` int(11) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_notes`
--

LOCK TABLES `ms_notes` WRITE;
/*!40000 ALTER TABLE `ms_notes` DISABLE KEYS */;
INSERT INTO `ms_notes` VALUES (1,1,'123',1),(2,2,'Sauce on the sides',1),(3,2,'No Pickles',1),(4,2,'For Kids',1),(5,3,'No Spicy',1),(6,3,'Normal',1),(7,3,'Very Spicy',1),(8,4,'Less Ice',1),(9,4,'No Ice',1),(10,4,'Less Sugar',1),(11,4,'No Sugar',1);
/*!40000 ALTER TABLE `ms_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_notescategory`
--

DROP TABLE IF EXISTS `ms_notescategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_notescategory` (
  `notesCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `notesCategoryDesc` varchar(50) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`notesCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_notescategory`
--

LOCK TABLES `ms_notescategory` WRITE;
/*!40000 ALTER TABLE `ms_notescategory` DISABLE KEYS */;
INSERT INTO `ms_notescategory` VALUES (4,'Drink',NULL,1,'TRNVIN','2021-01-20 10:25:02','TRNVIN','2021-01-20 10:25:02');
/*!40000 ALTER TABLE `ms_notescategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_notificationdetail`
--

DROP TABLE IF EXISTS `ms_notificationdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_notificationdetail` (
  `notificationDetailID` int(11) NOT NULL,
  `notificationID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`notificationDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_notificationdetail`
--

LOCK TABLES `ms_notificationdetail` WRITE;
/*!40000 ALTER TABLE `ms_notificationdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_notificationdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_notificationhead`
--

DROP TABLE IF EXISTS `ms_notificationhead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_notificationhead` (
  `notificationID` int(11) NOT NULL,
  `notificationTitle` varchar(100) NOT NULL,
  `notificationText` text NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `createdBy` varchar(100) NOT NULL DEFAULT 'SYSTEM',
  `createdDate` datetime NOT NULL DEFAULT '2021-03-02 11:00:09',
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`notificationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_notificationhead`
--

LOCK TABLES `ms_notificationhead` WRITE;
/*!40000 ALTER TABLE `ms_notificationhead` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_notificationhead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_paymentmethod`
--

DROP TABLE IF EXISTS `ms_paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_paymentmethod` (
  `paymentMethodID` int(11) NOT NULL AUTO_INCREMENT,
  `paymentMethodTypeID` int(11) NOT NULL,
  `voucherTypeID` int(11) DEFAULT NULL,
  `voucherSourceID` int(11) DEFAULT NULL,
  `paymentMethodName` varchar(50) NOT NULL,
  `paymentMethodCode` varchar(50) DEFAULT NULL,
  `posExternalPaymentID` varchar(10) DEFAULT NULL,
  `edcWssUrl` varchar(200) DEFAULT NULL,
  `edcPort` varchar(200) DEFAULT NULL,
  `branchID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `coaNo` varchar(20) NOT NULL,
  `printedCount` int(11) NOT NULL DEFAULT '2',
  `fixedAmount` decimal(20,4) DEFAULT NULL,
  `flagOpenCashdrawer` tinyint(1) NOT NULL DEFAULT '1',
  `flagAuthorization` tinyint(1) NOT NULL,
  `flagUseEmployeeLimit` tinyint(1) DEFAULT NULL,
  `flagEdcActive` tinyint(1) NOT NULL DEFAULT '1',
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`paymentMethodID`),
  KEY `idx_paymentmethod_paymentMethodTypeID` (`paymentMethodTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_paymentmethod`
--

LOCK TABLES `ms_paymentmethod` WRITE;
/*!40000 ALTER TABLE `ms_paymentmethod` DISABLE KEYS */;
INSERT INTO `ms_paymentmethod` VALUES (4,1,NULL,NULL,'CASH','',NULL,NULL,NULL,9,0,'1 1 01 02',2,NULL,0,0,0,0,1,'TRNWIL','2020-07-11 19:15:41','TRNVIN','2021-01-20 08:42:10','2021-01-20 08:42:10'),(6,2,NULL,NULL,'DEBIT BCA','',NULL,NULL,NULL,9,0,'1 1 01 06',2,NULL,0,0,0,0,1,'TRNWIL','2020-07-11 19:17:25','TRNVIN','2021-01-20 08:42:43','2021-01-20 08:42:43'),(9,2,NULL,NULL,'OVO','',NULL,NULL,NULL,9,0,'1 1 01 06',2,NULL,0,0,0,0,1,'TRNWIL','2020-07-11 19:19:38','TRNVIN','2021-01-20 08:42:23','2021-01-20 08:42:23'),(10,2,NULL,NULL,'DANA','',NULL,NULL,NULL,9,0,'1 1 01 06',2,NULL,0,0,0,0,1,'TRNWIL','2020-07-11 19:20:06','TRNVIN','2021-01-20 08:42:58','2021-01-20 08:42:58');
/*!40000 ALTER TABLE `ms_paymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_poscustomerdisplaydetail`
--

DROP TABLE IF EXISTS `ms_poscustomerdisplaydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_poscustomerdisplaydetail` (
  `ID` int(11) NOT NULL,
  `posCustomerDisplayID` int(11) NOT NULL,
  `imageUrl` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_poscustomerdisplaydetail`
--

LOCK TABLES `ms_poscustomerdisplaydetail` WRITE;
/*!40000 ALTER TABLE `ms_poscustomerdisplaydetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_poscustomerdisplaydetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_poscustomerdisplayhead`
--

DROP TABLE IF EXISTS `ms_poscustomerdisplayhead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_poscustomerdisplayhead` (
  `posCustomerDisplayID` int(11) NOT NULL,
  `posCustomerDisplayName` varchar(50) NOT NULL,
  `flagActive` int(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`posCustomerDisplayID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_poscustomerdisplayhead`
--

LOCK TABLES `ms_poscustomerdisplayhead` WRITE;
/*!40000 ALTER TABLE `ms_poscustomerdisplayhead` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_poscustomerdisplayhead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_posuser`
--

DROP TABLE IF EXISTS `ms_posuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_posuser` (
  `username` varchar(100) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(45) NOT NULL,
  `posUserRoleID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `posAuthKey` varchar(50) DEFAULT NULL,
  `posUserID` varchar(50) NOT NULL,
  `posPassword` varchar(50) NOT NULL,
  `posSalt` varchar(45) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_posuser`
--

LOCK TABLES `ms_posuser` WRITE;
/*!40000 ALTER TABLE `ms_posuser` DISABLE KEYS */;
INSERT INTO `ms_posuser` VALUES ('TRNADMIN','ADMIN','17f9be56765be0f685289da7fdc72f4a','z5aYQu8mHkxdss3ghXw_VJR5lUCqjPqS25EnyU48M5HML',1,9,'MVLAeEsOxGPIjp4hTNvM4ZgA2JKbM4KcoIQxA-jq9EYMZqr1pO','54321','9817be71ec696e3478f9088e08218eab','azP_YLVD86WNU5Wy7n7PKaPMw67rusT1_LGgopwL9XepI','2021-03-02 11:07:00'),('TRNANG','ANGGA ESB','4f5982bbc5bd385339c3cf12558f0bf9','8PoJ4UL9I2ooOi3eDfQ_8fv9LlpMhNMiMCOZx72Z2y8HN',1,9,'Kb8m-1MztGQeu5M7jBqYCTOTp6hjEICJfaP4G9FfMXTqEjyopB','812','5d8917345f8350ca477c6ddb5490635a','ZPYXPZSMupdFuiSofh6rl6vFWr4YEOy7_OhXEDShVaTj9','2021-03-02 11:07:00'),('TRNAPRI','Apriyanto','282cf88f6f6f50081425cb542f3dbe65','zU-V3Tx3Poft0VHkauT3vb__AT2_yCg-mT4yInanlFulZ',1,9,NULL,'222222','5f4aab4686c84e3ebe899b93009e1772','i4ZRxCEOWpwD0QWA1ziyUMc-UkPaUxdIOZqYMrj72GZYW','2021-03-02 11:07:00'),('TRNKASIR01','Vincent','5d75e784cd6d01043a1d7e357e0eb2f0','8B-1aUKd0ZGbdgVBxzKDfTeEZL17knMe5YQAhm0RDIF2j',1,9,'V6og-DmGtNm0ej_gGh6T-vJjg2Xsn-Flhidijq7hJYd4_a8_UL','1234','fa26b0fce955634077bb61884007519b','1UDT7xz7Bq_U1bSgTbMpvzENuaQf24_8hC_8EwLc25WH5','2021-03-02 11:07:00'),('TRNTYA','Chintya','21d02df0e730fecd3761e614409c7074','MPGcAgGlLKlWXUanXzENnjryBeNea4Bh98f4l7-4M2RJt',1,9,NULL,'2424','8cab8348f36e023f44df9a989d76d053','phPmDrEJKMfAa-z5ePuUfxq5H9utgmQaHfBUCiYwP57dW','2021-03-02 11:07:00'),('TRNWIL','William ESB','ee49b3a4675ed1357e789c3488f5ddaf','tNyaQ0seaG6Y4Y5a0PnjiRnFujOwlmKBwQZLLbMfjNAZw',1,9,NULL,'8888','538192d29f7bb8bbd520860935493e32','0FvMzkdv_OtpHeJt3-6aT6a4wrZApmeT44VCU6PJeGkeg','2021-03-02 11:07:00');
/*!40000 ALTER TABLE `ms_posuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_posuseraccess`
--

DROP TABLE IF EXISTS `ms_posuseraccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_posuseraccess` (
  `posUserRoleID` int(11) NOT NULL,
  `filterAccessID` varchar(10) NOT NULL,
  `hasAccess` tinyint(1) NOT NULL,
  PRIMARY KEY (`posUserRoleID`,`filterAccessID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_posuseraccess`
--

LOCK TABLES `ms_posuseraccess` WRITE;
/*!40000 ALTER TABLE `ms_posuseraccess` DISABLE KEYS */;
INSERT INTO `ms_posuseraccess` VALUES (1,'A1',1),(1,'A10',1),(1,'A12',1),(1,'A13',1),(1,'A14',1),(1,'A15',1),(1,'A16',1),(1,'A17',1),(1,'A18',1),(1,'A2',1),(1,'A3',1),(1,'A4',1),(1,'A5',1),(1,'A6',1),(1,'A7',1),(1,'A8',1),(1,'A9',1),(1,'B1',1),(1,'B10',1),(1,'B2',1),(1,'B3',1),(1,'B4',1),(1,'B5',1),(1,'B6',1),(1,'B7',1),(1,'B8',1),(1,'B9',1),(1,'C1',1),(1,'C2',1),(1,'C3',1),(1,'D1',1),(1,'D2',1),(1,'D3',1),(1,'E1',1),(1,'E2',1),(1,'E3',1),(1,'F1',1),(1,'F2',1),(1,'F3',1),(1,'F4',1),(1,'F5',1),(1,'F6',1),(1,'G1',1),(1,'G2',1),(1,'G3',1),(1,'H1',1),(1,'H2',1),(1,'I1',1),(1,'I2',1),(1,'J1',1),(1,'J2',1),(1,'J3',1),(1,'J4',1),(1,'J5',1),(1,'J6',1),(1,'J7',1),(1,'J8',1),(1,'K1',1),(1,'K2',1),(2,'A1',1),(2,'A10',1),(2,'A12',1),(2,'A13',1),(2,'A14',1),(2,'A15',0),(2,'A16',0),(2,'A2',1),(2,'A3',1),(2,'A4',1),(2,'A5',1),(2,'A6',1),(2,'A7',1),(2,'A8',1),(2,'A9',1),(2,'B1',1),(2,'B10',0),(2,'B2',1),(2,'B3',1),(2,'B4',1),(2,'B5',0),(2,'B6',1),(2,'B7',0),(2,'B8',1),(2,'B9',0),(2,'C1',1),(2,'C2',1),(2,'C3',1),(2,'D1',1),(2,'D2',1),(2,'D3',1),(2,'E1',1),(2,'E2',1),(2,'E3',1),(2,'F1',1),(2,'F2',0),(2,'F3',1),(2,'F4',1),(2,'F5',1),(2,'F6',1),(2,'G1',1),(2,'G2',1),(2,'G3',1),(2,'H1',1),(2,'H2',1),(2,'I1',0),(2,'I2',0),(2,'J1',1),(2,'J2',1),(2,'J3',1),(2,'J4',1),(2,'J5',0),(2,'J6',0),(2,'J7',0),(3,'A1',1),(3,'A10',1),(3,'A12',1),(3,'A13',1),(3,'A14',1),(3,'A15',1),(3,'A16',1),(3,'A17',1),(3,'A18',1),(3,'A2',1),(3,'A3',1),(3,'A4',1),(3,'A5',1),(3,'A6',1),(3,'A7',1),(3,'A8',1),(3,'A9',1),(3,'B1',1),(3,'B10',1),(3,'B2',1),(3,'B3',1),(3,'B4',1),(3,'B5',1),(3,'B6',1),(3,'B7',1),(3,'B8',1),(3,'B9',1),(3,'C1',1),(3,'C2',1),(3,'C3',1),(3,'D1',1),(3,'D2',1),(3,'D3',1),(3,'E1',1),(3,'E2',1),(3,'E3',1),(3,'F1',1),(3,'F2',1),(3,'F3',1),(3,'F4',1),(3,'F5',1),(3,'F6',1),(3,'G1',1),(3,'G2',1),(3,'G3',1),(3,'H1',1),(3,'H2',1),(3,'I1',1),(3,'I2',1),(3,'J1',1),(3,'J2',1),(3,'J3',1),(3,'J4',1),(3,'J5',1),(3,'J6',1),(3,'J7',1),(3,'J8',1),(3,'K1',1),(3,'K2',1);
/*!40000 ALTER TABLE `ms_posuseraccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_posuserrole`
--

DROP TABLE IF EXISTS `ms_posuserrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_posuserrole` (
  `posUserRoleID` int(11) NOT NULL AUTO_INCREMENT,
  `posRoleDesc` varchar(100) NOT NULL DEFAULT '',
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`posUserRoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_posuserrole`
--

LOCK TABLES `ms_posuserrole` WRITE;
/*!40000 ALTER TABLE `ms_posuserrole` DISABLE KEYS */;
INSERT INTO `ms_posuserrole` VALUES (1,'SUPERPOS',1,'TRNVIN','2020-02-15 23:44:26','TRNWIL','2021-02-02 09:06:32'),(2,'KASIR',1,'TRNWIL','2020-07-11 19:39:18','TRNADI','2020-11-16 14:22:10'),(3,'OPS KK',1,'TRNADI','2020-08-10 09:43:11','TRNADI','2021-02-08 22:45:02');
/*!40000 ALTER TABLE `ms_posuserrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_posversion`
--

DROP TABLE IF EXISTS `ms_posversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_posversion` (
  `posVersionID` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(45) NOT NULL,
  `downloadUrl` varchar(300) NOT NULL,
  `downloadMd5` varchar(45) NOT NULL,
  `query` text,
  `deletedFiles` text,
  PRIMARY KEY (`posVersionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_posversion`
--

LOCK TABLES `ms_posversion` WRITE;
/*!40000 ALTER TABLE `ms_posversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_posversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_productdetailmenu`
--

DROP TABLE IF EXISTS `ms_productdetailmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_productdetailmenu` (
  `productID` int(11) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `convertionQty` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`productDetailID`,`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_productdetailmenu`
--

LOCK TABLES `ms_productdetailmenu` WRITE;
/*!40000 ALTER TABLE `ms_productdetailmenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_productdetailmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_promotioncategory`
--

DROP TABLE IF EXISTS `ms_promotioncategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_promotioncategory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `menuCategoryID` int(11) DEFAULT NULL,
  `menuCategoryDetailID` int(11) DEFAULT NULL,
  `menuID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_promotioncategory`
--

LOCK TABLES `ms_promotioncategory` WRITE;
/*!40000 ALTER TABLE `ms_promotioncategory` DISABLE KEYS */;
INSERT INTO `ms_promotioncategory` VALUES (2,27,0,38,NULL);
/*!40000 ALTER TABLE `ms_promotioncategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_promotionday`
--

DROP TABLE IF EXISTS `ms_promotionday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_promotionday` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `dayID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_promotionday`
--

LOCK TABLES `ms_promotionday` WRITE;
/*!40000 ALTER TABLE `ms_promotionday` DISABLE KEYS */;
INSERT INTO `ms_promotionday` VALUES (183,27,1),(184,27,2),(185,27,3),(186,27,4),(187,27,5),(188,27,6),(189,27,7),(190,28,1),(191,28,2),(192,28,3),(193,28,4),(194,28,5),(195,28,6),(196,28,7);
/*!40000 ALTER TABLE `ms_promotionday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_promotiondetail`
--

DROP TABLE IF EXISTS `ms_promotiondetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_promotiondetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `menuSubsID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_promotiondetail`
--

LOCK TABLES `ms_promotiondetail` WRITE;
/*!40000 ALTER TABLE `ms_promotiondetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_promotiondetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_promotionemployeegroup`
--

DROP TABLE IF EXISTS `ms_promotionemployeegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_promotionemployeegroup` (
  `promotionID` int(11) NOT NULL,
  `employeeGroupID` int(11) NOT NULL,
  PRIMARY KEY (`promotionID`,`employeeGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_promotionemployeegroup`
--

LOCK TABLES `ms_promotionemployeegroup` WRITE;
/*!40000 ALTER TABLE `ms_promotionemployeegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_promotionemployeegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_promotionhead`
--

DROP TABLE IF EXISTS `ms_promotionhead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_promotionhead` (
  `promotionID` int(11) NOT NULL AUTO_INCREMENT,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `branchID` int(11) NOT NULL,
  `promotionTypeID` int(11) NOT NULL,
  `minSalesPrice` decimal(20,4) NOT NULL,
  `flagMultiplication` tinyint(1) NOT NULL,
  `maxSalesPrice` decimal(20,4) NOT NULL,
  `paymentMethodTypeID` int(11) DEFAULT NULL,
  `paymentMethodID` int(11) DEFAULT NULL,
  `discount` decimal(20,4) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `flagMemberOnly` tinyint(1) DEFAULT '0',
  `flagPackageContent` tinyint(1) DEFAULT '0',
  `flagMenuExtra` tinyint(1) DEFAULT '0',
  `flagAuthorization` tinyint(1) DEFAULT '0',
  `promotionMemberTypeID` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`promotionID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_promotionhead`
--

LOCK TABLES `ms_promotionhead` WRITE;
/*!40000 ALTER TABLE `ms_promotionhead` DISABLE KEYS */;
INSERT INTO `ms_promotionhead` VALUES (27,'2021-01-01 08:40:00','2021-12-31 23:55:00',9,1,0.0000,0,100000.0000,0,NULL,20.0000,'Disc 20%',0,0,0,0,0,1,'TRNVIN','2021-01-20 08:45:08','TRNVIN','2021-01-20 08:58:58'),(28,'2021-01-19 17:40:00','2021-12-31 23:55:00',9,1,0.0000,0,100000.0000,0,NULL,35.0000,'Disc 35%',0,0,0,0,0,1,'TRNVIN','2021-01-20 11:32:40','TRNVIN','2021-01-20 11:33:34');
/*!40000 ALTER TABLE `ms_promotionhead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_promotiontime`
--

DROP TABLE IF EXISTS `ms_promotiontime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_promotiontime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_promotiontime`
--

LOCK TABLES `ms_promotiontime` WRITE;
/*!40000 ALTER TABLE `ms_promotiontime` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_promotiontime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_questionnaire`
--

DROP TABLE IF EXISTS `ms_questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_questionnaire` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `questionType` int(11) NOT NULL,
  `questionText` text NOT NULL,
  `acceptOtherAnswer` tinyint(1) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_questionnaire`
--

LOCK TABLES `ms_questionnaire` WRITE;
/*!40000 ALTER TABLE `ms_questionnaire` DISABLE KEYS */;
INSERT INTO `ms_questionnaire` VALUES (1,3,'Have you ever come here to eat?',0,1,NULL,'TRNWIL','2020-12-03 10:50:19','TRNWIL','2020-12-03 10:56:21');
/*!40000 ALTER TABLE `ms_questionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_questionoption`
--

DROP TABLE IF EXISTS `ms_questionoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_questionoption` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `questionID` int(11) NOT NULL,
  `answerText` varchar(100) NOT NULL,
  `nextQuestionID` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_questionoption`
--

LOCK TABLES `ms_questionoption` WRITE;
/*!40000 ALTER TABLE `ms_questionoption` DISABLE KEYS */;
INSERT INTO `ms_questionoption` VALUES (1,1,'Yes',NULL,0),(2,1,'No',NULL,1);
/*!40000 ALTER TABLE `ms_questionoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_selfordercampaignhead`
--

DROP TABLE IF EXISTS `ms_selfordercampaignhead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_selfordercampaignhead` (
  `selfOrderCampaignID` int(11) NOT NULL AUTO_INCREMENT,
  `selfOrderCampaignName` varchar(100) NOT NULL,
  `selfOrderCampaignType` varchar(30) NOT NULL,
  `activeDateFrom` datetime DEFAULT NULL,
  `activeDateTo` datetime DEFAULT NULL,
  `effectType` varchar(20) DEFAULT NULL,
  `preAmountVal` decimal(20,4) DEFAULT NULL,
  `preAmountMsg` varchar(200) DEFAULT NULL,
  `minAmountVal` decimal(20,4) DEFAULT NULL,
  `postAmountMsg` varchar(200) DEFAULT NULL,
  `minQty` decimal(20,4) DEFAULT NULL,
  `menuID` int(11) DEFAULT NULL,
  `maxUsage` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `flagMultiple` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`selfOrderCampaignID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_selfordercampaignhead`
--

LOCK TABLES `ms_selfordercampaignhead` WRITE;
/*!40000 ALTER TABLE `ms_selfordercampaignhead` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_selfordercampaignhead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_selfordercampaignitem`
--

DROP TABLE IF EXISTS `ms_selfordercampaignitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_selfordercampaignitem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `selfOrderCampaignID` int(11) NOT NULL,
  `itemType` varchar(20) DEFAULT NULL,
  `itemQty` decimal(20,4) DEFAULT NULL,
  `itemMenuID` int(11) DEFAULT NULL,
  `itemDiscountVal` decimal(20,4) DEFAULT NULL,
  `itemText` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_selfordercampaignitem`
--

LOCK TABLES `ms_selfordercampaignitem` WRITE;
/*!40000 ALTER TABLE `ms_selfordercampaignitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_selfordercampaignitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_setting`
--

DROP TABLE IF EXISTS `ms_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_setting` (
  `key1` varchar(100) NOT NULL,
  `key2` varchar(100) NOT NULL,
  `value1` text,
  `value2` text,
  PRIMARY KEY (`key1`,`key2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_setting`
--

LOCK TABLES `ms_setting` WRITE;
/*!40000 ALTER TABLE `ms_setting` DISABLE KEYS */;
INSERT INTO `ms_setting` VALUES ('External','Member ID Branch Code','',NULL),('External Branch','Flag Active','0',NULL),('External Branch','Nearest Branch','',NULL),('EZO','Activate EZO','0',NULL),('EZO','Activate EZO TA','1',NULL),('EZO','Activate QoQi','0',NULL),('EZO','Branch Thumbnail Image','',NULL),('EZO','Delivery','0',NULL),('EZO','Delivery Cost Tax','1',NULL),('EZO','Delivery Cost Template','',NULL),('EZO','Delivery Courier','0',NULL),('EZO','Delivery Payment Description','<p><br></p>',NULL),('EZO','Delivery Payment Name','',NULL),('EZO','Dine In','1',NULL),('EZO','Distance Limit','',NULL),('EZO','EZ Order Back URL','',NULL),('EZO','Menu Display Mode','1',NULL),('EZO','Menu Navigation Mode','0',NULL),('EZO','Minimum Order Total','0',NULL),('EZO','Order Display Mode','1',NULL),('EZO','Order Landing Page','0',NULL),('EZO','Order Summary Footer','<p><br></p>',NULL),('EZO','Parallel Promo & Voucher Usage','0',NULL),('EZO','Payment At Cashier','1',NULL),('EZO','Payment Cash On Delivery','1',NULL),('EZO','Print EZO TA Receipt','1',NULL),('EZO','Print EZO Table Checker','1',NULL),('EZO','Printer Station','0',NULL),('EZO','Push EZO Delivery to POS','0',NULL),('EZO','QR Footer Text','',NULL),('EZO','Show EZO FS Menu Status','0',NULL),('EZO','Show EZO FS Payment','0',NULL),('EZO','Show EZO FS Price Range','0',NULL),('EZO','Show EZO QS Price Range','0',NULL),('EZO','Show Refund Cash','0',NULL),('EZO','Show Refund Voucher','0',NULL),('EZO','Take Away','1',NULL),('EZO','Temporary Outlet Closed','0',NULL),('EZO','Temporary Outlet Closed Information','<p><br></p>',NULL),('EZO','Voucher Usage','0',NULL),('Foodcourt','Minimum Deposit Amount','0',NULL),('Local Setting','Api Key','7FDk4aB+VecCMCTL0IswnTAzNmNlZTQyOTAxNzBlNmQ1YWY1YzZjNDlmYjMxOWFmZmI3OTNjMGU2NjhiNGMzZTI2MWRjMjMxMzFlZWJlNTnqH7XVYU6Pfr3bBCjxCjqTQ3p5CUw2UBol64Bz4+fnNw==SALAH','Enc'),('Local Setting','Api Url','K1Nprf7/6+B8Dr11STgK/TA0MDRkNTdlNGZjYWY5ZjY4ZjY0M2MyOWRlMTllNzY4NDBhODVlYzI1MGRhZGQ4MmJkOTFjMDNiZjViZGFlN2ZU+LP5EIxr1q+4JDU+TiNtQcCr2E08hNZdvrp+PZDWbOgMn9x5VrsIQP37o8v6p4c=SALAH','Enc'),('Local Setting','Basic Rest Password','suzBy3IZGXlP1X9toBC3IDRmNmY3NjY4M2Y3MGYyMzVlMDk0MjQ0MTc4MzZhYjg1YmViMTBiNjNiMjZiZTkyNTM3OTgxMWJlYzIxY2QzZjLympbIYPwQ99o/UFcrC2eeuZQy3R96nScufhHIt3yBy/BXcgUyCY10qQwe6sbXFiYyJDDwNpm7B7ezqJ+DdR9I','Enc'),('Local Setting','Basic Rest Username','hMQJO6Y/mPXU9ay9TE7qWjNjNzNiZDZlZWY3ZTUzMzNkZmEzYzFhZjhiMTdkZmMwYWIxYTVhOGI4NjQ5MmRkMjllMmE3MjBkNDk4ODhlM2SXva84ReKG3Pq89UNebc4sCezxH6cBguR4CGK1TCOS9g==','Enc'),('Local Setting','Branch ID','9',NULL),('Local Setting','EZO FS API Url','9nDdlJ23kkqufiISQY2ZwjEwYjEyYjQ5ZDI5NTIwMTQyYjljYTQxMjMxZTI4OWYxN2ZjZWMyNDhmMGY3MDY4OTMzMDU3MzM5NmE3ZTE5NzFhw3pImOrjpI94ntQkfyyEk1dM3f3NEaHzvFseZDKBfNibvhNmykAJQ+FVDKchiYUnVSuVblrrA0yBZLCvQXK7','Enc'),('Local Setting','EZO FS Url','0Nq7gXRzvOXoOSihIKYVyWY0NDk3NWEwMjhhOTdhYmRmNzE4ZjA3ZmQyZDAzYjBhMmMwNmM1MzQxMTA3ZDVhMjc2ZmE4NjJjNDZiOTI4YjlCso2arrwFQf0jU/AUFTXQKzkCA3VAVUVNbWHgPS6de7wVHLMVPkP/I28OtIQJCG8=','Enc'),('Local Setting','EZO TA API Url','Mn3IbDLkmF8j4gLBsPQRxzkxNDQ5MTM3MzhjMzZhOTZkNmY4OTM1NjhkOTI5ZDg0MjAzYzU3YWM4NmYyNDkyNGFhZmYyODdkNTNiYTcxMzJg7xNUBx+kznxvnnaFnrq8z9mR7//0N2TElKiHZkgWsBZdnYhsFy5KvJw/x0NGYSZAWksJaTPJgVVVWzv4pgyw','Enc'),('Local Setting','Marugame Directory','0',NULL),('Local Setting','Print Cancelled Menu','0',NULL),('Local Setting','Print Cancelled Menu Summary','0',NULL),('Local Setting','Print Closing Notes','0',NULL),('Local Setting','Print Custom Menu Sales','0',NULL),('Local Setting','Print Deposit Detail','0',NULL),('Local Setting','Print Deposit Summary','0',NULL),('Local Setting','Print Non Sales Bill Summary','0',NULL),('Local Setting','Print Non Sales By Menu','0',NULL),('Local Setting','Print Non Sales Menu Summary','0',NULL),('Local Setting','Print Non Sales Payment by Cashier','0',NULL),('Local Setting','Print Non Sales Payment Method Detail','0',NULL),('Local Setting','Print Non Sales Payment Method Summary','0',NULL),('Local Setting','Print Payment by Cashier','0',NULL),('Local Setting','Print Payment Method Detail','0',NULL),('Local Setting','Print Payment Method Summary','0',NULL),('Local Setting','Print Pending Sales','0',NULL),('Local Setting','Print Promotion Summary','0',NULL),('Local Setting','Print Quick Service Table Text','0',NULL),('Local Setting','Print Sales by Menu Category','0',NULL),('Local Setting','Print Sales by Menu Category Detail','0',NULL),('Local Setting','Print Sales By Menu Group','0',NULL),('Local Setting','Print Sales by Menu Qty','0',NULL),('Local Setting','Print Sales by Menu Qty Value','0',NULL),('Local Setting','Print Sales by Menu Value','0',NULL),('Local Setting','Print Sales by Mode','0',NULL),('Local Setting','Print Sales by Type','0',NULL),('Local Setting','Print Sales By Visit Purpose','0',NULL),('Local Setting','Print Sales Menu by Mode','0',NULL),('Local Setting','Print Sales Menu Package','0',NULL),('Local Setting','Print Sales Per Date','0',NULL),('Local Setting','Print Sales per Menu Category','0',NULL),('Local Setting','Print Sales Voucher Usage','0',NULL),('Local Setting','Print Shift Sales by Menu Value','0',NULL),('Local Setting','Print Shift Summary','0',NULL),('Local Setting','Print Special Price Summary','0',NULL),('Local Setting','Print Void Payment Detail','0',NULL),('Local Setting','Print Void Payment Summary','0',NULL),('Local Setting','Queue Number','0',NULL),('Local Setting','Receipt QR Code Encryption','PC1',NULL),('Local Setting','Timer Danger','0',NULL),('Local Setting','Timer Warning','0',NULL),('Petty Cash','Limit Amount','0',NULL),('Petty Cash','Petty Cash Coa','',NULL),('Petty Cash','Use Petty Cash','0',NULL),('POS','Auto Logout','30000',NULL),('POS','BA Online','0',NULL),('POS','Customer Order Time','0','0'),('POS','Deposit Withdrawal Print Counter','3',NULL),('POS','Dine In Print Checker','1',NULL),('POS','Download Menu Image','0',NULL),('POS','Employee Identification Mode','OFF',NULL),('POS','Employee Type','General',NULL),('POS','Epson Sticker Margin Left','40',NULL),('POS','Epson Sticker Width','500',NULL),('POS','Expected Cash','0',NULL),('POS','Finish All Packages','0',NULL),('POS','Guest Comment QR Text','',NULL),('POS','Guest Comment Time','10',NULL),('POS','Guest Comment Url','',NULL),('POS','Guest Comment Url Default','0',NULL),('POS','Kitchen Checker Top Margin','5',NULL),('POS','Layout Footer Print Label','',NULL),('POS','Layout Header Print Label','',NULL),('POS','Layout Main Menu Mode Print Label','0',NULL),('POS','Layout Menu Mode Print Label','0',NULL),('POS','Layout Menu Print Label','',NULL),('POS','Limit End Day','0',NULL),('POS','Login Type','Username Only',NULL),('POS','Mandatory Additional Info','0',NULL),('POS','Menu Setting','1',NULL),('POS','ODS Mode','1',NULL),('POS','Payment Display Mode','Group',NULL),('POS','Payment Non Sales Print Counter','1',NULL),('POS','Payment Print Counter','2',NULL),('POS','Print Cancel Table Checker','0',NULL),('POS','Print Category Subtotal','0',NULL),('POS','Print Guest Comment QR','0',NULL),('POS','Print Move Item','0',NULL),('POS','Print Move Table','0',NULL),('POS','Print Quick Service Table Text','0',NULL),('POS','Print Receipt Wrap Menu Name','1',NULL),('POS','Print Take Away Order After Payment','0',NULL),('POS','Printing Receipt Mode','0',NULL),('POS','Quick Card Payment','0',NULL),('POS','Regional Tax Number','',NULL),('POS','Rounding Digit','0',NULL),('POS','Rounding Mode','AUTO',NULL),('POS','Rounding Nearest Value','0',NULL),('POS','Sales Decimal Mode','UP',NULL),('POS','Sales Decimal Separator Setting',',',NULL),('POS','Sales Decimal Setting','0',NULL),('POS','Settle Checker Mode','0',NULL),('POS','Shift Notification Closing','0','21:24:35'),('POS','Show Billing Cashier','1',NULL),('POS','Show Billing Number','0',NULL),('POS','Show Billing Pax','0',NULL),('POS','Show Billing Print Counter','1',NULL),('POS','Show Billing Rounding','0',NULL),('POS','Show Billing Server','0',NULL),('POS','Show Billing Table','0',NULL),('POS','Show Billing Time','0',NULL),('POS','Show Billing Visit Purpose','0',NULL),('POS','Show Checker Additional Info','0',NULL),('POS','Show Checker Batch','0',NULL),('POS','Show Checker Customer Info','0',NULL),('POS','Show Checker Date','0',NULL),('POS','Show Checker Detail','0',NULL),('POS','Show Checker Footer','0',NULL),('POS','Show Checker Header','0',NULL),('POS','Show Checker Order','0',NULL),('POS','Show Checker SalesNum','0',NULL),('POS','Show Checker Sender','0',NULL),('POS','Show Checker Sender Name','0',NULL),('POS','Show Checker Table','0',NULL),('POS','Show Checker Table Name','0',NULL),('POS','Show Checker Visit Purpose','0',NULL),('POS','Show Checker Waiter','0',NULL),('POS','Show Checker Waiter Name','0',NULL),('POS','Show EZO Call Bill','1',NULL),('POS','Show EZO Call Waiter','0',NULL),('POS','Show EZO Order Total','0',NULL),('POS','Show Inclusive Other Tax','0',NULL),('POS','Show Inclusive Tax','0',NULL),('POS','Show Kitchen Sales Number','0',NULL),('POS','Show Member Address','0',NULL),('POS','Show Menu Promotion Text','1',NULL),('POS','Show Printing Additional Info','0',NULL),('POS','Show Printing Batch Order','0',NULL),('POS','Show Printing Info Order','0',NULL),('POS','Show Printing Kitchen Date','0',NULL),('POS','Show Printing Kitchen Time','0',NULL),('POS','Show Printing Menu Notes','0',NULL),('POS','Show Printing Payment Info','0',NULL),('POS','Show Printing Sales Info','0',NULL),('POS','Show Printing Sales Mode Order','0',NULL),('POS','Show Printing Sender Order','0',NULL),('POS','Show Printing Table Order','0',NULL),('POS','Show Printing Table Section Order','0',NULL),('POS','Show Printing Time In','0',NULL),('POS','Show Printing Waiter Order','0',NULL),('POS','Show Sales Number','1',NULL),('POS','Swipe Code','',NULL),('POS','Table Checker Top Margin','1',NULL),('POS','Take Away Print Bill','0',NULL),('POS','Take Away Print Checker','0',NULL),('POS','Tax Text','PB1',NULL),('VAT','Value','10.00',NULL);
/*!40000 ALTER TABLE `ms_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_specialpriceday`
--

DROP TABLE IF EXISTS `ms_specialpriceday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_specialpriceday` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `specialPriceID` int(11) NOT NULL,
  `dayID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_specialpriceday`
--

LOCK TABLES `ms_specialpriceday` WRITE;
/*!40000 ALTER TABLE `ms_specialpriceday` DISABLE KEYS */;
INSERT INTO `ms_specialpriceday` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(22,4,1),(23,4,2),(24,4,3),(25,4,4),(26,4,5),(27,4,6),(28,4,7);
/*!40000 ALTER TABLE `ms_specialpriceday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_specialpricehead`
--

DROP TABLE IF EXISTS `ms_specialpricehead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_specialpricehead` (
  `specialPriceID` int(11) NOT NULL AUTO_INCREMENT,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `menuTemplateID` int(11) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`specialPriceID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_specialpricehead`
--

LOCK TABLES `ms_specialpricehead` WRITE;
/*!40000 ALTER TABLE `ms_specialpricehead` DISABLE KEYS */;
INSERT INTO `ms_specialpricehead` VALUES (1,'2020-07-11','2020-07-31',4,'',1,'TRNWIL','2020-07-11 19:44:09',NULL,NULL),(4,'2021-01-20','2021-01-20',13,'',1,'TRNVIN','2021-01-20 11:37:30',NULL,NULL);
/*!40000 ALTER TABLE `ms_specialpricehead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_specialpricemenu`
--

DROP TABLE IF EXISTS `ms_specialpricemenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_specialpricemenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `specialPriceID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_specialpricemenu`
--

LOCK TABLES `ms_specialpricemenu` WRITE;
/*!40000 ALTER TABLE `ms_specialpricemenu` DISABLE KEYS */;
INSERT INTO `ms_specialpricemenu` VALUES (4,1,8,550000.0000),(5,1,9,200000.0000),(6,4,343,13000.0000);
/*!40000 ALTER TABLE `ms_specialpricemenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_specialpricetime`
--

DROP TABLE IF EXISTS `ms_specialpricetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_specialpricetime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `specialPriceID` int(11) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_specialpricetime`
--

LOCK TABLES `ms_specialpricetime` WRITE;
/*!40000 ALTER TABLE `ms_specialpricetime` DISABLE KEYS */;
INSERT INTO `ms_specialpricetime` VALUES (1,1,'12:00:00','15:00:00');
/*!40000 ALTER TABLE `ms_specialpricetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_station`
--

DROP TABLE IF EXISTS `ms_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_station` (
  `stationID` int(11) NOT NULL AUTO_INCREMENT,
  `stationName` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  `printerConnectionID` int(11) NOT NULL,
  `printerTypeID` int(11) NOT NULL DEFAULT '1',
  `printerName` varchar(100) DEFAULT NULL,
  `printerPort` varchar(50) DEFAULT NULL,
  `characterPerLine` int(11) DEFAULT NULL,
  `printingModeID` tinyint(1) DEFAULT '0',
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`stationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_station`
--

LOCK TABLES `ms_station` WRITE;
/*!40000 ALTER TABLE `ms_station` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_table`
--

DROP TABLE IF EXISTS `ms_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_table` (
  `tableID` int(11) NOT NULL AUTO_INCREMENT,
  `tableTypeID` int(11) NOT NULL,
  `tableName` varchar(50) NOT NULL,
  `tableSeat` varchar(50) NOT NULL,
  `tableSectionID` int(11) NOT NULL,
  `tableMinimumBilling` decimal(20,4) NOT NULL,
  `tableChargeFee` decimal(20,4) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `posX` decimal(20,4) NOT NULL,
  `posY` decimal(20,4) NOT NULL,
  `widthRes` int(11) NOT NULL,
  `heightRes` int(11) NOT NULL,
  `stationID` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`tableID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_table`
--

LOCK TABLES `ms_table` WRITE;
/*!40000 ALTER TABLE `ms_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_tablesection`
--

DROP TABLE IF EXISTS `ms_tablesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_tablesection` (
  `tableSectionID` int(11) NOT NULL AUTO_INCREMENT,
  `tableSectionName` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  `image` longtext,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`tableSectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_tablesection`
--

LOCK TABLES `ms_tablesection` WRITE;
/*!40000 ALTER TABLE `ms_tablesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_tablesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_tentcard`
--

DROP TABLE IF EXISTS `ms_tentcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_tentcard` (
  `tentCardID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` text,
  `flagFeatured` tinyint(1) NOT NULL DEFAULT '0',
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`tentCardID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_tentcard`
--

LOCK TABLES `ms_tentcard` WRITE;
/*!40000 ALTER TABLE `ms_tentcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_tentcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_transnumber`
--

DROP TABLE IF EXISTS `ms_transnumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_transnumber` (
  `transNumberID` int(11) NOT NULL AUTO_INCREMENT,
  `transType` varchar(50) NOT NULL,
  `transAbbreviation` varchar(3) NOT NULL,
  PRIMARY KEY (`transNumberID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_transnumber`
--

LOCK TABLES `ms_transnumber` WRITE;
/*!40000 ALTER TABLE `ms_transnumber` DISABLE KEYS */;
INSERT INTO `ms_transnumber` VALUES (1,'Purchase Order','PO'),(2,'Transfer','TF'),(3,'Stock Opname','SP'),(4,'Assembly','AS'),(5,'Material Delivery','MD'),(6,'Item Journal','IU'),(7,'Sign Off','SF'),(8,'Purchase Request','PR'),(9,'Advance Payment','AP'),(10,'Goods Delivery','GD'),(11,'Goods Receipt','GR'),(12,'Cash Out','CO'),(13,'Cash in','CI'),(14,'Purchase Invoice','VI'),(15,'Purchase Payment','VS'),(16,'Cash Purchase','CP'),(17,'Memorial Journal','MJ'),(18,'Disassembly','DS'),(19,'Product Sales','SL'),(20,'Asset Sales','AD'),(21,'Asset Maintenance','AM'),(22,'Bank Reconciliation','RC'),(23,'Purchase Return','PT'),(24,'Payable Settlement','PS'),(25,'Advance Settlement','AD'),(26,'Production Result','PL'),(27,'Production Return','PN'),(28,'Member Deposit','MT'),(29,'Bank Reconciliation','BR'),(30,'Bank Statement','BS'),(31,'Intercash','IC'),(32,'Deposit Withdrawal','DW'),(33,'Simple Manufacturing','SM'),(34,'Close Delivery','CD'),(35,'Product Sales Return','SR'),(36,'Customer Advance Payment','CA'),(37,'Customer Advance Settlement','CS'),(38,'Receivable Settlement','RS'),(39,'Product Sales Invoice','SI'),(40,'Product Sales Payment','SY'),(41,'Release Payment','RP'),(42,'Simple Product Sales','SS'),(43,'POS Settlement','PST'),(44,'Goods Receipt Return','GRR'),(45,'Asset Revaluation','AR'),(46,'Simple Transfer','STF'),(47,'Ezo Delivery','EZD'),(48,'Expired Deposit','EXD'),(49,'Employee Advance','EA'),(50,'Employee Reimbursement','ER'),(51,'Usage Management','UM'),(52,'QoQi Delivery','QQD'),(53,'External Payment','EP'),(54,'Open Manufacturing','OM'),(55,'Import Document','ID'),(56,'Import Payment','IP'),(57,'Petty Cash Request','PCR'),(58,'Petty Cash Fulfillment','PCF');
/*!40000 ALTER TABLE `ms_transnumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_visitortype`
--

DROP TABLE IF EXISTS `ms_visitortype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_visitortype` (
  `visitorTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `visitorTypeName` varchar(50) NOT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`visitorTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_visitortype`
--

LOCK TABLES `ms_visitortype` WRITE;
/*!40000 ALTER TABLE `ms_visitortype` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_visitortype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_visitpurpose`
--

DROP TABLE IF EXISTS `ms_visitpurpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_visitpurpose` (
  `visitPurposeID` int(11) NOT NULL AUTO_INCREMENT,
  `visitPurposeName` varchar(50) NOT NULL,
  `flagDineIn` tinyint(1) DEFAULT '0',
  `flagQuickService` tinyint(1) DEFAULT '0',
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`visitPurposeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_visitpurpose`
--

LOCK TABLES `ms_visitpurpose` WRITE;
/*!40000 ALTER TABLE `ms_visitpurpose` DISABLE KEYS */;
INSERT INTO `ms_visitpurpose` VALUES (1,'Takeaway',0,1,1,'TRNVIN','2020-02-15 23:40:20','TRNTYA','2020-12-12 19:44:21'),(3,'ONLINE ORDER',0,1,1,'TRNWIL','2020-07-11 19:13:44','TRNWIL','2020-07-11 19:14:16');
/*!40000 ALTER TABLE `ms_visitpurpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_voucher`
--

DROP TABLE IF EXISTS `ms_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_voucher` (
  `voucherID` varchar(20) NOT NULL,
  `voucherSortID` varchar(10) NOT NULL,
  `voucherTypeID` int(11) NOT NULL,
  `voucherLength` int(11) NOT NULL,
  `voucherStartDate` date DEFAULT NULL,
  `voucherEndDate` date DEFAULT NULL,
  `createdBranchID` int(11) NOT NULL,
  `usedBranchID` int(11) DEFAULT NULL,
  `usedDate` datetime DEFAULT NULL,
  `salesNum` varchar(20) DEFAULT NULL,
  `minimumSalesAmount` decimal(20,4) NOT NULL,
  `voucherAmount` decimal(20,4) NOT NULL,
  `voucherPercentage` decimal(20,4) NOT NULL,
  `voucherSalesPrice` decimal(20,4) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`voucherID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_voucher`
--

LOCK TABLES `ms_voucher` WRITE;
/*!40000 ALTER TABLE `ms_voucher` DISABLE KEYS */;
INSERT INTO `ms_voucher` VALUES ('03UiBMRtDgTDhnZpisBS','0000000547',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:23','TRNyoga','2020-02-19 18:11:23','2020-02-19 00:00:00'),('08QjLezIQUy8YtfGlNDX','0000000242',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:33','TRNyoga','2020-02-19 18:10:33','2020-02-19 00:00:00'),('0B0F8nTz3OglZJ4BEtMr','0000000391',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:56','TRNyoga','2020-02-19 18:10:56','2020-02-19 00:00:00'),('0B5pDw6SENWHMN2Xekoe','0000000408',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:59','TRNyoga','2020-02-19 18:10:59','2020-02-19 00:00:00'),('0baEZq7KZtjIIKsoYTL','0000000180',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:25','TRNyoga','2020-02-19 18:10:25','2020-02-19 00:00:00'),('0dbwOJ5wTYEeXimLcydI','0000001196',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:28','TRNyoga','2020-02-19 18:13:28','2020-02-19 00:00:00'),('0eBIIKR6Jo4Qg2dz20Ln','0000000023',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:04','TRNyoga','2020-02-19 18:10:04','2020-02-19 00:00:00'),('0F1qNZP7SrBasTjdhFqk','0000001143',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:18','TRNyoga','2020-02-19 18:13:18','2020-02-19 00:00:00'),('0gCBy3PSEceLvBQTQA6j','0000000911',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:24','TRNyoga','2020-02-19 18:12:24','2020-02-19 00:00:00'),('0jxJScAkX2KkW8uQ4kOs','0000000806',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:06','TRNyoga','2020-02-19 18:12:06','2020-02-19 00:00:00'),('0kmeRXHJ3pEk0yaTBzQ','0000001012',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:48','TRNyoga','2020-02-19 18:12:48','2020-02-19 00:00:00'),('0LMWVb9JR7WZwREO9heO','0000000596',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:30','TRNyoga','2020-02-19 18:11:30','2020-02-19 00:00:00'),('0Ls5pka9J4Ho0UEzwl6','0000000889',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:20','TRNyoga','2020-02-19 18:12:20','2020-02-19 00:00:00'),('0MgTkk8Civ2WDEsYxAog','0000000720',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:50','TRNyoga','2020-02-19 18:11:50','2020-02-19 00:00:00'),('0R89ZFDxU26vGMU04Py','0000000974',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:40','TRNyoga','2020-02-19 18:12:40','2020-02-19 00:00:00'),('0T82OYBjPZc0KfocOE9v','0000000198',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:27','TRNyoga','2020-02-19 18:10:27','2020-02-19 00:00:00'),('0tkCYekbEhM5Tzf11AS','0000000261',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:36','TRNyoga','2020-02-19 18:10:36','2020-02-19 00:00:00'),('0u9vEKpSxl6hS89mnp2c','0000000625',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:35','TRNyoga','2020-02-19 18:11:35','2020-02-19 00:00:00'),('0ZTxWaVVOExOOdJNFgXY','0000000819',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:08','TRNyoga','2020-02-19 18:12:08','2020-02-19 00:00:00'),('105VNJijWq3pFWhMFzvx','0000000125',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:18','TRNyoga','2020-02-19 18:10:18','2020-02-19 00:00:00'),('141WXc1y95ITk2z3IUxC','0000000364',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:51','TRNyoga','2020-02-19 18:10:51','2020-02-19 00:00:00'),('147HskdSL4ne96xoiLq','0000000365',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:51','TRNyoga','2020-02-19 18:10:51','2020-02-19 00:00:00'),('15BDStcLdssbfSlxI4jU','0000000297',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:41','TRNyoga','2020-02-19 18:10:41','2020-02-19 00:00:00'),('1ARBA3HHXa1FjMK8qco9','0000000039',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:06','TRNyoga','2020-02-19 18:10:06','2020-02-19 00:00:00'),('1bMkVHiW3ydCDzwXo7F3','0000001009',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:47','TRNyoga','2020-02-19 18:12:47','2020-02-19 00:00:00'),('1chhkRhPvXjzLmk7NpQv','0000000173',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:24','TRNyoga','2020-02-19 18:10:24','2020-02-19 00:00:00'),('1cn2QZu97XZVyqirogrj','0000000222',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:30','TRNyoga','2020-02-19 18:10:30','2020-02-19 00:00:00'),('1eHteS4plnJb46bVCRna','0000000808',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:06','TRNyoga','2020-02-19 18:12:06','2020-02-19 00:00:00'),('1GcOExcv0d6MiASchZZT','0000000321',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:44','TRNyoga','2020-02-19 18:10:44','2020-02-19 00:00:00'),('1h8xYbOL6BjICoE2fTfN','0000000459',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:09','TRNyoga','2020-02-19 18:11:09','2020-02-19 00:00:00'),('1J9XYIYYi3BlK7wavIH2','0000000376',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:53','TRNyoga','2020-02-19 18:10:53','2020-02-19 00:00:00'),('1L45hSJqBT7VaCa9Jsoa','0000000735',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:53','TRNyoga','2020-02-19 18:11:53','2020-02-19 00:00:00'),('1LsnmBxewumCfMoEJiCT','0000000130',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:18','TRNyoga','2020-02-19 18:10:18','2020-02-19 00:00:00'),('1nzvxOvSLE5phJsHwsl','0000000278',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:39','TRNyoga','2020-02-19 18:10:39','2020-02-19 00:00:00'),('1OZcB3tUUICuB9P7Xb7j','0000000886',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:20','TRNyoga','2020-02-19 18:12:20','2020-02-19 00:00:00'),('1QiE0W389mM7OIzaM3a','0000000704',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:48','TRNyoga','2020-02-19 18:11:48','2020-02-19 00:00:00'),('1ROAp523AxrJeAwJA4cE','0000000572',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:27','TRNyoga','2020-02-19 18:11:27','2020-02-19 00:00:00'),('1RUlWcembx753Eu4aWPr','0000000317',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:44','TRNyoga','2020-02-19 18:10:44','2020-02-19 00:00:00'),('1yRJKLJV2lQL5b8OBC5b','0000000175',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:24','TRNyoga','2020-02-19 18:10:24','2020-02-19 00:00:00'),('21gjEhGI5dx0vDRLGT46','0000001159',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:21','TRNyoga','2020-02-19 18:13:21','2020-02-19 00:00:00'),('22nX0IQOB1ngyhrp5l0Q','0000000656',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:40','TRNyoga','2020-02-19 18:11:40','2020-02-19 00:00:00'),('2EhGjmr3HoBcS5de3fgK','0000001082',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:05','TRNyoga','2020-02-19 18:13:05','2020-02-19 00:00:00'),('2ETnfEDfLNlvNW0J4o32','0000000791',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:03','TRNyoga','2020-02-19 18:12:03','2020-02-19 00:00:00'),('2HIL4GbosDbJqnGmGh9m','0000000509',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:17','TRNyoga','2020-02-19 18:11:17','2020-02-19 00:00:00'),('2LKwJh8XggwzUxVYjtNf','0000000749',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:55','TRNyoga','2020-02-19 18:11:55','2020-02-19 00:00:00'),('2Mfs9q6QJFBw1kJ8JLXJ','0000000681',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:44','TRNyoga','2020-02-19 18:11:44','2020-02-19 00:00:00'),('2mK0z4Vv0DpR2pF9TeGY','0000000776',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:00','TRNyoga','2020-02-19 18:12:00','2020-02-19 00:00:00'),('2nRDUu6Avqe743gMiGCI','0000000705',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:48','TRNyoga','2020-02-19 18:11:48','2020-02-19 00:00:00'),('2osW90NutNlvoddeKi1','0000001148',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:19','TRNyoga','2020-02-19 18:13:19','2020-02-19 00:00:00'),('2OzUxjF6Y6mNx0CBXlTA','0000000659',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:41','TRNyoga','2020-02-19 18:11:41','2020-02-19 00:00:00'),('2QZ6rlrFOwMpQIspMNrf','0000001134',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:16','TRNyoga','2020-02-19 18:13:16','2020-02-19 00:00:00'),('2SBFcVBENJHD1RcAxxt','0000000387',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:55','TRNyoga','2020-02-19 18:10:55','2020-02-19 00:00:00'),('2TvVHNokaK2hc6TS0GVG','0000001122',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:14','TRNyoga','2020-02-19 18:13:14','2020-02-19 00:00:00'),('2VV7AOaU1sUwOJGO7tl','0000000557',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:24','TRNyoga','2020-02-19 18:11:24','2020-02-19 00:00:00'),('2VwOw5m75yccrFvaOgfC','0000000858',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:15','TRNyoga','2020-02-19 18:12:15','2020-02-19 00:00:00'),('2yxab8rIJfoO7SEbDsg','0000000701',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:47','TRNyoga','2020-02-19 18:11:47','2020-02-19 00:00:00'),('309g7YuRZzhkQGxhsCGN','0000000807',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:06','TRNyoga','2020-02-19 18:12:06','2020-02-19 00:00:00'),('36oIFjMlpEI62rG1IwEK','0000000640',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:38','TRNyoga','2020-02-19 18:11:38','2020-02-19 00:00:00'),('36utarZF2DnqQvEmjogx','0000001089',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:07','TRNyoga','2020-02-19 18:13:07','2020-02-19 00:00:00'),('3afZiEih1iJeUt0Xa041','0000000382',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:54','TRNyoga','2020-02-19 18:10:54','2020-02-19 00:00:00'),('3bKVJNhatIOb1fO7zieu','0000000634',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:37','TRNyoga','2020-02-19 18:11:37','2020-02-19 00:00:00'),('3CzWRL4ZxmAdhg8fPP7a','0000000941',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:31','TRNyoga','2020-02-19 18:12:31','2020-02-19 00:00:00'),('3fa0s72wdWoJzzgdck77','0000001085',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:06','TRNyoga','2020-02-19 18:13:06','2020-02-19 00:00:00'),('3GuX1dNdK0gIXmowSf','0000000924',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:26','TRNyoga','2020-02-19 18:12:26','2020-02-19 00:00:00'),('3Hpcv6AU81Bniqbhixr','0000001227',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:35','TRNyoga','2020-02-19 18:13:35','2020-02-19 00:00:00'),('3Ol6uRgVftrM4YkL9dUt','0000000786',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:02','TRNyoga','2020-02-19 18:12:02','2020-02-19 00:00:00'),('3omAkD5tYQk4bQ5WHZNb','0000000893',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:21','TRNyoga','2020-02-19 18:12:21','2020-02-19 00:00:00'),('3RbtiUP5Wih1Hq1oM60O','0000000344',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:48','TRNyoga','2020-02-19 18:10:48','2020-02-19 00:00:00'),('3rY6derX3ehlgtJwJTp','0000000674',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:43','TRNyoga','2020-02-19 18:11:43','2020-02-19 00:00:00'),('3tnl0e12NsFTF0jykaq5','0000001133',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:16','TRNyoga','2020-02-19 18:13:16','2020-02-19 00:00:00'),('3UCy2dzqHxSxfJtvp8Sq','0000000763',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:57','TRNyoga','2020-02-19 18:11:57','2020-02-19 00:00:00'),('3UHiylMJjwxT3NrR0Zte','0000000716',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:50','TRNyoga','2020-02-19 18:11:50','2020-02-19 00:00:00'),('3uNxUfNBDT5vZImCZK','0000000744',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:54','TRNyoga','2020-02-19 18:11:54','2020-02-19 00:00:00'),('3uTipn0VfSKRNM8HKtBy','0000001065',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:02','TRNyoga','2020-02-19 18:13:02','2020-02-19 00:00:00'),('3viujpMu6has6vYvzU9d','0000001124',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:14','TRNyoga','2020-02-19 18:13:14','2020-02-19 00:00:00'),('3WIbnEKvdlHNin4PAOa','0000000708',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:49','TRNyoga','2020-02-19 18:11:49','2020-02-19 00:00:00'),('3xjm9HJg07knl6APnvta','0000000092',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:13','TRNyoga','2020-02-19 18:10:13','2020-02-19 00:00:00'),('3Y3DMxjMsMs5O2WD3K3','0000000078',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:11','TRNyoga','2020-02-19 18:10:11','2020-02-19 00:00:00'),('3Y8nhFw54L8pB6UYD2lQ','0000000943',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:31','TRNyoga','2020-02-19 18:12:31','2020-02-19 00:00:00'),('43F6mpqwlNxcc3YJGvac','0000000219',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:30','TRNyoga','2020-02-19 18:10:30','2020-02-19 00:00:00'),('4CR5drEHh9LaW2EAqZhx','0000000712',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:49','TRNyoga','2020-02-19 18:11:49','2020-02-19 00:00:00'),('4DLkIjrnF6P9YGeQ8FJ','0000000439',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:05','TRNyoga','2020-02-19 18:11:05','2020-02-19 00:00:00'),('4Egg8sqg8yaNfLuoeqPc','0000000499',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:15','TRNyoga','2020-02-19 18:11:15','2020-02-19 00:00:00'),('4emvunr9rVJpbHcUo3kI','0000000207',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:28','TRNyoga','2020-02-19 18:10:28','2020-02-19 00:00:00'),('4gMHnocIik92up3IcuTn','0000001130',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:15','TRNyoga','2020-02-19 18:13:15','2020-02-19 00:00:00'),('4hhDOxbBKKeZCcRSCN3R','0000001126',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:14','TRNyoga','2020-02-19 18:13:14','2020-02-19 00:00:00'),('4hTkJPnOP8Zhx4DmCWP9','0000001155',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:20','TRNyoga','2020-02-19 18:13:20','2020-02-19 00:00:00'),('4J7wMOXbJcbW8NNkHUft','0000000209',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:29','TRNyoga','2020-02-19 18:10:29','2020-02-19 00:00:00'),('4ljot98zmzO6m6tfZHK','0000000598',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:31','TRNyoga','2020-02-19 18:11:31','2020-02-19 00:00:00'),('4m8UrTIwloe8ueO5fs9','0000000292',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:40','TRNyoga','2020-02-19 18:10:40','2020-02-19 00:00:00'),('4PsJQhr1Mgg27CVpyFQe','0000000683',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:45','TRNyoga','2020-02-19 18:11:45','2020-02-19 00:00:00'),('4RSVKidACGHEqlLdm7nU','0000000518',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:18','TRNyoga','2020-02-19 18:11:18','2020-02-19 00:00:00'),('4RymaIC6i47hfv4Y8MZ','0000000884',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:20','TRNyoga','2020-02-19 18:12:20','2020-02-19 00:00:00'),('4rzR1uqE1r0zh8fdwTFH','0000000767',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:58','TRNyoga','2020-02-19 18:11:58','2020-02-19 00:00:00'),('4tZ3VwcdRRpbAQ63kkcm','0000000410',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:59','TRNyoga','2020-02-19 18:10:59','2020-02-19 00:00:00'),('4x1OA78MGuK150kEYwRf','0000000906',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:23','TRNyoga','2020-02-19 18:12:23','2020-02-19 00:00:00'),('4XUzec8Ul8co95D9PTmK','0000000238',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:33','TRNyoga','2020-02-19 18:10:33','2020-02-19 00:00:00'),('4yV45ZVs4u5GgWmjnFfr','0000000281',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:39','TRNyoga','2020-02-19 18:10:39','2020-02-19 00:00:00'),('4Ze1D6HaAyXFEKvC3tiB','0000000312',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:43','TRNyoga','2020-02-19 18:10:43','2020-02-19 00:00:00'),('4ZQIymSmEXIYzBh73D5S','0000000053',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:08','TRNyoga','2020-02-19 18:10:08','2020-02-19 00:00:00'),('50qouE4zJlsgvr4B3NQ','0000000226',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:31','TRNyoga','2020-02-19 18:10:31','2020-02-19 00:00:00'),('57hyYhygeODkB4ZQjRBn','0000000280',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:39','TRNyoga','2020-02-19 18:10:39','2020-02-19 00:00:00'),('57WMj7pVEtzevGsXJHI','0000000542',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:22','TRNyoga','2020-02-19 18:11:22','2020-02-19 00:00:00'),('5fyTlWOxAHd12oLTomTh','0000000665',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:42','TRNyoga','2020-02-19 18:11:42','2020-02-19 00:00:00'),('5g4PL5Nq37jYbz3OF3K','0000000341',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:47','TRNyoga','2020-02-19 18:10:47','2020-02-19 00:00:00'),('5gY5eXA7q8ECl8BHdOrX','0000000468',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:10','TRNyoga','2020-02-19 18:11:10','2020-02-19 00:00:00'),('5HnNjbz9yaaXxZHltt6U','0000000052',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:08','TRNyoga','2020-02-19 18:10:08','2020-02-19 00:00:00'),('5ht1F7z0TwJAsUpRC6Bp','0000000592',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:30','TRNyoga','2020-02-19 18:11:30','2020-02-19 00:00:00'),('5HtxPjMraQil3FG4kII','0000000437',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:04','TRNyoga','2020-02-19 18:11:04','2020-02-19 00:00:00'),('5Ih2N4mPXbwCJVJ1SCt6','0000000227',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:31','TRNyoga','2020-02-19 18:10:31','2020-02-19 00:00:00'),('5JNZdclIoABzRIxhVEz','0000000031',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:05','TRNyoga','2020-02-19 18:10:05','2020-02-19 00:00:00'),('5JoF9uwUtZlSMzkEh5qQ','0000001068',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:02','TRNyoga','2020-02-19 18:13:02','2020-02-19 00:00:00'),('5Kca8e7hf11baroY6lbe','0000000186',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:26','TRNyoga','2020-02-19 18:10:26','2020-02-19 00:00:00'),('5KUCyDvNVoqPUl9OHmAj','0000000680',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:44','TRNyoga','2020-02-19 18:11:44','2020-02-19 00:00:00'),('5LI7xn6aHp79hdc8vElI','0000001206',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:30','TRNyoga','2020-02-19 18:13:30','2020-02-19 00:00:00'),('5mOlTh722MEMdVDFgRd','0000000338',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:47','TRNyoga','2020-02-19 18:10:47','2020-02-19 00:00:00'),('5pepCBRnM0eiLsnLiiJQ','0000000149',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:21','TRNyoga','2020-02-19 18:10:21','2020-02-19 00:00:00'),('5PeWNP3Q4Dm1EBDAJxQ8','0000000682',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:44','TRNyoga','2020-02-19 18:11:44','2020-02-19 00:00:00'),('5QE8HQPpV4MDYjtoyZoN','0000000245',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:34','TRNyoga','2020-02-19 18:10:34','2020-02-19 00:00:00'),('5qKm3LQgepkfTfbUIBTj','0000000593',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:30','TRNyoga','2020-02-19 18:11:30','2020-02-19 00:00:00'),('5Xvgtj7qwXH4WpDP391','0000000139',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:19','TRNyoga','2020-02-19 18:10:19','2020-02-19 00:00:00'),('5Y1dADh0SW2EbJdNdliu','0000000455',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:08','TRNyoga','2020-02-19 18:11:08','2020-02-19 00:00:00'),('623ZfddxHynuFTsoRxXn','0000001207',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:30','TRNyoga','2020-02-19 18:13:30','2020-02-19 00:00:00'),('66t4ZxYTsNY1dbVwuzP0','0000000458',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:09','TRNyoga','2020-02-19 18:11:09','2020-02-19 00:00:00'),('68TeTyKsicnDxVLkj1mF','0000000533',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:20','TRNyoga','2020-02-19 18:11:20','2020-02-19 00:00:00'),('68tWPQWFmB8WsLyPja9X','0000001218',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:33','TRNyoga','2020-02-19 18:13:33','2020-02-19 00:00:00'),('69obiIJlLCsAEHAuJix9','0000000977',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:40','TRNyoga','2020-02-19 18:12:40','2020-02-19 00:00:00'),('69ZTeZVyP1dTAymZJsjp','0000000702',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:48','TRNyoga','2020-02-19 18:11:48','2020-02-19 00:00:00'),('6Ad5hYtXJ6qxhwWNqKL','0000000236',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:32','TRNyoga','2020-02-19 18:10:32','2020-02-19 00:00:00'),('6ao590H8FqDvThcNxUR5','0000000073',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:11','TRNyoga','2020-02-19 18:10:11','2020-02-19 00:00:00'),('6CDgbZfwzvQt1mLBRhq','0000000087',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:13','TRNyoga','2020-02-19 18:10:13','2020-02-19 00:00:00'),('6EE1hditj14IBZ4qsCn','0000000975',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:40','TRNyoga','2020-02-19 18:12:40','2020-02-19 00:00:00'),('6ek5itpmS4i0znt4AeTa','0000000248',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:34','TRNyoga','2020-02-19 18:10:34','2020-02-19 00:00:00'),('6mvNkHvyI4pX4Fsfhfj','0000000576',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:27','TRNyoga','2020-02-19 18:11:27','2020-02-19 00:00:00'),('6n1JKQurym4RtCFApM','0000000444',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:06','TRNyoga','2020-02-19 18:11:06','2020-02-19 00:00:00'),('6o7m6gFwGmZD7v4g52lx','0000000821',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:09','TRNyoga','2020-02-19 18:12:09','2020-02-19 00:00:00'),('6PwGsK9eInS4HHlSMaC','0000000095',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:14','TRNyoga','2020-02-19 18:10:14','2020-02-19 00:00:00'),('6rXKUjdGncPRKXKTIVrS','0000000987',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:42','TRNyoga','2020-02-19 18:12:42','2020-02-19 00:00:00'),('6tXDJCarh10MZxmbwvMO','0000000339',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:47','TRNyoga','2020-02-19 18:10:47','2020-02-19 00:00:00'),('6WMwHSW3fuXIt8jEBDZr','0000000398',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:57','TRNyoga','2020-02-19 18:10:57','2020-02-19 00:00:00'),('6XcIBTIC6UmkNRtp4w7','0000001049',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:58','TRNyoga','2020-02-19 18:12:58','2020-02-19 00:00:00'),('6xiXXNIuqfVYJMSZzG2C','0000000629',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:36','TRNyoga','2020-02-19 18:11:36','2020-02-19 00:00:00'),('6YHF12GvyjsiVDYCPmHz','0000000725',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:51','TRNyoga','2020-02-19 18:11:51','2020-02-19 00:00:00'),('73k8CUOfrkxqjEZJsI8K','0000000882',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:19','TRNyoga','2020-02-19 18:12:19','2020-02-19 00:00:00'),('76LbldyBcz8XSXsQ6K0m','0000001205',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:30','TRNyoga','2020-02-19 18:13:30','2020-02-19 00:00:00'),('77zHkY9ZZANggPwU2LK','0000000995',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:44','TRNyoga','2020-02-19 18:12:44','2020-02-19 00:00:00'),('785DK78Sq0TdnCkjjjVd','0000000799',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:05','TRNyoga','2020-02-19 18:12:05','2020-02-19 00:00:00'),('7CPF3xDVIikKjJVKCaQZ','0000000289',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:40','TRNyoga','2020-02-19 18:10:40','2020-02-19 00:00:00'),('7EWinYO1d6a0mmvn1DMK','0000000010',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:02','TRNyoga','2020-02-19 18:10:02','2020-02-19 00:00:00'),('7FluhZAA5vACG6lcQ4kp','0000001109',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:11','TRNyoga','2020-02-19 18:13:11','2020-02-19 00:00:00'),('7fWMdKBzXs4hudfyAoFr','0000001013',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:48','TRNyoga','2020-02-19 18:12:48','2020-02-19 00:00:00'),('7JMjxPDIIxfDJ0hVyO','0000001022',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:50','TRNyoga','2020-02-19 18:12:50','2020-02-19 00:00:00'),('7kt6BJ2H7sQbuvuh5k6','0000000667',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:42','TRNyoga','2020-02-19 18:11:42','2020-02-19 00:00:00'),('7mHabfTXQWz1NMdsfBOS','0000000234',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:32','TRNyoga','2020-02-19 18:10:32','2020-02-19 00:00:00'),('7mNWHn6gsWelBQbNRspG','0000000907',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:23','TRNyoga','2020-02-19 18:12:23','2020-02-19 00:00:00'),('7nc7BpSQilEYVz2BFUYl','0000000230',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:32','TRNyoga','2020-02-19 18:10:32','2020-02-19 00:00:00'),('7niS7x59UkjjID0XfLA9','0000001223',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:34','TRNyoga','2020-02-19 18:13:34','2020-02-19 00:00:00'),('7OCPFEQRqobi7q8fVzDi','0000000838',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:12','TRNyoga','2020-02-19 18:12:12','2020-02-19 00:00:00'),('7pjLXP3VP9udXcCf5lU6','0000000063',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:09','TRNyoga','2020-02-19 18:10:09','2020-02-19 00:00:00'),('7Pw5vDxOpwXimUkI1u','0000000917',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:25','TRNyoga','2020-02-19 18:12:25','2020-02-19 00:00:00'),('7S3UpYAcaDMPFJAmyBvV','0000000457',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:08','TRNyoga','2020-02-19 18:11:08','2020-02-19 00:00:00'),('7SX9TPnTzE7uRFC2YKT7','0000000648',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:39','TRNyoga','2020-02-19 18:11:39','2020-02-19 00:00:00'),('7VShd09lStC4hbh0buBf','0000000239',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:33','TRNyoga','2020-02-19 18:10:33','2020-02-19 00:00:00'),('7XT3i68MhMZwLUi05Vb','0000000103',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:15','TRNyoga','2020-02-19 18:10:15','2020-02-19 00:00:00'),('7xZooc707DkBsHCOHqI','0000000067',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:10','TRNyoga','2020-02-19 18:10:10','2020-02-19 00:00:00'),('7yA6kuiba25UnxoiRcZ','0000000528',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:20','TRNyoga','2020-02-19 18:11:20','2020-02-19 00:00:00'),('7z0hev5M1svwHge7ZiKE','0000000443',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:06','TRNyoga','2020-02-19 18:11:06','2020-02-19 00:00:00'),('810Gd1eZdUN9OZ7fe8bT','0000000616',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:34','TRNyoga','2020-02-19 18:11:34','2020-02-19 00:00:00'),('81VWIT2GBV8O0V9VDgz5','0000000855',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:15','TRNyoga','2020-02-19 18:12:15','2020-02-19 00:00:00'),('82vCDadSFiS7WMVpEqlm','0000000996',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:44','TRNyoga','2020-02-19 18:12:44','2020-02-19 00:00:00'),('88RPHEJGJmYcVB3uvbW7','0000000862',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:16','TRNyoga','2020-02-19 18:12:16','2020-02-19 00:00:00'),('8CBR05eK0FqJRHDVN3RS','0000000512',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:17','TRNyoga','2020-02-19 18:11:17','2020-02-19 00:00:00'),('8cH6l0eCj1YmNDlqXFlo','0000000796',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:04','TRNyoga','2020-02-19 18:12:04','2020-02-19 00:00:00'),('8GWadgLM9UlVBX8HQd7G','0000000770',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:59','TRNyoga','2020-02-19 18:11:59','2020-02-19 00:00:00'),('8i3iotKqn54sMrtvOrW9','0000000918',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:25','TRNyoga','2020-02-19 18:12:25','2020-02-19 00:00:00'),('8jE0kLWCrtOLHif0OAIq','0000000179',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:25','TRNyoga','2020-02-19 18:10:25','2020-02-19 00:00:00'),('8ksuiuw0dut56ajjDSuO','0000000673',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:43','TRNyoga','2020-02-19 18:11:43','2020-02-19 00:00:00'),('8mnCCFhswjZEwHYhRCbX','0000000216',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:30','TRNyoga','2020-02-19 18:10:30','2020-02-19 00:00:00'),('8pUrS7d8TxewT4oK5vGn','0000000588',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:29','TRNyoga','2020-02-19 18:11:29','2020-02-19 00:00:00'),('8rVkIpbUNmpr8D13U61j','0000000580',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:28','TRNyoga','2020-02-19 18:11:28','2020-02-19 00:00:00'),('8SDAkeMpf2w8AAmRyLhb','0000000310',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:43','TRNyoga','2020-02-19 18:10:43','2020-02-19 00:00:00'),('8TehgwYBjqgqvrlyV3t','0000001107',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:10','TRNyoga','2020-02-19 18:13:10','2020-02-19 00:00:00'),('8UEtaxKaQH3Pa0anmB9','0000000558',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:24','TRNyoga','2020-02-19 18:11:24','2020-02-19 00:00:00'),('8uQs2zXm6bU1yG18QIs','0000000363',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:51','TRNyoga','2020-02-19 18:10:51','2020-02-19 00:00:00'),('8zGJFVthHQVqbZXzj9K','0000000841',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:12','TRNyoga','2020-02-19 18:12:12','2020-02-19 00:00:00'),('90MSayQOvgS8lYPqp0bM','0000000503',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:16','TRNyoga','2020-02-19 18:11:16','2020-02-19 00:00:00'),('927jzrp5JHCpRDHUEA8E','0000001057',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:00','TRNyoga','2020-02-19 18:13:00','2020-02-19 00:00:00'),('993dyc76RsOLiBtvvuG','0000000584',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:28','TRNyoga','2020-02-19 18:11:28','2020-02-19 00:00:00'),('9Bn4XCQzh2vIoGl5ZVRM','0000000271',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:38','TRNyoga','2020-02-19 18:10:38','2020-02-19 00:00:00'),('9BNm1lEmdDKptPzAZL5u','0000000434',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:04','TRNyoga','2020-02-19 18:11:04','2020-02-19 00:00:00'),('9DIukvpQwsfZUldycuND','0000000057',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:09','TRNyoga','2020-02-19 18:10:09','2020-02-19 00:00:00'),('9eoqCHBUVcyVL8Iymg5q','0000000322',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:45','TRNyoga','2020-02-19 18:10:45','2020-02-19 00:00:00'),('9EUuuhhVyc7HnYvFgX','0000000069',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:10','TRNyoga','2020-02-19 18:10:10','2020-02-19 00:00:00'),('9FJnaOmBqgqU9VRR267A','0000000177',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:24','TRNyoga','2020-02-19 18:10:24','2020-02-19 00:00:00'),('9gkyWSmmc34ubDnwA1Mz','0000001225',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:35','TRNyoga','2020-02-19 18:13:35','2020-02-19 00:00:00'),('9kWKUVvUSTIP64dTSU','0000001007',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:47','TRNyoga','2020-02-19 18:12:47','2020-02-19 00:00:00'),('9maPzcThOH4D4FGs2ucQ','0000000871',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:17','TRNyoga','2020-02-19 18:12:17','2020-02-19 00:00:00'),('9mLvvt5uS5OWZwsX2DZ8','0000000756',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:56','TRNyoga','2020-02-19 18:11:56','2020-02-19 00:00:00'),('9PAptKP5RyLTu7op7LbK','0000000831',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:11','TRNyoga','2020-02-19 18:12:11','2020-02-19 00:00:00'),('9Sk2MEaVVpWMjv8HMFh','0000000164',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:23','TRNyoga','2020-02-19 18:10:23','2020-02-19 00:00:00'),('9urXR9yzFjt1sv80uK','0000000184',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:25','TRNyoga','2020-02-19 18:10:25','2020-02-19 00:00:00'),('9WlOre6sK2hBNFmiMYja','0000001172',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:24','TRNyoga','2020-02-19 18:13:24','2020-02-19 00:00:00'),('9Xg3W7T93CfZBoYb7Hm','0000000835',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:11','TRNyoga','2020-02-19 18:12:11','2020-02-19 00:00:00'),('9ZgWLpRW3RMada1g1H2j','0000001211',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:31','TRNyoga','2020-02-19 18:13:31','2020-02-19 00:00:00'),('a1FItwCJjrMmVA8e1j9q','0000001039',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:55','TRNyoga','2020-02-19 18:12:55','2020-02-19 00:00:00'),('a2aETGBCMQSk3nXoqCiU','0000000587',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:29','TRNyoga','2020-02-19 18:11:29','2020-02-19 00:00:00'),('a3ZSpbZySxEqf1IeU5h','0000000825',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:09','TRNyoga','2020-02-19 18:12:09','2020-02-19 00:00:00'),('a502HILsGHyFPD14voe','0000000945',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:32','TRNyoga','2020-02-19 18:12:32','2020-02-19 00:00:00'),('a5BJD0lYw5sRBGpv4Eav','0000001182',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:26','TRNyoga','2020-02-19 18:13:26','2020-02-19 00:00:00'),('a6pdBJWki78aZytQSWXU','0000000108',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:15','TRNyoga','2020-02-19 18:10:15','2020-02-19 00:00:00'),('a8wRX6qPUXq2c4thoTE','0000000741',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:54','TRNyoga','2020-02-19 18:11:54','2020-02-19 00:00:00'),('a9kmVUGNBWDKq58N6GE3','0000000019',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:03','TRNyoga','2020-02-19 18:10:03','2020-02-19 00:00:00'),('A9xYAvwBVqLgheI4VOkB','0000000114',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:16','TRNyoga','2020-02-19 18:10:16','2020-02-19 00:00:00'),('ABCD1234','0000001234',2,30,'2021-01-26','2021-02-25',5,5,'2021-01-26 14:09:48','SKMK161164497004',0.0000,100000.0000,0.0000,100000.0000,'Test',1,'TRNADI','2021-01-26 13:58:52','TRNADI','2021-01-26 14:00:28','2021-01-27 10:36:55'),('ABCD4321','0000001236',2,30,NULL,NULL,5,NULL,NULL,NULL,0.0000,300000.0000,0.0000,300000.0000,'Test 3',1,'TRNADI','2021-01-26 13:58:52','TRNADI','2021-01-26 13:58:52','2021-01-26 13:58:52'),('ABSOYUf5liNaVCsGpdIH','0000000857',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:15','TRNyoga','2020-02-19 18:12:15','2020-02-19 00:00:00'),('aF6g3CDN2fbBLlwc8UK','0000000013',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:02','TRNyoga','2020-02-19 18:10:02','2020-02-19 00:00:00'),('AFiSId0q6xnHtWVN3fAi','0000000652',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:40','TRNyoga','2020-02-19 18:11:40','2020-02-19 00:00:00'),('agHrPGnzOTMEtSbM3zK','0000000549',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:23','TRNyoga','2020-02-19 18:11:23','2020-02-19 00:00:00'),('aGHYZUlPRq0uwB81chG2','0000000826',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:10','TRNyoga','2020-02-19 18:12:10','2020-02-19 00:00:00'),('AgU3th0bTi1hwErsBafi','0000001060',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:01','TRNyoga','2020-02-19 18:13:01','2020-02-19 00:00:00'),('aH7TV8pHRq6QkYQ2IdH','0000000645',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:39','TRNyoga','2020-02-19 18:11:39','2020-02-19 00:00:00'),('ahi9KYlADbD4zkEGMbl1','0000000978',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:40','TRNyoga','2020-02-19 18:12:40','2020-02-19 00:00:00'),('AHjLxwYc1lyCIvx7RQUf','0000000644',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:39','TRNyoga','2020-02-19 18:11:39','2020-02-19 00:00:00'),('aiIkEZ8tC4GT3uuADTG','0000000157',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:22','TRNyoga','2020-02-19 18:10:22','2020-02-19 00:00:00'),('AiVWjAYXN7bcLd4LqLze','0000000028',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:05','TRNyoga','2020-02-19 18:10:05','2020-02-19 00:00:00'),('ak3L3SHqI3OXoImYOdPy','0000000519',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:18','TRNyoga','2020-02-19 18:11:18','2020-02-19 00:00:00'),('AkenHtxd2xWtgTWeElv6','0000000678',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:44','TRNyoga','2020-02-19 18:11:44','2020-02-19 00:00:00'),('aLxdCeSLs51DoDqXFK6j','0000000120',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:17','TRNyoga','2020-02-19 18:10:17','2020-02-19 00:00:00'),('AM2bRu8B0yLzxR2ijkw','0000000002',1,7,'2020-09-05','2020-09-12',1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:01','TRNWIL','2020-09-06 16:48:40','2020-09-06 16:48:40'),('AM4gFJhO01TqMtTHIsIJ','0000000785',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:02','TRNyoga','2020-02-19 18:12:02','2020-02-19 00:00:00'),('aMXpwfEkivqfImgLtbEZ','0000000675',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:43','TRNyoga','2020-02-19 18:11:43','2020-02-19 00:00:00'),('AnLcXVtToLblCfnHSe0w','0000001178',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:25','TRNyoga','2020-02-19 18:13:25','2020-02-19 00:00:00'),('Aog9m4sLQahiK3bRhx0','0000000150',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:21','TRNyoga','2020-02-19 18:10:21','2020-02-19 00:00:00'),('aosQMbqMthouX1P6rfH','0000001050',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:59','TRNyoga','2020-02-19 18:12:59','2020-02-19 00:00:00'),('apYMbkpFVGtr5ODeRyRD','0000000022',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:04','TRNyoga','2020-02-19 18:10:04','2020-02-19 00:00:00'),('aQhKKrbmrKlrsBMxwmUM','0000000453',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:08','TRNyoga','2020-02-19 18:11:08','2020-02-19 00:00:00'),('aQnugzoG3K1MgFKT7dwA','0000000630',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:36','TRNyoga','2020-02-19 18:11:36','2020-02-19 00:00:00'),('Ar6wa71Vx17xnuStVpfk','0000000860',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:16','TRNyoga','2020-02-19 18:12:16','2020-02-19 00:00:00'),('aSon6SlsYybHvfmbWPQx','0000000878',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:19','TRNyoga','2020-02-19 18:12:19','2020-02-19 00:00:00'),('AT1aFuYP8tKPG9Mgzn5L','0000001080',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:05','TRNyoga','2020-02-19 18:13:05','2020-02-19 00:00:00'),('aTdS5CWPKzR1T8qvK6CV','0000000316',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:44','TRNyoga','2020-02-19 18:10:44','2020-02-19 00:00:00'),('AUQFDeycTup951QAoFQ9','0000000070',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:10','TRNyoga','2020-02-19 18:10:10','2020-02-19 00:00:00'),('AVqmzwKoYTr0SC5oPCq','0000000611',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:33','TRNyoga','2020-02-19 18:11:33','2020-02-19 00:00:00'),('awVGb67F39jRZuxPItdF','0000000205',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:28','TRNyoga','2020-02-19 18:10:28','2020-02-19 00:00:00'),('AWWiZFJhpieo7FreN8NT','0000000415',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:00','TRNyoga','2020-02-19 18:11:00','2020-02-19 00:00:00'),('aZEPEdEXpCCsG1vWbJOt','0000000151',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:21','TRNyoga','2020-02-19 18:10:21','2020-02-19 00:00:00'),('b1lVW1e0Pb1EvT5Bkxv','0000000541',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:22','TRNyoga','2020-02-19 18:11:22','2020-02-19 00:00:00'),('b4MeEfLAK3NxcOlbemp8','0000000400',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:57','TRNyoga','2020-02-19 18:10:57','2020-02-19 00:00:00'),('B8JtCLWd9o6XUmEK7wzc','0000000228',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:31','TRNyoga','2020-02-19 18:10:31','2020-02-19 00:00:00'),('Baxl5GzTDGtsG7SKyrP','0000000839',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:12','TRNyoga','2020-02-19 18:12:12','2020-02-19 00:00:00'),('BBWlBQN65Y7zoZ00nS4','0000000820',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:09','TRNyoga','2020-02-19 18:12:09','2020-02-19 00:00:00'),('Bd5FFfr2bsa4TbLQYhY','0000000094',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:13','TRNyoga','2020-02-19 18:10:13','2020-02-19 00:00:00'),('bdyvr30KylsaKWWoJaRu','0000000589',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:29','TRNyoga','2020-02-19 18:11:29','2020-02-19 00:00:00'),('BEBWWHGrdAwkTiIkfhl','0000000523',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:19','TRNyoga','2020-02-19 18:11:19','2020-02-19 00:00:00'),('ben1qNA8km8u9O0IysDT','0000000123',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:17','TRNyoga','2020-02-19 18:10:17','2020-02-19 00:00:00'),('BF0jDoWMVNlcQFDDgYo','0000000954',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:34','TRNyoga','2020-02-19 18:12:34','2020-02-19 00:00:00'),('BgBvVHoHyGqVfybhbaDn','0000001106',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:10','TRNyoga','2020-02-19 18:13:10','2020-02-19 00:00:00'),('BgvKpzbnXHMArudXBj2z','0000000097',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:14','TRNyoga','2020-02-19 18:10:14','2020-02-19 00:00:00'),('bhUQGexNHAnmuaqaMl8i','0000000303',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:42','TRNyoga','2020-02-19 18:10:42','2020-02-19 00:00:00'),('bjUIvxvyCoyhKL3tAXrf','0000000167',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:23','TRNyoga','2020-02-19 18:10:23','2020-02-19 00:00:00'),('bKDZ8m5445GYcHohfBI7','0000001209',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:31','TRNyoga','2020-02-19 18:13:31','2020-02-19 00:00:00'),('bmK6jz3IieovmcJ7dPxA','0000000397',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:57','TRNyoga','2020-02-19 18:10:57','2020-02-19 00:00:00'),('BnRXs3Gb0KRHqjl2s6Bk','0000000059',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:09','TRNyoga','2020-02-19 18:10:09','2020-02-19 00:00:00'),('bohdBPh9FO8GWzV3g6f','0000000520',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:18','TRNyoga','2020-02-19 18:11:18','2020-02-19 00:00:00'),('boLZ9S1ud4zqBNlp3pSw','0000001029',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:53','TRNyoga','2020-02-19 18:12:53','2020-02-19 00:00:00'),('BOMBXrE6ActZKYfQ84qL','0000000471',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:11','TRNyoga','2020-02-19 18:11:11','2020-02-19 00:00:00'),('bPGd70vl76LNEs4i6wt','0000001125',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:14','TRNyoga','2020-02-19 18:13:14','2020-02-19 00:00:00'),('BPGRqjrNYdODWUhuxcOX','0000000758',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:57','TRNyoga','2020-02-19 18:11:57','2020-02-19 00:00:00'),('BRHJgBoyT2ZyauUNlO9T','0000001006',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:46','TRNyoga','2020-02-19 18:12:46','2020-02-19 00:00:00'),('bTALXqJR6kGhlXVaW8o6','0000000088',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:13','TRNyoga','2020-02-19 18:10:13','2020-02-19 00:00:00'),('BUcyw3ldffeqxRlfzHDj','0000000994',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:44','TRNyoga','2020-02-19 18:12:44','2020-02-19 00:00:00'),('BuI6WGaTvd2KxWggJly','0000001169',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:23','TRNyoga','2020-02-19 18:13:23','2020-02-19 00:00:00'),('BV24uNWB2hUKVJpAoZoH','0000000560',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:25','TRNyoga','2020-02-19 18:11:25','2020-02-19 00:00:00'),('bv7bcmwig7ExBBtuUbrh','0000000863',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:16','TRNyoga','2020-02-19 18:12:16','2020-02-19 00:00:00'),('bVVclji7kMrzRCNEIkX','0000000866',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:17','TRNyoga','2020-02-19 18:12:17','2020-02-19 00:00:00'),('BwJZMZ9Fq2cFMvUAyLGu','0000000265',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:37','TRNyoga','2020-02-19 18:10:37','2020-02-19 00:00:00'),('bxKMs4cKI8lgMGM6ZcB','0000000349',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:49','TRNyoga','2020-02-19 18:10:49','2020-02-19 00:00:00'),('bXW5aCgTeABt6cpXYiEU','0000000602',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:31','TRNyoga','2020-02-19 18:11:31','2020-02-19 00:00:00'),('bYQkFu4zDBX9i9rCnr36','0000000233',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:32','TRNyoga','2020-02-19 18:10:32','2020-02-19 00:00:00'),('byWz1o5rXXuLd48x4xC','0000000837',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:12','TRNyoga','2020-02-19 18:12:12','2020-02-19 00:00:00'),('BZ4PoS9RUezoTEb2a3B','0000000544',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:22','TRNyoga','2020-02-19 18:11:22','2020-02-19 00:00:00'),('bZlg5D3s5026pVfLNKcz','0000000933',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:29','TRNyoga','2020-02-19 18:12:29','2020-02-19 00:00:00'),('bzrvqx4kpmzJlRYgXmI5','0000000257',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:36','TRNyoga','2020-02-19 18:10:36','2020-02-19 00:00:00'),('C0fc1XfyZHKafAca2tB','0000001226',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:35','TRNyoga','2020-02-19 18:13:35','2020-02-19 00:00:00'),('C14I0GQVLJpuDsguQLnx','0000001048',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:58','TRNyoga','2020-02-19 18:12:58','2020-02-19 00:00:00'),('c1XRQccr4cXjAmFzBuiN','0000001098',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:09','TRNyoga','2020-02-19 18:13:09','2020-02-19 00:00:00'),('C2uOKuINZqONINnwh4w','0000000487',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:13','TRNyoga','2020-02-19 18:11:13','2020-02-19 00:00:00'),('C2zEpQPOd8urLf5Ef4x1','0000000404',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:58','TRNyoga','2020-02-19 18:10:58','2020-02-19 00:00:00'),('c5nVAwWNPrxQ8F8Gewap','0000000781',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:01','TRNyoga','2020-02-19 18:12:01','2020-02-19 00:00:00'),('C81BZrwWTafTy9a5HGJz','0000000623',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:35','TRNyoga','2020-02-19 18:11:35','2020-02-19 00:00:00'),('c8O0jQG9zG8nGYAOSy31','0000000384',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:54','TRNyoga','2020-02-19 18:10:54','2020-02-19 00:00:00'),('CbXC8Vfa6OVnderlK1MF','0000000254',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:35','TRNyoga','2020-02-19 18:10:35','2020-02-19 00:00:00'),('ccEgYbc4ak8wy0UJk2ti','0000000126',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:18','TRNyoga','2020-02-19 18:10:18','2020-02-19 00:00:00'),('cCEM8oovsYfeq9zLgAA','0000000515',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:18','TRNyoga','2020-02-19 18:11:18','2020-02-19 00:00:00'),('Ccszy4e4yd1kl2fujW8','0000000506',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:16','TRNyoga','2020-02-19 18:11:16','2020-02-19 00:00:00'),('cdbdSsIp6xZ0HqCH0BG','0000000043',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:07','TRNyoga','2020-02-19 18:10:07','2020-02-19 00:00:00'),('cdcnkbXDKdtGNITJkDM','0000000378',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:53','TRNyoga','2020-02-19 18:10:53','2020-02-19 00:00:00'),('CdmO2W2KWel0xYhzsjk','0000000649',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:39','TRNyoga','2020-02-19 18:11:39','2020-02-19 00:00:00'),('cFtWrXE9O5t4AQbo9GV','0000000617',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:34','TRNyoga','2020-02-19 18:11:34','2020-02-19 00:00:00'),('cfzohlYwtD6ZwyHyMbr','0000001221',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:34','TRNyoga','2020-02-19 18:13:34','2020-02-19 00:00:00'),('cg5kHvXpWzI37imRY4lV','0000000641',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:38','TRNyoga','2020-02-19 18:11:38','2020-02-19 00:00:00'),('CG6Xu4z2iIDBeufg3IV9','0000000723',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:51','TRNyoga','2020-02-19 18:11:51','2020-02-19 00:00:00'),('ChNTMfM6HtWw6gKgcubW','0000001212',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:31','TRNyoga','2020-02-19 18:13:31','2020-02-19 00:00:00'),('cI0ZbTUjv1klqXgEC3al','0000000925',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:27','TRNyoga','2020-02-19 18:12:27','2020-02-19 00:00:00'),('cibY3V8urmyiXXvmwhF','0000000874',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:18','TRNyoga','2020-02-19 18:12:18','2020-02-19 00:00:00'),('cIUeFLH0U2F0CTij2byx','0000000668',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:42','TRNyoga','2020-02-19 18:11:42','2020-02-19 00:00:00'),('CK8JFvz8lYqIEvTGUz2','0000000451',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:07','TRNyoga','2020-02-19 18:11:07','2020-02-19 00:00:00'),('CkdYvzvrrHw4EzdoPw4y','0000001183',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:26','TRNyoga','2020-02-19 18:13:26','2020-02-19 00:00:00'),('cl1lRYFE9coxMoD80on0','0000001200',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:29','TRNyoga','2020-02-19 18:13:29','2020-02-19 00:00:00'),('cMkip5rlEgfwacLqFdq9','0000000127',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:18','TRNyoga','2020-02-19 18:10:18','2020-02-19 00:00:00'),('cnWua8q7r2T7dVh6d969','0000000919',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:26','TRNyoga','2020-02-19 18:12:26','2020-02-19 00:00:00'),('coxa7pCivqEp9L5AdhSp','0000000036',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:06','TRNyoga','2020-02-19 18:10:06','2020-02-19 00:00:00'),('cQLn9oaHpvR4JveyifiL','0000000530',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:20','TRNyoga','2020-02-19 18:11:20','2020-02-19 00:00:00'),('cRaz3pXhfVgG2e5m7HRq','0000000733',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:53','TRNyoga','2020-02-19 18:11:53','2020-02-19 00:00:00'),('cRgjyxASUW1Qi3HIyse','0000001038',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:55','TRNyoga','2020-02-19 18:12:55','2020-02-19 00:00:00'),('cThcoQ8mMI6W5SF1w9Nb','0000000262',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:36','TRNyoga','2020-02-19 18:10:36','2020-02-19 00:00:00'),('ctnrKK9e75Ey1NnwGLiH','0000000418',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:01','TRNyoga','2020-02-19 18:11:01','2020-02-19 00:00:00'),('Cu0einLBf0cHbHOBkkwV','0000001004',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:46','TRNyoga','2020-02-19 18:12:46','2020-02-19 00:00:00'),('cVckI0TP5xBvwojYKSvj','0000000973',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:39','TRNyoga','2020-02-19 18:12:39','2020-02-19 00:00:00'),('cW7AcSGvsyWIklD1Tw','0000000460',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:09','TRNyoga','2020-02-19 18:11:09','2020-02-19 00:00:00'),('cwcPyNHnNVuNDf49jEo2','0000000488',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:14','TRNyoga','2020-02-19 18:11:14','2020-02-19 00:00:00'),('CWdrllj04plMqYzohXg','0000000730',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:52','TRNyoga','2020-02-19 18:11:52','2020-02-19 00:00:00'),('cxILYWGgfjzKL3SiIWyv','0000000868',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:17','TRNyoga','2020-02-19 18:12:17','2020-02-19 00:00:00'),('cY8t2aEhnn75XUYWYCcs','0000000452',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:07','TRNyoga','2020-02-19 18:11:07','2020-02-19 00:00:00'),('cyC1sOtXDkUpXZUX85WH','0000000787',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:02','TRNyoga','2020-02-19 18:12:02','2020-02-19 00:00:00'),('CZ9zFw5ssTUVcXCwC2Fo','0000000481',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:13','TRNyoga','2020-02-19 18:11:13','2020-02-19 00:00:00'),('d1DihCBXKAmXjgpocvHT','0000000056',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:09','TRNyoga','2020-02-19 18:10:09','2020-02-19 00:00:00'),('D8CiUJI8Xz0bt0XzIQvR','0000000380',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:54','TRNyoga','2020-02-19 18:10:54','2020-02-19 00:00:00'),('D98ekSH1pZ69BMLI79Gk','0000001016',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:49','TRNyoga','2020-02-19 18:12:49','2020-02-19 00:00:00'),('Da88aFNjNf4Qmn2WJ0g','0000000496',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:15','TRNyoga','2020-02-19 18:11:15','2020-02-19 00:00:00'),('dbwcqR1b5GSQT3Af7L60','0000000286',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:40','TRNyoga','2020-02-19 18:10:40','2020-02-19 00:00:00'),('DCBA4321','0000001235',2,30,NULL,NULL,5,NULL,NULL,NULL,0.0000,200000.0000,0.0000,200000.0000,'Test 2',1,'TRNADI','2021-01-26 13:58:52','TRNADI','2021-01-26 13:58:52','2021-01-26 13:58:52'),('dCkdzON19lFS3UolhZG','0000000145',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:20','TRNyoga','2020-02-19 18:10:20','2020-02-19 00:00:00'),('DCr5IhqvQR83dvkAy3q','0000000447',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:07','TRNyoga','2020-02-19 18:11:07','2020-02-19 00:00:00'),('dEFFXHmhmMpFIMSASVx','0000000891',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:21','TRNyoga','2020-02-19 18:12:21','2020-02-19 00:00:00'),('dEfmTZytrarBzymA1HO','0000000456',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:08','TRNyoga','2020-02-19 18:11:08','2020-02-19 00:00:00'),('DGNoWtYxZ63eYo17DJie','0000000865',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:16','TRNyoga','2020-02-19 18:12:16','2020-02-19 00:00:00'),('dHauc9jWJ0F225ckOLoX','0000001071',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:03','TRNyoga','2020-02-19 18:13:03','2020-02-19 00:00:00'),('DhtkdFaBnRlaPbv7NvA2','0000001002',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:45','TRNyoga','2020-02-19 18:12:45','2020-02-19 00:00:00'),('DiZgDO9uPfq8XYjgcOKu','0000000998',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:44','TRNyoga','2020-02-19 18:12:44','2020-02-19 00:00:00'),('dJbn3rhIEOQWgFPDClJU','0000000935',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:29','TRNyoga','2020-02-19 18:12:29','2020-02-19 00:00:00'),('djHVs56nUMDggJLEMPr9','0000000870',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:17','TRNyoga','2020-02-19 18:12:17','2020-02-19 00:00:00'),('DlPErRHEw6glzq0TQGQP','0000000172',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:24','TRNyoga','2020-02-19 18:10:24','2020-02-19 00:00:00'),('dM1LQtQSkEGaU7wgfePe','0000001165',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:22','TRNyoga','2020-02-19 18:13:22','2020-02-19 00:00:00'),('dm7ZcoQJF0dNP3dMpRjK','0000001001',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:45','TRNyoga','2020-02-19 18:12:45','2020-02-19 00:00:00'),('DM9B0Xtl29lYd8buuTZ','0000000827',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:10','TRNyoga','2020-02-19 18:12:10','2020-02-19 00:00:00'),('DNEyp7reuzdi51WlUN3s','0000000119',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:17','TRNyoga','2020-02-19 18:10:17','2020-02-19 00:00:00'),('dnIG8F2WJoY6KT1gp162','0000000342',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:48','TRNyoga','2020-02-19 18:10:48','2020-02-19 00:00:00'),('dodCxP1PbO43SGPpPigv','0000000082',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:12','TRNyoga','2020-02-19 18:10:12','2020-02-19 00:00:00'),('dp38wyBbYPJmfyTJDA2T','0000001184',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:26','TRNyoga','2020-02-19 18:13:26','2020-02-19 00:00:00'),('DP4Kj8dOkZEVoKMIeB8','0000000658',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:41','TRNyoga','2020-02-19 18:11:41','2020-02-19 00:00:00'),('dq9LRZMhuDzCictn33YE','0000000217',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:30','TRNyoga','2020-02-19 18:10:30','2020-02-19 00:00:00'),('DQzGJgcHNoJSvwAj8xLB','0000001166',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:23','TRNyoga','2020-02-19 18:13:23','2020-02-19 00:00:00'),('DsFOVtbl2yrpG2V86KA4','0000000546',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:23','TRNyoga','2020-02-19 18:11:23','2020-02-19 00:00:00'),('dsyXL1yRk3ZeCVjbRtwj','0000001044',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:57','TRNyoga','2020-02-19 18:12:57','2020-02-19 00:00:00'),('DSzzzzatHcUNL7cCX86x','0000000390',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:55','TRNyoga','2020-02-19 18:10:55','2020-02-19 00:00:00'),('dTYEQfwSs6wzONpQ7bg','0000000628',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:36','TRNyoga','2020-02-19 18:11:36','2020-02-19 00:00:00'),('DuGGKM7WnCkVCyqVlV0','0000000282',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:39','TRNyoga','2020-02-19 18:10:39','2020-02-19 00:00:00'),('DuHh30EOPkYrkWJomNw','0000000152',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:21','TRNyoga','2020-02-19 18:10:21','2020-02-19 00:00:00'),('DV0DiTVPsrujipGJAY','0000001033',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:54','TRNyoga','2020-02-19 18:12:54','2020-02-19 00:00:00'),('dvokz3701TPtfn0PumCE','0000000154',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:21','TRNyoga','2020-02-19 18:10:21','2020-02-19 00:00:00'),('dYIYsQurLRnSLLqYMZK','0000001025',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:51','TRNyoga','2020-02-19 18:12:51','2020-02-19 00:00:00'),('dzOojmQlM8p0OGsW8ouf','0000001117',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:13','TRNyoga','2020-02-19 18:13:13','2020-02-19 00:00:00'),('dzp6eE2yQwiJxfq8ygx','0000000650',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:39','TRNyoga','2020-02-19 18:11:39','2020-02-19 00:00:00'),('E13hOMO9bS042xE2XW0','0000000369',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:52','TRNyoga','2020-02-19 18:10:52','2020-02-19 00:00:00'),('E183jV1sNSFpPdv0COyN','0000000098',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:14','TRNyoga','2020-02-19 18:10:14','2020-02-19 00:00:00'),('e9HQCOs3oQ2CgATCtT0F','0000000024',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:04','TRNyoga','2020-02-19 18:10:04','2020-02-19 00:00:00'),('e9MA8WFm0QHX5ERY4KCt','0000000601',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:31','TRNyoga','2020-02-19 18:11:31','2020-02-19 00:00:00'),('E9UrhpiQHla88LtTi1Gd','0000000135',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:19','TRNyoga','2020-02-19 18:10:19','2020-02-19 00:00:00'),('EaPzBA4i0aFHzh8RwKom','0000000414',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:00','TRNyoga','2020-02-19 18:11:00','2020-02-19 00:00:00'),('eB7qwloQqIKRH2CzxZz','0000001136',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:17','TRNyoga','2020-02-19 18:13:17','2020-02-19 00:00:00'),('ebCYWZdvGFxbH7yAHCIO','0000000895',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:21','TRNyoga','2020-02-19 18:12:21','2020-02-19 00:00:00'),('EeTPMBl9pBTjwCDzVE','0000000480',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:12','TRNyoga','2020-02-19 18:11:12','2020-02-19 00:00:00'),('EgaME4y73eLOy6fWnwZ7','0000000984',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:42','TRNyoga','2020-02-19 18:12:42','2020-02-19 00:00:00'),('EHZNN2lW7TyQP7z6D3RN','0000000747',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:55','TRNyoga','2020-02-19 18:11:55','2020-02-19 00:00:00'),('einmUuuTA3U0EvumQQd','0000000212',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:29','TRNyoga','2020-02-19 18:10:29','2020-02-19 00:00:00'),('ejTijDtM3y9R8rjDM80H','0000000336',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:47','TRNyoga','2020-02-19 18:10:47','2020-02-19 00:00:00'),('ejZ3PLG6ExOcVvhZmZCv','0000000529',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:20','TRNyoga','2020-02-19 18:11:20','2020-02-19 00:00:00'),('eLOXO1rHC1Lq6eqr7P8','0000000812',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:07','TRNyoga','2020-02-19 18:12:07','2020-02-19 00:00:00'),('ELVOXu4ajwdkucQmGmUS','0000000058',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:09','TRNyoga','2020-02-19 18:10:09','2020-02-19 00:00:00'),('Em13ip53ETMXq8ySQ0oo','0000000470',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:11','TRNyoga','2020-02-19 18:11:11','2020-02-19 00:00:00'),('eMIchTen126OD2g6Redj','0000000347',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:48','TRNyoga','2020-02-19 18:10:48','2020-02-19 00:00:00'),('eMiTdapz5qQ7yT3ARoZB','0000000424',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:02','TRNyoga','2020-02-19 18:11:02','2020-02-19 00:00:00'),('emOqDOeelnDryXZB0SIQ','0000000567',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:26','TRNyoga','2020-02-19 18:11:26','2020-02-19 00:00:00'),('EMqKmE34MWihC0Ew6F4l','0000001078',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:04','TRNyoga','2020-02-19 18:13:04','2020-02-19 00:00:00'),('eN8obU0XRrvqWL7UFGLZ','0000000950',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:33','TRNyoga','2020-02-19 18:12:33','2020-02-19 00:00:00'),('enjn4Xd8NNJoGKNLpSj','0000000627',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:36','TRNyoga','2020-02-19 18:11:36','2020-02-19 00:00:00'),('EnwZIy4W7hRVxVm2ehyR','0000000210',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:29','TRNyoga','2020-02-19 18:10:29','2020-02-19 00:00:00'),('eoU4ZepkRbtHBBzfpjEA','0000000320',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:44','TRNyoga','2020-02-19 18:10:44','2020-02-19 00:00:00'),('eP9g2cYJMgGlbkJduh6W','0000001198',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:29','TRNyoga','2020-02-19 18:13:29','2020-02-19 00:00:00'),('EpnHzhJKf6fyh3IjQH','0000001219',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:33','TRNyoga','2020-02-19 18:13:33','2020-02-19 00:00:00'),('eQEdrmXCdFLii8xmTzfp','0000000426',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:02','TRNyoga','2020-02-19 18:11:02','2020-02-19 00:00:00'),('erk9IxGCp4dU2m3lwc','0000000355',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:49','TRNyoga','2020-02-19 18:10:49','2020-02-19 00:00:00'),('EUb9k9krGpP0VxCpLSbL','0000000283',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:39','TRNyoga','2020-02-19 18:10:39','2020-02-19 00:00:00'),('EvNj6cjcsarAYf95kNRL','0000000563',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:25','TRNyoga','2020-02-19 18:11:25','2020-02-19 00:00:00'),('eyBBgUra4uuZkFb7jgu9','0000001020',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:50','TRNyoga','2020-02-19 18:12:50','2020-02-19 00:00:00'),('EYCd4s5NqEpxtQ5xoU4n','0000000110',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:16','TRNyoga','2020-02-19 18:10:16','2020-02-19 00:00:00'),('EyIspn5FL0XoMN3yxzU','0000000778',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:00','TRNyoga','2020-02-19 18:12:00','2020-02-19 00:00:00'),('eYpCpRe089g1BGvgzNnP','0000000335',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:47','TRNyoga','2020-02-19 18:10:47','2020-02-19 00:00:00'),('eyvQLMeSrvPExBdMJpTl','0000000811',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:07','TRNyoga','2020-02-19 18:12:07','2020-02-19 00:00:00'),('EZ2pYuRmh4PNzVldlC3','0000000249',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:34','TRNyoga','2020-02-19 18:10:34','2020-02-19 00:00:00'),('f1CT6IzaaKWxHYGynHfk','0000000913',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:24','TRNyoga','2020-02-19 18:12:24','2020-02-19 00:00:00'),('F1JKebcFSfpIL4huCXk5','0000001215',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:32','TRNyoga','2020-02-19 18:13:32','2020-02-19 00:00:00'),('f3DLW1xX5z7rWxiRchAh','0000000009',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:02','TRNyoga','2020-02-19 18:10:02','2020-02-19 00:00:00'),('F7aHOOVMxiayXnU5AwD','0000000330',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:46','TRNyoga','2020-02-19 18:10:46','2020-02-19 00:00:00'),('f8SkD5SFCPmiSIPiEBeh','0000000202',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:28','TRNyoga','2020-02-19 18:10:28','2020-02-19 00:00:00'),('faoTwPkZ3Cae5gLTuIH','0000000446',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:06','TRNyoga','2020-02-19 18:11:06','2020-02-19 00:00:00'),('Fav130sPGy6libSG7LNr','0000000524',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:19','TRNyoga','2020-02-19 18:11:19','2020-02-19 00:00:00'),('fBOtfZi303vBPhxmACZ','0000000940',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:30','TRNyoga','2020-02-19 18:12:30','2020-02-19 00:00:00'),('FcVcW1eowYvYCVIvWck7','0000000887',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:20','TRNyoga','2020-02-19 18:12:20','2020-02-19 00:00:00'),('FcwUShqAAmffxMu0Wm7o','0000000516',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:18','TRNyoga','2020-02-19 18:11:18','2020-02-19 00:00:00'),('fF9bbXkofk5HabRbalDs','0000001120',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:13','TRNyoga','2020-02-19 18:13:13','2020-02-19 00:00:00'),('FHFeerKrNgYty2jVe3fS','0000000633',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:37','TRNyoga','2020-02-19 18:11:37','2020-02-19 00:00:00'),('fHyn6Y7Y6LviuVH00Nb8','0000000267',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:37','TRNyoga','2020-02-19 18:10:37','2020-02-19 00:00:00'),('fI4jv76RyAgBIv9o5lB','0000000583',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:28','TRNyoga','2020-02-19 18:11:28','2020-02-19 00:00:00'),('FJG84JIdH59oNBWe3EzP','0000000753',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:56','TRNyoga','2020-02-19 18:11:56','2020-02-19 00:00:00'),('flGn7t3neKnLU0F7MBkx','0000000215',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:29','TRNyoga','2020-02-19 18:10:29','2020-02-19 00:00:00'),('FM7bO3rzsjJVlUolGGrq','0000000932',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:28','TRNyoga','2020-02-19 18:12:28','2020-02-19 00:00:00'),('FnO85eEDR41RbGTlQsJe','0000000061',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:09','TRNyoga','2020-02-19 18:10:09','2020-02-19 00:00:00'),('FOwnI5d9iJ9xFDeu806','0000000655',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:40','TRNyoga','2020-02-19 18:11:40','2020-02-19 00:00:00'),('FP2k8dc2L9dvMq3jUpz','0000000203',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:28','TRNyoga','2020-02-19 18:10:28','2020-02-19 00:00:00'),('FpdjZgqdHurtvpJEUhU','0000000952',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:34','TRNyoga','2020-02-19 18:12:34','2020-02-19 00:00:00'),('fpp1onodjAyEIonoPCP4','0000000188',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:26','TRNyoga','2020-02-19 18:10:26','2020-02-19 00:00:00'),('FPWzC60J9yYm5ZjyxL','0000000554',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:24','TRNyoga','2020-02-19 18:11:24','2020-02-19 00:00:00'),('fQqpoTyrw2QhQ7fx5rfi','0000000985',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:42','TRNyoga','2020-02-19 18:12:42','2020-02-19 00:00:00'),('fsQ59H9z5P9bgHQwsEHG','0000000159',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:22','TRNyoga','2020-02-19 18:10:22','2020-02-19 00:00:00'),('fTdtmQrwDxc7isBtcyd','0000000962',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:37','TRNyoga','2020-02-19 18:12:37','2020-02-19 00:00:00'),('Fvzw3KV2KxxzveRfvFRE','0000001202',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:29','TRNyoga','2020-02-19 18:13:29','2020-02-19 00:00:00'),('fwgS1SVP4JIP0iD6Gzh','0000001074',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:03','TRNyoga','2020-02-19 18:13:03','2020-02-19 00:00:00'),('fYbOmoQPpwl09EdrLEnI','0000000142',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:20','TRNyoga','2020-02-19 18:10:20','2020-02-19 00:00:00'),('FYiFvStj72PacLPmZVss','0000000732',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:52','TRNyoga','2020-02-19 18:11:52','2020-02-19 00:00:00'),('FzO6LOfKhONprpnGYZvE','0000000291',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:40','TRNyoga','2020-02-19 18:10:40','2020-02-19 00:00:00'),('g5JogrI2BmXHZaTvCKw2','0000000626',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:36','TRNyoga','2020-02-19 18:11:36','2020-02-19 00:00:00'),('G5rXlbxImgaY9hWRm4','0000000445',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:06','TRNyoga','2020-02-19 18:11:06','2020-02-19 00:00:00'),('g7KTpYbvp9tJC6HMTNs','0000000552',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:24','TRNyoga','2020-02-19 18:11:24','2020-02-19 00:00:00'),('G8m5FmiaF6FLoEWT5U5c','0000000692',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:46','TRNyoga','2020-02-19 18:11:46','2020-02-19 00:00:00'),('G9bAE7Tyr8k4Nw0dTbRA','0000001090',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:07','TRNyoga','2020-02-19 18:13:07','2020-02-19 00:00:00'),('ga0RPN1x3qntW3fTEuZ','0000001115',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:12','TRNyoga','2020-02-19 18:13:12','2020-02-19 00:00:00'),('GA1tCmDpAh1i8WFYi4c','0000000109',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:15','TRNyoga','2020-02-19 18:10:15','2020-02-19 00:00:00'),('GaNpG3wqkfhXYo1IWXO','0000000535',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:21','TRNyoga','2020-02-19 18:11:21','2020-02-19 00:00:00'),('gAZnZ1cZk4ub25i5jTBg','0000000272',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:38','TRNyoga','2020-02-19 18:10:38','2020-02-19 00:00:00'),('gBujobSNtz9S7eJbMK','0000001164',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:22','TRNyoga','2020-02-19 18:13:22','2020-02-19 00:00:00'),('GBwp2vC2S0nZpUKPnBdG','0000000041',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:07','TRNyoga','2020-02-19 18:10:07','2020-02-19 00:00:00'),('gc0KE6ZiXfxnowFyHfPV','0000000467',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:10','TRNyoga','2020-02-19 18:11:10','2020-02-19 00:00:00'),('Gd8BNzCNEL1ysCguWvTF','0000000065',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:10','TRNyoga','2020-02-19 18:10:10','2020-02-19 00:00:00'),('GDWBWwoCIpNAJDBDb2Ml','0000000100',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:14','TRNyoga','2020-02-19 18:10:14','2020-02-19 00:00:00'),('GeCxdIAG76wAp6DlO39','0000000253',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:35','TRNyoga','2020-02-19 18:10:35','2020-02-19 00:00:00'),('gEVo9tWdxIFIazlmdEl','0000000367',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:51','TRNyoga','2020-02-19 18:10:51','2020-02-19 00:00:00'),('ggqOopIEIt8VXP8GkhHx','0000001190',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:27','TRNyoga','2020-02-19 18:13:27','2020-02-19 00:00:00'),('GHw4fSrUwp2UjOmit14','0000000574',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:27','TRNyoga','2020-02-19 18:11:27','2020-02-19 00:00:00'),('GHXnB8kx38qcNQfPdqe','0000001108',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:11','TRNyoga','2020-02-19 18:13:11','2020-02-19 00:00:00'),('gIlsSNGziWKcgt3t0fwY','0000000514',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:17','TRNyoga','2020-02-19 18:11:17','2020-02-19 00:00:00'),('GiYRrU8Ifp1HkEApnZjX','0000000479',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:12','TRNyoga','2020-02-19 18:11:12','2020-02-19 00:00:00'),('GjtOR47BIP6FrrozNhtq','0000001051',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:59','TRNyoga','2020-02-19 18:12:59','2020-02-19 00:00:00'),('gLgAbYq2BLfMH0HrdZd7','0000000393',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:56','TRNyoga','2020-02-19 18:10:56','2020-02-19 00:00:00'),('GltGHl5nCDgzG21SCSNm','0000000403',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:58','TRNyoga','2020-02-19 18:10:58','2020-02-19 00:00:00'),('gnHgWL1yyG9AhqBbFu','0000001103',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:10','TRNyoga','2020-02-19 18:13:10','2020-02-19 00:00:00'),('GnoP1wQQVsM8xFQQCvv','0000000106',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:15','TRNyoga','2020-02-19 18:10:15','2020-02-19 00:00:00'),('Goj4voDwit7OjtHvfLTH','0000001017',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:49','TRNyoga','2020-02-19 18:12:49','2020-02-19 00:00:00'),('GoULqFPJnSR7ekt0fVFZ','0000000102',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:14','TRNyoga','2020-02-19 18:10:14','2020-02-19 00:00:00'),('GPjsuUNKvVorqbADvAkW','0000000710',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:49','TRNyoga','2020-02-19 18:11:49','2020-02-19 00:00:00'),('gQ17jaKDAqAALY225B2A','0000000582',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:28','TRNyoga','2020-02-19 18:11:28','2020-02-19 00:00:00'),('GqjXkGBidhgJy4kO4ldE','0000001137',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:17','TRNyoga','2020-02-19 18:13:17','2020-02-19 00:00:00'),('gRCNfsWQEPlTGOOw5LOR','0000001123',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:14','TRNyoga','2020-02-19 18:13:14','2020-02-19 00:00:00'),('GrebPyoZBiBnK0mttuBQ','0000000432',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:03','TRNyoga','2020-02-19 18:11:03','2020-02-19 00:00:00'),('GrPTKQAbGHmGGQ9YtEn8','0000000301',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:42','TRNyoga','2020-02-19 18:10:42','2020-02-19 00:00:00'),('gU3SZMGbp4Wpe7hEINGt','0000000054',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:08','TRNyoga','2020-02-19 18:10:08','2020-02-19 00:00:00'),('gUmqymhGJGwMvcwO8Mhn','0000000392',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:56','TRNyoga','2020-02-19 18:10:56','2020-02-19 00:00:00'),('gv3mPytK8qOHmZ1Ogyzb','0000000225',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:31','TRNyoga','2020-02-19 18:10:31','2020-02-19 00:00:00'),('GvfYujxqVXceB57GfJ','0000000416',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:00','TRNyoga','2020-02-19 18:11:00','2020-02-19 00:00:00'),('Gxa6Oj50JKrNFFf3kpYS','0000000903',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:23','TRNyoga','2020-02-19 18:12:23','2020-02-19 00:00:00'),('GxgQjshjlK78tJdnVhAG','0000000920',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:26','TRNyoga','2020-02-19 18:12:26','2020-02-19 00:00:00'),('GXuaw8TWk0ROTL3aDG5','0000000270',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:37','TRNyoga','2020-02-19 18:10:37','2020-02-19 00:00:00'),('GZ6KhI2Ujc45YjQ0oNi','0000001059',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:00','TRNyoga','2020-02-19 18:13:00','2020-02-19 00:00:00'),('H1cnD9c0Q1Uk1YLuoQJ4','0000000876',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:18','TRNyoga','2020-02-19 18:12:18','2020-02-19 00:00:00'),('h3pYTy9MmWbqsw12oAa','0000000360',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:50','TRNyoga','2020-02-19 18:10:50','2020-02-19 00:00:00'),('H42LraL9wQKzEpr72JPo','0000000754',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:56','TRNyoga','2020-02-19 18:11:56','2020-02-19 00:00:00'),('h4VUiH8FPkhoAiPbNsLE','0000000740',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:54','TRNyoga','2020-02-19 18:11:54','2020-02-19 00:00:00'),('h6Q2CST88MY1Pu2bsM','0000001035',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:54','TRNyoga','2020-02-19 18:12:54','2020-02-19 00:00:00'),('h9mRSjQMun2QnbVBf5Xc','0000000191',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:26','TRNyoga','2020-02-19 18:10:26','2020-02-19 00:00:00'),('H9tI1NtgbTv1riwxul1X','0000000685',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:45','TRNyoga','2020-02-19 18:11:45','2020-02-19 00:00:00'),('H9ytwVGAOTlfmuS5cDL','0000000734',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:53','TRNyoga','2020-02-19 18:11:53','2020-02-19 00:00:00'),('hcHb6vnPDDX28qpohfc1','0000000609',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:32','TRNyoga','2020-02-19 18:11:32','2020-02-19 00:00:00'),('hDvcesDHhK4orJxxM6G','0000001156',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:21','TRNyoga','2020-02-19 18:13:21','2020-02-19 00:00:00'),('hE19EC9wHP1vexHX5f','0000000256',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:36','TRNyoga','2020-02-19 18:10:36','2020-02-19 00:00:00'),('he7n0w9ot3nDrfc7HLG','0000000540',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:22','TRNyoga','2020-02-19 18:11:22','2020-02-19 00:00:00'),('HejZE8ZbNyvjkQtWPre','0000000971',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:39','TRNyoga','2020-02-19 18:12:39','2020-02-19 00:00:00'),('hg7lbDtTomuz8XgEdko','0000000606',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:32','TRNyoga','2020-02-19 18:11:32','2020-02-19 00:00:00'),('hGWgYMUZswkAXKbFaOYi','0000000231',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:32','TRNyoga','2020-02-19 18:10:32','2020-02-19 00:00:00'),('hh2vjHURMSScSGUakqtP','0000000195',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:27','TRNyoga','2020-02-19 18:10:27','2020-02-19 00:00:00'),('HHEP3xJFdqx4WIA5peOk','0000000642',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:38','TRNyoga','2020-02-19 18:11:38','2020-02-19 00:00:00'),('HiEiTjwdWNql4zkfZ0H2','0000000493',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:14','TRNyoga','2020-02-19 18:11:14','2020-02-19 00:00:00'),('hj3oZSDHG387fxt2NL','0000000571',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:27','TRNyoga','2020-02-19 18:11:27','2020-02-19 00:00:00'),('Hjfisv7ocviam9ooiRv','0000000425',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:02','TRNyoga','2020-02-19 18:11:02','2020-02-19 00:00:00'),('HjLWdKHjsAgB7dVUosDN','0000000790',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:02','TRNyoga','2020-02-19 18:12:02','2020-02-19 00:00:00'),('hksA41Ecx7sKqZnhYtlq','0000000662',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:41','TRNyoga','2020-02-19 18:11:41','2020-02-19 00:00:00'),('hKX3DnPxg9FpqUrgO0Cb','0000000983',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:41','TRNyoga','2020-02-19 18:12:41','2020-02-19 00:00:00'),('HMu5GSeBP5ycOKT1SIeB','0000001216',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:32','TRNyoga','2020-02-19 18:13:32','2020-02-19 00:00:00'),('HN0271dugtDaVxIag1o5','0000001084',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:06','TRNyoga','2020-02-19 18:13:06','2020-02-19 00:00:00'),('HN5MC9qNTtivJBFvSS1T','0000000829',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:10','TRNyoga','2020-02-19 18:12:10','2020-02-19 00:00:00'),('HpvsmX1VrfBpabguf4rg','0000000131',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:18','TRNyoga','2020-02-19 18:10:18','2020-02-19 00:00:00'),('hRduaJ82Id6aCFA15VA9','0000001072',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:03','TRNyoga','2020-02-19 18:13:03','2020-02-19 00:00:00'),('hrjJxE9U3zEOxAiwex6E','0000000332',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:46','TRNyoga','2020-02-19 18:10:46','2020-02-19 00:00:00'),('HrwkbfZHl5MjpLTN4FMc','0000000507',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:16','TRNyoga','2020-02-19 18:11:16','2020-02-19 00:00:00'),('hS8KFBVJ7eqQOBCGu4Yk','0000000927',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:27','TRNyoga','2020-02-19 18:12:27','2020-02-19 00:00:00'),('hsUqsVk77Yo7sr51eHSW','0000000777',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:00','TRNyoga','2020-02-19 18:12:00','2020-02-19 00:00:00'),('htkCmW6GXoOIMaVP38pB','0000000324',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:45','TRNyoga','2020-02-19 18:10:45','2020-02-19 00:00:00'),('HTlevJikxJgUlPf9MZP','0000000182',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:25','TRNyoga','2020-02-19 18:10:25','2020-02-19 00:00:00'),('Hu2rHVmIh2bL8jfhyfD','0000000687',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:45','TRNyoga','2020-02-19 18:11:45','2020-02-19 00:00:00'),('HVLq4wvSaY9Td5F4Xdwu','0000000449',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:07','TRNyoga','2020-02-19 18:11:07','2020-02-19 00:00:00'),('HVm70OH4elUbWryXniM','0000000430',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:03','TRNyoga','2020-02-19 18:11:03','2020-02-19 00:00:00'),('hW4LP4EYjS6ktHUXwn1p','0000000302',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:42','TRNyoga','2020-02-19 18:10:42','2020-02-19 00:00:00'),('HWgmtFuLDmeQlStdmvHY','0000000637',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:37','TRNyoga','2020-02-19 18:11:37','2020-02-19 00:00:00'),('HyMNKBgcN9c5Aw2xkzK','0000000276',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:38','TRNyoga','2020-02-19 18:10:38','2020-02-19 00:00:00'),('I0h89gpir0zGP2JP0HlS','0000000877',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:18','TRNyoga','2020-02-19 18:12:18','2020-02-19 00:00:00'),('I1N5zpobUoEDXOxZo0vk','0000000809',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:07','TRNyoga','2020-02-19 18:12:07','2020-02-19 00:00:00'),('i3H7feJu7Imm8hxmZkLx','0000000307',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:43','TRNyoga','2020-02-19 18:10:43','2020-02-19 00:00:00'),('i4c3FoImz7rke5lvoCV1','0000001135',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:16','TRNyoga','2020-02-19 18:13:16','2020-02-19 00:00:00'),('I5PQe1kKJ20sqYMA2be','0000000025',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:04','TRNyoga','2020-02-19 18:10:04','2020-02-19 00:00:00'),('Iaa3huPyM65zpNUGUYKZ','0000000243',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:33','TRNyoga','2020-02-19 18:10:33','2020-02-19 00:00:00'),('iasucK1S1bS6qQvfFxTX','0000000328',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:46','TRNyoga','2020-02-19 18:10:46','2020-02-19 00:00:00'),('ICofktoXGhd0x4EYVak','0000000833',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:11','TRNyoga','2020-02-19 18:12:11','2020-02-19 00:00:00'),('ICu0QBBgiXyNB2ZyMM8','0000000306',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:42','TRNyoga','2020-02-19 18:10:42','2020-02-19 00:00:00'),('iDbEFSynFH8mtn9NuM','0000000178',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:25','TRNyoga','2020-02-19 18:10:25','2020-02-19 00:00:00'),('idTzX4KdMpsCZ9YnizLz','0000000491',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:14','TRNyoga','2020-02-19 18:11:14','2020-02-19 00:00:00'),('IDUbKCnQ9zna7jSNndkN','0000001021',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:50','TRNyoga','2020-02-19 18:12:50','2020-02-19 00:00:00'),('IEOreuawwAIPifUsMmI0','0000000252',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:35','TRNyoga','2020-02-19 18:10:35','2020-02-19 00:00:00'),('IF7SlRFkG0Bh05wuFzv','0000000183',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:25','TRNyoga','2020-02-19 18:10:25','2020-02-19 00:00:00'),('IFjnEEpZ0NNq3IBbESs','0000000888',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:20','TRNyoga','2020-02-19 18:12:20','2020-02-19 00:00:00'),('igOHgdvG4eYbpECkwitI','0000000066',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:10','TRNyoga','2020-02-19 18:10:10','2020-02-19 00:00:00'),('IHkguW7bUOYHFDkV1fcp','0000000368',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:52','TRNyoga','2020-02-19 18:10:52','2020-02-19 00:00:00'),('IKLldfRxE2yedWN2Eh52','0000001171',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:24','TRNyoga','2020-02-19 18:13:24','2020-02-19 00:00:00'),('ImmwZjRhqNbPgEjHccK1','0000000427',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:02','TRNyoga','2020-02-19 18:11:02','2020-02-19 00:00:00'),('ioaN1Zg27ddD4mJbFnp','0000000500',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:15','TRNyoga','2020-02-19 18:11:15','2020-02-19 00:00:00'),('IR1NMC267Y0oGXMUb3Y','0000000044',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:07','TRNyoga','2020-02-19 18:10:07','2020-02-19 00:00:00'),('ir6VuaKJkWJN5z1Hqp6y','0000000027',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:05','TRNyoga','2020-02-19 18:10:05','2020-02-19 00:00:00'),('IR7xhKmlI6DkcKV7v4FM','0000001069',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:02','TRNyoga','2020-02-19 18:13:02','2020-02-19 00:00:00'),('IuJBT6jSoFrQu345TzEI','0000001213',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:32','TRNyoga','2020-02-19 18:13:32','2020-02-19 00:00:00'),('iVegQk4AxQq16PQDI7e2','0000001056',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:00','TRNyoga','2020-02-19 18:13:00','2020-02-19 00:00:00'),('iVk1msgUQ6lTTOYiYRQ','0000000993',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:43','TRNyoga','2020-02-19 18:12:43','2020-02-19 00:00:00'),('iVWIhJs6ddQEPKAsi8D8','0000000462',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:09','TRNyoga','2020-02-19 18:11:09','2020-02-19 00:00:00'),('Iw33g0T9D7b70IWy79Az','0000000551',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:23','TRNyoga','2020-02-19 18:11:23','2020-02-19 00:00:00'),('IWERFIMtS6pec2Q005','0000000947',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:32','TRNyoga','2020-02-19 18:12:32','2020-02-19 00:00:00'),('iyfJSdbDaxqdUtBfovL','0000001161',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:22','TRNyoga','2020-02-19 18:13:22','2020-02-19 00:00:00'),('iYL66M0fU4GTrbg5W0Js','0000000916',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:25','TRNyoga','2020-02-19 18:12:25','2020-02-19 00:00:00'),('iyX5XOdqQpURabXWGtQM','0000000113',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:16','TRNyoga','2020-02-19 18:10:16','2020-02-19 00:00:00'),('IZtDawPWFYUmqFvaqzt','0000000511',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:17','TRNyoga','2020-02-19 18:11:17','2020-02-19 00:00:00'),('J2AlfYN7AUwInSsptQa','0000001152',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:20','TRNyoga','2020-02-19 18:13:20','2020-02-19 00:00:00'),('j4NKBFUzDvbDW90oMHh','0000000892',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:21','TRNyoga','2020-02-19 18:12:21','2020-02-19 00:00:00'),('j6dWvGG9uVCetEZOcdfX','0000000999',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:45','TRNyoga','2020-02-19 18:12:45','2020-02-19 00:00:00'),('j7ISVQF2WkHcBrNYCwpq','0000000035',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:06','TRNyoga','2020-02-19 18:10:06','2020-02-19 00:00:00'),('j7jzQ7Re0JrvwizsCFbI','0000001008',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:47','TRNyoga','2020-02-19 18:12:47','2020-02-19 00:00:00'),('J8qp0AuIHeUGApaoRWfs','0000000894',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:21','TRNyoga','2020-02-19 18:12:21','2020-02-19 00:00:00'),('j994PRrBMK7PVaDMqXY6','0000000766',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:58','TRNyoga','2020-02-19 18:11:58','2020-02-19 00:00:00'),('J9WmpKtBE0DIbZxgepW','0000001146',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:19','TRNyoga','2020-02-19 18:13:19','2020-02-19 00:00:00'),('jdz1ot9JrNSgI4IcTAE','0000000377',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:53','TRNyoga','2020-02-19 18:10:53','2020-02-19 00:00:00'),('jE0e0quecM2YrWQf8z','0000001018',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:49','TRNyoga','2020-02-19 18:12:49','2020-02-19 00:00:00'),('Jf74rYyN0JL35TaXWhM4','0000000194',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:27','TRNyoga','2020-02-19 18:10:27','2020-02-19 00:00:00'),('jfAUdL7vmC3aXDlvHauB','0000000497',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:15','TRNyoga','2020-02-19 18:11:15','2020-02-19 00:00:00'),('jGjRBH1OhSpAHjmQKt','0000000963',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:37','TRNyoga','2020-02-19 18:12:37','2020-02-19 00:00:00'),('jh068NT5c2sNgmbkwC2g','0000000684',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:45','TRNyoga','2020-02-19 18:11:45','2020-02-19 00:00:00'),('JIrUPmhgpBNYIgVypH9a','0000001193',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:28','TRNyoga','2020-02-19 18:13:28','2020-02-19 00:00:00'),('jiv2xWSYFrxKn0tWVbK','0000000296',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:41','TRNyoga','2020-02-19 18:10:41','2020-02-19 00:00:00'),('jJPZ63DGavpKLX8MAJeT','0000000631',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:36','TRNyoga','2020-02-19 18:11:36','2020-02-19 00:00:00'),('Jk35Bqh2cmqxLZrdZCO','0000001217',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:32','TRNyoga','2020-02-19 18:13:32','2020-02-19 00:00:00'),('jkqS7DqXg3kOFErEUT','0000000399',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:57','TRNyoga','2020-02-19 18:10:57','2020-02-19 00:00:00'),('jLfa04pf1VQm5GYBpaNy','0000001170',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:23','TRNyoga','2020-02-19 18:13:23','2020-02-19 00:00:00'),('JLm2x3JIqix9MzwErRi','0000000352',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:49','TRNyoga','2020-02-19 18:10:49','2020-02-19 00:00:00'),('JMsFuYdPee8Nbqaa3TN4','0000000409',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:59','TRNyoga','2020-02-19 18:10:59','2020-02-19 00:00:00'),('jnlibgoTf6yUfbipnoC1','0000000294',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:41','TRNyoga','2020-02-19 18:10:41','2020-02-19 00:00:00'),('JNnVZQ1vDftrnmcPs2af','0000000856',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:15','TRNyoga','2020-02-19 18:12:15','2020-02-19 00:00:00'),('JNYCV7cIHDdKidZjsbXx','0000000085',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:12','TRNyoga','2020-02-19 18:10:12','2020-02-19 00:00:00'),('jOL0fvmUn95er3o3D4gZ','0000000902',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:22','TRNyoga','2020-02-19 18:12:22','2020-02-19 00:00:00'),('JON7TRN5tFT4H63EhtJV','0000000899',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:22','TRNyoga','2020-02-19 18:12:22','2020-02-19 00:00:00'),('joReBqnMIuDRmY7zNGMu','0000001058',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:00','TRNyoga','2020-02-19 18:13:00','2020-02-19 00:00:00'),('jPAvefXhaLxPVsnrl3m','0000000084',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:12','TRNyoga','2020-02-19 18:10:12','2020-02-19 00:00:00'),('jQ6rEoWaCzQvXIgwREcQ','0000000208',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:29','TRNyoga','2020-02-19 18:10:29','2020-02-19 00:00:00'),('JQTKehYa0sIjKJDhGVFF','0000001228',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:36','TRNyoga','2020-02-19 18:13:36','2020-02-19 00:00:00'),('jU7cj0SJrcakqSw9uQRJ','0000000192',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:26','TRNyoga','2020-02-19 18:10:26','2020-02-19 00:00:00'),('JUd4stvc9IEvuY84J7Vt','0000000590',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:29','TRNyoga','2020-02-19 18:11:29','2020-02-19 00:00:00'),('jVCJ9QBUBghyEkhU81c','0000000060',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:09','TRNyoga','2020-02-19 18:10:09','2020-02-19 00:00:00'),('jyDwodCWwNjuU6HLhueR','0000000959',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:36','TRNyoga','2020-02-19 18:12:36','2020-02-19 00:00:00'),('JYE9bNeyTXe33hBbm9N6','0000000337',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:47','TRNyoga','2020-02-19 18:10:47','2020-02-19 00:00:00'),('JYzoGE2ehXzHedDQMhbh','0000001168',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:23','TRNyoga','2020-02-19 18:13:23','2020-02-19 00:00:00'),('k55SYluhnhmzPHFkZXSE','0000000647',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:39','TRNyoga','2020-02-19 18:11:39','2020-02-19 00:00:00'),('K5cJ7P8L5NPKTOgfddWo','0000000373',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:52','TRNyoga','2020-02-19 18:10:52','2020-02-19 00:00:00'),('k711hwfKG7R9fdjicGAN','0000000926',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:27','TRNyoga','2020-02-19 18:12:27','2020-02-19 00:00:00'),('kalkvIMMPlMk0sO5fRQB','0000000992',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:43','TRNyoga','2020-02-19 18:12:43','2020-02-19 00:00:00'),('KAsHPoCIOumdWHGQWm1D','0000001011',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:48','TRNyoga','2020-02-19 18:12:48','2020-02-19 00:00:00'),('KayWajCz9RVQSDol5Zw','0000000719',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:50','TRNyoga','2020-02-19 18:11:50','2020-02-19 00:00:00'),('KdnjZlaJPHK5v55YISCu','0000000181',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:25','TRNyoga','2020-02-19 18:10:25','2020-02-19 00:00:00'),('KEN23A9KXKhpHWaCYxhr','0000000277',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:38','TRNyoga','2020-02-19 18:10:38','2020-02-19 00:00:00'),('KFiYsK8Dp9nmOJZLnQrV','0000000721',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:51','TRNyoga','2020-02-19 18:11:51','2020-02-19 00:00:00'),('kH7eDqfC1spLb92Omi5j','0000000570',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:26','TRNyoga','2020-02-19 18:11:26','2020-02-19 00:00:00'),('KHImLUcfzNZ8sPAbhZA','0000000396',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:57','TRNyoga','2020-02-19 18:10:57','2020-02-19 00:00:00'),('kictZlgtkPXo74KjwWAP','0000000982',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:41','TRNyoga','2020-02-19 18:12:41','2020-02-19 00:00:00'),('Kijk8PUY2kqzaaleLcEz','0000000804',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:06','TRNyoga','2020-02-19 18:12:06','2020-02-19 00:00:00'),('kjIqoufmNd3leRysWdKi','0000000722',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:51','TRNyoga','2020-02-19 18:11:51','2020-02-19 00:00:00'),('KJJ3c4SZanYUm2rT1Sjx','0000000388',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:55','TRNyoga','2020-02-19 18:10:55','2020-02-19 00:00:00'),('KLEawdDrscstNy7ReB2F','0000001195',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:28','TRNyoga','2020-02-19 18:13:28','2020-02-19 00:00:00'),('KmEEm0r0azlLVpR1OnVn','0000000422',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:02','TRNyoga','2020-02-19 18:11:02','2020-02-19 00:00:00'),('KN4mqep1jDT67hXF43zk','0000001030',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:53','TRNyoga','2020-02-19 18:12:53','2020-02-19 00:00:00'),('KnBMqTDZqI3cFacF5R','0000001186',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:26','TRNyoga','2020-02-19 18:13:26','2020-02-19 00:00:00'),('KpatBsnFyNBDhNht2goN','0000000922',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:26','TRNyoga','2020-02-19 18:12:26','2020-02-19 00:00:00'),('kPSDBWx0UWVuuGZH3wdJ','0000000223',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:31','TRNyoga','2020-02-19 18:10:31','2020-02-19 00:00:00'),('kQnA16wTml0rBtORrOnc','0000000795',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:03','TRNyoga','2020-02-19 18:12:03','2020-02-19 00:00:00'),('kqS8rIkyCjOMByJSBh7r','0000000794',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:03','TRNyoga','2020-02-19 18:12:03','2020-02-19 00:00:00'),('kqyzS8J4iHdpktuHciuw','0000000264',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:37','TRNyoga','2020-02-19 18:10:37','2020-02-19 00:00:00'),('KR686Qlz8fdVArbgHede','0000000502',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:16','TRNyoga','2020-02-19 18:11:16','2020-02-19 00:00:00'),('krZLM9vD97D2Ebkv1J3b','0000001075',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:03','TRNyoga','2020-02-19 18:13:03','2020-02-19 00:00:00'),('kSNMV7iscMq4VcEFgfVS','0000000374',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:53','TRNyoga','2020-02-19 18:10:53','2020-02-19 00:00:00'),('kSnsQnuFgamQ4qgpH','0000000147',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:20','TRNyoga','2020-02-19 18:10:20','2020-02-19 00:00:00'),('KSUD4AWXUhTeZjfBvw0C','0000001220',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:33','TRNyoga','2020-02-19 18:13:33','2020-02-19 00:00:00'),('KtvOQDVHH3wP22Mf4rFB','0000000604',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:32','TRNyoga','2020-02-19 18:11:32','2020-02-19 00:00:00'),('Ku7uLV7ULrg8XTyK4BrT','0000000793',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:03','TRNyoga','2020-02-19 18:12:03','2020-02-19 00:00:00'),('kUOEKoge8AAYMgY5RfP','0000000622',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:35','TRNyoga','2020-02-19 18:11:35','2020-02-19 00:00:00'),('KvCra46NcQm55FmUtTBm','0000000469',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:11','TRNyoga','2020-02-19 18:11:11','2020-02-19 00:00:00'),('kVdQEq2OY01Atv7MUhNu','0000000761',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:57','TRNyoga','2020-02-19 18:11:57','2020-02-19 00:00:00'),('KVqsj2SBgv97kGG3Jpt2','0000000824',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:09','TRNyoga','2020-02-19 18:12:09','2020-02-19 00:00:00'),('KvV0KFHgxsWqlLC4TScg','0000000199',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:27','TRNyoga','2020-02-19 18:10:27','2020-02-19 00:00:00'),('kXeJuI0ASOavI6J6IT8q','0000000881',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:19','TRNyoga','2020-02-19 18:12:19','2020-02-19 00:00:00'),('KXrk9kQnbjj2Afjmy1OZ','0000000304',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:42','TRNyoga','2020-02-19 18:10:42','2020-02-19 00:00:00'),('kZJFUSZtkdgsPSxe8ahU','0000000045',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:07','TRNyoga','2020-02-19 18:10:07','2020-02-19 00:00:00'),('KZRw3lCX2JJDTZamrlE','0000000731',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:52','TRNyoga','2020-02-19 18:11:52','2020-02-19 00:00:00'),('KzXLpfDPm6hgPVSGw4Ra','0000000951',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:33','TRNyoga','2020-02-19 18:12:33','2020-02-19 00:00:00'),('L1RpTEAJWxUy8zMtb3GB','0000000083',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:12','TRNyoga','2020-02-19 18:10:12','2020-02-19 00:00:00'),('L1s7OVMW1WER4pyYbcsS','0000000288',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:40','TRNyoga','2020-02-19 18:10:40','2020-02-19 00:00:00'),('L3tZEdKHVLPLi0ah0NMP','0000000792',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:03','TRNyoga','2020-02-19 18:12:03','2020-02-19 00:00:00'),('l6bvjMFmU5bPSlfYooOp','0000000144',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:20','TRNyoga','2020-02-19 18:10:20','2020-02-19 00:00:00'),('L6imsfiRBAE0VrRUDFS','0000001054',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:59','TRNyoga','2020-02-19 18:12:59','2020-02-19 00:00:00'),('l7HsJWEfmugMZ848OHYT','0000001036',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:55','TRNyoga','2020-02-19 18:12:55','2020-02-19 00:00:00'),('L7U4nxu3GZpiRiDoDPEq','0000000187',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:26','TRNyoga','2020-02-19 18:10:26','2020-02-19 00:00:00'),('LbKk2S0ZgDprIkXk5i5I','0000001177',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:25','TRNyoga','2020-02-19 18:13:25','2020-02-19 00:00:00'),('Lcfgr1ZSJ3upQ8LtuBeb','0000000853',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:14','TRNyoga','2020-02-19 18:12:14','2020-02-19 00:00:00'),('lClJvdX02N4Y8aGcvHhQ','0000000189',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:26','TRNyoga','2020-02-19 18:10:26','2020-02-19 00:00:00'),('lDRGVnWTtcVeYvmVZrj','0000001145',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:18','TRNyoga','2020-02-19 18:13:18','2020-02-19 00:00:00'),('LdwWTMy74Q424N9UKCn','0000000980',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:41','TRNyoga','2020-02-19 18:12:41','2020-02-19 00:00:00'),('LDzd08Kzf7modVTNphk','0000000564',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:25','TRNyoga','2020-02-19 18:11:25','2020-02-19 00:00:00'),('LeFsl3LrzsV1RBij2NR','0000001104',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:10','TRNyoga','2020-02-19 18:13:10','2020-02-19 00:00:00'),('LEttu0xfD8H3qRVrzyFx','0000000739',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:54','TRNyoga','2020-02-19 18:11:54','2020-02-19 00:00:00'),('LFZpU9w96wN1xEJBYRP0','0000000543',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:22','TRNyoga','2020-02-19 18:11:22','2020-02-19 00:00:00'),('lGnvaPSyQqpNBkWP9TVJ','0000000429',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:03','TRNyoga','2020-02-19 18:11:03','2020-02-19 00:00:00'),('LHoBOaiIWXcCRnzpNhnF','0000000698',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:47','TRNyoga','2020-02-19 18:11:47','2020-02-19 00:00:00'),('LhuQ5jAfiLfMihVXVTb','0000001110',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:11','TRNyoga','2020-02-19 18:13:11','2020-02-19 00:00:00'),('Li0MzditIIQcU665lc3F','0000000850',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:14','TRNyoga','2020-02-19 18:12:14','2020-02-19 00:00:00'),('lIHWzIrO5R470OimsRA','0000000279',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:39','TRNyoga','2020-02-19 18:10:39','2020-02-19 00:00:00'),('LJrbz2cmPfxtLk1gHKL','0000000033',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:05','TRNyoga','2020-02-19 18:10:05','2020-02-19 00:00:00'),('lKIPo1pAZFkZlzqBb4bx','0000001167',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:23','TRNyoga','2020-02-19 18:13:23','2020-02-19 00:00:00'),('lLdLOotr5pWsmeLAll1','0000000715',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:50','TRNyoga','2020-02-19 18:11:50','2020-02-19 00:00:00'),('lljBsiU2FojFNC9dcqs','0000000441',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:05','TRNyoga','2020-02-19 18:11:05','2020-02-19 00:00:00'),('LLqmtLegLzxskxP1qt2z','0000001194',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:28','TRNyoga','2020-02-19 18:13:28','2020-02-19 00:00:00'),('LlqRjx3PtXqKsozbZfVg','0000000661',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:41','TRNyoga','2020-02-19 18:11:41','2020-02-19 00:00:00'),('lM81i2bQ6KBFigp0uJc','0000001066',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:02','TRNyoga','2020-02-19 18:13:02','2020-02-19 00:00:00'),('LMQynM1QB0Y5EfFQeVAe','0000000757',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:56','TRNyoga','2020-02-19 18:11:56','2020-02-19 00:00:00'),('LmWNJH2IVlvHzbnlox5K','0000001105',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:10','TRNyoga','2020-02-19 18:13:10','2020-02-19 00:00:00'),('LoXGyZZuQGCOL0Ec9pH','0000000201',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:28','TRNyoga','2020-02-19 18:10:28','2020-02-19 00:00:00'),('lPy53lWvAjk8dBKxDxBP','0000000237',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:33','TRNyoga','2020-02-19 18:10:33','2020-02-19 00:00:00'),('lQ42suVo3Jq5koyG3PMh','0000000169',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:23','TRNyoga','2020-02-19 18:10:23','2020-02-19 00:00:00'),('lrFcdyUPu3Fn75lBKqh','0000000193',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:27','TRNyoga','2020-02-19 18:10:27','2020-02-19 00:00:00'),('lsa9DHT3hU9CvUTu13BL','0000000381',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:54','TRNyoga','2020-02-19 18:10:54','2020-02-19 00:00:00'),('LT61V9il34oQP1OAvQya','0000000750',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:55','TRNyoga','2020-02-19 18:11:55','2020-02-19 00:00:00'),('LTHIRpux7s98LSA5vZks','0000000651',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:40','TRNyoga','2020-02-19 18:11:40','2020-02-19 00:00:00'),('LUcEgztqzSd6SFodVhuW','0000000967',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:38','TRNyoga','2020-02-19 18:12:38','2020-02-19 00:00:00'),('LV19fi4OlTTpgxtyJzfj','0000000565',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:26','TRNyoga','2020-02-19 18:11:26','2020-02-19 00:00:00'),('lw0wrKrbYKZR8lz8EVH6','0000000803',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:05','TRNyoga','2020-02-19 18:12:05','2020-02-19 00:00:00'),('LWCQaAf0phEIbnf3JJ2B','0000000738',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:53','TRNyoga','2020-02-19 18:11:53','2020-02-19 00:00:00'),('lX1xKu7649CAEoDdmcK','0000000550',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:23','TRNyoga','2020-02-19 18:11:23','2020-02-19 00:00:00'),('lXjt0RcUuOQQwHqjKKe','0000000610',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:33','TRNyoga','2020-02-19 18:11:33','2020-02-19 00:00:00'),('Ly2vVnQ9Y5XBDYQ17WtY','0000001224',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:35','TRNyoga','2020-02-19 18:13:35','2020-02-19 00:00:00'),('lYq7lhnZ1BG7yNh5IbGZ','0000000251',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:35','TRNyoga','2020-02-19 18:10:35','2020-02-19 00:00:00'),('lZkmQ9aFoC1LLJjJ8k4b','0000000346',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:48','TRNyoga','2020-02-19 18:10:48','2020-02-19 00:00:00'),('m0wKHHy4xpwmBrTI8ECK','0000000196',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:27','TRNyoga','2020-02-19 18:10:27','2020-02-19 00:00:00'),('M1AzgCV7Bpt9wRlRSV9','0000000124',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:17','TRNyoga','2020-02-19 18:10:17','2020-02-19 00:00:00'),('m1XWBJkEnPWZVJxX5ap','0000000431',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:03','TRNyoga','2020-02-19 18:11:03','2020-02-19 00:00:00'),('M2EuFtk9JsU87Xbv1q','0000000970',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:39','TRNyoga','2020-02-19 18:12:39','2020-02-19 00:00:00'),('m3m8vK7ddelAeTzlLwI5','0000000842',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:12','TRNyoga','2020-02-19 18:12:12','2020-02-19 00:00:00'),('m3XPq1iphD7TKlQLGul','0000000295',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:41','TRNyoga','2020-02-19 18:10:41','2020-02-19 00:00:00'),('M45GzuWUZ9z4dRXM0Xy6','0000001045',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:57','TRNyoga','2020-02-19 18:12:57','2020-02-19 00:00:00'),('M4ZW4mJAnUJpNZqp6Xi','0000000148',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:21','TRNyoga','2020-02-19 18:10:21','2020-02-19 00:00:00'),('m6SXKb4TAsBsAf0OZpcu','0000001086',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:06','TRNyoga','2020-02-19 18:13:06','2020-02-19 00:00:00'),('M7AvPXSzlmPWAdoddQ3w','0000000585',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:29','TRNyoga','2020-02-19 18:11:29','2020-02-19 00:00:00'),('m9IkydB2girHdIGqCiiP','0000001028',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:52','TRNyoga','2020-02-19 18:12:52','2020-02-19 00:00:00'),('maOYUEM7N7hXglg52KeA','0000000765',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:58','TRNyoga','2020-02-19 18:11:58','2020-02-19 00:00:00'),('MDFZvfXTR62J2ZR8KgU9','0000000949',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:33','TRNyoga','2020-02-19 18:12:33','2020-02-19 00:00:00'),('mdhZnAVJIwElvuA2Asi','0000000128',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:18','TRNyoga','2020-02-19 18:10:18','2020-02-19 00:00:00'),('me9i8QjWlc91BMR5Vun','0000000991',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:43','TRNyoga','2020-02-19 18:12:43','2020-02-19 00:00:00'),('MeRQcB9QIfpC0yhjllp','0000000250',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:35','TRNyoga','2020-02-19 18:10:35','2020-02-19 00:00:00'),('mfzu2R6JNLCLkjCFTm33','0000000122',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:17','TRNyoga','2020-02-19 18:10:17','2020-02-19 00:00:00'),('MG63fzHeCkCgAhjeniML','0000001192',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:28','TRNyoga','2020-02-19 18:13:28','2020-02-19 00:00:00'),('mhF8nhgOizs1nYcjiOZO','0000000915',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:25','TRNyoga','2020-02-19 18:12:25','2020-02-19 00:00:00'),('mi2uvNelHb09zsVCr57','0000000577',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:27','TRNyoga','2020-02-19 18:11:27','2020-02-19 00:00:00'),('MiHd1DHZo6fRD1QUXdrK','0000001088',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:07','TRNyoga','2020-02-19 18:13:07','2020-02-19 00:00:00'),('mj0yMaQ5x0chTC5NwoVF','0000000573',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:27','TRNyoga','2020-02-19 18:11:27','2020-02-19 00:00:00'),('mjAfHs2hBoXAOtRhwyHX','0000000618',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:34','TRNyoga','2020-02-19 18:11:34','2020-02-19 00:00:00'),('MjcaqMGSRukOKNF4lwBd','0000000956',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:35','TRNyoga','2020-02-19 18:12:35','2020-02-19 00:00:00'),('mKjwkhBN445hgqc6bdYP','0000000412',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:00','TRNyoga','2020-02-19 18:11:00','2020-02-19 00:00:00'),('ml6b7B14O3xWgFqWRRq','0000000614',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:33','TRNyoga','2020-02-19 18:11:33','2020-02-19 00:00:00'),('MmJBZs8e7GXMvugt2SH','0000001158',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:21','TRNyoga','2020-02-19 18:13:21','2020-02-19 00:00:00'),('mn1krMLDmDy8mMjoAzy','0000000813',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:07','TRNyoga','2020-02-19 18:12:07','2020-02-19 00:00:00'),('mnqDvuzqieNPrWxUqNh','0000000944',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:31','TRNyoga','2020-02-19 18:12:31','2020-02-19 00:00:00'),('MRngswVhS2nRfcIBhpoB','0000000417',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:01','TRNyoga','2020-02-19 18:11:01','2020-02-19 00:00:00'),('mrroa6vZ7R9EV6NwNCra','0000000928',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:27','TRNyoga','2020-02-19 18:12:27','2020-02-19 00:00:00'),('MRs1YE8Au13c3gGWSg0o','0000000402',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:58','TRNyoga','2020-02-19 18:10:58','2020-02-19 00:00:00'),('mSaFOV6uzxfln29kshI3','0000000274',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:38','TRNyoga','2020-02-19 18:10:38','2020-02-19 00:00:00'),('mTFBd54m2WkiuPXtRASw','0000000782',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:01','TRNyoga','2020-02-19 18:12:01','2020-02-19 00:00:00'),('mTgi9lfz6k6BqGJZRJEN','0000000171',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:24','TRNyoga','2020-02-19 18:10:24','2020-02-19 00:00:00'),('MttoEJUV7c7opI3pfCd4','0000001141',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:18','TRNyoga','2020-02-19 18:13:18','2020-02-19 00:00:00'),('mVGu3m29WKvdKpzNGabs','0000000006',1,7,'2020-12-01','2020-12-08',1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:02','TRNADI','2020-12-01 16:09:39','2020-12-01 16:09:39'),('mvMJoh31f74QFkhiQNHZ','0000000162',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:23','TRNyoga','2020-02-19 18:10:23','2020-02-19 00:00:00'),('mwbViiPA7wtsZ487EefE','0000000621',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:35','TRNyoga','2020-02-19 18:11:35','2020-02-19 00:00:00'),('MwowYUFnp2BYQdIntmWc','0000000748',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:55','TRNyoga','2020-02-19 18:11:55','2020-02-19 00:00:00'),('mxHRJrOtyWyp6QWg4xp8','0000000553',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:24','TRNyoga','2020-02-19 18:11:24','2020-02-19 00:00:00'),('myC7cjBXXT5iMYVtGNj','0000000232',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:32','TRNyoga','2020-02-19 18:10:32','2020-02-19 00:00:00'),('MYDJ1TdMj6OCqYSlyjmx','0000000474',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:11','TRNyoga','2020-02-19 18:11:11','2020-02-19 00:00:00'),('MyPISVrYfr2AXybiNtS','0000000599',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:31','TRNyoga','2020-02-19 18:11:31','2020-02-19 00:00:00'),('mYwSRpAiCAlrmRfpj3iN','0000000204',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:28','TRNyoga','2020-02-19 18:10:28','2020-02-19 00:00:00'),('mz83CsA3plZ2pzM5SYXN','0000000612',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:33','TRNyoga','2020-02-19 18:11:33','2020-02-19 00:00:00'),('n1Do28J4clCE5tmx6yu','0000000957',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:36','TRNyoga','2020-02-19 18:12:36','2020-02-19 00:00:00'),('N1KebBmDLIONIb5iMmCe','0000000107',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:15','TRNyoga','2020-02-19 18:10:15','2020-02-19 00:00:00'),('n4ywmiuCl2Rb5B8kLQgD','0000001204',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:30','TRNyoga','2020-02-19 18:13:30','2020-02-19 00:00:00'),('N5ajVV7ZvXokguxppouR','0000001214',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:32','TRNyoga','2020-02-19 18:13:32','2020-02-19 00:00:00'),('n5FHJFHSPGr8eIZahco','0000001197',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:28','TRNyoga','2020-02-19 18:13:28','2020-02-19 00:00:00'),('n8ZA6CdY7grJDUAroS9f','0000001047',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:58','TRNyoga','2020-02-19 18:12:58','2020-02-19 00:00:00'),('NadzI3v19lganyAhjD5','0000000340',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:47','TRNyoga','2020-02-19 18:10:47','2020-02-19 00:00:00'),('NawwZpBOz1uqfjFvga5B','0000000760',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:57','TRNyoga','2020-02-19 18:11:57','2020-02-19 00:00:00'),('nBPnUaWk0yzAn4dhAGP','0000000394',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:56','TRNyoga','2020-02-19 18:10:56','2020-02-19 00:00:00'),('NcxpOIzztPFluThO6Lpy','0000000240',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:33','TRNyoga','2020-02-19 18:10:33','2020-02-19 00:00:00'),('nDQfJtU7UmJvCEMw7a0L','0000001154',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:20','TRNyoga','2020-02-19 18:13:20','2020-02-19 00:00:00'),('ndWu5nVZeIh8yzu2fNvh','0000000030',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:05','TRNyoga','2020-02-19 18:10:05','2020-02-19 00:00:00'),('neQKzfIFCJCMKvwGFWTt','0000001005',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:46','TRNyoga','2020-02-19 18:12:46','2020-02-19 00:00:00'),('nflGZoHy59HKSikQ5e3X','0000000937',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:30','TRNyoga','2020-02-19 18:12:30','2020-02-19 00:00:00'),('nGFDxvsfAczJf6s9K366','0000000200',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:27','TRNyoga','2020-02-19 18:10:27','2020-02-19 00:00:00'),('NjTCSb5nwSLrtIpTXx0i','0000000746',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:55','TRNyoga','2020-02-19 18:11:55','2020-02-19 00:00:00'),('Nkoyhl4gZhQpBvd3lQM','0000000742',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:54','TRNyoga','2020-02-19 18:11:54','2020-02-19 00:00:00'),('nlHT3Tcm8bNQR8rVW0DH','0000000643',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:38','TRNyoga','2020-02-19 18:11:38','2020-02-19 00:00:00'),('nLvUbQZbbRzS88L5bwwn','0000001222',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:34','TRNyoga','2020-02-19 18:13:34','2020-02-19 00:00:00'),('nmcqLgGXtzeUner3NLp','0000000561',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:25','TRNyoga','2020-02-19 18:11:25','2020-02-19 00:00:00'),('nnIMSb931YL6H5eKBYE','0000001019',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:50','TRNyoga','2020-02-19 18:12:50','2020-02-19 00:00:00'),('NOek6UMESzYglFMOexGl','0000000969',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:38','TRNyoga','2020-02-19 18:12:38','2020-02-19 00:00:00'),('np8YMcWITqnnpqV3z3vj','0000000086',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:12','TRNyoga','2020-02-19 18:10:12','2020-02-19 00:00:00'),('Np94pymTYXbcFtyDdrYf','0000000851',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:14','TRNyoga','2020-02-19 18:12:14','2020-02-19 00:00:00'),('NP9AALzkfAiVxBOsEG5x','0000001160',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:21','TRNyoga','2020-02-19 18:13:21','2020-02-19 00:00:00'),('nPxFRrVJ1tVIBh1GPIag','0000000694',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:46','TRNyoga','2020-02-19 18:11:46','2020-02-19 00:00:00'),('NR4IUWjNypOvZ8sqSqMG','0000000751',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:56','TRNyoga','2020-02-19 18:11:56','2020-02-19 00:00:00'),('nRXRLsGiRUkjV1RvDIW','0000000961',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:36','TRNyoga','2020-02-19 18:12:36','2020-02-19 00:00:00'),('nSsOaBFbjiqh2OFE3sSp','0000001149',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:19','TRNyoga','2020-02-19 18:13:19','2020-02-19 00:00:00'),('NSYYoO7tXq9a4u6hzaS','0000000910',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:24','TRNyoga','2020-02-19 18:12:24','2020-02-19 00:00:00'),('NT5BJehztdYpdH6KH17D','0000000615',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:33','TRNyoga','2020-02-19 18:11:33','2020-02-19 00:00:00'),('NtaQ59iqNAw39DOfRDC9','0000000579',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:28','TRNyoga','2020-02-19 18:11:28','2020-02-19 00:00:00'),('Nu55z168bARHkzQUfM0k','0000000290',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:40','TRNyoga','2020-02-19 18:10:40','2020-02-19 00:00:00'),('nuYdqxsDu5owgsdZ1vWA','0000000788',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:02','TRNyoga','2020-02-19 18:12:02','2020-02-19 00:00:00'),('nuyVlPEQyt9Pcj0t1FIS','0000000081',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:12','TRNyoga','2020-02-19 18:10:12','2020-02-19 00:00:00'),('NUZRd75fRei5pD8o6uP','0000000134',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:19','TRNyoga','2020-02-19 18:10:19','2020-02-19 00:00:00'),('NvbIVrgcIoGXncqyFeW6','0000000955',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:35','TRNyoga','2020-02-19 18:12:35','2020-02-19 00:00:00'),('nvnpkyeckvO9Ab4NQXtf','0000000255',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:35','TRNyoga','2020-02-19 18:10:35','2020-02-19 00:00:00'),('nVnWuMqEC8VRtjjCgbAy','0000000372',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:52','TRNyoga','2020-02-19 18:10:52','2020-02-19 00:00:00'),('Nz16JtPmoewb1F7ai72q','0000000801',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:05','TRNyoga','2020-02-19 18:12:05','2020-02-19 00:00:00'),('o6Rxyh271Cb3ZWgYaBLX','0000000695',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:46','TRNyoga','2020-02-19 18:11:46','2020-02-19 00:00:00'),('O9hQ6EeRWypuyILmDrLy','0000000015',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:03','TRNyoga','2020-02-19 18:10:03','2020-02-19 00:00:00'),('oA0SVqlYdwTg0b6TtiUq','0000000764',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:58','TRNyoga','2020-02-19 18:11:58','2020-02-19 00:00:00'),('OA7J5UZrV2mr4iHPIzYa','0000000522',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:19','TRNyoga','2020-02-19 18:11:19','2020-02-19 00:00:00'),('oaHOcCy2CgbbQYATD5bd','0000000021',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:03','TRNyoga','2020-02-19 18:10:03','2020-02-19 00:00:00'),('occKCMxV4GhYLo32mlH','0000000465',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:10','TRNyoga','2020-02-19 18:11:10','2020-02-19 00:00:00'),('OcdRf7Y6c5ZdO2DGMND','0000000158',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:22','TRNyoga','2020-02-19 18:10:22','2020-02-19 00:00:00'),('oDwHaSiCAK99lzwlHboR','0000000880',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:19','TRNyoga','2020-02-19 18:12:19','2020-02-19 00:00:00'),('OgEV0qIrUqFwM7vLjOFf','0000001185',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:26','TRNyoga','2020-02-19 18:13:26','2020-02-19 00:00:00'),('Ogzativ8ir0aY3xpJX4r','0000000224',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:31','TRNyoga','2020-02-19 18:10:31','2020-02-19 00:00:00'),('OGZS2osxqdiamKHCOy','0000000464',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:10','TRNyoga','2020-02-19 18:11:10','2020-02-19 00:00:00'),('oiyXGf3J8KmfXAv8T9Ws','0000000939',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:30','TRNyoga','2020-02-19 18:12:30','2020-02-19 00:00:00'),('Oiz4jBtUcfa6cDJxyno','0000000728',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:52','TRNyoga','2020-02-19 18:11:52','2020-02-19 00:00:00'),('ojmrE0D6UL3zlszsIqHQ','0000000153',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:21','TRNyoga','2020-02-19 18:10:21','2020-02-19 00:00:00'),('Ol6Ty3pyztqYz0AaLrSO','0000001100',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:09','TRNyoga','2020-02-19 18:13:09','2020-02-19 00:00:00'),('olhAYnzcAx9MYdpWpZ','0000000080',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:12','TRNyoga','2020-02-19 18:10:12','2020-02-19 00:00:00'),('OlubDMdmv6GFE9OGLh6x','0000000575',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:27','TRNyoga','2020-02-19 18:11:27','2020-02-19 00:00:00'),('oNcesyltM3q6D9dB9ep','0000000556',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:24','TRNyoga','2020-02-19 18:11:24','2020-02-19 00:00:00'),('oOIaSHkmesfocpXm0qoT','0000000168',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:23','TRNyoga','2020-02-19 18:10:23','2020-02-19 00:00:00'),('OOP21aXQWYIzgwyieHsD','0000000822',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:09','TRNyoga','2020-02-19 18:12:09','2020-02-19 00:00:00'),('OopjXWZPOVae5FsEZ2OF','0000000214',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:29','TRNyoga','2020-02-19 18:10:29','2020-02-19 00:00:00'),('opjlDLj71dTYf8t2zl4S','0000000064',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:10','TRNyoga','2020-02-19 18:10:10','2020-02-19 00:00:00'),('oqdB8D7OpedDs4vHZur4','0000001199',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:29','TRNyoga','2020-02-19 18:13:29','2020-02-19 00:00:00'),('OQQVRtVCQMTtv7aB4iNz','0000001070',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:03','TRNyoga','2020-02-19 18:13:03','2020-02-19 00:00:00'),('ORlRgCUvibYrDT0LtAX3','0000000298',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:41','TRNyoga','2020-02-19 18:10:41','2020-02-19 00:00:00'),('oRxyGKSvVi5CQSD0Djud','0000000942',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:31','TRNyoga','2020-02-19 18:12:31','2020-02-19 00:00:00'),('oS3u6TRonHaAXFr93BEG','0000000170',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:24','TRNyoga','2020-02-19 18:10:24','2020-02-19 00:00:00'),('osetYW5zj3nyHE80N6M1','0000001063',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:01','TRNyoga','2020-02-19 18:13:01','2020-02-19 00:00:00'),('OSf7LuHbHbi6PP2pSJke','0000000185',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:26','TRNyoga','2020-02-19 18:10:26','2020-02-19 00:00:00'),('OUgZANFYB1t14pEJHkFb','0000000305',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:42','TRNyoga','2020-02-19 18:10:42','2020-02-19 00:00:00'),('OuLw1quDRYgk4tAKRNoq','0000001040',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:56','TRNyoga','2020-02-19 18:12:56','2020-02-19 00:00:00'),('OwGFkAf6NMVv0eH5w6z','0000000247',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:34','TRNyoga','2020-02-19 18:10:34','2020-02-19 00:00:00'),('OXb8VXqqUQYAuViGV4nk','0000001128',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:15','TRNyoga','2020-02-19 18:13:15','2020-02-19 00:00:00'),('oyGrxxNHZ690uxdqfIYz','0000000818',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:08','TRNyoga','2020-02-19 18:12:08','2020-02-19 00:00:00'),('OyNiG1qbGBBaxDPluZ3j','0000001024',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:51','TRNyoga','2020-02-19 18:12:51','2020-02-19 00:00:00'),('P0IXpn6g4dsRiJ99XRK','0000000476',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:12','TRNyoga','2020-02-19 18:11:12','2020-02-19 00:00:00'),('p11hVXwapYaU7UY2J8lF','0000000537',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:21','TRNyoga','2020-02-19 18:11:21','2020-02-19 00:00:00'),('p2wdk6v4SngReHMb9qv9','0000000213',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:29','TRNyoga','2020-02-19 18:10:29','2020-02-19 00:00:00'),('P5eEehwx6EfseNUbrG7','0000001096',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:08','TRNyoga','2020-02-19 18:13:08','2020-02-19 00:00:00'),('p7muZq10t2g06J57AUVq','0000000755',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:56','TRNyoga','2020-02-19 18:11:56','2020-02-19 00:00:00'),('P9zZtkPzGkzrcthHeCWV','0000000074',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:11','TRNyoga','2020-02-19 18:10:11','2020-02-19 00:00:00'),('PaARiDNkBKlr4U03dfS','0000000834',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:11','TRNyoga','2020-02-19 18:12:11','2020-02-19 00:00:00'),('panfE2XxhEBQzTkJd6zj','0000000483',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:13','TRNyoga','2020-02-19 18:11:13','2020-02-19 00:00:00'),('pB7vgRw3KjJw2QGxTKQb','0000000117',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:16','TRNyoga','2020-02-19 18:10:16','2020-02-19 00:00:00'),('pbiv8UKdGFXuMPmnDdYv','0000000706',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:48','TRNyoga','2020-02-19 18:11:48','2020-02-19 00:00:00'),('pbTb4aWqK4HNHG9SDnKN','0000000287',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:40','TRNyoga','2020-02-19 18:10:40','2020-02-19 00:00:00'),('PBUORKy37dClPR2iI2i1','0000000689',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:45','TRNyoga','2020-02-19 18:11:45','2020-02-19 00:00:00'),('pcNry3J7952rTCax2w8Z','0000000190',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:26','TRNyoga','2020-02-19 18:10:26','2020-02-19 00:00:00'),('PcViHwmBQAuCXJMtgNbJ','0000000268',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:37','TRNyoga','2020-02-19 18:10:37','2020-02-19 00:00:00'),('PDeffD8ilEmCkwUMWCeS','0000000411',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:00','TRNyoga','2020-02-19 18:11:00','2020-02-19 00:00:00'),('PeVbwPknKoFxbioM6owF','0000000260',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:36','TRNyoga','2020-02-19 18:10:36','2020-02-19 00:00:00'),('PfQq1H848p0cneqrvxUS','0000000691',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:46','TRNyoga','2020-02-19 18:11:46','2020-02-19 00:00:00'),('pHytQteapmuYPJLYkn3K','0000000864',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:16','TRNyoga','2020-02-19 18:12:16','2020-02-19 00:00:00'),('pIsIkl2RNnPD2FNCKwqW','0000000463',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:09','TRNyoga','2020-02-19 18:11:09','2020-02-19 00:00:00'),('PjRcGh3CX2k2SoG38IyL','0000000419',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:01','TRNyoga','2020-02-19 18:11:01','2020-02-19 00:00:00'),('Pn7LolnkuiASOzcuA2bL','0000001092',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:07','TRNyoga','2020-02-19 18:13:07','2020-02-19 00:00:00'),('PncwUtAE6hfdCDaPaTOz','0000000197',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:27','TRNyoga','2020-02-19 18:10:27','2020-02-19 00:00:00'),('POBdYIyFdkNyOvgtqztw','0000000293',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:41','TRNyoga','2020-02-19 18:10:41','2020-02-19 00:00:00'),('POwtsAllCl8c0ri8QIRI','0000000676',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:43','TRNyoga','2020-02-19 18:11:43','2020-02-19 00:00:00'),('Pq2UIv9NN86re6RsOMUU','0000000875',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:18','TRNyoga','2020-02-19 18:12:18','2020-02-19 00:00:00'),('pQpv9pGEPEPXaVjvp37V','0000001102',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:09','TRNyoga','2020-02-19 18:13:09','2020-02-19 00:00:00'),('PrDAENk0RvQKaXDXOWGa','0000000696',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:47','TRNyoga','2020-02-19 18:11:47','2020-02-19 00:00:00'),('psVWokt60qNbqzSPo66','0000000309',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:43','TRNyoga','2020-02-19 18:10:43','2020-02-19 00:00:00'),('PSXycU6HmAIKyKMftKJk','0000000263',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:37','TRNyoga','2020-02-19 18:10:37','2020-02-19 00:00:00'),('PtDtt6iMLk1FpwgfDw18','0000000176',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:24','TRNyoga','2020-02-19 18:10:24','2020-02-19 00:00:00'),('pTkDtzr78tkwCqYtEMP4','0000000405',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:58','TRNyoga','2020-02-19 18:10:58','2020-02-19 00:00:00'),('pUQzTJq0ATptJdMC35Zw','0000000849',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:14','TRNyoga','2020-02-19 18:12:14','2020-02-19 00:00:00'),('pVF5Rs1mmU6N86QXSmLV','0000001023',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:51','TRNyoga','2020-02-19 18:12:51','2020-02-19 00:00:00'),('pvLjcn2eGgDq31ys1Zfq','0000000475',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:12','TRNyoga','2020-02-19 18:11:12','2020-02-19 00:00:00'),('pWLIcTbsTIV3aJrAgOHF','0000000136',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:19','TRNyoga','2020-02-19 18:10:19','2020-02-19 00:00:00'),('Pwn7M0EBQabyeVZxFxuE','0000000005',1,7,'2020-09-10','2020-09-17',1,5,'2020-09-10 15:33:18','SKMK159972677373',123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:01','TRNADI','2020-09-10 15:32:41','2020-09-10 15:33:32'),('PXNOQeCDYeJTqM5aVdB','0000000101',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:14','TRNyoga','2020-02-19 18:10:14','2020-02-19 00:00:00'),('PxZNHhQOUzWRLL2FHgW','0000000946',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:32','TRNyoga','2020-02-19 18:12:32','2020-02-19 00:00:00'),('PZTrbFNIu2y9sqFPkF6m','0000000014',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:03','TRNyoga','2020-02-19 18:10:03','2020-02-19 00:00:00'),('PzUW2rAgcorqAhp0TrZ4','0000000569',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:26','TRNyoga','2020-02-19 18:11:26','2020-02-19 00:00:00'),('Q21YmoVzVEyjKDTMyIl4','0000000607',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:32','TRNyoga','2020-02-19 18:11:32','2020-02-19 00:00:00'),('q5Ju2XQeVYWmjZXtXknE','0000000343',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:48','TRNyoga','2020-02-19 18:10:48','2020-02-19 00:00:00'),('Q5QlaqtJCuoxn6zpbBso','0000000581',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:28','TRNyoga','2020-02-19 18:11:28','2020-02-19 00:00:00'),('Q6lhAzsC4TuvvTnyBUCS','0000000001',1,7,'2020-09-05','2020-09-12',1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:01','TRNWIL','2020-09-06 16:48:40','2020-09-06 16:48:40'),('q79GWYCOLolZDINhMMWj','0000000370',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:52','TRNyoga','2020-02-19 18:10:52','2020-02-19 00:00:00'),('QAb5o8aZXaBme3WjuB9r','0000000020',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:03','TRNyoga','2020-02-19 18:10:03','2020-02-19 00:00:00'),('qAZsJwkbEGtRnTm3FtsT','0000000789',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:02','TRNyoga','2020-02-19 18:12:02','2020-02-19 00:00:00'),('Qb6OIMMd4yPjzRI9svqk','0000000318',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:44','TRNyoga','2020-02-19 18:10:44','2020-02-19 00:00:00'),('qCoEDy7Lu6TsHBcRtV1y','0000000016',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:03','TRNyoga','2020-02-19 18:10:03','2020-02-19 00:00:00'),('qDUB3H6EWvZqOo11Tda1','0000000908',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:24','TRNyoga','2020-02-19 18:12:24','2020-02-19 00:00:00'),('Qe1W3XxGlnkT0mm7Gf8t','0000000389',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:55','TRNyoga','2020-02-19 18:10:55','2020-02-19 00:00:00'),('QEqD7bvIuqRdbetLWVNr','0000000485',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:13','TRNyoga','2020-02-19 18:11:13','2020-02-19 00:00:00'),('QGrwWuttof28qO64Lw7n','0000000093',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:13','TRNyoga','2020-02-19 18:10:13','2020-02-19 00:00:00'),('QhxLhotlJBALlJOzU9CU','0000000953',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:34','TRNyoga','2020-02-19 18:12:34','2020-02-19 00:00:00'),('qIE7bUpfWajdSmlBKPZu','0000000921',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:26','TRNyoga','2020-02-19 18:12:26','2020-02-19 00:00:00'),('qiQ63WCrSvxbBl2suj6P','0000000934',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:29','TRNyoga','2020-02-19 18:12:29','2020-02-19 00:00:00'),('qJ3B3o9nzpb0aL89Y','0000000597',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:31','TRNyoga','2020-02-19 18:11:31','2020-02-19 00:00:00'),('qjKlxOp8fwSROh47Usu1','0000000501',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:16','TRNyoga','2020-02-19 18:11:16','2020-02-19 00:00:00'),('QJmEfEeWH5xHRkK2ZfPw','0000000852',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:14','TRNyoga','2020-02-19 18:12:14','2020-02-19 00:00:00'),('QjyE8Hr8DpKFBjqSJJXQ','0000001073',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:03','TRNyoga','2020-02-19 18:13:03','2020-02-19 00:00:00'),('qKLKwkAlsYuV1XfhVf','0000000258',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:36','TRNyoga','2020-02-19 18:10:36','2020-02-19 00:00:00'),('QKSBGOdPtCFZ7yboyZ0','0000000976',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:40','TRNyoga','2020-02-19 18:12:40','2020-02-19 00:00:00'),('QMmkTcYP8523bQGeWut','0000000436',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:04','TRNyoga','2020-02-19 18:11:04','2020-02-19 00:00:00'),('qoh3CykyxyhDoe8TWWin','0000000161',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:22','TRNyoga','2020-02-19 18:10:22','2020-02-19 00:00:00'),('qpHewz79nZIfIYYHLnQ3','0000001116',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:12','TRNyoga','2020-02-19 18:13:12','2020-02-19 00:00:00'),('QPIRj9JLK8DOR9S7Q2pg','0000001230',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:36','TRNyoga','2020-02-19 18:13:36','2020-02-19 00:00:00'),('QPOCPgW4m8i9EcQsqT25','0000000047',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:07','TRNyoga','2020-02-19 18:10:07','2020-02-19 00:00:00'),('qqBu1rUPL03VUU0lwee','0000000395',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:56','TRNyoga','2020-02-19 18:10:56','2020-02-19 00:00:00'),('qr7qqBTIdo8S2HOvzPoI','0000000711',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:49','TRNyoga','2020-02-19 18:11:49','2020-02-19 00:00:00'),('QRJKrHwFXNJ6JuqECJd','0000000454',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:08','TRNyoga','2020-02-19 18:11:08','2020-02-19 00:00:00'),('qSqnZHEpKs0RpuWOeDrR','0000000326',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:45','TRNyoga','2020-02-19 18:10:45','2020-02-19 00:00:00'),('qT2GccljHP7gKFUgGeP','0000000357',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:50','TRNyoga','2020-02-19 18:10:50','2020-02-19 00:00:00'),('QUEStBsZYMiiwe9nTlrm','0000000141',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:20','TRNyoga','2020-02-19 18:10:20','2020-02-19 00:00:00'),('Qvf4eFsKKxWSzXF3rg7l','0000000677',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:44','TRNyoga','2020-02-19 18:11:44','2020-02-19 00:00:00'),('QWFLiUqLSAtcLPLHHXMi','0000000773',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:59','TRNyoga','2020-02-19 18:11:59','2020-02-19 00:00:00'),('QWYjSu2fbc3z2U1R7Wnd','0000001015',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:49','TRNyoga','2020-02-19 18:12:49','2020-02-19 00:00:00'),('QxFf9GdjAXluTGvRgIF1','0000000160',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:22','TRNyoga','2020-02-19 18:10:22','2020-02-19 00:00:00'),('QxzuDy11YYG5CxwFR3c','0000000783',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:01','TRNyoga','2020-02-19 18:12:01','2020-02-19 00:00:00'),('Qy5q3I0TqnM7cplG5cG','0000000331',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:46','TRNyoga','2020-02-19 18:10:46','2020-02-19 00:00:00'),('QzG8ZZb6uLwp8g8a5iZY','0000000664',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:42','TRNyoga','2020-02-19 18:11:42','2020-02-19 00:00:00'),('qzLFhmvDWwb1gppOOV','0000000693',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:46','TRNyoga','2020-02-19 18:11:46','2020-02-19 00:00:00'),('r15CeaHIr7qPiFcwvawV','0000000323',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:45','TRNyoga','2020-02-19 18:10:45','2020-02-19 00:00:00'),('r1naNLjcMJ1azKsHV8Q','0000000885',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:20','TRNyoga','2020-02-19 18:12:20','2020-02-19 00:00:00'),('R3BFiF7M03jCGuFgyS8k','0000000620',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:34','TRNyoga','2020-02-19 18:11:34','2020-02-19 00:00:00'),('R3wUMxUsn3EgSqHWY1wx','0000001179',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:25','TRNyoga','2020-02-19 18:13:25','2020-02-19 00:00:00'),('r5Oex53ywYBI83VOxb0s','0000000104',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:15','TRNyoga','2020-02-19 18:10:15','2020-02-19 00:00:00'),('R5wNCQSehSOb71jeMCQt','0000000531',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:20','TRNyoga','2020-02-19 18:11:20','2020-02-19 00:00:00'),('r6jbXe2rZmGFeQJYXuV','0000000484',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:13','TRNyoga','2020-02-19 18:11:13','2020-02-19 00:00:00'),('R6r36IFVGS9QiXlUbLdF','0000000498',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:15','TRNyoga','2020-02-19 18:11:15','2020-02-19 00:00:00'),('r6VTTvdD3LqYaHvsXEWc','0000000545',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:22','TRNyoga','2020-02-19 18:11:22','2020-02-19 00:00:00'),('r7KnRfO1PN6hyzAMMVIA','0000001231',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:36','TRNyoga','2020-02-19 18:13:36','2020-02-19 00:00:00'),('RaYKbsAmXVzDUToFee32','0000000478',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:12','TRNyoga','2020-02-19 18:11:12','2020-02-19 00:00:00'),('rBaRA5IAMsYrdAV2FN1r','0000001055',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:59','TRNyoga','2020-02-19 18:12:59','2020-02-19 00:00:00'),('rbFo1Ixf2qMMeFR3OfKG','0000000350',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:49','TRNyoga','2020-02-19 18:10:49','2020-02-19 00:00:00'),('RBhIKyl4tZrChHxYU46b','0000000525',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:19','TRNyoga','2020-02-19 18:11:19','2020-02-19 00:00:00'),('RbnW6tmWOkZfdCet3GAH','0000000361',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:50','TRNyoga','2020-02-19 18:10:50','2020-02-19 00:00:00'),('RchbzlCblkUpyg9sPZU','0000001064',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:01','TRNyoga','2020-02-19 18:13:01','2020-02-19 00:00:00'),('RcTTvClPfK5ckp4DsZKa','0000001061',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:01','TRNyoga','2020-02-19 18:13:01','2020-02-19 00:00:00'),('rDA3u7uCTo4xjLRtez7','0000001210',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:31','TRNyoga','2020-02-19 18:13:31','2020-02-19 00:00:00'),('RDiAzRjQnNCxwggIEp9','0000001157',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:21','TRNyoga','2020-02-19 18:13:21','2020-02-19 00:00:00'),('rDuhZZhQ1UJJJfNvTmXi','0000000329',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:46','TRNyoga','2020-02-19 18:10:46','2020-02-19 00:00:00'),('rFVtT04qRj9k3ZDjHOvY','0000000900',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:22','TRNyoga','2020-02-19 18:12:22','2020-02-19 00:00:00'),('rgvEE34aD5MV6HZgJaX','0000000284',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:39','TRNyoga','2020-02-19 18:10:39','2020-02-19 00:00:00'),('Rh9sdGFyN0k3hAA4Uioa','0000001062',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:01','TRNyoga','2020-02-19 18:13:01','2020-02-19 00:00:00'),('rhCh0tdgTCa9kKDGb7I','0000001173',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:24','TRNyoga','2020-02-19 18:13:24','2020-02-19 00:00:00'),('RhdcJOSRoZ0o5Eypv1Z','0000001031',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:53','TRNyoga','2020-02-19 18:12:53','2020-02-19 00:00:00'),('RI9RdbQLZrCGoisc8Qp','0000001187',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:27','TRNyoga','2020-02-19 18:13:27','2020-02-19 00:00:00'),('RJ37H4DsnsXlAeuRzgdB','0000000386',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:55','TRNyoga','2020-02-19 18:10:55','2020-02-19 00:00:00'),('RKsiB5p2dSmYUYkGoILg','0000000333',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:46','TRNyoga','2020-02-19 18:10:46','2020-02-19 00:00:00'),('RldTgB6CCFTLKPGxu34','0000000534',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:21','TRNyoga','2020-02-19 18:11:21','2020-02-19 00:00:00'),('Rm4tn9oM0D0xXGRkXDqg','0000000869',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:17','TRNyoga','2020-02-19 18:12:17','2020-02-19 00:00:00'),('rmRRIxyZH9S26vh48vKI','0000000406',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:59','TRNyoga','2020-02-19 18:10:59','2020-02-19 00:00:00'),('RMzWXvz7KGcdXCVjNI2','0000001142',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:18','TRNyoga','2020-02-19 18:13:18','2020-02-19 00:00:00'),('rNgzMMw0PbpmhnnInapF','0000001014',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:49','TRNyoga','2020-02-19 18:12:49','2020-02-19 00:00:00'),('RNtarnmO8GxS9yXZci6d','0000000965',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:38','TRNyoga','2020-02-19 18:12:38','2020-02-19 00:00:00'),('Ro5lcrmyUrasbgtEMdLc','0000000477',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:12','TRNyoga','2020-02-19 18:11:12','2020-02-19 00:00:00'),('ROTmlo9nY7XusgNN2KDT','0000000960',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:36','TRNyoga','2020-02-19 18:12:36','2020-02-19 00:00:00'),('roYu4YJ5cWIh8SIxXHs','0000000495',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:15','TRNyoga','2020-02-19 18:11:15','2020-02-19 00:00:00'),('ROZ8RxlHA6CPgkL9CBfH','0000000385',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:54','TRNyoga','2020-02-19 18:10:54','2020-02-19 00:00:00'),('RPoiLy8gqv3rA4CXq2Om','0000000828',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:10','TRNyoga','2020-02-19 18:12:10','2020-02-19 00:00:00'),('rrNSS0hdUMxvLBykaPNN','0000000981',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:41','TRNyoga','2020-02-19 18:12:41','2020-02-19 00:00:00'),('rScAWefe2P5QXtEZqvrL','0000001077',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:04','TRNyoga','2020-02-19 18:13:04','2020-02-19 00:00:00'),('rTCMQg2PSfvsgbuNeX0q','0000000816',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:08','TRNyoga','2020-02-19 18:12:08','2020-02-19 00:00:00'),('rtI1ba3GcB36b8ciozuW','0000000076',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:11','TRNyoga','2020-02-19 18:10:11','2020-02-19 00:00:00'),('rvJT1t1s7pd0qHQCcPT','0000000068',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:10','TRNyoga','2020-02-19 18:10:10','2020-02-19 00:00:00'),('RVQgkQo6yNTnXHnTF0V','0000000663',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:42','TRNyoga','2020-02-19 18:11:42','2020-02-19 00:00:00'),('rX3RzAMaDu60PvYVSZS2','0000000595',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:30','TRNyoga','2020-02-19 18:11:30','2020-02-19 00:00:00'),('rXExvRYmHSQhKlKpS9Ej','0000000800',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:05','TRNyoga','2020-02-19 18:12:05','2020-02-19 00:00:00'),('RxgW5YpwEl7NOxhlgSri','0000000285',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:40','TRNyoga','2020-02-19 18:10:40','2020-02-19 00:00:00'),('RXLoEkBRonisOslk7oI4','0000000174',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:24','TRNyoga','2020-02-19 18:10:24','2020-02-19 00:00:00'),('rYs2tByKtUvB9dOJGppH','0000000046',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:07','TRNyoga','2020-02-19 18:10:07','2020-02-19 00:00:00'),('s0amKiU24667JaS628J','0000000660',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:41','TRNyoga','2020-02-19 18:11:41','2020-02-19 00:00:00'),('s36v5tFumVBJxePQjLQS','0000000699',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:47','TRNyoga','2020-02-19 18:11:47','2020-02-19 00:00:00'),('S6JatofDqEjNXISdNVo2','0000000861',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:16','TRNyoga','2020-02-19 18:12:16','2020-02-19 00:00:00'),('S9yyhqON7u1AayQpOum','0000000259',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:36','TRNyoga','2020-02-19 18:10:36','2020-02-19 00:00:00'),('saxltnloWMw6zHxzAZmn','0000000510',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:17','TRNyoga','2020-02-19 18:11:17','2020-02-19 00:00:00'),('Sazr7JMy2ijWPKaeoPj','0000000635',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:37','TRNyoga','2020-02-19 18:11:37','2020-02-19 00:00:00'),('scSMSgVEadgn5mp2Ozie','0000000072',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:11','TRNyoga','2020-02-19 18:10:11','2020-02-19 00:00:00'),('Sd5gmaJdowzOb7CCshiK','0000000815',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:08','TRNyoga','2020-02-19 18:12:08','2020-02-19 00:00:00'),('SEUhv9v3sbmQs8WLIObp','0000000050',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:08','TRNyoga','2020-02-19 18:10:08','2020-02-19 00:00:00'),('SeULkViBaye8zZGWhz58','0000000669',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:42','TRNyoga','2020-02-19 18:11:42','2020-02-19 00:00:00'),('SHJFja4b91c45AColGhK','0000000632',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:37','TRNyoga','2020-02-19 18:11:37','2020-02-19 00:00:00'),('SIWEsXWhaM3MkCmkOsr','0000000448',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:07','TRNyoga','2020-02-19 18:11:07','2020-02-19 00:00:00'),('SiWx0ve90aAX49VxVLJ1','0000000909',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:24','TRNyoga','2020-02-19 18:12:24','2020-02-19 00:00:00'),('SJKy9t2Y3QmZjeHahCH','0000000112',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:16','TRNyoga','2020-02-19 18:10:16','2020-02-19 00:00:00'),('sk97fWaVw6S3vHb6U5A8','0000000713',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:49','TRNyoga','2020-02-19 18:11:49','2020-02-19 00:00:00'),('SklJUx1JQB0zmSLmJcgG','0000001032',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:53','TRNyoga','2020-02-19 18:12:53','2020-02-19 00:00:00'),('SNLjO4XwSsHONjuiOtgA','0000000096',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:14','TRNyoga','2020-02-19 18:10:14','2020-02-19 00:00:00'),('sNyI9s7IzYziW9U2YlA2','0000000929',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:28','TRNyoga','2020-02-19 18:12:28','2020-02-19 00:00:00'),('sPT9xlGZNokzrOMvbVvT','0000001163',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:22','TRNyoga','2020-02-19 18:13:22','2020-02-19 00:00:00'),('sqz5PxT3b9DuiAgvlHNH','0000000244',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:34','TRNyoga','2020-02-19 18:10:34','2020-02-19 00:00:00'),('sqZnTgHR8LSbmJu1ly1p','0000000359',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:50','TRNyoga','2020-02-19 18:10:50','2020-02-19 00:00:00'),('Ss78S2i7J5vhFqJfppp7','0000000717',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:50','TRNyoga','2020-02-19 18:11:50','2020-02-19 00:00:00'),('sSoYNODECArOadYqP0j','0000000319',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:44','TRNyoga','2020-02-19 18:10:44','2020-02-19 00:00:00'),('ST7wSyskWwNVN9BoFeQk','0000001114',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:12','TRNyoga','2020-02-19 18:13:12','2020-02-19 00:00:00'),('su09yRDoXnd2RTKDZKFi','0000001111',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:11','TRNyoga','2020-02-19 18:13:11','2020-02-19 00:00:00'),('SU2Mlqf1jx8zZ5D34nex','0000000745',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:55','TRNyoga','2020-02-19 18:11:55','2020-02-19 00:00:00'),('sUPHPpd12047U4MefyZ','0000000986',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:42','TRNyoga','2020-02-19 18:12:42','2020-02-19 00:00:00'),('SvDX8ueM6iL2NIDiTw','0000000769',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:58','TRNyoga','2020-02-19 18:11:58','2020-02-19 00:00:00'),('sXkZXgmSnffWtgues92o','0000000206',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:28','TRNyoga','2020-02-19 18:10:28','2020-02-19 00:00:00'),('SYm6ACN3sM3LJj8P7yuk','0000001099',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:09','TRNyoga','2020-02-19 18:13:09','2020-02-19 00:00:00'),('szLFG4W1W3yPVR5dQltM','0000001076',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:04','TRNyoga','2020-02-19 18:13:04','2020-02-19 00:00:00'),('T0YFlbW2rZYZTKxDWjAz','0000000912',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:24','TRNyoga','2020-02-19 18:12:24','2020-02-19 00:00:00'),('t3MXvT403i1ngzFVMeX','0000001097',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:08','TRNyoga','2020-02-19 18:13:08','2020-02-19 00:00:00'),('T40r1MSzgCjOnUMeyues','0000000896',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:21','TRNyoga','2020-02-19 18:12:21','2020-02-19 00:00:00'),('t6c1fcOlNxBUPs3MyO7z','0000000636',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:37','TRNyoga','2020-02-19 18:11:37','2020-02-19 00:00:00'),('T6pDUOE972JqGDC3nWN8','0000000555',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:24','TRNyoga','2020-02-19 18:11:24','2020-02-19 00:00:00'),('t7OIat0yRWlcKjPgyYTR','0000000313',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:43','TRNyoga','2020-02-19 18:10:43','2020-02-19 00:00:00'),('t9JQvEL1LRMaPteMHBZ','0000000752',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:56','TRNyoga','2020-02-19 18:11:56','2020-02-19 00:00:00'),('ta92pFxA0agouyj4A99E','0000000155',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:22','TRNyoga','2020-02-19 18:10:22','2020-02-19 00:00:00'),('TalE4gnnjGoVmJUkqgPc','0000000890',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:21','TRNyoga','2020-02-19 18:12:21','2020-02-19 00:00:00'),('tb3hTxkgobB4HulI0hwR','0000000762',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:57','TRNyoga','2020-02-19 18:11:57','2020-02-19 00:00:00'),('TBFBCn96QKgUKw2D56Sm','0000001129',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:15','TRNyoga','2020-02-19 18:13:15','2020-02-19 00:00:00'),('TcgMnr9QCvUuNeyhE0xl','0000001153',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:20','TRNyoga','2020-02-19 18:13:20','2020-02-19 00:00:00'),('Tf6btG0ikKIqHeVhTDG','0000000679',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:44','TRNyoga','2020-02-19 18:11:44','2020-02-19 00:00:00'),('TF6FmHTrAYRriPuKI8KY','0000001180',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:25','TRNyoga','2020-02-19 18:13:25','2020-02-19 00:00:00'),('TiCZrVDFFy0AM4FnvM87','0000000091',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:13','TRNyoga','2020-02-19 18:10:13','2020-02-19 00:00:00'),('TIwK61CNlcrYR9XSlCA','0000000639',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:38','TRNyoga','2020-02-19 18:11:38','2020-02-19 00:00:00'),('tjpnNjNRm4S5VT67GEry','0000000428',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:03','TRNyoga','2020-02-19 18:11:03','2020-02-19 00:00:00'),('tkVjcsMKOtX22GUf5XB2','0000000040',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:06','TRNyoga','2020-02-19 18:10:06','2020-02-19 00:00:00'),('TKX9ZbbfhECrS7Qq73W','0000001101',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:09','TRNyoga','2020-02-19 18:13:09','2020-02-19 00:00:00'),('tMKcaJwlNWUZxgQI4OE','0000000435',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:04','TRNyoga','2020-02-19 18:11:04','2020-02-19 00:00:00'),('TMXPPkm96r2uprqZZbuc','0000001042',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:56','TRNyoga','2020-02-19 18:12:56','2020-02-19 00:00:00'),('tNEsFBj2aXeDKcSnzcbQ','0000000914',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:25','TRNyoga','2020-02-19 18:12:25','2020-02-19 00:00:00'),('To4W1xlMkBL2zXLNXpjF','0000000166',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:23','TRNyoga','2020-02-19 18:10:23','2020-02-19 00:00:00'),('toRklWvZ27CwIMax8hD7','0000000007',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:02','TRNyoga','2020-02-19 18:10:02','2020-02-19 00:00:00'),('tpLAQOiFp8XaUIcbxq1i','0000000038',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:06','TRNyoga','2020-02-19 18:10:06','2020-02-19 00:00:00'),('TPMcDmVhNgSJ3T7CC4Ax','0000000600',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:31','TRNyoga','2020-02-19 18:11:31','2020-02-19 00:00:00'),('tpmgM5uStwItPzZGxzNA','0000001091',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:07','TRNyoga','2020-02-19 18:13:07','2020-02-19 00:00:00'),('tQahU3gHxauv6ziQN6Gf','0000000646',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:39','TRNyoga','2020-02-19 18:11:39','2020-02-19 00:00:00'),('tqgwfXhySw392v1lXIbM','0000000802',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:05','TRNyoga','2020-02-19 18:12:05','2020-02-19 00:00:00'),('TQHE8ouRgjXeW5a1YFK','0000000638',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:37','TRNyoga','2020-02-19 18:11:37','2020-02-19 00:00:00'),('TQTQZN6nj5IZ5xHf2wwh','0000000273',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:38','TRNyoga','2020-02-19 18:10:38','2020-02-19 00:00:00'),('traLKP5ffxnNdr30lRzY','0000000049',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:08','TRNyoga','2020-02-19 18:10:08','2020-02-19 00:00:00'),('tshp6ffkMlc3g5EELjvJ','0000000538',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:21','TRNyoga','2020-02-19 18:11:21','2020-02-19 00:00:00'),('TSi2TOSXu8Bogx5QX5X','0000000972',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:39','TRNyoga','2020-02-19 18:12:39','2020-02-19 00:00:00'),('TsofeJSPtRGdkbfA0Azt','0000001000',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:45','TRNyoga','2020-02-19 18:12:45','2020-02-19 00:00:00'),('TUIdNQEw0VxdIZnTFoCC','0000000311',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:43','TRNyoga','2020-02-19 18:10:43','2020-02-19 00:00:00'),('TVdcZDpsjDaPMb24HN6','0000000371',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:52','TRNyoga','2020-02-19 18:10:52','2020-02-19 00:00:00'),('TvjoyTDhMGaOLIUxdjhB','0000000079',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:11','TRNyoga','2020-02-19 18:10:11','2020-02-19 00:00:00'),('TWDl70pZiK3N9v2RT9kL','0000000334',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:46','TRNyoga','2020-02-19 18:10:46','2020-02-19 00:00:00'),('TwqDcxj4brmcGG6dQ','0000000718',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:50','TRNyoga','2020-02-19 18:11:50','2020-02-19 00:00:00'),('TXxBBScGGLnrlr4vigIX','0000001053',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:59','TRNyoga','2020-02-19 18:12:59','2020-02-19 00:00:00'),('tYWGSxy5rE0eo8gJsiOG','0000000619',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:34','TRNyoga','2020-02-19 18:11:34','2020-02-19 00:00:00'),('u5tgNAqhDvBWeEXOknX0','0000000527',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:19','TRNyoga','2020-02-19 18:11:19','2020-02-19 00:00:00'),('u6ZdcJpa5UGTmrLXJG7s','0000000075',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:11','TRNyoga','2020-02-19 18:10:11','2020-02-19 00:00:00'),('U88ytJw8AbF64sae07','0000001131',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:15','TRNyoga','2020-02-19 18:13:15','2020-02-19 00:00:00'),('u9OB1MYkMKw8ZTrAmycN','0000000433',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:03','TRNyoga','2020-02-19 18:11:03','2020-02-19 00:00:00'),('u9phW3wQ9gqUKd5mIZ5','0000000670',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:43','TRNyoga','2020-02-19 18:11:43','2020-02-19 00:00:00'),('UArNzVKV87lThvKOgXSf','0000000968',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:38','TRNyoga','2020-02-19 18:12:38','2020-02-19 00:00:00'),('ubkqgdVZ9YM0lgS3AsHd','0000000229',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:31','TRNyoga','2020-02-19 18:10:31','2020-02-19 00:00:00'),('uCK8ksT0g1ikx8YGQ8ma','0000000325',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:45','TRNyoga','2020-02-19 18:10:45','2020-02-19 00:00:00'),('ucKCaeHyZnbCFZIRpTfT','0000000736',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:53','TRNyoga','2020-02-19 18:11:53','2020-02-19 00:00:00'),('Udse0vfKhp6EX7gEj6U','0000000011',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:02','TRNyoga','2020-02-19 18:10:02','2020-02-19 00:00:00'),('UeY7F9u8cHu3LKVq4Cfn','0000000327',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:45','TRNyoga','2020-02-19 18:10:45','2020-02-19 00:00:00'),('UFHmhY5DEmBJdGgeIgwf','0000000345',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:48','TRNyoga','2020-02-19 18:10:48','2020-02-19 00:00:00'),('uhGDjIpNb2R6k508sdhY','0000001087',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:06','TRNyoga','2020-02-19 18:13:06','2020-02-19 00:00:00'),('UJ7r2hOZpBcgMZJmljoS','0000000140',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:19','TRNyoga','2020-02-19 18:10:19','2020-02-19 00:00:00'),('uJvwhYoauO3QFWAwkuA','0000000314',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:43','TRNyoga','2020-02-19 18:10:43','2020-02-19 00:00:00'),('ukBLESafuRmFLBE6GY07','0000000726',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:51','TRNyoga','2020-02-19 18:11:51','2020-02-19 00:00:00'),('UkICNlOKbmPRPIf1Vd4R','0000000548',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:23','TRNyoga','2020-02-19 18:11:23','2020-02-19 00:00:00'),('ukv18KYXTRHkYxGK57ni','0000000037',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:06','TRNyoga','2020-02-19 18:10:06','2020-02-19 00:00:00'),('ul7H429XfrDTose6fA','0000000466',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:10','TRNyoga','2020-02-19 18:11:10','2020-02-19 00:00:00'),('UL8jRAMLjpma1zmFaUIO','0000000132',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:18','TRNyoga','2020-02-19 18:10:18','2020-02-19 00:00:00'),('uLVIbZWY1VeFoMokM2f','0000000133',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:19','TRNyoga','2020-02-19 18:10:19','2020-02-19 00:00:00'),('uOrxrqTDn9uxvLcRzFwG','0000000697',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:47','TRNyoga','2020-02-19 18:11:47','2020-02-19 00:00:00'),('uPg2qat0RUDganXi4','0000001127',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:15','TRNyoga','2020-02-19 18:13:15','2020-02-19 00:00:00'),('UPsE5MjOsEhmMORrc5ZC','0000000774',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:59','TRNyoga','2020-02-19 18:11:59','2020-02-19 00:00:00'),('UpzTqGkFN1Q0HKzXmHt9','0000000930',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:28','TRNyoga','2020-02-19 18:12:28','2020-02-19 00:00:00'),('uQLZQjsTCzeO1q5kNfsx','0000000163',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:23','TRNyoga','2020-02-19 18:10:23','2020-02-19 00:00:00'),('UrzLgZirHP1UWjbfbiO5','0000000666',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:42','TRNyoga','2020-02-19 18:11:42','2020-02-19 00:00:00'),('usS61wqxRJYlbWq9Lth0','0000000759',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:57','TRNyoga','2020-02-19 18:11:57','2020-02-19 00:00:00'),('usYRxFDQsJCH00otlkUO','0000000008',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:02','TRNyoga','2020-02-19 18:10:02','2020-02-19 00:00:00'),('UTupKmflhhDcfY64QgDv','0000000246',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:34','TRNyoga','2020-02-19 18:10:34','2020-02-19 00:00:00'),('uUb3zDcemNPlzJyrqhk','0000000118',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:17','TRNyoga','2020-02-19 18:10:17','2020-02-19 00:00:00'),('UUjUJ7QJ4jiwDQnFyoU','0000000964',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:37','TRNyoga','2020-02-19 18:12:37','2020-02-19 00:00:00'),('UvV5uaPtQ5W6GyG2dt4T','0000000348',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:48','TRNyoga','2020-02-19 18:10:48','2020-02-19 00:00:00'),('uWcWpWa1hC0fOjaKeTE6','0000000366',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:51','TRNyoga','2020-02-19 18:10:51','2020-02-19 00:00:00'),('uwiaLQaTBYyTKeTgovC','0000001034',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:54','TRNyoga','2020-02-19 18:12:54','2020-02-19 00:00:00'),('UXPJYyMnqwyo0cBQTrTj','0000000568',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:26','TRNyoga','2020-02-19 18:11:26','2020-02-19 00:00:00'),('UyQdOkAW9UqF85k0rcM2','0000001027',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:52','TRNyoga','2020-02-19 18:12:52','2020-02-19 00:00:00'),('UywFfKZsPhRjRZ6Q3da7','0000000657',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:41','TRNyoga','2020-02-19 18:11:41','2020-02-19 00:00:00'),('UZeVSzyYgXY0jWrEHTqZ','0000000099',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:14','TRNyoga','2020-02-19 18:10:14','2020-02-19 00:00:00'),('UZQCORKllIieNd9H3cg','0000000048',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:08','TRNyoga','2020-02-19 18:10:08','2020-02-19 00:00:00'),('V020Fp8yt8dU5uM8IlLP','0000000218',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:30','TRNyoga','2020-02-19 18:10:30','2020-02-19 00:00:00'),('v1KEuG5syEq3pgdwhmts','0000000090',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:13','TRNyoga','2020-02-19 18:10:13','2020-02-19 00:00:00'),('v3QoHR2o4QFJZ5k6O18','0000000421',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:01','TRNyoga','2020-02-19 18:11:01','2020-02-19 00:00:00'),('V3SntsGIY49IXsKkeR','0000000032',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:05','TRNyoga','2020-02-19 18:10:05','2020-02-19 00:00:00'),('v5aId0POjT1zYzHDVol5','0000000029',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:05','TRNyoga','2020-02-19 18:10:05','2020-02-19 00:00:00'),('v5Lpg10ngLSTqt8Vy8m','0000000586',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:29','TRNyoga','2020-02-19 18:11:29','2020-02-19 00:00:00'),('V5TgiKEu5Md3Xw54Pb7','0000000536',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:21','TRNyoga','2020-02-19 18:11:21','2020-02-19 00:00:00'),('V8IE7NcDLC4hAZLGNHhr','0000000798',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:04','TRNyoga','2020-02-19 18:12:04','2020-02-19 00:00:00'),('v97Jnsy2wwG4DFYUYJn','0000000780',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:01','TRNyoga','2020-02-19 18:12:01','2020-02-19 00:00:00'),('va7CdLwOqkRZSeAcMkH7','0000000772',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:59','TRNyoga','2020-02-19 18:11:59','2020-02-19 00:00:00'),('vAqHWzjK2Ay32s6cCyqj','0000000923',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:26','TRNyoga','2020-02-19 18:12:26','2020-02-19 00:00:00'),('vb2SHDjvPlbD5aCSbt6i','0000001203',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:29','TRNyoga','2020-02-19 18:13:29','2020-02-19 00:00:00'),('vCqzMShwXoIYg3Iwr9Kf','0000000275',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:38','TRNyoga','2020-02-19 18:10:38','2020-02-19 00:00:00'),('VezNAqGkg6elHAHV4M2F','0000000724',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:51','TRNyoga','2020-02-19 18:11:51','2020-02-19 00:00:00'),('VfuwHSxluZECrtp4VOW','0000001041',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:56','TRNyoga','2020-02-19 18:12:56','2020-02-19 00:00:00'),('VFZvEFFlo9MGTsNzjrHC','0000000308',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:43','TRNyoga','2020-02-19 18:10:43','2020-02-19 00:00:00'),('Vg5K0zFdJujiOnv5s4b9','0000000848',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:13','TRNyoga','2020-02-19 18:12:13','2020-02-19 00:00:00'),('vhn5L7OjSphK40KX3eF4','0000000077',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:11','TRNyoga','2020-02-19 18:10:11','2020-02-19 00:00:00'),('Vi0SkKqG2jPSeU3HOUg','0000001079',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:05','TRNyoga','2020-02-19 18:13:05','2020-02-19 00:00:00'),('VIOTsHcv6ZCUvUtbXjNX','0000000442',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:06','TRNyoga','2020-02-19 18:11:06','2020-02-19 00:00:00'),('VIUDZPpOHYhfjYrxxboL','0000000859',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:15','TRNyoga','2020-02-19 18:12:15','2020-02-19 00:00:00'),('vJhJevLdsRU2nEELIcuu','0000000105',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:15','TRNyoga','2020-02-19 18:10:15','2020-02-19 00:00:00'),('vjnXBpM5NdrEizmgRQ00','0000000709',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:49','TRNyoga','2020-02-19 18:11:49','2020-02-19 00:00:00'),('VjU8OBdmpkxrQbH6Xht','0000000854',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:15','TRNyoga','2020-02-19 18:12:15','2020-02-19 00:00:00'),('VjvOKTpzuJVPmGYb664K','0000001139',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:17','TRNyoga','2020-02-19 18:13:17','2020-02-19 00:00:00'),('vKHV9wxNihjEGnuzwE3','0000001188',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:27','TRNyoga','2020-02-19 18:13:27','2020-02-19 00:00:00'),('Vkp4eLcfSKfuyC0RvesW','0000000594',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:30','TRNyoga','2020-02-19 18:11:30','2020-02-19 00:00:00'),('vkTU1yLYeDwCqmapg8t','0000000129',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:18','TRNyoga','2020-02-19 18:10:18','2020-02-19 00:00:00'),('VKUwO8nACMryy5QlMJI','0000000211',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:29','TRNyoga','2020-02-19 18:10:29','2020-02-19 00:00:00'),('vMINZPvzd6uyVX7Slfm6','0000000156',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:22','TRNyoga','2020-02-19 18:10:22','2020-02-19 00:00:00'),('VmkbyVYIazK409FPJZ5','0000000729',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:52','TRNyoga','2020-02-19 18:11:52','2020-02-19 00:00:00'),('vnO2kJwqxs2bRTPnuSSC','0000001208',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:31','TRNyoga','2020-02-19 18:13:31','2020-02-19 00:00:00'),('VNPE8i93VBXKZ4JOAvrQ','0000000938',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:30','TRNyoga','2020-02-19 18:12:30','2020-02-19 00:00:00'),('vO8ZTQh94wUaeGXGGVL','0000000775',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:00','TRNyoga','2020-02-19 18:12:00','2020-02-19 00:00:00'),('vOxiXy6WZ8SjPabw9u','0000000810',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:07','TRNyoga','2020-02-19 18:12:07','2020-02-19 00:00:00'),('VP6wbIj93H1uJBhO6mI','0000001140',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:17','TRNyoga','2020-02-19 18:13:17','2020-02-19 00:00:00'),('vQsqhJRphXErKlQngRC','0000000817',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:08','TRNyoga','2020-02-19 18:12:08','2020-02-19 00:00:00'),('vszxsWP3w7n0VRaYltG6','0000000517',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:18','TRNyoga','2020-02-19 18:11:18','2020-02-19 00:00:00'),('vTZfwaO4EaUj7IgCBk3','0000000613',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:33','TRNyoga','2020-02-19 18:11:33','2020-02-19 00:00:00'),('VUB36NqrO5sshCGHfJzg','0000000847',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:13','TRNyoga','2020-02-19 18:12:13','2020-02-19 00:00:00'),('vv5mInMITkDShdBqAnav','0000001081',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:05','TRNyoga','2020-02-19 18:13:05','2020-02-19 00:00:00'),('VvBxWAd0wslKptqSPusY','0000001162',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:22','TRNyoga','2020-02-19 18:13:22','2020-02-19 00:00:00'),('VVviAFd8c6N7uyImFSXs','0000000494',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:14','TRNyoga','2020-02-19 18:11:14','2020-02-19 00:00:00'),('vVZ9mtMQzZ5eliTVqKF0','0000000221',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:30','TRNyoga','2020-02-19 18:10:30','2020-02-19 00:00:00'),('vWUnRlzwX0pUxeVAQT3b','0000000988',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:42','TRNyoga','2020-02-19 18:12:42','2020-02-19 00:00:00'),('VY28P7Nzj3ZQVPTLrS','0000000482',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:13','TRNyoga','2020-02-19 18:11:13','2020-02-19 00:00:00'),('vZJLFn7GEQf8aGBctM9w','0000000354',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:49','TRNyoga','2020-02-19 18:10:49','2020-02-19 00:00:00'),('vzVKwqkRAat6UFh4dfgQ','0000000351',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:49','TRNyoga','2020-02-19 18:10:49','2020-02-19 00:00:00'),('w12NRmFiqAZ42LQSxDP','0000001093',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:08','TRNyoga','2020-02-19 18:13:08','2020-02-19 00:00:00'),('w2xJhwE3LPFWbPz0hQOi','0000000513',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:17','TRNyoga','2020-02-19 18:11:17','2020-02-19 00:00:00'),('W44Mk147iLyJzE1KlxpI','0000000714',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:49','TRNyoga','2020-02-19 18:11:49','2020-02-19 00:00:00'),('W5Y1PSRNGMToLA3oKGOU','0000001113',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:12','TRNyoga','2020-02-19 18:13:12','2020-02-19 00:00:00'),('W7ABAs1MFZOBV2sbzqU9','0000000958',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:36','TRNyoga','2020-02-19 18:12:36','2020-02-19 00:00:00'),('w8hepJYFKu1KfNUA9rBM','0000000830',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:10','TRNyoga','2020-02-19 18:12:10','2020-02-19 00:00:00'),('w9buTALl8vlprJWfyA0Y','0000000269',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:37','TRNyoga','2020-02-19 18:10:37','2020-02-19 00:00:00'),('wAC5N8H9am3ESaEbCRZS','0000000997',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:44','TRNyoga','2020-02-19 18:12:44','2020-02-19 00:00:00'),('wacmJTJ83jwjGiyymbjV','0000000901',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:22','TRNyoga','2020-02-19 18:12:22','2020-02-19 00:00:00'),('WbPahvkube4sScZD1Ky9','0000000111',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:16','TRNyoga','2020-02-19 18:10:16','2020-02-19 00:00:00'),('wBwkh0uPynnj57GR20m4','0000000356',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:50','TRNyoga','2020-02-19 18:10:50','2020-02-19 00:00:00'),('wCDYDqFV5bdz7KhvrsiP','0000000605',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:32','TRNyoga','2020-02-19 18:11:32','2020-02-19 00:00:00'),('WcWODWvAI2UIUQzhqcuT','0000000504',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:16','TRNyoga','2020-02-19 18:11:16','2020-02-19 00:00:00'),('WDKPMUioMHGKaRTqGJmz','0000000779',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:00','TRNyoga','2020-02-19 18:12:00','2020-02-19 00:00:00'),('WEfLb3hhe6MHiEHA61x3','0000001095',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:08','TRNyoga','2020-02-19 18:13:08','2020-02-19 00:00:00'),('wf3Dmde3EYwsykSuPFKb','0000000931',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:28','TRNyoga','2020-02-19 18:12:28','2020-02-19 00:00:00'),('wGslrsc4M24NKcY85ko','0000000003',1,7,'2020-09-05','2020-09-12',1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:01','TRNWIL','2020-09-06 16:48:40','2020-09-06 16:48:40'),('Whanl0QifiyR26ISw8T','0000000137',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:19','TRNyoga','2020-02-19 18:10:19','2020-02-19 00:00:00'),('wItdgLaQGQdIZMAqTWJ6','0000000379',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:53','TRNyoga','2020-02-19 18:10:53','2020-02-19 00:00:00'),('WIukU7B1Lm2yePe2xka3','0000000936',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:29','TRNyoga','2020-02-19 18:12:29','2020-02-19 00:00:00'),('Wk6vFaBMy8F8hxLG6fQ2','0000000832',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:11','TRNyoga','2020-02-19 18:12:11','2020-02-19 00:00:00'),('WKBYfxM6hROhsPFXN8N','0000000353',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:49','TRNyoga','2020-02-19 18:10:49','2020-02-19 00:00:00'),('wKNFFEK7VgZZursU7vFX','0000000805',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:06','TRNyoga','2020-02-19 18:12:06','2020-02-19 00:00:00'),('wl0xmZW4LqmSs1L4GA6d','0000000362',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:51','TRNyoga','2020-02-19 18:10:51','2020-02-19 00:00:00'),('WlBr6jAE0wK6pkzQvy0v','0000000700',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:47','TRNyoga','2020-02-19 18:11:47','2020-02-19 00:00:00'),('wMOyuXISP5UJ15dW7ZU','0000000413',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:00','TRNyoga','2020-02-19 18:11:00','2020-02-19 00:00:00'),('wmvtM9VXdQrPANzd6TgH','0000000358',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:50','TRNyoga','2020-02-19 18:10:50','2020-02-19 00:00:00'),('WnwApul8imfFQQdOJhID','0000000867',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:17','TRNyoga','2020-02-19 18:12:17','2020-02-19 00:00:00'),('Wo2wPDk0LLkCYD2X9AS7','0000000671',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:43','TRNyoga','2020-02-19 18:11:43','2020-02-19 00:00:00'),('wpPV2ucsgc66srGjsby','0000000688',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:45','TRNyoga','2020-02-19 18:11:45','2020-02-19 00:00:00'),('wQQjxEqEIuJcakPziDN','0000000653',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:40','TRNyoga','2020-02-19 18:11:40','2020-02-19 00:00:00'),('wqWyvsEiY42m973kJV9j','0000000489',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:14','TRNyoga','2020-02-19 18:11:14','2020-02-19 00:00:00'),('WQXai1hVldXUghWLOyHx','0000000315',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:44','TRNyoga','2020-02-19 18:10:44','2020-02-19 00:00:00'),('wrK3ubeFK6IGwZ7ExcUH','0000000407',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:59','TRNyoga','2020-02-19 18:10:59','2020-02-19 00:00:00'),('wtRGPCpLgTxWzCHiXEQs','0000000672',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:43','TRNyoga','2020-02-19 18:11:43','2020-02-19 00:00:00'),('WTSiDb3nE3stIOAI2ipG','0000000146',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:20','TRNyoga','2020-02-19 18:10:20','2020-02-19 00:00:00'),('wugSJEbk7jYyTlx7L6o8','0000000843',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:13','TRNyoga','2020-02-19 18:12:13','2020-02-19 00:00:00'),('WUnf3k1g6sxrPAoSrBz','0000000654',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:40','TRNyoga','2020-02-19 18:11:40','2020-02-19 00:00:00'),('wUzXss0gJyFC2z37Bj7k','0000000018',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:03','TRNyoga','2020-02-19 18:10:03','2020-02-19 00:00:00'),('wV5TSBZaYKAmRg1ChN','0000000526',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:19','TRNyoga','2020-02-19 18:11:19','2020-02-19 00:00:00'),('wx6fxGKtONMwNdKoYus','0000001201',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:29','TRNyoga','2020-02-19 18:13:29','2020-02-19 00:00:00'),('WyOOCqzaz41fvLCDokt','0000000492',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:14','TRNyoga','2020-02-19 18:11:14','2020-02-19 00:00:00'),('wZ1U24HooBp4Ps8x4WjT','0000000461',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:09','TRNyoga','2020-02-19 18:11:09','2020-02-19 00:00:00'),('x1IeiM4GZO0CNXvGty2V','0000001043',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:57','TRNyoga','2020-02-19 18:12:57','2020-02-19 00:00:00'),('X1VQYnUthi89F85XiGIt','0000001138',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:17','TRNyoga','2020-02-19 18:13:17','2020-02-19 00:00:00'),('x2CtNERmmOkh0TxkSHp7','0000001010',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:48','TRNyoga','2020-02-19 18:12:48','2020-02-19 00:00:00'),('x6YO1Poov4ftK827VSGV','0000000948',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:33','TRNyoga','2020-02-19 18:12:33','2020-02-19 00:00:00'),('x8znMpynugaGUyqUKCM9','0000000873',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:18','TRNyoga','2020-02-19 18:12:18','2020-02-19 00:00:00'),('Xbal2KEbJP5sR0nb1m','0000000979',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:41','TRNyoga','2020-02-19 18:12:41','2020-02-19 00:00:00'),('xCjp4Q4qLzDcQF2k2tHU','0000000299',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:41','TRNyoga','2020-02-19 18:10:41','2020-02-19 00:00:00'),('XCw1JrUd54LJIQBBSBns','0000000266',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:37','TRNyoga','2020-02-19 18:10:37','2020-02-19 00:00:00'),('xDdEyHR7AYS3B40rC56','0000000138',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:19','TRNyoga','2020-02-19 18:10:19','2020-02-19 00:00:00'),('xFexo0OT4o9MhaGifcp3','0000000898',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:22','TRNyoga','2020-02-19 18:12:22','2020-02-19 00:00:00'),('xHEJi1AsUOyoAUw75EXI','0000000845',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:13','TRNyoga','2020-02-19 18:12:13','2020-02-19 00:00:00'),('xhlFzcNxiyRjrG17eqev','0000001046',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:57','TRNyoga','2020-02-19 18:12:57','2020-02-19 00:00:00'),('XhSPNpePWGzcAWQytxwY','0000000727',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:52','TRNyoga','2020-02-19 18:11:52','2020-02-19 00:00:00'),('xKayxtx8g2OgXgXzixr8','0000000897',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:22','TRNyoga','2020-02-19 18:12:22','2020-02-19 00:00:00'),('xkgNTny0BomTTcF5sXE','0000000989',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:43','TRNyoga','2020-02-19 18:12:43','2020-02-19 00:00:00'),('XkiTwJZaGUJ9ejF7zoA','0000000490',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:14','TRNyoga','2020-02-19 18:11:14','2020-02-19 00:00:00'),('XLNl76vqXmo9anEX6Fl','0000000235',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:32','TRNyoga','2020-02-19 18:10:32','2020-02-19 00:00:00'),('XlNQXSY49jfGf28PvSy4','0000000486',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:13','TRNyoga','2020-02-19 18:11:13','2020-02-19 00:00:00'),('xLZ3wc8v34tAl91T8Pcw','0000000559',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:25','TRNyoga','2020-02-19 18:11:25','2020-02-19 00:00:00'),('XMcx17W5gmM1rUdtLxd1','0000001094',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:08','TRNyoga','2020-02-19 18:13:08','2020-02-19 00:00:00'),('xN0Wlv6hYSEvAJEcWpxs','0000000423',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:02','TRNyoga','2020-02-19 18:11:02','2020-02-19 00:00:00'),('xNVbQnTYlTZMFGRlyVF','0000000966',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:38','TRNyoga','2020-02-19 18:12:38','2020-02-19 00:00:00'),('xqC0XS3OErs0S1NjWwo','0000000055',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:08','TRNyoga','2020-02-19 18:10:08','2020-02-19 00:00:00'),('XQxSeit7pCHcb9IfOItP','0000000904',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:23','TRNyoga','2020-02-19 18:12:23','2020-02-19 00:00:00'),('xr8Wm12H7RxXZOBjJdHS','0000000115',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:16','TRNyoga','2020-02-19 18:10:16','2020-02-19 00:00:00'),('XreNwuFaOm083VcfYuLC','0000000737',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:53','TRNyoga','2020-02-19 18:11:53','2020-02-19 00:00:00'),('xrruVBDbqt8jfTRu8ciN','0000001189',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:27','TRNyoga','2020-02-19 18:13:27','2020-02-19 00:00:00'),('xRWXvYPvavjZfPVtZKzy','0000000438',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:05','TRNyoga','2020-02-19 18:11:05','2020-02-19 00:00:00'),('xtrnLUBXlhheuttNXOCJ','0000000797',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:04','TRNyoga','2020-02-19 18:12:04','2020-02-19 00:00:00'),('xTXQkgMh5kuUuoxMNlUu','0000000686',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:45','TRNyoga','2020-02-19 18:11:45','2020-02-19 00:00:00'),('xvSzFVnxbIIQOcjBLfao','0000001176',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:25','TRNyoga','2020-02-19 18:13:25','2020-02-19 00:00:00'),('xwmv55mpD7NOWZ8LaxkS','0000000532',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:20','TRNyoga','2020-02-19 18:11:20','2020-02-19 00:00:00'),('Xwumdx0UkCfZ06KGpOoC','0000000034',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:06','TRNyoga','2020-02-19 18:10:06','2020-02-19 00:00:00'),('xXMd9jkrMk98Rdoqd0P','0000000116',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:16','TRNyoga','2020-02-19 18:10:16','2020-02-19 00:00:00'),('xxt9quxvVD4ZDIoA0gD','0000001037',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:55','TRNyoga','2020-02-19 18:12:55','2020-02-19 00:00:00'),('xYbp3k71CAKKrA4dfFxu','0000001119',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:13','TRNyoga','2020-02-19 18:13:13','2020-02-19 00:00:00'),('xZN6ZBicGZu3mqQIfOjM','0000001132',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:16','TRNyoga','2020-02-19 18:13:16','2020-02-19 00:00:00'),('XZPcCXJnLviTCtuiTdMI','0000000521',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:19','TRNyoga','2020-02-19 18:11:19','2020-02-19 00:00:00'),('y5K0Ym0dOqksg7Kh7KGO','0000000771',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:59','TRNyoga','2020-02-19 18:11:59','2020-02-19 00:00:00'),('Y6sy38PUzkyWg49IlwQ','0000001118',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:13','TRNyoga','2020-02-19 18:13:13','2020-02-19 00:00:00'),('y7bSoMNERL5APA6Vaet','0000000990',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:43','TRNyoga','2020-02-19 18:12:43','2020-02-19 00:00:00'),('y7LTNFY0IevmwGmAVk0L','0000001147',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:19','TRNyoga','2020-02-19 18:13:19','2020-02-19 00:00:00'),('Y9TCMryfjz9sOmBPZbor','0000001121',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:13','TRNyoga','2020-02-19 18:13:13','2020-02-19 00:00:00'),('yA5Jb5Ht98yg948coKnR','0000000562',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:25','TRNyoga','2020-02-19 18:11:25','2020-02-19 00:00:00'),('ya6c2Ru2RuqygVSmYvgy','0000001181',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:26','TRNyoga','2020-02-19 18:13:26','2020-02-19 00:00:00'),('YA7PPq8EdEl7o7LN3PN','0000000879',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:19','TRNyoga','2020-02-19 18:12:19','2020-02-19 00:00:00'),('YAczkykYQD1rcaJ8D1rB','0000000768',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:58','TRNyoga','2020-02-19 18:11:58','2020-02-19 00:00:00'),('YaiOGskPaZz586rDNDX7','0000001052',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:59','TRNyoga','2020-02-19 18:12:59','2020-02-19 00:00:00'),('ybB9r0tVjUwwnIGwnOq2','0000000089',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:13','TRNyoga','2020-02-19 18:10:13','2020-02-19 00:00:00'),('YC8IEI5q9sw2DGn6SKK','0000000743',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:54','TRNyoga','2020-02-19 18:11:54','2020-02-19 00:00:00'),('yCpAYgKnyiyEJ0GDkjI','0000000508',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:17','TRNyoga','2020-02-19 18:11:17','2020-02-19 00:00:00'),('YddX0D6isO4EzC6B1nFf','0000000707',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:48','TRNyoga','2020-02-19 18:11:48','2020-02-19 00:00:00'),('yDV607fDPYnvMwOP2Ctb','0000001144',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:18','TRNyoga','2020-02-19 18:13:18','2020-02-19 00:00:00'),('YExUyJR0ZSWDXpdUGbHp','0000001026',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:52','TRNyoga','2020-02-19 18:12:52','2020-02-19 00:00:00'),('YfePQV44nDezObIUQYZc','0000001083',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:06','TRNyoga','2020-02-19 18:13:06','2020-02-19 00:00:00'),('yfqwf3250JlK1am91Gwm','0000000383',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:54','TRNyoga','2020-02-19 18:10:54','2020-02-19 00:00:00'),('yFWZPpcpKMyq16q8RdN8','0000000624',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:35','TRNyoga','2020-02-19 18:11:35','2020-02-19 00:00:00'),('YgE1KXQEd3Ea8VzJEpxS','0000001174',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:24','TRNyoga','2020-02-19 18:13:24','2020-02-19 00:00:00'),('YgJMf53XQ2jwVZw4fg9G','0000000375',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:53','TRNyoga','2020-02-19 18:10:53','2020-02-19 00:00:00'),('YHs2TUCshHrdnWTSUVpx','0000000905',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:23','TRNyoga','2020-02-19 18:12:23','2020-02-19 00:00:00'),('YkZkY8nGmhzmS4vHANG','0000000472',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:11','TRNyoga','2020-02-19 18:11:11','2020-02-19 00:00:00'),('YLtNyvy17kM3R68ux74r','0000000121',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:17','TRNyoga','2020-02-19 18:10:17','2020-02-19 00:00:00'),('ynNC9PvFYBCLez7xG3q4','0000000017',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:03','TRNyoga','2020-02-19 18:10:03','2020-02-19 00:00:00'),('YnvadAjlJvPedwuYVth6','0000000844',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:13','TRNyoga','2020-02-19 18:12:13','2020-02-19 00:00:00'),('yoiyyYtxq1HJmmVH6lBx','0000001229',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:36','TRNyoga','2020-02-19 18:13:36','2020-02-19 00:00:00'),('yPCv75ffW5zIK30LDH','0000000300',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:41','TRNyoga','2020-02-19 18:10:41','2020-02-19 00:00:00'),('Ypv33Sh7Ek0s77gK4B3','0000000836',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:11','TRNyoga','2020-02-19 18:12:11','2020-02-19 00:00:00'),('YQejGISC608RV4s5oJSU','0000000566',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:26','TRNyoga','2020-02-19 18:11:26','2020-02-19 00:00:00'),('yR2H172PMuZk4TTOzBbm','0000001175',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:24','TRNyoga','2020-02-19 18:13:24','2020-02-19 00:00:00'),('YSfbv0Po0OhLaD6ndkbR','0000000814',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:07','TRNyoga','2020-02-19 18:12:07','2020-02-19 00:00:00'),('YSkX192ICNX7YH4JObOF','0000000143',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:20','TRNyoga','2020-02-19 18:10:20','2020-02-19 00:00:00'),('YTL9VOhsdnJhqUxDCmk','0000000042',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:07','TRNyoga','2020-02-19 18:10:07','2020-02-19 00:00:00'),('YwaOFXop10GCJ1uw0PNI','0000000784',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:01','TRNyoga','2020-02-19 18:12:01','2020-02-19 00:00:00'),('YZBozukc4SnSsct56MB','0000000872',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:18','TRNyoga','2020-02-19 18:12:18','2020-02-19 00:00:00'),('YzBTpg9LMeghjXDDRFj','0000000051',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:08','TRNyoga','2020-02-19 18:10:08','2020-02-19 00:00:00'),('Z27dPWhSq6DKvPDWiZg2','0000000220',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:30','TRNyoga','2020-02-19 18:10:30','2020-02-19 00:00:00'),('z2B4BKQANYVRnzOu4SZy','0000001067',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:02','TRNyoga','2020-02-19 18:13:02','2020-02-19 00:00:00'),('z4CyJgi4BKrT1tCLkVV','0000000165',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:23','TRNyoga','2020-02-19 18:10:23','2020-02-19 00:00:00'),('Z51D0WEslE4F5OZvX1','0000001003',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:46','TRNyoga','2020-02-19 18:12:46','2020-02-19 00:00:00'),('z5qrpMoJtOL601u7HL5T','0000000401',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:58','TRNyoga','2020-02-19 18:10:58','2020-02-19 00:00:00'),('Z5xiyf2dajdg4873W19D','0000000703',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:48','TRNyoga','2020-02-19 18:11:48','2020-02-19 00:00:00'),('z629k4AWycvoWSgBHURa','0000001150',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:19','TRNyoga','2020-02-19 18:13:19','2020-02-19 00:00:00'),('Z7EWUGbiH84w7MHHlt5o','0000000840',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:12','TRNyoga','2020-02-19 18:12:12','2020-02-19 00:00:00'),('zbhATpSq0hW7DqlYPP8','0000001191',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:27','TRNyoga','2020-02-19 18:13:27','2020-02-19 00:00:00'),('Zc09XaH8La9D6AOMceF9','0000000578',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:28','TRNyoga','2020-02-19 18:11:28','2020-02-19 00:00:00'),('zdHMNqE1QHlMqmgaMfmN','0000000450',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:07','TRNyoga','2020-02-19 18:11:07','2020-02-19 00:00:00'),('Zdv5njG0cAeAdnCWCxPC','0000000062',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:09','TRNyoga','2020-02-19 18:10:09','2020-02-19 00:00:00'),('zEIbMXOd29Dpx59i36O2','0000001151',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:20','TRNyoga','2020-02-19 18:13:20','2020-02-19 00:00:00'),('ZejAl4gnZCUUBfGfqPB1','0000000012',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:02','TRNyoga','2020-02-19 18:10:02','2020-02-19 00:00:00'),('zeOp8RP6mub2t0RObIix','0000000603',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:31','TRNyoga','2020-02-19 18:11:31','2020-02-19 00:00:00'),('ZgksbleUq4PRQjyfqVX','0000000004',1,7,'2020-09-10','2020-09-17',1,5,'2020-09-10 15:28:26','SKMK159972644556',123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:01','TRNADI','2020-09-10 15:26:53','2020-09-10 15:28:41'),('zJXLu09XzoTfufFKupr2','0000000608',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:32','TRNyoga','2020-02-19 18:11:32','2020-02-19 00:00:00'),('zLYDki7Jtd4aJQi3i0MY','0000001112',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:13:11','TRNyoga','2020-02-19 18:13:11','2020-02-19 00:00:00'),('zMSTOaUpRdoPVMkII9','0000000071',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:10','TRNyoga','2020-02-19 18:10:10','2020-02-19 00:00:00'),('Znhma7Va1TUdLvc87lhZ','0000000539',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:21','TRNyoga','2020-02-19 18:11:21','2020-02-19 00:00:00'),('ZNuGnNwN19XX7FKNmIon','0000000241',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:10:33','TRNyoga','2020-02-19 18:10:33','2020-02-19 00:00:00'),('zQUEtMQYGRJEoVzjlkO4','0000000823',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:09','TRNyoga','2020-02-19 18:12:09','2020-02-19 00:00:00'),('ZQVL77g9MnxuEYcV0Kg0','0000000420',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:01','TRNyoga','2020-02-19 18:11:01','2020-02-19 00:00:00'),('zRpBUVPR9fPCwIntLDYw','0000000883',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:19','TRNyoga','2020-02-19 18:12:19','2020-02-19 00:00:00'),('zrvPfPPIsCmerE6ZVft3','0000000591',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:30','TRNyoga','2020-02-19 18:11:30','2020-02-19 00:00:00'),('Zs2SijeM1xf2PtyJYY6s','0000000440',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:05','TRNyoga','2020-02-19 18:11:05','2020-02-19 00:00:00'),('Zs8DOsr6CxVnDxw4yPHg','0000000505',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:16','TRNyoga','2020-02-19 18:11:16','2020-02-19 00:00:00'),('zSPNOWAqZGedQrdhz5wb','0000000846',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:12:13','TRNyoga','2020-02-19 18:12:13','2020-02-19 00:00:00'),('zUeYIXm0P6EQ9a46ov4R','0000000473',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:11','TRNyoga','2020-02-19 18:11:11','2020-02-19 00:00:00'),('Zzn5mOKA4Bl9OiFOPJGc','0000000690',1,7,NULL,NULL,1,NULL,NULL,NULL,123.0000,1231.0000,0.0000,13.0000,'123141',1,'TRNyoga','2020-02-19 18:11:46','TRNyoga','2020-02-19 18:11:46','2020-02-19 00:00:00');
/*!40000 ALTER TABLE `ms_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_vouchertemplate`
--

DROP TABLE IF EXISTS `ms_vouchertemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_vouchertemplate` (
  `voucherTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `voucherTemplateName` varchar(50) NOT NULL,
  `voucherLength` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `voucherTypeID` tinyint(1) NOT NULL,
  `voucherUseTypeID` tinyint(1) NOT NULL,
  `minSalesPrice` decimal(20,4) NOT NULL,
  `minSalesUsagePrice` decimal(20,4) NOT NULL,
  `maxVoucherAmount` decimal(20,4) NOT NULL,
  `voucherAmount` decimal(20,4) NOT NULL,
  `voucherPercentage` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(200) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`voucherTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_vouchertemplate`
--

LOCK TABLES `ms_vouchertemplate` WRITE;
/*!40000 ALTER TABLE `ms_vouchertemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_vouchertemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_branchevent`
--

DROP TABLE IF EXISTS `tr_branchevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_branchevent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `eventDate` datetime NOT NULL,
  `refNum` varchar(20) NOT NULL,
  `eventSubject` varchar(50) NOT NULL,
  `eventDescription` text NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_syncDate_tr_branchevent` (`syncDate`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_branchevent`
--

LOCK TABLES `tr_branchevent` WRITE;
/*!40000 ALTER TABLE `tr_branchevent` DISABLE KEYS */;
INSERT INTO `tr_branchevent` VALUES (1,9,'2021-07-31 14:10:18','TRNWIL','SIGN IN','{\"username\":\"TRNWIL\",\"fullName\":\"William ESB\",\"branchID\":9}','TRNWIL',NULL),(2,9,'2021-07-31 14:10:25','TRNWIL','SIGN OUT','{\"username\":\"TRNWIL\",\"fullName\":\"William ESB\",\"branchID\":9}','TRNWIL',NULL),(3,9,'2021-07-31 14:10:31','TRNTYA','SIGN IN','{\"username\":\"TRNTYA\",\"fullName\":\"Chintya\",\"branchID\":9}','TRNTYA',NULL),(4,9,'2021-07-31 14:10:35','TRNTYA','SIGN OUT','{\"username\":\"TRNTYA\",\"fullName\":\"Chintya\",\"branchID\":9}','TRNTYA',NULL),(5,9,'2021-07-31 14:11:50','TRNWIL','SIGN IN','{\"username\":\"TRNWIL\",\"fullName\":\"William ESB\",\"branchID\":9}','TRNWIL',NULL),(6,9,'2021-07-31 14:12:09','1','Shift In','{\"shiftInTotal\":200000,\"shiftInUsername\":\"TRNWIL\"}','TRNWIL',NULL),(7,9,'2021-07-31 14:12:36','SETK162771555617','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK162771555617\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNWIL','2021-07-31 14:12:36'),(8,9,'2021-07-31 14:12:36','SETK162771555617','Save Order','{\"tableID\":0,\"salesNum\":\"SETK162771555617\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":1,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":16500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":1,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":8800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNWIL','2021-07-31 14:12:36'),(9,9,'2021-07-31 14:12:46','SETK162771555617','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK162771555617\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 02\",\"paymentMethodID\":4,\"paymentMethodTypeID\":1,\"paymentMethodName\":\"CASH\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":25300,\"fullPaymentAmount\":25300}]}','TRNWIL','2021-07-31 14:12:46'),(10,9,'2021-07-31 14:13:02','SETK162771558207','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK162771558207\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNWIL','2021-07-31 14:13:02'),(11,9,'2021-07-31 14:13:02','SETK162771558207','Save Order','{\"tableID\":0,\"salesNum\":\"SETK162771558207\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":1,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":8800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":341,\"menuName\":\"Es teh susu\",\"menuShortName\":\"Es teh susu\",\"qty\":1,\"price\":\"10000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":11000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNWIL','2021-07-31 14:13:02'),(12,9,'2021-07-31 14:13:29','SETK162771558207','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK162771558207\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 06\",\"paymentMethodID\":9,\"paymentMethodTypeID\":2,\"paymentMethodName\":\"OVO\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":19800,\"fullPaymentAmount\":19800}]}','TRNWIL','2021-07-31 14:13:29'),(13,9,'2021-07-31 14:13:40','SETK162771562013','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK162771562013\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNWIL','2021-07-31 14:13:40'),(14,9,'2021-07-31 14:13:40','SETK162771562013','Save Order','{\"tableID\":0,\"salesNum\":\"SETK162771562013\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":2,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":1,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":16500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNWIL','2021-07-31 14:13:40'),(15,9,'2021-07-31 14:13:51','SETK162771562013','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK162771562013\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 06\",\"paymentMethodID\":6,\"paymentMethodTypeID\":2,\"paymentMethodName\":\"DEBIT BCA\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":34100,\"fullPaymentAmount\":34100}]}','TRNWIL','2021-07-31 14:13:51'),(16,9,'2021-07-31 14:30:15','TRNWIL','SIGN OUT','{\"username\":\"TRNWIL\",\"fullName\":\"William ESB\",\"branchID\":9}','TRNWIL',NULL),(17,9,'2021-07-31 14:30:22','TRNWIL','SIGN IN','{\"username\":\"TRNWIL\",\"fullName\":\"William ESB\",\"branchID\":9}','TRNWIL',NULL),(18,9,'2021-07-31 14:31:33','SETK162771669305','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK162771669305\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNWIL','2021-07-31 14:31:33'),(19,9,'2021-07-31 14:31:33','SETK162771669305','Save Order','{\"tableID\":0,\"salesNum\":\"SETK162771669305\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":1,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":8800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNWIL','2021-07-31 14:31:33'),(20,9,'2021-07-31 14:31:39','SETK162771669305','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK162771669305\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 02\",\"paymentMethodID\":4,\"paymentMethodTypeID\":1,\"paymentMethodName\":\"CASH\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":100000,\"fullPaymentAmount\":100000}]}','TRNWIL','2021-07-31 14:31:39'),(21,9,'2021-07-31 14:31:53','SETK162771671393','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK162771671393\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNWIL','2021-07-31 14:31:53'),(22,9,'2021-07-31 14:31:54','SETK162771671393','Save Order','{\"tableID\":0,\"salesNum\":\"SETK162771671393\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":341,\"menuName\":\"Es teh susu\",\"menuShortName\":\"Es teh susu\",\"qty\":1,\"price\":\"10000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":11000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":342,\"menuName\":\"Es teh taro\",\"menuShortName\":\"Es teh taro\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":3,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":345,\"menuName\":\"Brown sugar\",\"menuShortName\":\"Brown sugar\",\"qty\":1,\"price\":\"18000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":19800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNWIL','2021-07-31 14:31:54'),(23,9,'2021-07-31 14:32:02','SETK162771671393','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK162771671393\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 02\",\"paymentMethodID\":4,\"paymentMethodTypeID\":1,\"paymentMethodName\":\"CASH\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":50000,\"fullPaymentAmount\":50000}]}','TRNWIL','2021-07-31 14:32:02'),(24,9,'2021-07-31 14:32:12','SETK162771673219','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK162771673219\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":2}','TRNWIL','2021-07-31 14:32:12'),(25,9,'2021-07-31 14:32:12','SETK162771673219','Save Order','{\"tableID\":0,\"salesNum\":\"SETK162771673219\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":1,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":8800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":341,\"menuName\":\"Es teh susu\",\"menuShortName\":\"Es teh susu\",\"qty\":1,\"price\":\"10000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":11000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNWIL','2021-07-31 14:32:12'),(26,9,'2021-07-31 14:32:22','SETK162771673219','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK162771673219\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 06\",\"paymentMethodID\":9,\"paymentMethodTypeID\":2,\"paymentMethodName\":\"OVO\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":19800,\"fullPaymentAmount\":19800}]}','TRNWIL','2021-07-31 14:32:22'),(27,9,'2021-08-18 16:10:26','TRNWIL','SIGN IN','{\"username\":\"TRNWIL\",\"fullName\":\"William ESB\",\"branchID\":9}','TRNWIL',NULL),(28,9,'2021-08-18 16:10:44','SETK162927784497','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK162927784497\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNWIL','2021-08-18 16:10:44'),(29,9,'2021-08-18 16:10:45','SETK162927784497','Save Order','{\"tableID\":0,\"salesNum\":\"SETK162927784497\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":8,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":132000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNWIL','2021-08-18 16:10:45'),(30,9,'2021-08-18 16:11:00','SETK162927784497','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK162927784497\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 02\",\"paymentMethodID\":4,\"paymentMethodTypeID\":1,\"paymentMethodName\":\"CASH\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":132000,\"fullPaymentAmount\":132000}]}','TRNWIL','2021-08-18 16:11:00'),(31,9,'2021-08-18 16:17:07','TRNWIL','SIGN OUT','{\"username\":\"TRNWIL\",\"fullName\":\"William ESB\",\"branchID\":9}','TRNWIL',NULL),(32,9,'2021-10-08 10:46:06','TRNADMIN','SIGN IN','{\"username\":\"TRNADMIN\",\"fullName\":\"ADMIN\",\"branchID\":9}','TRNADMIN',NULL),(33,9,'2021-10-08 10:47:58','SETK163366487828','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163366487828\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNADMIN','2021-10-08 10:47:58'),(34,9,'2021-10-08 10:47:58','SETK163366487828','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163366487828\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":4,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":66000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNADMIN','2021-10-08 10:47:58'),(35,9,'2021-10-08 10:48:09','SETK163366487828','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163366487828\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 02\",\"paymentMethodID\":4,\"paymentMethodTypeID\":1,\"paymentMethodName\":\"CASH\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":100000,\"fullPaymentAmount\":100000}]}','TRNADMIN','2021-10-08 10:48:09'),(36,9,'2021-10-08 10:48:50','SETK163366493047','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163366493047\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNADMIN','2021-10-08 10:48:50'),(37,9,'2021-10-08 10:48:50','SETK163366493047','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163366493047\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":344,\"menuName\":\"Ovaltine\",\"menuShortName\":\"Ovaltine\",\"qty\":1,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":354,\"menuName\":\"Add Sea Salt Cream Tea\",\"menuShortName\":\"Add Sea Salt Cream Tea\",\"qty\":1,\"price\":\"3000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":3300,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":3,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":1,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":16500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":4,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":343,\"menuName\":\"Milo\",\"menuShortName\":\"Milo\",\"qty\":1,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNADMIN','2021-10-08 10:48:50'),(38,9,'2021-10-08 10:48:58','SETK163366493047','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163366493047\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 06\",\"paymentMethodID\":6,\"paymentMethodTypeID\":2,\"paymentMethodName\":\"DEBIT BCA\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":55000,\"fullPaymentAmount\":55000}]}','TRNADMIN','2021-10-08 10:48:58'),(39,9,'2021-10-08 10:49:12','SETK163366495287','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163366495287\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNADMIN','2021-10-08 10:49:12'),(40,9,'2021-10-08 10:49:12','SETK163366495287','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163366495287\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":347,\"menuName\":\"Es teh lemon\",\"menuShortName\":\"Es teh lemon\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":338,\"menuName\":\"Es thai tea\",\"menuShortName\":\"Es thai tea\",\"qty\":1,\"price\":\"5000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":5500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":8,\"menuID\":337,\"menuName\":\"Large\",\"menuShortName\":\"Large\",\"qty\":1,\"price\":5000,\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":5500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}],\"extras\":[]}]}','TRNADMIN','2021-10-08 10:49:12'),(41,9,'2021-10-08 10:49:19','SETK163366495287','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163366495287\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 06\",\"paymentMethodID\":9,\"paymentMethodTypeID\":2,\"paymentMethodName\":\"OVO\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":24200,\"fullPaymentAmount\":24200}]}','TRNADMIN','2021-10-08 10:49:19'),(42,9,'2021-10-08 11:10:49','TRNADMIN','SIGN OUT','{\"username\":\"TRNADMIN\",\"fullName\":\"ADMIN\",\"branchID\":9}','TRNADMIN',NULL),(43,9,'2021-10-08 11:10:58','TRNADMIN','SIGN IN','{\"username\":\"TRNADMIN\",\"fullName\":\"ADMIN\",\"branchID\":9}','TRNADMIN',NULL),(44,9,'2021-10-08 11:11:33','1','End Shift','{\"shiftDetailID\":1,\"shiftUsername\":\"TRNADMIN\"}','TRNADMIN',NULL),(45,9,'2021-10-08 11:11:33','1','Shift Out','{\"systemCashReceivedTotal\":276100,\"shiftOutTotal\":200000,\"shiftOutNotes\":\"\",\"shiftOutUsername\":\"TRNADMIN\",\"documentPrinted\":[]}','TRNADMIN',NULL),(46,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushSales\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(47,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushBranchMenuTransactionEndDay\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(48,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushSelfOrderCampaignDetail\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(49,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushBranchMenuTransaction\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(50,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushShift\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(51,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushBranchEvent\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(52,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushMemberDeposit\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(53,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushSelfOrderCampaignDetail\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(54,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushBranchMenu\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(55,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushStation\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(56,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushDepositWithdrawal\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(57,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushVoucher\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(58,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushMember\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(59,9,'2021-10-08 11:11:33','-','Push Data','{\"syncType\":\"pushPaymentMethod\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:33'),(60,9,'2021-10-08 11:11:34','-','Push Data','{\"syncType\":\"pushDeviceTransaction\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:34'),(61,9,'2021-10-08 11:11:34','-','Push Data','{\"syncType\":\"pushPosVersion\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-08 11:11:34'),(62,9,'2021-10-08 11:11:46','2','Shift In','{\"shiftInTotal\":200000,\"shiftInUsername\":\"TRNADMIN\"}','TRNADMIN',NULL),(63,9,'2021-10-08 11:11:56','SETK163366631627','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163366631627\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNADMIN','2021-10-08 11:11:56'),(64,9,'2021-10-08 11:11:56','SETK163366631627','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163366631627\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":343,\"menuName\":\"Milo\",\"menuShortName\":\"Milo\",\"qty\":1,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":1,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":16500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":3,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":1,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":8800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNADMIN','2021-10-08 11:11:56'),(65,9,'2021-10-08 11:12:03','SETK163366631627','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163366631627\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 02\",\"paymentMethodID\":4,\"paymentMethodTypeID\":1,\"paymentMethodName\":\"CASH\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":100000,\"fullPaymentAmount\":100000}]}','TRNADMIN','2021-10-08 11:12:03'),(66,9,'2021-10-08 11:14:41','SETK163366648128','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163366648128\",\"visitPurposeID\":3,\"visitPurposeName\":\"ONLINE ORDER\",\"paxTotal\":1}','TRNADMIN','2021-10-08 11:14:41'),(67,9,'2021-10-08 11:14:41','SETK163366648128','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163366648128\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":345,\"menuName\":\"Brown sugar\",\"menuShortName\":\"Brown sugar\",\"qty\":1,\"price\":\"20000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":22000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":1,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":16500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":3,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":338,\"menuName\":\"Es thai tea\",\"menuShortName\":\"Es thai tea\",\"qty\":1,\"price\":\"5000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":5500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":8,\"menuID\":336,\"menuName\":\"Medium\",\"menuShortName\":\"Medium\",\"qty\":1,\"price\":0,\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":0,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}],\"extras\":[]}]}','TRNADMIN','2021-10-08 11:14:41'),(68,9,'2021-10-08 11:14:47','SETK163366648128','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163366648128\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 06\",\"paymentMethodID\":6,\"paymentMethodTypeID\":2,\"paymentMethodName\":\"DEBIT BCA\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":44000,\"fullPaymentAmount\":44000}]}','TRNADMIN','2021-10-08 11:14:47'),(69,9,'2021-10-08 11:15:05','SETK163366650508','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163366650508\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNADMIN','2021-10-08 11:15:05'),(70,9,'2021-10-08 11:15:05','SETK163366650508','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163366650508\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":1,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":8800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":354,\"menuName\":\"Add Sea Salt Cream Tea\",\"menuShortName\":\"Add Sea Salt Cream Tea\",\"qty\":1,\"price\":\"3000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":3300,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNADMIN','2021-10-08 11:15:05'),(71,9,'2021-10-08 11:15:13','SETK163366650508','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163366650508\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 02\",\"paymentMethodID\":4,\"paymentMethodTypeID\":1,\"paymentMethodName\":\"CASH\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":15000,\"fullPaymentAmount\":15000}]}','TRNADMIN','2021-10-08 11:15:13'),(72,9,'2021-10-08 11:20:16','SETK163366681654','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163366681654\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNADMIN','2021-10-08 11:20:16'),(73,9,'2021-10-08 11:20:16','SETK163366681654','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163366681654\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":1,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":16500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":344,\"menuName\":\"Ovaltine\",\"menuShortName\":\"Ovaltine\",\"qty\":1,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":3,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":343,\"menuName\":\"Milo\",\"menuShortName\":\"Milo\",\"qty\":1,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":4,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":345,\"menuName\":\"Brown sugar\",\"menuShortName\":\"Brown sugar\",\"qty\":1,\"price\":\"18000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":19800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":5,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":342,\"menuName\":\"Es teh taro\",\"menuShortName\":\"Es teh taro\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNADMIN','2021-10-08 11:20:16'),(74,9,'2021-10-08 11:20:24','SETK163366681654','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163366681654\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 06\",\"paymentMethodID\":6,\"paymentMethodTypeID\":2,\"paymentMethodName\":\"DEBIT BCA\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":84700,\"fullPaymentAmount\":84700}]}','TRNADMIN','2021-10-08 11:20:24'),(75,9,'2021-10-08 11:20:32','SETK163366683252','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163366683252\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNADMIN','2021-10-08 11:20:32'),(76,9,'2021-10-08 11:20:32','SETK163366683252','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163366683252\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":1,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":16500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":1,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":8800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":3,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":344,\"menuName\":\"Ovaltine\",\"menuShortName\":\"Ovaltine\",\"qty\":1,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":4,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":343,\"menuName\":\"Milo\",\"menuShortName\":\"Milo\",\"qty\":1,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":5,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":341,\"menuName\":\"Es teh susu\",\"menuShortName\":\"Es teh susu\",\"qty\":1,\"price\":\"10000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":11000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNADMIN','2021-10-08 11:20:32'),(77,9,'2021-10-08 11:20:39','SETK163366683252','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163366683252\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 06\",\"paymentMethodID\":9,\"paymentMethodTypeID\":2,\"paymentMethodName\":\"OVO\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":71500,\"fullPaymentAmount\":71500}]}','TRNADMIN','2021-10-08 11:20:39'),(78,9,'2021-10-08 11:23:59','SETK163366703950','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163366703950\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNADMIN','2021-10-08 11:23:59'),(79,9,'2021-10-08 11:23:59','SETK163366703950','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163366703950\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":1,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":8800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":1,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":16500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNADMIN','2021-10-08 11:23:59'),(80,9,'2021-10-08 11:24:24','SETK163366703950','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163366703950\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 02\",\"paymentMethodID\":4,\"paymentMethodTypeID\":1,\"paymentMethodName\":\"CASH\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":30000,\"fullPaymentAmount\":30000}]}','TRNADMIN','2021-10-08 11:24:24'),(81,9,'2021-10-09 09:23:57','2','End Shift','{\"shiftDetailID\":2,\"shiftUsername\":\"TRNADMIN\"}','TRNADMIN',NULL),(82,9,'2021-10-09 09:23:57','2','Shift Out','{\"systemCashReceivedTotal\":146300,\"shiftOutTotal\":200000,\"shiftOutNotes\":\"\",\"shiftOutUsername\":\"TRNADMIN\",\"documentPrinted\":[]}','TRNADMIN',NULL),(83,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushSales\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(84,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushBranchMenuTransactionEndDay\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(85,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushSelfOrderCampaignDetail\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(86,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushBranchMenuTransaction\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(87,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushShift\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(88,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushBranchEvent\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(89,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushMemberDeposit\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(90,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushBranchMenu\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(91,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushSelfOrderCampaignDetail\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(92,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushStation\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(93,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushDepositWithdrawal\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(94,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushVoucher\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(95,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushMember\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(96,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushPaymentMethod\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(97,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushDeviceTransaction\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(98,9,'2021-10-09 09:23:57','-','Push Data','{\"syncType\":\"pushPosVersion\",\"apiUrl\":false,\"branchID\":\"9\"}','TRNADMIN','2021-10-09 09:23:57'),(99,9,'2021-10-09 09:24:08','3','Shift In','{\"shiftInTotal\":200000,\"shiftInUsername\":\"TRNADMIN\"}','TRNADMIN',NULL),(100,9,'2021-10-09 09:24:17','SETK163374625754','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163374625754\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNADMIN','2021-10-09 09:24:17'),(101,9,'2021-10-09 09:24:17','SETK163374625754','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163374625754\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":1,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":16500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":1,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":8800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":3,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":341,\"menuName\":\"Es teh susu\",\"menuShortName\":\"Es teh susu\",\"qty\":1,\"price\":\"10000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":11000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":4,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":342,\"menuName\":\"Es teh taro\",\"menuShortName\":\"Es teh taro\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNADMIN','2021-10-09 09:24:17'),(102,9,'2021-10-09 09:24:25','SETK163374625754','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163374625754\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 02\",\"paymentMethodID\":4,\"paymentMethodTypeID\":1,\"paymentMethodName\":\"CASH\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":50000,\"fullPaymentAmount\":50000}]}','TRNADMIN','2021-10-09 09:24:25'),(103,9,'2021-10-09 09:51:40','SETK163374790050','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163374790050\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":2}','TRNADMIN','2021-10-09 09:51:40'),(104,9,'2021-10-09 09:51:40','SETK163374790050','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163374790050\",\"additionalInfo\":\"hhh\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":1,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":16500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":1,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":8800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":3,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":341,\"menuName\":\"Es teh susu\",\"menuShortName\":\"Es teh susu\",\"qty\":1,\"price\":\"10000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":11000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":4,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":342,\"menuName\":\"Es teh taro\",\"menuShortName\":\"Es teh taro\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":5,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":346,\"menuName\":\"Es teh leci\",\"menuShortName\":\"Es teh leci\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":6,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":345,\"menuName\":\"Brown sugar\",\"menuShortName\":\"Brown sugar\",\"qty\":1,\"price\":\"18000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":19800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":7,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":344,\"menuName\":\"Ovaltine\",\"menuShortName\":\"Ovaltine\",\"qty\":1,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":8,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":343,\"menuName\":\"Milo\",\"menuShortName\":\"Milo\",\"qty\":1,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":9,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":347,\"menuName\":\"Es teh lemon\",\"menuShortName\":\"Es teh lemon\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":10,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":338,\"menuName\":\"Es thai tea\",\"menuShortName\":\"Es thai tea\",\"qty\":1,\"price\":\"5000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":5500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":8,\"menuID\":336,\"menuName\":\"Medium\",\"menuShortName\":\"Medium\",\"qty\":1,\"price\":0,\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":0,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}],\"extras\":[]}]}','TRNADMIN','2021-10-09 09:51:40'),(105,9,'2021-10-09 09:51:50','SETK163374790050','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163374790050\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 02\",\"paymentMethodID\":4,\"paymentMethodTypeID\":1,\"paymentMethodName\":\"CASH\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":200000,\"fullPaymentAmount\":200000}]}','TRNADMIN','2021-10-09 09:51:50'),(106,9,'2021-10-09 09:52:09','SETK163374792969','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163374792969\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":3}','TRNADMIN','2021-10-09 09:52:09'),(107,9,'2021-10-09 09:52:09','SETK163374792969','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163374792969\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":353,\"menuName\":\"Add Cincau\",\"menuShortName\":\"Add Cincau\",\"qty\":1,\"price\":\"3000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":3300,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":354,\"menuName\":\"Add Sea Salt Cream Tea\",\"menuShortName\":\"Add Sea Salt Cream Tea\",\"qty\":1,\"price\":\"3000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":3300,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":3,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":342,\"menuName\":\"Es teh taro\",\"menuShortName\":\"Es teh taro\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":4,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":346,\"menuName\":\"Es teh leci\",\"menuShortName\":\"Es teh leci\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":5,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":341,\"menuName\":\"Es teh susu\",\"menuShortName\":\"Es teh susu\",\"qty\":1,\"price\":\"10000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":11000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":6,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":345,\"menuName\":\"Brown sugar\",\"menuShortName\":\"Brown sugar\",\"qty\":1,\"price\":\"18000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":19800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":7,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":1,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":8800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":8,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":344,\"menuName\":\"Ovaltine\",\"menuShortName\":\"Ovaltine\",\"qty\":1,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":9,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":338,\"menuName\":\"Es thai tea\",\"menuShortName\":\"Es thai tea\",\"qty\":1,\"price\":\"5000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":5500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":8,\"menuID\":337,\"menuName\":\"Large\",\"menuShortName\":\"Large\",\"qty\":1,\"price\":5000,\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":5500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}],\"extras\":[]},{\"ID\":10,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":347,\"menuName\":\"Es teh lemon\",\"menuShortName\":\"Es teh lemon\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":11,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":343,\"menuName\":\"Milo\",\"menuShortName\":\"Milo\",\"qty\":1,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":12,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":1,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":16500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNADMIN','2021-10-09 09:52:09'),(108,9,'2021-10-09 09:52:21','SETK163374792969','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163374792969\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 06\",\"paymentMethodID\":6,\"paymentMethodTypeID\":2,\"paymentMethodName\":\"DEBIT BCA\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":148500,\"fullPaymentAmount\":148500}]}','TRNADMIN','2021-10-09 09:52:21'),(109,9,'2021-10-09 09:52:45','SETK163374796585','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163374796585\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNADMIN','2021-10-09 09:52:45'),(110,9,'2021-10-09 09:52:45','SETK163374796585','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163374796585\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":342,\"menuName\":\"Es teh taro\",\"menuShortName\":\"Es teh taro\",\"qty\":4,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":52800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":346,\"menuName\":\"Es teh leci\",\"menuShortName\":\"Es teh leci\",\"qty\":2,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":26400,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":3,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":341,\"menuName\":\"Es teh susu\",\"menuShortName\":\"Es teh susu\",\"qty\":3,\"price\":\"10000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":33000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":4,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":345,\"menuName\":\"Brown sugar\",\"menuShortName\":\"Brown sugar\",\"qty\":6,\"price\":\"18000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":118800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":5,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":340,\"menuName\":\"Es teh original\",\"menuShortName\":\"Es teh original\",\"qty\":4,\"price\":\"8000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":35200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":6,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":344,\"menuName\":\"Ovaltine\",\"menuShortName\":\"Ovaltine\",\"qty\":3,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":52800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":7,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":338,\"menuName\":\"Es thai tea\",\"menuShortName\":\"Es thai tea\",\"qty\":1,\"price\":\"5000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":5500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":8,\"menuID\":336,\"menuName\":\"Medium\",\"menuShortName\":\"Medium\",\"qty\":1,\"price\":0,\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":0,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}],\"extras\":[]},{\"ID\":8,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":4,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":66000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":9,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":343,\"menuName\":\"Milo\",\"menuShortName\":\"Milo\",\"qty\":1,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":17600,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":10,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":347,\"menuName\":\"Es teh lemon\",\"menuShortName\":\"Es teh lemon\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNADMIN','2021-10-09 09:52:45'),(111,9,'2021-10-09 09:52:52','SETK163374796585','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163374796585\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 06\",\"paymentMethodID\":9,\"paymentMethodTypeID\":2,\"paymentMethodName\":\"OVO\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":421300,\"fullPaymentAmount\":421300}]}','TRNADMIN','2021-10-09 09:52:52'),(112,9,'2021-10-09 09:53:00','SETK163374798038','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163374798038\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":3}','TRNADMIN','2021-10-09 09:53:00'),(113,9,'2021-10-09 09:53:00','SETK163374798038','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163374798038\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":1,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":16500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}]}','TRNADMIN','2021-10-09 09:53:00'),(114,9,'2021-10-09 09:53:07','SETK163374798038','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163374798038\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 06\",\"paymentMethodID\":10,\"paymentMethodTypeID\":2,\"paymentMethodName\":\"DANA\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":16500,\"fullPaymentAmount\":16500}]}','TRNADMIN','2021-10-09 09:53:07'),(115,9,'2021-10-09 09:53:30','SETK163374801095','Create Take Away','{\"tableID\":0,\"salesNum\":\"SETK163374801095\",\"visitPurposeID\":1,\"visitPurposeName\":\"Takeaway\",\"paxTotal\":1}','TRNADMIN','2021-10-09 09:53:30'),(116,9,'2021-10-09 09:53:31','SETK163374801095','Save Order','{\"tableID\":0,\"salesNum\":\"SETK163374801095\",\"additionalInfo\":\"\",\"batchID\":1,\"salesMenu\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":339,\"menuName\":\"Es teh red relvet\",\"menuShortName\":\"Es teh red relvet\",\"qty\":4,\"price\":\"15000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":66000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":2,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":343,\"menuName\":\"Milo\",\"menuShortName\":\"Milo\",\"qty\":5,\"price\":\"16000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":88000,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":3,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":346,\"menuName\":\"Es teh leci\",\"menuShortName\":\"Es teh leci\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":4,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":342,\"menuName\":\"Es teh taro\",\"menuShortName\":\"Es teh taro\",\"qty\":1,\"price\":\"12000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":13200,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":5,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":345,\"menuName\":\"Brown sugar\",\"menuShortName\":\"Brown sugar\",\"qty\":1,\"price\":\"18000\",\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":19800,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]},{\"ID\":6,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":0,\"menuID\":338,\"menuName\":\"Es thai tea\",\"menuShortName\":\"Es thai tea\",\"qty\":1,\"price\":\"5000\",\"discount\":20,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":4500,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":27,\"promotionDetailName\":\"Disc 20%\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[{\"ID\":1,\"localID\":0,\"batchID\":0,\"menuRefID\":0,\"menuGroupID\":8,\"menuID\":336,\"menuName\":\"Medium\",\"menuShortName\":\"Medium\",\"qty\":1,\"price\":0,\"discount\":0,\"otherTax\":0,\"vat\":10,\"otherTaxOnVat\":1,\"total\":0,\"notes\":\"\",\"statusID\":1,\"statusName\":\"New\",\"promotionDetailID\":0,\"promotionDetailName\":\"\",\"menuPromotionID\":0,\"cancelNotes\":\"\",\"packages\":[],\"extras\":[]}],\"extras\":[]}]}','TRNADMIN','2021-10-09 09:53:31'),(117,9,'2021-10-09 09:53:43','SETK163374801095','Save Payment','{\"tableID\":0,\"tableName\":\"\",\"salesNum\":\"SETK163374801095\",\"salesVoucher\":[],\"salesPayment\":[{\"ID\":1,\"coaNo\":\"1 1 01 06\",\"paymentMethodID\":6,\"paymentMethodTypeID\":2,\"paymentMethodName\":\"DEBIT BCA\",\"paymentMethodCode\":\"\",\"paymentMethodChild\":\"\",\"flagAuthorization\":0,\"voucherTypeID\":null,\"voucherSourceID\":null,\"fixedAmount\":null,\"minimumPaymentAmount\":0,\"posExternalPaymentID\":null,\"edcWssUrl\":null,\"edcPort\":null,\"flagUseEmployeeLimit\":0,\"flagEdcActive\":0,\"paymentAmount\":204600,\"fullPaymentAmount\":204600}]}','TRNADMIN','2021-10-09 09:53:43');
/*!40000 ALTER TABLE `tr_branchevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_branchmenutransaction`
--

DROP TABLE IF EXISTS `tr_branchmenutransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_branchmenutransaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `transactionDate` datetime NOT NULL,
  `branchID` int(11) NOT NULL,
  `salesNum` varchar(20) NOT NULL,
  `menuID` int(11) NOT NULL,
  `qty` decimal(20,4) DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_branchmenutransaction`
--

LOCK TABLES `tr_branchmenutransaction` WRITE;
/*!40000 ALTER TABLE `tr_branchmenutransaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_branchmenutransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_depositwithdrawaldetail`
--

DROP TABLE IF EXISTS `tr_depositwithdrawaldetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_depositwithdrawaldetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `depositWithdrawalNum` varchar(20) NOT NULL,
  `memberDepositNum` varchar(20) NOT NULL,
  `withdrawalTotal` decimal(20,4) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_depositwithdrawaldetail`
--

LOCK TABLES `tr_depositwithdrawaldetail` WRITE;
/*!40000 ALTER TABLE `tr_depositwithdrawaldetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_depositwithdrawaldetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_depositwithdrawalhead`
--

DROP TABLE IF EXISTS `tr_depositwithdrawalhead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_depositwithdrawalhead` (
  `depositWithdrawalNum` varchar(20) NOT NULL,
  `depositWithdrawalDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `memberCode` varchar(20) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `withdrawalTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(100) DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`depositWithdrawalNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_depositwithdrawalhead`
--

LOCK TABLES `tr_depositwithdrawalhead` WRITE;
/*!40000 ALTER TABLE `tr_depositwithdrawalhead` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_depositwithdrawalhead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_devicetransaction`
--

DROP TABLE IF EXISTS `tr_devicetransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_devicetransaction` (
  `transactionDate` date NOT NULL,
  `deviceMacAddress` varchar(50) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`transactionDate`,`deviceMacAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_devicetransaction`
--

LOCK TABLES `tr_devicetransaction` WRITE;
/*!40000 ALTER TABLE `tr_devicetransaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_devicetransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_memberdeposit`
--

DROP TABLE IF EXISTS `tr_memberdeposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_memberdeposit` (
  `memberDepositNum` varchar(20) NOT NULL,
  `memberDepositDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `memberCode` varchar(20) DEFAULT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `depositTotal` decimal(20,4) NOT NULL,
  `usedDepositTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(100) DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`memberDepositNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_memberdeposit`
--

LOCK TABLES `tr_memberdeposit` WRITE;
/*!40000 ALTER TABLE `tr_memberdeposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_memberdeposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_notification`
--

DROP TABLE IF EXISTS `tr_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_notification` (
  `tableID` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`tableID`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_notification`
--

LOCK TABLES `tr_notification` WRITE;
/*!40000 ALTER TABLE `tr_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_questionanswer`
--

DROP TABLE IF EXISTS `tr_questionanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_questionanswer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `salesNum` varchar(20) NOT NULL,
  `questionID` int(11) NOT NULL,
  `answerText` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_questionanswer`
--

LOCK TABLES `tr_questionanswer` WRITE;
/*!40000 ALTER TABLE `tr_questionanswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_questionanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_queue`
--

DROP TABLE IF EXISTS `tr_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_queue` (
  `id` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_queue`
--

LOCK TABLES `tr_queue` WRITE;
/*!40000 ALTER TABLE `tr_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_receipttextdetail`
--

DROP TABLE IF EXISTS `tr_receipttextdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_receipttextdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `receiptTextID` int(11) NOT NULL,
  `receiptTextDesc` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_receipttextdetail`
--

LOCK TABLES `tr_receipttextdetail` WRITE;
/*!40000 ALTER TABLE `tr_receipttextdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_receipttextdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_receipttexthead`
--

DROP TABLE IF EXISTS `tr_receipttexthead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_receipttexthead` (
  `receiptTextID` int(11) NOT NULL AUTO_INCREMENT,
  `notes` varchar(100) NOT NULL,
  `minimumSalesTotal` decimal(20,4) NOT NULL,
  `flagMultiplier` tinyint(1) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`receiptTextID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_receipttexthead`
--

LOCK TABLES `tr_receipttexthead` WRITE;
/*!40000 ALTER TABLE `tr_receipttexthead` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_receipttexthead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesdepositwithdrawal`
--

DROP TABLE IF EXISTS `tr_salesdepositwithdrawal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesdepositwithdrawal` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(20) NOT NULL,
  `memberDepositNum` varchar(20) NOT NULL,
  `paymentTotal` decimal(20,4) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesdepositwithdrawal`
--

LOCK TABLES `tr_salesdepositwithdrawal` WRITE;
/*!40000 ALTER TABLE `tr_salesdepositwithdrawal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_salesdepositwithdrawal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_saleshead`
--

DROP TABLE IF EXISTS `tr_saleshead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_saleshead` (
  `salesNum` varchar(20) NOT NULL,
  `billNum` varchar(20) DEFAULT NULL,
  `queueNum` varchar(10) DEFAULT NULL,
  `salesDate` date NOT NULL,
  `salesDateIn` datetime NOT NULL,
  `orderTimeOut` datetime DEFAULT NULL,
  `salesDateOut` datetime DEFAULT NULL,
  `branchID` int(11) NOT NULL,
  `memberID` int(11) DEFAULT NULL,
  `employeeCode` varchar(50) DEFAULT NULL,
  `memberCode` varchar(20) DEFAULT NULL,
  `tableID` int(11) NOT NULL,
  `visitPurposeID` int(11) NOT NULL,
  `visitorTypeID` int(11) DEFAULT NULL,
  `paxTotal` int(11) NOT NULL,
  `subtotal` decimal(20,4) NOT NULL,
  `discountTotal` decimal(20,4) NOT NULL,
  `menuDiscountTotal` decimal(20,4) NOT NULL,
  `promotionDiscount` decimal(20,4) NOT NULL,
  `voucherDiscountTotal` decimal(20,4) DEFAULT NULL,
  `otherTaxTotal` decimal(20,4) NOT NULL,
  `vatTotal` decimal(20,4) NOT NULL,
  `deliveryCost` decimal(20,4) DEFAULT NULL,
  `orderFee` decimal(20,4) DEFAULT NULL,
  `grandTotal` decimal(20,4) NOT NULL,
  `voucherTotal` decimal(20,4) NOT NULL,
  `roundingTotal` decimal(20,4) DEFAULT NULL,
  `paymentTotal` decimal(20,4) NOT NULL,
  `billingPrintCount` int(11) NOT NULL,
  `paymentPrintCount` int(11) NOT NULL,
  `additionalInfo` varchar(200) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `promotionID` int(11) DEFAULT NULL,
  `flagInclusive` int(1) DEFAULT '0',
  `lockTable` tinyint(2) DEFAULT NULL,
  `transactionModeID` int(11) DEFAULT NULL,
  `externalMembershipTypeID` varchar(20) DEFAULT NULL,
  `flagExternalAPI` tinyint(1) DEFAULT NULL,
  `flagExternalMemberID` varchar(50) DEFAULT NULL,
  `flagExternalMemberPhone` varchar(20) DEFAULT NULL,
  `flagExternalCardID` varchar(50) DEFAULT NULL,
  `externalTransID` varchar(50) DEFAULT NULL,
  `externalCancelTransID` varchar(50) DEFAULT NULL,
  `terminalID` varchar(50) DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) DEFAULT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`salesNum`),
  KEY `idx_saleshead_statusID` (`statusID`),
  KEY `idx_saleshead_salesDateIn` (`salesDateIn`),
  KEY `idx_saleshead_salesDateOut` (`salesDateOut`),
  KEY `idx_saleshead_tableID` (`tableID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_saleshead`
--

LOCK TABLES `tr_saleshead` WRITE;
/*!40000 ALTER TABLE `tr_saleshead` DISABLE KEYS */;
INSERT INTO `tr_saleshead` VALUES ('SETK162771555617','ETK202107310001','1','2021-07-31','2021-07-31 14:12:36',NULL,'2021-07-31 14:12:46',9,0,'','',0,1,0,1,23000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,2300.0000,0.0000,0.0000,25300.0000,0.0000,0.0000,25300.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNWIL','TRNWIL','2021-07-31 14:12:46',NULL),('SETK162771558207','ETK202107310002','2','2021-07-31','2021-07-31 14:13:02',NULL,'2021-07-31 14:13:29',9,0,'','',0,1,0,1,18000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1800.0000,0.0000,0.0000,19800.0000,0.0000,0.0000,19800.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNWIL','TRNWIL','2021-07-31 14:13:29',NULL),('SETK162771562013','ETK202107310003','3','2021-07-31','2021-07-31 14:13:40',NULL,'2021-07-31 14:13:51',9,0,'','',0,1,0,1,31000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3100.0000,0.0000,0.0000,34100.0000,0.0000,0.0000,34100.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNWIL','TRNWIL','2021-07-31 14:13:51',NULL),('SETK162771669305','ETK202107310004','4','2021-07-31','2021-07-31 14:31:33',NULL,'2021-07-31 14:31:39',9,0,'','',0,1,0,1,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,800.0000,0.0000,0.0000,8800.0000,0.0000,0.0000,100000.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNWIL','TRNWIL','2021-07-31 14:31:39',NULL),('SETK162771671393','ETK202107310005','5','2021-07-31','2021-07-31 14:31:53',NULL,'2021-07-31 14:32:02',9,0,'','',0,1,0,1,40000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,4000.0000,0.0000,0.0000,44000.0000,0.0000,0.0000,50000.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNWIL','TRNWIL','2021-07-31 14:32:02',NULL),('SETK162771673219','ETK202107310006','6','2021-07-31','2021-07-31 14:32:12',NULL,'2021-07-31 14:32:22',9,0,'','',0,1,0,2,18000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1800.0000,0.0000,0.0000,19800.0000,0.0000,0.0000,19800.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNWIL','TRNWIL','2021-07-31 14:32:22',NULL),('SETK162927784497','ETK202107310007','7','2021-07-31','2021-08-18 16:10:44',NULL,'2021-08-18 16:11:00',9,0,'','',0,1,0,1,120000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,12000.0000,0.0000,0.0000,132000.0000,0.0000,0.0000,132000.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNWIL','TRNWIL','2021-08-18 16:11:00',NULL),('SETK163366487828','ETK202107310008','8','2021-07-31','2021-10-08 10:47:58',NULL,'2021-10-08 10:48:09',9,0,'','',0,1,0,1,60000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,6000.0000,0.0000,0.0000,66000.0000,0.0000,0.0000,100000.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-08 10:48:09',NULL),('SETK163366493047','ETK202107310009','9','2021-07-31','2021-10-08 10:48:50',NULL,'2021-10-08 10:48:58',9,0,'','',0,1,0,1,50000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,5000.0000,0.0000,0.0000,55000.0000,0.0000,0.0000,55000.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-08 10:48:58',NULL),('SETK163366495287','ETK202107310010','10','2021-07-31','2021-10-08 10:49:12',NULL,'2021-10-08 10:49:19',9,0,'','',0,1,0,1,22000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,2200.0000,0.0000,0.0000,24200.0000,0.0000,0.0000,24200.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-08 10:49:19',NULL),('SETK163366631627','ETK202110080001','1','2021-10-08','2021-10-08 11:11:56',NULL,'2021-10-08 11:12:03',9,0,'','',0,1,0,1,39000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3900.0000,0.0000,0.0000,42900.0000,0.0000,0.0000,100000.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-08 11:12:03',NULL),('SETK163366648128','ETK202110080002','2','2021-10-08','2021-10-08 11:14:41',NULL,'2021-10-08 11:14:47',9,0,'','',0,3,0,1,40000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,4000.0000,0.0000,0.0000,44000.0000,0.0000,0.0000,44000.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-08 11:14:47',NULL),('SETK163366650508','ETK202110080003','3','2021-10-08','2021-10-08 11:15:05',NULL,'2021-10-08 11:15:13',9,0,'','',0,1,0,1,11000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1100.0000,0.0000,0.0000,12100.0000,0.0000,0.0000,15000.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-08 11:15:13',NULL),('SETK163366681654','ETK202110080004','4','2021-10-08','2021-10-08 11:20:16',NULL,'2021-10-08 11:20:24',9,0,'','',0,1,0,1,77000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,7700.0000,0.0000,0.0000,84700.0000,0.0000,0.0000,84700.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-08 11:20:24',NULL),('SETK163366683252','ETK202110080005','5','2021-10-08','2021-10-08 11:20:32',NULL,'2021-10-08 11:20:39',9,0,'','',0,1,0,1,65000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,6500.0000,0.0000,0.0000,71500.0000,0.0000,0.0000,71500.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-08 11:20:39',NULL),('SETK163366703950','ETK202110080006','6','2021-10-08','2021-10-08 11:23:59',NULL,'2021-10-08 11:24:24',9,0,'','',0,1,0,1,23000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,2300.0000,0.0000,0.0000,25300.0000,0.0000,0.0000,30000.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-08 11:24:24',NULL),('SETK163374625754','ETK202110090001','1','2021-10-09','2021-10-09 09:24:17',NULL,'2021-10-09 09:24:25',9,0,'','',0,1,0,1,45000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,4500.0000,0.0000,0.0000,49500.0000,0.0000,0.0000,50000.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-09 09:24:25',NULL),('SETK163374790050','ETK202110090002','2','2021-10-09','2021-10-09 09:51:40',NULL,'2021-10-09 09:51:50',9,0,'','',0,1,0,2,124000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,12400.0000,0.0000,0.0000,136400.0000,0.0000,0.0000,200000.0000,0,1,'hhh','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-09 09:51:50',NULL),('SETK163374792969','ETK202110090003','3','2021-10-09','2021-10-09 09:52:09',NULL,'2021-10-09 09:52:21',9,0,'','',0,1,0,3,135000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,13500.0000,0.0000,0.0000,148500.0000,0.0000,0.0000,148500.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-09 09:52:21',NULL),('SETK163374796585','ETK202110090004','4','2021-10-09','2021-10-09 09:52:45',NULL,'2021-10-09 09:52:52',9,0,'','',0,1,0,1,383000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,38300.0000,0.0000,0.0000,421300.0000,0.0000,0.0000,421300.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-09 09:52:52',NULL),('SETK163374798038','ETK202110090005','5','2021-10-09','2021-10-09 09:53:00',NULL,'2021-10-09 09:53:07',9,0,'','',0,1,0,3,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1500.0000,0.0000,0.0000,16500.0000,0.0000,0.0000,16500.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-09 09:53:07',NULL),('SETK163374801095','ETK202110090006','6','2021-10-09','2021-10-09 09:53:30',NULL,'2021-10-09 09:53:43',9,0,'','',0,1,0,1,187000.0000,0.0000,1000.0000,0.0000,0.0000,0.0000,18600.0000,0.0000,0.0000,204600.0000,0.0000,0.0000,204600.0000,0,1,'','',0,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'',8,'TRNADMIN','TRNADMIN','2021-10-09 09:53:43',NULL);
/*!40000 ALTER TABLE `tr_saleshead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesinfo`
--

DROP TABLE IF EXISTS `tr_salesinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesinfo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `salesNum` varchar(20) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesinfo`
--

LOCK TABLES `tr_salesinfo` WRITE;
/*!40000 ALTER TABLE `tr_salesinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_salesinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_saleslink`
--

DROP TABLE IF EXISTS `tr_saleslink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_saleslink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `linkSalesNum` varchar(50) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_saleslink_linkSalesNum` (`linkSalesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_saleslink`
--

LOCK TABLES `tr_saleslink` WRITE;
/*!40000 ALTER TABLE `tr_saleslink` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_saleslink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesmenu`
--

DROP TABLE IF EXISTS `tr_salesmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesmenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `batchID` int(11) NOT NULL,
  `menuRefID` int(11) NOT NULL,
  `menuGroupID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `customMenuName` varchar(100) DEFAULT NULL,
  `qty` decimal(20,4) NOT NULL,
  `originalPrice` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `inclusivePrice` decimal(20,4) DEFAULT '0.0000',
  `discount` decimal(20,4) NOT NULL,
  `discountValue` decimal(20,4) DEFAULT '0.0000',
  `inclusiveDiscountValue` decimal(20,4) DEFAULT '0.0000',
  `otherTax` decimal(20,4) NOT NULL,
  `otherTaxValue` decimal(20,4) DEFAULT '0.0000',
  `vat` decimal(20,4) NOT NULL,
  `vatValue` decimal(20,4) DEFAULT '0.0000',
  `otherTaxOnVat` tinyint(1) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `promotionDetailID` int(11) NOT NULL,
  `menuPromotionID` int(11) NOT NULL,
  `cancelNotes` varchar(100) DEFAULT NULL,
  `salesType` varchar(50) DEFAULT NULL,
  `flagPending` int(11) DEFAULT NULL,
  `createdBy` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_salesmenu_menuID` (`menuID`),
  KEY `idx_salesmenu_salesNum` (`salesNum`),
  KEY `idx_salesmenu_statusID` (`statusID`),
  KEY `idx_salesmenu_menuGroupID` (`menuGroupID`),
  KEY `idx_salesmenu_menuRefID` (`menuRefID`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesmenu`
--

LOCK TABLES `tr_salesmenu` WRITE;
/*!40000 ALTER TABLE `tr_salesmenu` DISABLE KEYS */;
INSERT INTO `tr_salesmenu` VALUES (1,1,'SETK162771555617',1,0,0,339,'',1.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1500.0000,1,16500.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-07-31 14:12:36','TRNWIL','2021-07-31 14:12:36',NULL),(2,2,'SETK162771555617',1,0,0,340,'',1.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,800.0000,1,8800.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-07-31 14:12:36','TRNWIL','2021-07-31 14:12:36',NULL),(3,3,'SETK162771558207',1,0,0,340,'',1.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,800.0000,1,8800.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-07-31 14:13:02','TRNWIL','2021-07-31 14:13:02',NULL),(4,4,'SETK162771558207',1,0,0,341,'',1.0000,10000.0000,10000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1000.0000,1,11000.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-07-31 14:13:02','TRNWIL','2021-07-31 14:13:02',NULL),(5,5,'SETK162771562013',1,0,0,340,'',2.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-07-31 14:13:40','TRNWIL','2021-07-31 14:13:40',NULL),(6,6,'SETK162771562013',1,0,0,339,'',1.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1500.0000,1,16500.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-07-31 14:13:40','TRNWIL','2021-07-31 14:13:40',NULL),(7,7,'SETK162771669305',1,0,0,340,'',1.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,800.0000,1,8800.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-07-31 14:31:33','TRNWIL','2021-07-31 14:31:33',NULL),(8,8,'SETK162771671393',1,0,0,341,'',1.0000,10000.0000,10000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1000.0000,1,11000.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-07-31 14:31:53','TRNWIL','2021-07-31 14:31:53',NULL),(9,9,'SETK162771671393',1,0,0,342,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-07-31 14:31:53','TRNWIL','2021-07-31 14:31:53',NULL),(10,10,'SETK162771671393',1,0,0,345,'',1.0000,18000.0000,18000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1800.0000,1,19800.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-07-31 14:31:54','TRNWIL','2021-07-31 14:31:54',NULL),(11,11,'SETK162771673219',1,0,0,340,'',1.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,800.0000,1,8800.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-07-31 14:32:12','TRNWIL','2021-07-31 14:32:12',NULL),(12,12,'SETK162771673219',1,0,0,341,'',1.0000,10000.0000,10000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1000.0000,1,11000.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-07-31 14:32:12','TRNWIL','2021-07-31 14:32:12',NULL),(13,13,'SETK162927784497',1,0,0,339,'',8.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,12000.0000,1,132000.0000,'',13,0,0,'','POS',1,'TRNWIL','2021-08-18 16:10:45','TRNWIL','2021-08-18 16:10:45',NULL),(14,14,'SETK163366487828',1,0,0,339,'',4.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,6000.0000,1,66000.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 10:47:58','TRNADMIN','2021-10-08 10:47:58',NULL),(15,15,'SETK163366493047',1,0,0,344,'',1.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 10:48:50','TRNADMIN','2021-10-08 10:48:50',NULL),(16,16,'SETK163366493047',1,0,0,354,'',1.0000,3000.0000,3000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,300.0000,1,3300.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 10:48:50','TRNADMIN','2021-10-08 10:48:50',NULL),(17,17,'SETK163366493047',1,0,0,339,'',1.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1500.0000,1,16500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 10:48:50','TRNADMIN','2021-10-08 10:48:50',NULL),(18,18,'SETK163366493047',1,0,0,343,'',1.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 10:48:50','TRNADMIN','2021-10-08 10:48:50',NULL),(19,19,'SETK163366495287',1,0,0,347,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 10:49:12','TRNADMIN','2021-10-08 10:49:12',NULL),(20,20,'SETK163366495287',1,20,0,338,NULL,1.0000,5000.0000,5000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,500.0000,1,5500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 10:49:12','TRNADMIN','2021-10-08 10:49:12',NULL),(21,21,'SETK163366495287',1,20,8,337,NULL,1.0000,5000.0000,5000.0000,5000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,500.0000,1,5500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 10:49:12','TRNADMIN','2021-10-08 10:49:12',NULL),(22,22,'SETK163366631627',1,0,0,343,'',1.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:11:56','TRNADMIN','2021-10-08 11:11:56',NULL),(23,23,'SETK163366631627',1,0,0,339,'',1.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1500.0000,1,16500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:11:56','TRNADMIN','2021-10-08 11:11:56',NULL),(24,24,'SETK163366631627',1,0,0,340,'',1.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,800.0000,1,8800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:11:56','TRNADMIN','2021-10-08 11:11:56',NULL),(25,25,'SETK163366648128',1,0,0,345,'',1.0000,20000.0000,20000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,2000.0000,1,22000.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:14:41','TRNADMIN','2021-10-08 11:14:41',NULL),(26,26,'SETK163366648128',1,0,0,339,'',1.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1500.0000,1,16500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:14:41','TRNADMIN','2021-10-08 11:14:41',NULL),(27,27,'SETK163366648128',1,27,0,338,NULL,1.0000,5000.0000,5000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,500.0000,1,5500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:14:41','TRNADMIN','2021-10-08 11:14:41',NULL),(28,28,'SETK163366648128',1,27,8,336,NULL,1.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,0.0000,1,0.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:14:41','TRNADMIN','2021-10-08 11:14:41',NULL),(29,29,'SETK163366650508',1,0,0,340,'',1.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,800.0000,1,8800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:15:05','TRNADMIN','2021-10-08 11:15:05',NULL),(30,30,'SETK163366650508',1,0,0,354,'',1.0000,3000.0000,3000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,300.0000,1,3300.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:15:05','TRNADMIN','2021-10-08 11:15:05',NULL),(31,31,'SETK163366681654',1,0,0,339,'',1.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1500.0000,1,16500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:20:16','TRNADMIN','2021-10-08 11:20:16',NULL),(32,32,'SETK163366681654',1,0,0,344,'',1.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:20:16','TRNADMIN','2021-10-08 11:20:16',NULL),(33,33,'SETK163366681654',1,0,0,343,'',1.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:20:16','TRNADMIN','2021-10-08 11:20:16',NULL),(34,34,'SETK163366681654',1,0,0,345,'',1.0000,18000.0000,18000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1800.0000,1,19800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:20:16','TRNADMIN','2021-10-08 11:20:16',NULL),(35,35,'SETK163366681654',1,0,0,342,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:20:16','TRNADMIN','2021-10-08 11:20:16',NULL),(36,36,'SETK163366683252',1,0,0,339,'',1.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1500.0000,1,16500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:20:32','TRNADMIN','2021-10-08 11:20:32',NULL),(37,37,'SETK163366683252',1,0,0,340,'',1.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,800.0000,1,8800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:20:32','TRNADMIN','2021-10-08 11:20:32',NULL),(38,38,'SETK163366683252',1,0,0,344,'',1.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:20:32','TRNADMIN','2021-10-08 11:20:32',NULL),(39,39,'SETK163366683252',1,0,0,343,'',1.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:20:32','TRNADMIN','2021-10-08 11:20:32',NULL),(40,40,'SETK163366683252',1,0,0,341,'',1.0000,10000.0000,10000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1000.0000,1,11000.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:20:32','TRNADMIN','2021-10-08 11:20:32',NULL),(41,41,'SETK163366703950',1,0,0,340,'',1.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,800.0000,1,8800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:23:59','TRNADMIN','2021-10-08 11:23:59',NULL),(42,42,'SETK163366703950',1,0,0,339,'',1.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1500.0000,1,16500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-08 11:23:59','TRNADMIN','2021-10-08 11:23:59',NULL),(43,43,'SETK163374625754',1,0,0,339,'',1.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1500.0000,1,16500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:24:17','TRNADMIN','2021-10-09 09:24:17',NULL),(44,44,'SETK163374625754',1,0,0,340,'',1.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,800.0000,1,8800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:24:17','TRNADMIN','2021-10-09 09:24:17',NULL),(45,45,'SETK163374625754',1,0,0,341,'',1.0000,10000.0000,10000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1000.0000,1,11000.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:24:17','TRNADMIN','2021-10-09 09:24:17',NULL),(46,46,'SETK163374625754',1,0,0,342,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:24:17','TRNADMIN','2021-10-09 09:24:17',NULL),(47,47,'SETK163374790050',1,0,0,339,'',1.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1500.0000,1,16500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:51:40','TRNADMIN','2021-10-09 09:51:40',NULL),(48,48,'SETK163374790050',1,0,0,340,'',1.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,800.0000,1,8800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:51:40','TRNADMIN','2021-10-09 09:51:40',NULL),(49,49,'SETK163374790050',1,0,0,341,'',1.0000,10000.0000,10000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1000.0000,1,11000.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:51:40','TRNADMIN','2021-10-09 09:51:40',NULL),(50,50,'SETK163374790050',1,0,0,342,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:51:40','TRNADMIN','2021-10-09 09:51:40',NULL),(51,51,'SETK163374790050',1,0,0,346,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:51:40','TRNADMIN','2021-10-09 09:51:40',NULL),(52,52,'SETK163374790050',1,0,0,345,'',1.0000,18000.0000,18000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1800.0000,1,19800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:51:40','TRNADMIN','2021-10-09 09:51:40',NULL),(53,53,'SETK163374790050',1,0,0,344,'',1.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:51:40','TRNADMIN','2021-10-09 09:51:40',NULL),(54,54,'SETK163374790050',1,0,0,343,'',1.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:51:40','TRNADMIN','2021-10-09 09:51:40',NULL),(55,55,'SETK163374790050',1,0,0,347,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:51:40','TRNADMIN','2021-10-09 09:51:40',NULL),(56,56,'SETK163374790050',1,56,0,338,NULL,1.0000,5000.0000,5000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,500.0000,1,5500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:51:40','TRNADMIN','2021-10-09 09:51:40',NULL),(57,57,'SETK163374790050',1,56,8,336,NULL,1.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,0.0000,1,0.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:51:40','TRNADMIN','2021-10-09 09:51:40',NULL),(58,58,'SETK163374792969',1,0,0,353,'',1.0000,3000.0000,3000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,300.0000,1,3300.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(59,59,'SETK163374792969',1,0,0,354,'',1.0000,3000.0000,3000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,300.0000,1,3300.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(60,60,'SETK163374792969',1,0,0,342,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(61,61,'SETK163374792969',1,0,0,346,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(62,62,'SETK163374792969',1,0,0,341,'',1.0000,10000.0000,10000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1000.0000,1,11000.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(63,63,'SETK163374792969',1,0,0,345,'',1.0000,18000.0000,18000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1800.0000,1,19800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(64,64,'SETK163374792969',1,0,0,340,'',1.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,800.0000,1,8800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(65,65,'SETK163374792969',1,0,0,344,'',1.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(66,66,'SETK163374792969',1,66,0,338,NULL,1.0000,5000.0000,5000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,500.0000,1,5500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(67,67,'SETK163374792969',1,66,8,337,NULL,1.0000,5000.0000,5000.0000,5000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,500.0000,1,5500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(68,68,'SETK163374792969',1,0,0,347,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(69,69,'SETK163374792969',1,0,0,343,'',1.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(70,70,'SETK163374792969',1,0,0,339,'',1.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1500.0000,1,16500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:09','TRNADMIN','2021-10-09 09:52:09',NULL),(71,71,'SETK163374796585',1,0,0,342,'',4.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,4800.0000,1,52800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:45','TRNADMIN','2021-10-09 09:52:45',NULL),(72,72,'SETK163374796585',1,0,0,346,'',2.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,2400.0000,1,26400.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:45','TRNADMIN','2021-10-09 09:52:45',NULL),(73,73,'SETK163374796585',1,0,0,341,'',3.0000,10000.0000,10000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,3000.0000,1,33000.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:45','TRNADMIN','2021-10-09 09:52:45',NULL),(74,74,'SETK163374796585',1,0,0,345,'',6.0000,18000.0000,18000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,10800.0000,1,118800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:45','TRNADMIN','2021-10-09 09:52:45',NULL),(75,75,'SETK163374796585',1,0,0,340,'',4.0000,8000.0000,8000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,3200.0000,1,35200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:45','TRNADMIN','2021-10-09 09:52:45',NULL),(76,76,'SETK163374796585',1,0,0,344,'',3.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,4800.0000,1,52800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:45','TRNADMIN','2021-10-09 09:52:45',NULL),(77,77,'SETK163374796585',1,77,0,338,NULL,1.0000,5000.0000,5000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,500.0000,1,5500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:45','TRNADMIN','2021-10-09 09:52:45',NULL),(78,78,'SETK163374796585',1,77,8,336,NULL,1.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,0.0000,1,0.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:45','TRNADMIN','2021-10-09 09:52:45',NULL),(79,79,'SETK163374796585',1,0,0,339,'',4.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,6000.0000,1,66000.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:45','TRNADMIN','2021-10-09 09:52:45',NULL),(80,80,'SETK163374796585',1,0,0,343,'',1.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1600.0000,1,17600.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:45','TRNADMIN','2021-10-09 09:52:45',NULL),(81,81,'SETK163374796585',1,0,0,347,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:52:45','TRNADMIN','2021-10-09 09:52:45',NULL),(82,82,'SETK163374798038',1,0,0,339,'',1.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1500.0000,1,16500.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:53:00','TRNADMIN','2021-10-09 09:53:00',NULL),(83,83,'SETK163374801095',1,0,0,339,'',4.0000,15000.0000,15000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,6000.0000,1,66000.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:53:31','TRNADMIN','2021-10-09 09:53:31',NULL),(84,84,'SETK163374801095',1,0,0,343,'',5.0000,16000.0000,16000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,8000.0000,1,88000.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:53:31','TRNADMIN','2021-10-09 09:53:31',NULL),(85,85,'SETK163374801095',1,0,0,346,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:53:31','TRNADMIN','2021-10-09 09:53:31',NULL),(86,86,'SETK163374801095',1,0,0,342,'',1.0000,12000.0000,12000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1200.0000,1,13200.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:53:31','TRNADMIN','2021-10-09 09:53:31',NULL),(87,87,'SETK163374801095',1,0,0,345,'',1.0000,18000.0000,18000.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,1800.0000,1,19800.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:53:31','TRNADMIN','2021-10-09 09:53:31',NULL),(88,88,'SETK163374801095',1,88,0,338,NULL,1.0000,5000.0000,5000.0000,0.0000,20.0000,1000.0000,0.0000,0.0000,0.0000,10.0000,400.0000,1,4400.0000,'',13,27,0,'','POS',1,'TRNADMIN','2021-10-09 09:53:31','TRNADMIN','2021-10-09 09:53:31',NULL),(89,89,'SETK163374801095',1,88,8,336,NULL,1.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,10.0000,0.0000,1,0.0000,'',13,0,0,'','POS',1,'TRNADMIN','2021-10-09 09:53:31','TRNADMIN','2021-10-09 09:53:31',NULL);
/*!40000 ALTER TABLE `tr_salesmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesmenucompletion`
--

DROP TABLE IF EXISTS `tr_salesmenucompletion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesmenucompletion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(20) NOT NULL,
  `salesMenuID` int(11) NOT NULL,
  `qty` decimal(20,4) DEFAULT NULL,
  `completedDate` datetime DEFAULT NULL,
  `typeID` int(11) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_salesmenucompletion_salesNum` (`salesNum`),
  KEY `idx_tr_salesmenucompletion_salesMenuID` (`salesMenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesmenucompletion`
--

LOCK TABLES `tr_salesmenucompletion` WRITE;
/*!40000 ALTER TABLE `tr_salesmenucompletion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_salesmenucompletion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesmenuextra`
--

DROP TABLE IF EXISTS `tr_salesmenuextra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesmenuextra` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(20) NOT NULL,
  `menuDetailID` int(11) NOT NULL,
  `menuExtraID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `inclusivePrice` decimal(20,4) DEFAULT '0.0000',
  `discount` decimal(20,4) NOT NULL,
  `discountValue` decimal(20,4) DEFAULT '0.0000',
  `inclusiveDiscountValue` decimal(20,4) DEFAULT '0.0000',
  `otherTax` decimal(20,4) NOT NULL,
  `otherTaxValue` decimal(20,4) DEFAULT '0.0000',
  `vat` decimal(20,4) NOT NULL,
  `vatValue` decimal(20,4) DEFAULT '0.0000',
  `otherTaxOnVat` tinyint(1) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_salesmenuextra_menuExtraID` (`menuExtraID`),
  KEY `idx_salesmenuextra_menuDetailID` (`menuDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesmenuextra`
--

LOCK TABLES `tr_salesmenuextra` WRITE;
/*!40000 ALTER TABLE `tr_salesmenuextra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_salesmenuextra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesmenuqueue`
--

DROP TABLE IF EXISTS `tr_salesmenuqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesmenuqueue` (
  `ID` bigint(20) NOT NULL,
  `salesNum` varchar(50) NOT NULL,
  `salesMenu` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesmenuqueue`
--

LOCK TABLES `tr_salesmenuqueue` WRITE;
/*!40000 ALTER TABLE `tr_salesmenuqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_salesmenuqueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesmergetable`
--

DROP TABLE IF EXISTS `tr_salesmergetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesmergetable` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `tableID` int(11) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesmergetable`
--

LOCK TABLES `tr_salesmergetable` WRITE;
/*!40000 ALTER TABLE `tr_salesmergetable` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_salesmergetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesordercampaign`
--

DROP TABLE IF EXISTS `tr_salesordercampaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesordercampaign` (
  `salesNum` varchar(20) NOT NULL,
  `selfOrderCampaignID` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salesNum`,`selfOrderCampaignID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesordercampaign`
--

LOCK TABLES `tr_salesordercampaign` WRITE;
/*!40000 ALTER TABLE `tr_salesordercampaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_salesordercampaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salespayment`
--

DROP TABLE IF EXISTS `tr_salespayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salespayment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `voucherCode` varchar(50) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `cardNumber` varchar(20) NOT NULL,
  `bankName` varchar(100) NOT NULL,
  `accountName` varchar(50) NOT NULL,
  `selfOrderID` varchar(50) DEFAULT NULL,
  `verificationCode` varchar(100) NOT NULL,
  `traceNumber` varchar(50) DEFAULT NULL,
  `canceledVerificationCode` varchar(100) DEFAULT NULL,
  `flagExternalVoucherAPI` int(1) DEFAULT NULL,
  `externalVoucherCode` varchar(50) DEFAULT NULL,
  `externalTransactionId` varchar(50) DEFAULT NULL,
  `externalBatchNumber` varchar(50) DEFAULT NULL,
  `externalCanceledTransactionId` varchar(50) DEFAULT NULL,
  `externalCanceledBatchNumber` varchar(50) DEFAULT NULL,
  `coaNo` varchar(20) NOT NULL,
  `paymentAmount` decimal(20,4) NOT NULL,
  `fullPaymentAmount` decimal(20,4) DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_salespayment_salesNum` (`salesNum`),
  KEY `idx_salespayment_paymentMethodID` (`paymentMethodID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salespayment`
--

LOCK TABLES `tr_salespayment` WRITE;
/*!40000 ALTER TABLE `tr_salespayment` DISABLE KEYS */;
INSERT INTO `tr_salespayment` VALUES (1,1,'SETK162771555617',4,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 02',25300.0000,25300.0000,NULL),(2,2,'SETK162771558207',9,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 06',19800.0000,19800.0000,NULL),(3,3,'SETK162771562013',6,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 06',34100.0000,34100.0000,NULL),(4,4,'SETK162771669305',4,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 02',100000.0000,100000.0000,NULL),(5,5,'SETK162771671393',4,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 02',50000.0000,50000.0000,NULL),(6,6,'SETK162771673219',9,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 06',19800.0000,19800.0000,NULL),(7,7,'SETK162927784497',4,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 02',132000.0000,132000.0000,NULL),(8,8,'SETK163366487828',4,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 02',100000.0000,100000.0000,NULL),(9,9,'SETK163366493047',6,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 06',55000.0000,55000.0000,NULL),(10,10,'SETK163366495287',9,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 06',24200.0000,24200.0000,NULL),(11,11,'SETK163366631627',4,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 02',100000.0000,100000.0000,NULL),(12,12,'SETK163366648128',6,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 06',44000.0000,44000.0000,NULL),(13,13,'SETK163366650508',4,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 02',15000.0000,15000.0000,NULL),(14,14,'SETK163366681654',6,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 06',84700.0000,84700.0000,NULL),(15,15,'SETK163366683252',9,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 06',71500.0000,71500.0000,NULL),(16,16,'SETK163366703950',4,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 02',30000.0000,30000.0000,NULL),(17,17,'SETK163374625754',4,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 02',50000.0000,50000.0000,NULL),(18,18,'SETK163374790050',4,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 02',200000.0000,200000.0000,NULL),(19,19,'SETK163374792969',6,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 06',148500.0000,148500.0000,NULL),(20,20,'SETK163374796585',9,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 06',421300.0000,421300.0000,NULL),(21,21,'SETK163374798038',10,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 06',16500.0000,16500.0000,NULL),(22,22,'SETK163374801095',6,'','','','','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 1 01 06',204600.0000,204600.0000,NULL);
/*!40000 ALTER TABLE `tr_salespayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesshiftpaymentdenom`
--

DROP TABLE IF EXISTS `tr_salesshiftpaymentdenom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesshiftpaymentdenom` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesShiftPaymentHeadID` int(11) NOT NULL,
  `denomAmount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `denomQty` int(11) NOT NULL DEFAULT '0',
  `denomTotal` decimal(20,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesshiftpaymentdenom`
--

LOCK TABLES `tr_salesshiftpaymentdenom` WRITE;
/*!40000 ALTER TABLE `tr_salesshiftpaymentdenom` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_salesshiftpaymentdenom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesshiftpaymentdetail`
--

DROP TABLE IF EXISTS `tr_salesshiftpaymentdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesshiftpaymentdetail` (
  `salesShiftDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `salesShiftPaymentHeadID` int(20) NOT NULL,
  `paymentMethodID` int(20) NOT NULL,
  `actualPaymentAmount` decimal(20,4) DEFAULT NULL,
  `expectedPaymentAmount` decimal(20,4) DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`salesShiftDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesshiftpaymentdetail`
--

LOCK TABLES `tr_salesshiftpaymentdetail` WRITE;
/*!40000 ALTER TABLE `tr_salesshiftpaymentdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_salesshiftpaymentdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesshiftpaymenthead`
--

DROP TABLE IF EXISTS `tr_salesshiftpaymenthead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesshiftpaymenthead` (
  `salesShiftPaymentHeadID` int(11) NOT NULL AUTO_INCREMENT,
  `shiftLogDetailID` int(20) NOT NULL,
  `actualTotalPaymentNonCash` decimal(20,4) DEFAULT NULL,
  `expectedTotalPaymentNonCash` decimal(20,4) DEFAULT NULL,
  `actualTotalPaymentCash` decimal(20,4) DEFAULT NULL,
  `expectedTotalPaymentCash` decimal(20,4) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`salesShiftPaymentHeadID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesshiftpaymenthead`
--

LOCK TABLES `tr_salesshiftpaymenthead` WRITE;
/*!40000 ALTER TABLE `tr_salesshiftpaymenthead` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_salesshiftpaymenthead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesvoucher`
--

DROP TABLE IF EXISTS `tr_salesvoucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesvoucher` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `voucherID` varchar(20) NOT NULL,
  `voucherSalesPrice` decimal(20,4) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesvoucher`
--

LOCK TABLES `tr_salesvoucher` WRITE;
/*!40000 ALTER TABLE `tr_salesvoucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_salesvoucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_salesvoucherusage`
--

DROP TABLE IF EXISTS `tr_salesvoucherusage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_salesvoucherusage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `voucherCode` varchar(50) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `coaNo` varchar(20) NOT NULL,
  `voucherAmount` decimal(20,4) NOT NULL,
  `fullVoucherAmount` decimal(20,4) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_salesvoucherusage`
--

LOCK TABLES `tr_salesvoucherusage` WRITE;
/*!40000 ALTER TABLE `tr_salesvoucherusage` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_salesvoucherusage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_shiftlog`
--

DROP TABLE IF EXISTS `tr_shiftlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_shiftlog` (
  `shiftID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `shiftInTime` datetime NOT NULL,
  `shiftOutTime` datetime DEFAULT NULL,
  `shiftInTotal` decimal(20,4) NOT NULL,
  `systemCashReceivedTotal` decimal(20,4) DEFAULT NULL,
  `shiftOutTotal` decimal(20,4) DEFAULT NULL,
  `shiftInUsername` varchar(50) NOT NULL,
  `shiftOutUsername` varchar(50) DEFAULT NULL,
  `shiftOutNotes` varchar(200) DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`shiftID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_shiftlog`
--

LOCK TABLES `tr_shiftlog` WRITE;
/*!40000 ALTER TABLE `tr_shiftlog` DISABLE KEYS */;
INSERT INTO `tr_shiftlog` VALUES (1,9,'2021-07-31 14:12:09','2021-10-08 11:11:33',200000.0000,276100.0000,200000.0000,'TRNWIL','TRNADMIN','',NULL),(2,9,'2021-10-08 10:47:57','2021-10-09 09:23:57',200000.0000,146300.0000,200000.0000,'TRNADMIN','TRNADMIN','',NULL),(3,9,'2021-10-09 09:24:08',NULL,200000.0000,NULL,NULL,'TRNADMIN',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tr_shiftlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_shiftlogdetail`
--

DROP TABLE IF EXISTS `tr_shiftlogdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_shiftlogdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `shiftID` int(11) NOT NULL,
  `shiftTime` datetime NOT NULL,
  `shiftUsername` varchar(50) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_shiftlogdetail`
--

LOCK TABLES `tr_shiftlogdetail` WRITE;
/*!40000 ALTER TABLE `tr_shiftlogdetail` DISABLE KEYS */;
INSERT INTO `tr_shiftlogdetail` VALUES (1,1,'2021-10-08 11:11:33','TRNADMIN',NULL),(2,2,'2021-10-09 09:23:57','TRNADMIN',NULL);
/*!40000 ALTER TABLE `tr_shiftlogdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_sync`
--

DROP TABLE IF EXISTS `tr_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_sync` (
  `syncType` varchar(50) NOT NULL,
  `pushDateTime` datetime NOT NULL,
  `pullDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`syncType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_sync`
--

LOCK TABLES `tr_sync` WRITE;
/*!40000 ALTER TABLE `tr_sync` DISABLE KEYS */;
INSERT INTO `tr_sync` VALUES ('MEMBER','2021-02-04 10:48:43',NULL),('MEMBER DEPOSIT','2021-02-19 13:59:46',NULL),('VOUCHER','2021-01-27 10:36:55',NULL);
/*!40000 ALTER TABLE `tr_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_tableusage`
--

DROP TABLE IF EXISTS `tr_tableusage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_tableusage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `referenceID` varchar(20) NOT NULL,
  `expiredTime` datetime NOT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_tableusage`
--

LOCK TABLES `tr_tableusage` WRITE;
/*!40000 ALTER TABLE `tr_tableusage` DISABLE KEYS */;
INSERT INTO `tr_tableusage` VALUES (17,'SETK163374625754','2021-10-09 09:24:27','TRNADMIN'),(18,'SETK163374790050','2021-10-09 09:51:53','TRNADMIN'),(19,'SETK163374792969','2021-10-09 09:52:25','TRNADMIN'),(20,'SETK163374796585','2021-10-09 09:52:56','TRNADMIN'),(21,'SETK163374798038','2021-10-09 09:53:10','TRNADMIN'),(22,'SETK163374801095','2021-10-09 09:53:47','TRNADMIN');
/*!40000 ALTER TABLE `tr_tableusage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_temporder`
--

DROP TABLE IF EXISTS `tr_temporder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_temporder` (
  `orderID` varchar(13) NOT NULL,
  `createdDate` datetime NOT NULL,
  `orderData` text NOT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_temporder`
--

LOCK TABLES `tr_temporder` WRITE;
/*!40000 ALTER TABLE `tr_temporder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tr_temporder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_tax_jakarta`
--

DROP TABLE IF EXISTS `view_tax_jakarta`;
/*!50001 DROP VIEW IF EXISTS `view_tax_jakarta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_tax_jakarta` AS SELECT 
 1 AS `Sales_No`,
 1 AS `Receipt_No`,
 1 AS `Tanggal_Trx`,
 1 AS `Subtotal`,
 1 AS `Service_Charge`,
 1 AS `Tax`,
 1 AS `Amount`,
 1 AS `SaleDate`,
 1 AS `OutletCode`,
 1 AS `OutletName`,
 1 AS `ShopID`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'fnb_pos'
--

--
-- Dumping routines for database 'fnb_pos'
--
/*!50003 DROP PROCEDURE IF EXISTS `spESBBilledOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spESBBilledOrder`(IN salesDateParams CHAR(10), IN tableNameParams VARCHAR(100))
BEGIN
                DECLARE row_number INT;
                DECLARE transSalesNum VARCHAR(100);
                SET @row_number = 0;
                SET @transSalesNum = '';
                SELECT * FROM (
                    SELECT 
                    tr_saleshead.branchID AS _ShopID,
                    CAST(ms_branch.branchName AS CHAR(50)) AS  _ShopName,
                    tr_saleshead.salesDateIn AS _SaleDate,
                    CASE WHEN tr_saleshead.tableID > 0 THEN 1 ELSE 2 END AS _SaleModeID,
                    CASE WHEN tr_saleshead.tableID > 0 THEN 'Dine In' ELSE 'Take Away' END AS _SaleModeName,
                    tr_saleshead.tableID AS _TableID,
                    CAST(COALESCE(ms_table.tableName, tr_saleshead.salesNum) AS CHAR(100)) AS _TableName,
                    @row_number := CASE
                    WHEN @transSalesNum = tr_salesmenu.salesNum THEN @row_number + 1
                    ELSE 1
                    END AS _OrderLine,
                    CASE WHEN tr_salesmenu.menuGroupID = 0 THEN 0 
                    ELSE 1 END AS _IndentLevel,
                    tr_salesmenu.menuID AS _ProductID,
                    CAST(ms_menu.menuName AS CHAR(100)) AS _ProductName,
                    tr_salesmenu.qty AS _Qty,
                    CAST(tr_salesmenu.price - (tr_salesmenu.price * tr_salesmenu.discount / 100) AS DECIMAL(18,4)) AS _PricePerUnit,
                    tr_salesmenu.price AS _OrgPricePerUnit,
                    tr_salesmenu.discount AS _Disc,
                    @transSalesNum := CAST(tr_salesmenu.salesNum AS CHAR(100)) AS _ReferenceNo,
                    CAST(tr_salesmenu.salesNum AS CHAR(30)) AS _ReceiptNumber,
                    tr_saleshead.salesDateIn AS _OpenTime,
                    tr_saleshead.salesDateOut AS _PaidTime
                    FROM tr_salesmenu
                    LEFT JOIN tr_saleshead ON tr_saleshead.salesNum = tr_salesmenu.salesNum
                    LEFT JOIN ms_menu ON ms_menu.menuID = tr_salesmenu.menuID
                    LEFT JOIN ms_branch ON tr_saleshead.branchID = ms_branch.branchID
                    LEFT JOIN ms_table ON tr_saleshead.tableID = ms_table.tableID
                    WHERE CASE WHEN salesDateParams = '' THEN 
                            CASE WHEN tableNameParams = '' THEN
                                1 = 1
                            ELSE 
                                ms_table.tableName = tableNameParams
                            END
                        ELSE
                            CASE WHEN tableNameParams = '' THEN
                                CAST(tr_saleshead.salesDateIn AS DATE) = salesDateParams
                            ELSE 
                                CAST(tr_saleshead.salesDateIn AS DATE) = salesDateParams AND ms_table.tableName = tableNameParams
                            END
                        END
                    AND tr_saleshead.salesDateOut IS NOT NULL
                        
                        
                    UNION 

                    SELECT 
                    tr_saleshead.branchID AS _ShopID,
                    CAST(ms_branch.branchName AS CHAR(50)) AS  _ShopName,
                    tr_saleshead.salesDateIn AS _SaleDate,
                    CASE WHEN tr_saleshead.tableID > 0 THEN 1 ELSE 2 END AS _SaleModeID,
                    CASE WHEN tr_saleshead.tableID > 0 THEN 'Dine In' ELSE 'Take Away' END AS _SaleModeName,
                    tr_saleshead.tableID AS _TableID,
                    CAST(COALESCE(ms_table.tableName, tr_saleshead.salesNum) AS CHAR(100)) AS _TableName,
                    @row_number := CASE
                    WHEN @transSalesNum = tr_salesmenuextra.salesNum THEN @row_number + 1
                    ELSE 1
                    END AS _OrderLine,
                    0 AS _IndentLevel,
                    tr_salesmenuextra.menuExtraID AS _ProductID,
                    CAST(ms_menuextra.menuExtraName AS CHAR(100)) AS _ProductName,
                    tr_salesmenuextra.qty AS _Qty,
                    CAST(tr_salesmenuextra.price - (tr_salesmenuextra.price * tr_salesmenuextra.discount / 100) AS DECIMAL(18,4)) AS _PricePerUnit,
                    tr_salesmenuextra.price AS _OrgPricePerUnit,
                    tr_salesmenuextra.discount AS _Disc,
                    @transSalesNum := CAST(tr_salesmenuextra.salesNum AS CHAR(100)) AS _ReferenceNo,
                    CAST(tr_salesmenuextra.salesNum AS CHAR(30)) AS _ReceiptNumber,
                    tr_saleshead.salesDateIn AS _OpenTime,
                    tr_saleshead.salesDateOut AS _PaidTime
                    FROM tr_salesmenuextra
                    LEFT JOIN tr_saleshead ON tr_saleshead.salesNum = tr_salesmenuextra.salesNum
                    LEFT JOIN ms_menuextra ON ms_menuextra.menuExtraID = tr_salesmenuextra.menuExtraID
                    LEFT JOIN ms_branch ON tr_saleshead.branchID = ms_branch.branchID
                    LEFT JOIN ms_table ON tr_saleshead.tableID = ms_table.tableID
                    WHERE CASE WHEN salesDateParams = '' THEN 
                            CASE WHEN tableNameParams = '' THEN
                                1 = 1
                            ELSE 
                                ms_table.tableName = tableNameParams
                            END
                        ELSE
                            CASE WHEN tableNameParams = '' THEN
                                CAST(tr_saleshead.salesDateIn AS DATE) = salesDateParams
                            ELSE 
                                CAST(tr_saleshead.salesDateIn AS DATE) = salesDateParams AND ms_table.tableName = tableNameParams
                            END
                        END
                    AND tr_saleshead.salesDateOut IS NOT NULL
                ) a
                ORDER BY 
                _PaidTime DESC,
                _SaleDate,
                _SaleModeID,
                _TableName;
            END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spESBBilledOrderApi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spESBBilledOrderApi`(IN salesNumParams VARCHAR(100))
BEGIN
            DECLARE row_number INT;
            DECLARE transSalesNum VARCHAR(100);
            SET @row_number = 0;
            SET @transSalesNum = '';
            SELECT a.*
            FROM
            (
                (
                    SELECT 
                        ms_branch.branchCode AS _ShopID,
                        CAST(ms_branch.branchName AS CHAR(50)) AS  _ShopName,
                        tr_saleshead.salesDateIn AS _SalesDate,
                        CASE WHEN tr_saleshead.tableID > 0 THEN 1 ELSE 2 END AS _SalesModeID,
                        CASE WHEN tr_saleshead.tableID > 0 THEN 'Dine In' ELSE 'Take Away' END AS _SalesModeName,
                        CASE 
                        WHEN tr_salesmergetable.salesNum IS NULL AND tr_saleslink.salesNum IS NULL THEN tr_saleshead.tableID
                        WHEN tr_salesmergetable.salesNum IS NOT NULL THEN CONCAT(tr_saleshead.tableID, ',', GROUP_CONCAT(tr_salesmergetable.tableID))
                        WHEN tr_saleslink.salesNum IS NOT NULL THEN CONCAT(tr_saleshead.tableID, ',', GROUP_CONCAT(slt.tableID))
                        END AS _TableID,
                        CASE 
                        WHEN tr_salesmergetable.salesNum IS NULL AND tr_saleslink.salesNum IS NULL THEN CAST(COALESCE(ms_table.tableName, tr_saleshead.billNum) AS CHAR(100))
                        WHEN tr_salesmergetable.salesNum IS NOT NULL THEN CONCAT(CAST(COALESCE(ms_table.tableName, tr_saleshead.salesNum) AS CHAR(100)), ',', GROUP_CONCAT(mt.tableName))
                        WHEN tr_saleslink.salesNum IS NOT NULL THEN CONCAT(CAST(COALESCE(ms_table.tableName, tr_saleshead.salesNum) AS CHAR(100)), ',', GROUP_CONCAT(lt.tableName))
                        END AS _TableName,
                        @row_number := CASE
                        WHEN @transSalesNum = tr_salesmenu.salesNum THEN @row_number + 1
                        ELSE 1
                        END AS _OrderLine,
                        CASE WHEN tr_salesmenu.menuGroupID = 0 THEN 0 
                        ELSE 1 END AS _IndentLevel,
                        tr_salesmenu.menuID AS _ProductID,
                        CAST(ms_menu.menuName AS CHAR(100)) AS _ProductName,
                        tr_salesmenu.qty * COALESCE(smu.qty, 1) AS _Qty,
                        CAST(tr_salesmenu.price - (tr_salesmenu.price * tr_salesmenu.discount / 100) AS DECIMAL(18,4)) AS _PricePerUnit,
                        tr_salesmenu.price AS _OrgPricePerUnit,
                        tr_salesmenu.discount AS _Disc,
                        @transSalesNum := CAST(tr_salesmenu.salesNum AS CHAR(100)) AS _ReferenceNo,
                        CAST(tr_saleshead.billNum AS CHAR(30)) AS _ReceiptNumber,
                        tr_saleshead.salesDateIn AS _OpenTime,
                        tr_saleshead.salesDateOut AS _PaidTime
                    FROM tr_salesmenu
                    LEFT JOIN tr_saleshead ON tr_saleshead.salesNum = tr_salesmenu.salesNum
                    LEFT JOIN ms_menu ON ms_menu.menuID = tr_salesmenu.menuID
                    LEFT JOIN ms_branch ON tr_saleshead.branchID = ms_branch.branchID
                    LEFT JOIN ms_table ON tr_saleshead.tableID = ms_table.tableID
                    LEFT JOIN tr_salesmergetable ON tr_saleshead.salesNum = tr_salesmergetable.salesNum
                    LEFT JOIN ms_table mt ON tr_salesmergetable.tableID = mt.tableID
                    LEFT JOIN tr_saleslink ON tr_saleshead.salesNum = tr_saleslink.salesNum
                    LEFT JOIN tr_saleshead slt ON tr_saleslink.linkSalesNum = slt.salesNum
                    LEFT JOIN ms_table lt ON slt.tableID = lt.tableID
                    LEFT JOIN tr_salesmenu smu ON smu.localID = tr_salesmenu.menuRefID AND smu.salesNum = tr_salesmenu.salesNum
                    WHERE tr_saleshead.salesDateOut IS NOT NULL AND tr_saleshead.salesNum = salesNumParams
                    GROUP BY
                        tr_saleshead.salesNum,
                        tr_saleshead.branchID,
                        ms_branch.branchName,
                        tr_saleshead.tableID,
                        ms_table.tableName,
                        tr_salesmenu.salesNum,
                        tr_salesmenu.menuGroupID,
                        tr_salesmenu.menuID,
                        ms_menu.menuName,
                        tr_salesmenu.qty,
                        smu.qty,
                        tr_salesmenu.price,
                        tr_salesmenu.discount,
                        tr_saleshead.billNum,
                        tr_saleshead.salesDateIn,
                        tr_saleshead.salesDateOut
                )
                UNION ALL
                (
                    SELECT 
                        ms_branch.branchCode AS _ShopID,
                        CAST(ms_branch.branchName AS CHAR(50)) AS  _ShopName,
                        tr_saleshead.salesDateIn AS _SalesDate,
                        CASE WHEN tr_saleshead.tableID > 0 THEN 1 ELSE 2 END AS _SalesModeID,
                        CASE WHEN tr_saleshead.tableID > 0 THEN 'Dine In' ELSE 'Take Away' END AS _SalesModeName,
                        CASE 
                        WHEN tr_saleslink.salesNum IS NULL THEN tr_saleshead.tableID
                        WHEN tr_saleslink.salesNum IS NOT NULL THEN CONCAT(tr_saleshead.tableID, ',', GROUP_CONCAT(slt.tableID)) 
                        END AS _TableID,
                        CASE 
                        WHEN tr_saleslink.salesNum IS NULL THEN CAST(COALESCE(ms_table.tableName, tr_saleshead.billNum) AS CHAR(100))
                        WHEN tr_saleslink.salesNum IS NOT NULL THEN CONCAT(CAST(COALESCE(ms_table.tableName, tr_saleshead.billNum) AS CHAR(100)), ',', GROUP_CONCAT(lt.tableName))
                        END AS _TableName,
                        @row_number := CASE
                        WHEN @transSalesNum = smlt.salesNum THEN @row_number + 1
                        ELSE 1
                        END AS _OrderLine,
                        CASE WHEN smlt.menuGroupID = 0 THEN 0 
                        ELSE 1 END AS _IndentLevel,
                        smlt.menuID AS _ProductID,
                        CAST(ms_menu.menuName AS CHAR(100)) AS _ProductName,
                        smlt.qty * COALESCE(smu.qty, 1) AS _Qty,
                        CAST(smlt.price - (smlt.price * smlt.discount / 100) AS DECIMAL(18,4)) AS _PricePerUnit,
                        smlt.price AS _OrgPricePerUnit,
                        smlt.discount AS _Disc,
                        @transSalesNum := CAST(smlt.salesNum AS CHAR(100)) AS _ReferenceNo,
                        CAST(tr_saleshead.billNum AS CHAR(30)) AS _ReceiptNumber,
                        tr_saleshead.salesDateIn AS _OpenTime,
                        tr_saleshead.salesDateOut AS _PaidTime
                    FROM tr_saleshead
                    JOIN tr_saleslink ON tr_saleshead.salesNum = tr_saleslink.salesNum
                    LEFT JOIN tr_saleshead slt ON tr_saleslink.linkSalesNum = slt.salesNum
                    LEFT JOIN tr_salesmenu smlt ON slt.salesNum = smlt.salesNum
                    LEFT JOIN ms_table lt ON slt.tableID = lt.tableID
                    LEFT JOIN ms_menu ON ms_menu.menuID = smlt.menuID
                    LEFT JOIN ms_branch ON tr_saleshead.branchID = ms_branch.branchID
                    LEFT JOIN ms_table ON tr_saleshead.tableID = ms_table.tableID
                    LEFT JOIN tr_salesmenu smu ON smu.localID = smlt.menuRefID AND smu.salesNum = smlt.salesNum
                    WHERE tr_saleshead.salesDateOut IS NOT NULL AND tr_saleshead.salesNum = salesNumParams
                    GROUP BY
                        tr_saleshead.salesNum,
                        tr_saleshead.branchID,
                        ms_branch.branchName,
                        tr_saleshead.tableID,
                        ms_table.tableName,
                        smlt.salesNum,
                        smlt.menuGroupID,
                        smlt.menuID,
                        ms_menu.menuName,
                        smlt.qty,
                        smu.qty,
                        smlt.price,
                        smlt.discount,
                        tr_saleshead.billNum,
                        tr_saleshead.salesDateIn,
                        tr_saleshead.salesDateOut
                )
            ) a
            ORDER BY 
                a._PaidTime DESC,
                a._OpenTime DESC,
                a._SalesModeID,
                a._TableName;
            END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spESBOutstandingOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spESBOutstandingOrder`(IN salesDateParams CHAR(10), IN tableNameParams VARCHAR(100))
BEGIN
                DECLARE row_number INT;
                DECLARE transSalesNum VARCHAR(100);
                SET @row_number = 0;
                SET @transSalesNum = '';
                SELECT * FROM (
                    SELECT 
                    tr_saleshead.branchID AS _ShopID,
                    CAST(ms_branch.branchName AS CHAR(50)) AS  _ShopName,
                    tr_saleshead.salesDateIn AS _SalesDate,
                    CASE WHEN tr_saleshead.tableID > 0 THEN 1 ELSE 2 END AS _SalesModeID,
                    CASE WHEN tr_saleshead.tableID > 0 THEN 'Dine In' ELSE 'Take Away' END AS _SalesModeName,
                    tr_saleshead.tableID AS _TableID,
                    CAST(COALESCE(ms_table.tableName, tr_saleshead.salesNum) AS CHAR(100)) AS _TableName,
                    @row_number := CASE
                        WHEN @transSalesNum = tr_salesmenu.salesNum THEN @row_number + 1
                        ELSE 1
                    END AS _OrderLine,
                    CASE WHEN tr_salesmenu.menuGroupID = 0 THEN 0 
                    ELSE 1 END AS _IndentLevel,
                    tr_salesmenu.menuID AS _ProductID,
                    CAST(ms_menu.menuName AS CHAR(100)) AS _ProductName,
                    tr_salesmenu.qty AS _Qty,
                    CAST(tr_salesmenu.price - (tr_salesmenu.price * tr_salesmenu.discount / 100) AS DECIMAL(18,4)) AS _PricePerUnit,
                    tr_salesmenu.price AS _OrgPricePerUnit,
                    tr_salesmenu.discount AS _Disc,
                    @transSalesNum := CAST(tr_salesmenu.salesNum AS CHAR(100)) AS _ReferenceNo
                    FROM tr_salesmenu
                    LEFT JOIN tr_saleshead ON tr_saleshead.salesNum = tr_salesmenu.salesNum
                    LEFT JOIN ms_menu ON ms_menu.menuID = tr_salesmenu.menuID
                    LEFT JOIN ms_branch ON tr_saleshead.branchID = ms_branch.branchID
                    LEFT JOIN ms_table ON tr_saleshead.tableID = ms_table.tableID
                    WHERE CASE WHEN salesDateParams = '' THEN 
                            CASE WHEN tableNameParams = '' THEN
                                1 = 1
                            ELSE 
                                ms_table.tableName = tableNameParams
                            END
                        ELSE
                            CASE WHEN tableNameParams = '' THEN
                                CAST(tr_saleshead.salesDateIn AS DATE)= salesDateParams
                            ELSE 
                                CAST(tr_saleshead.salesDateIn AS DATE) = salesDateParams AND ms_table.tableName = tableNameParams
                            END
                        END
                    AND tr_saleshead.salesDateOut IS NULL 
                    
                    UNION 
                    
                    SELECT 
                    tr_saleshead.branchID AS _ShopID,
                    CAST(ms_branch.branchName AS CHAR(50)) AS  _ShopName,
                    tr_saleshead.salesDateIn AS _SalesDate,
                    CASE WHEN tr_saleshead.tableID > 0 THEN 1 ELSE 2 END AS _SalesModeID,
                    CASE WHEN tr_saleshead.tableID > 0 THEN 'Dine In' ELSE 'Take Away' END AS _SalesModeName,
                    tr_saleshead.tableID AS _TableID,
                    CAST(COALESCE(ms_table.tableName, tr_saleshead.salesNum) AS CHAR(100)) AS _TableName,
                    @row_number := CASE
                        WHEN @transSalesNum = tr_salesmenuextra.salesNum THEN @row_number + 1
                        ELSE 1
                    END AS _OrderLine,
                    0 AS _IndentLevel,
                    ms_menuextra.menuExtraID AS _ProductID,
                    CAST(ms_menuextra.menuExtraName AS CHAR(100)) AS _ProductName,
                    tr_salesmenuextra.qty AS _Qty,
                    CAST(tr_salesmenuextra.price - (tr_salesmenuextra.price * tr_salesmenuextra.discount / 100) AS DECIMAL(18,4)) AS _PricePerUnit,
                    tr_salesmenuextra.price AS _OrgPricePerUnit,
                    tr_salesmenuextra.discount AS _Disc,
                    @transSalesNum := CAST(tr_salesmenuextra.salesNum AS CHAR(100)) AS _ReferenceNo
                    FROM tr_salesmenuextra
                    LEFT JOIN tr_saleshead ON tr_saleshead.salesNum = tr_salesmenuextra.salesNum
                    LEFT JOIN ms_menuextra ON ms_menuextra.menuExtraID = tr_salesmenuextra.menuExtraID
                    LEFT JOIN ms_branch ON tr_saleshead.branchID = ms_branch.branchID
                    LEFT JOIN ms_table ON tr_saleshead.tableID = ms_table.tableID
                    WHERE CASE WHEN salesDateParams = '' THEN 
                            CASE WHEN tableNameParams = '' THEN
                                1 = 1
                            ELSE 
                                ms_table.tableName = tableNameParams
                            END
                        ELSE
                            CASE WHEN tableNameParams = '' THEN
                                CAST(tr_saleshead.salesDateIn AS DATE)= salesDateParams
                            ELSE 
                                CAST(tr_saleshead.salesDateIn AS DATE) = salesDateParams AND ms_table.tableName = tableNameParams
                            END
                        END
                    AND tr_saleshead.salesDateOut IS NULL
            ) a;   
            END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spESBOutstandingOrderApi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spESBOutstandingOrderApi`(
                IN salesNumParams VARCHAR(100)
            )
BEGIN
                DECLARE row_number INT;
                DECLARE transSalesNum VARCHAR(100);
                SET @row_number = 0;
                SET @transSalesNum = '';
                SELECT a.*
                FROM
                (
                    (
                        SELECT 
                            ms_branch.branchCode AS _ShopID,
                            CAST(ms_branch.branchName AS CHAR(50)) AS  _ShopName,
                            tr_saleshead.salesDateIn AS _SalesDate,
                            CASE WHEN tr_saleshead.tableID > 0 THEN 1 ELSE 2 END AS _SalesModeID,
                            CASE WHEN tr_saleshead.tableID > 0 THEN 'Dine In' ELSE 'Take Away' END AS _SalesModeName,
                            CASE 
                            WHEN tr_salesmergetable.salesNum IS NULL AND tr_saleslink.salesNum IS NULL THEN tr_saleshead.tableID
                            WHEN tr_salesmergetable.salesNum IS NOT NULL THEN CONCAT(tr_saleshead.tableID, ',', GROUP_CONCAT(tr_salesmergetable.tableID))
                            WHEN tr_saleslink.salesNum IS NOT NULL THEN CONCAT(tr_saleshead.tableID, ',', GROUP_CONCAT(slt.tableID))
                            END AS _TableID,
                            CASE 
                            WHEN tr_salesmergetable.salesNum IS NULL AND tr_saleslink.salesNum IS NULL THEN CAST(COALESCE(ms_table.tableName, tr_saleshead.billNum) AS CHAR(100))
                            WHEN tr_salesmergetable.salesNum IS NOT NULL THEN CONCAT(CAST(COALESCE(ms_table.tableName, tr_saleshead.salesNum) AS CHAR(100)), ',', GROUP_CONCAT(mt.tableName))
                            WHEN tr_saleslink.salesNum IS NOT NULL THEN CONCAT(CAST(COALESCE(ms_table.tableName, tr_saleshead.salesNum) AS CHAR(100)), ',', GROUP_CONCAT(lt.tableName))
                            END AS _TableName,
                            @row_number := CASE
                                WHEN @transSalesNum = tr_salesmenu.salesNum THEN @row_number + 1
                                ELSE 1
                            END AS _OrderLine,
                            CASE WHEN tr_salesmenu.menuGroupID = 0 THEN 0 
                            ELSE 1 END AS _IndentLevel,
                            tr_salesmenu.menuID AS _ProductID,
                            CAST(ms_menu.menuName AS CHAR(100)) AS _ProductName,
                            tr_salesmenu.qty * COALESCE(smu.qty, 1) AS _Qty,
                            CAST(tr_salesmenu.price - (tr_salesmenu.price * tr_salesmenu.discount / 100) AS DECIMAL(18,4)) AS _PricePerUnit,
                            tr_salesmenu.price AS _OrgPricePerUnit,
                            tr_salesmenu.discount AS _Disc,
                            @transSalesNum := CAST(tr_salesmenu.salesNum AS CHAR(100)) AS _ReferenceNo
                        FROM tr_salesmenu
                        LEFT JOIN tr_saleshead ON tr_saleshead.salesNum = tr_salesmenu.salesNum
                        LEFT JOIN ms_menu ON ms_menu.menuID = tr_salesmenu.menuID
                        LEFT JOIN ms_branch ON tr_saleshead.branchID = ms_branch.branchID
                        LEFT JOIN ms_table ON tr_saleshead.tableID = ms_table.tableID
                        LEFT JOIN tr_salesmergetable ON tr_saleshead.salesNum = tr_salesmergetable.salesNum
                        LEFT JOIN ms_table mt ON tr_salesmergetable.tableID = mt.tableID
                        LEFT JOIN tr_saleslink ON tr_saleshead.salesNum = tr_saleslink.salesNum
                        LEFT JOIN tr_saleshead slt ON tr_saleslink.linkSalesNum = slt.salesNum
                        LEFT JOIN ms_table lt ON slt.tableID = lt.tableID
                        LEFT JOIN tr_salesmenu smu ON smu.localID = tr_salesmenu.menuRefID AND smu.salesNum = tr_salesmenu.salesNum
                        WHERE tr_saleshead.salesDateOut IS NULL AND tr_saleshead.salesNum = salesNumParams 
                        GROUP BY
                            tr_saleshead.salesNum,
                            tr_saleshead.branchID,
                            ms_branch.branchName,
                            tr_saleshead.tableID,
                            ms_table.tableName,
                            tr_salesmenu.salesNum,
                            tr_salesmenu.menuGroupID,
                            tr_salesmenu.menuID,
                            ms_menu.menuName,
                            tr_salesmenu.qty,
                            smu.qty,
                            tr_salesmenu.price,
                            tr_salesmenu.discount,
                            tr_saleshead.salesDateIn,
                            tr_saleshead.salesDateOut
                    )
                    UNION ALL
                    (
                        SELECT 
                            ms_branch.branchCode AS _ShopID,
                            CAST(ms_branch.branchName AS CHAR(50)) AS  _ShopName,
                            tr_saleshead.salesDateIn AS _SalesDate,
                            CASE WHEN tr_saleshead.tableID > 0 THEN 1 ELSE 2 END AS _SalesModeID,
                            CASE WHEN tr_saleshead.tableID > 0 THEN 'Dine In' ELSE 'Take Away' END AS _SalesModeName,
                            CASE 
                            WHEN tr_saleslink.salesNum IS NULL THEN tr_saleshead.tableID
                            WHEN tr_saleslink.salesNum IS NOT NULL THEN CONCAT(tr_saleshead.tableID, ',', GROUP_CONCAT(slt.tableID)) 
                            END AS _TableID,
                            CASE 
                            WHEN tr_saleslink.salesNum IS NULL THEN CAST(COALESCE(ms_table.tableName, tr_saleshead.billNum) AS CHAR(100))
                            WHEN tr_saleslink.salesNum IS NOT NULL THEN CONCAT(CAST(COALESCE(ms_table.tableName, tr_saleshead.billNum) AS CHAR(100)), ',', GROUP_CONCAT(lt.tableName))
                            END AS _TableName,
                            @row_number := CASE
                            WHEN @transSalesNum = smlt.salesNum THEN @row_number + 1
                            ELSE 1
                            END AS _OrderLine,
                            CASE WHEN smlt.menuGroupID = 0 THEN 0 
                            ELSE 1 END AS _IndentLevel,
                            smlt.menuID AS _ProductID,
                            CAST(ms_menu.menuName AS CHAR(100)) AS _ProductName,
                            smlt.qty * COALESCE(smu.qty, 1) AS _Qty,
                            CAST(smlt.price - (smlt.price * smlt.discount / 100) AS DECIMAL(18,4)) AS _PricePerUnit,
                            smlt.price AS _OrgPricePerUnit,
                            smlt.discount AS _Disc,
                            @transSalesNum := CAST(tr_saleshead.salesNum AS CHAR(100)) AS _ReferenceNo
                        FROM tr_saleshead
                        JOIN tr_saleslink ON tr_saleshead.salesNum = tr_saleslink.salesNum
                        LEFT JOIN tr_saleshead slt ON tr_saleslink.linkSalesNum = slt.salesNum
                        LEFT JOIN tr_salesmenu smlt ON slt.salesNum = smlt.salesNum
                        LEFT JOIN ms_table lt ON slt.tableID = lt.tableID
                        LEFT JOIN ms_menu ON ms_menu.menuID = smlt.menuID
                        LEFT JOIN ms_branch ON tr_saleshead.branchID = ms_branch.branchID
                        LEFT JOIN ms_table ON tr_saleshead.tableID = ms_table.tableID
                        LEFT JOIN tr_salesmenu smu ON smu.localID = smlt.menuRefID AND smu.salesNum = smlt.salesNum
                        WHERE tr_saleshead.salesDateOut IS NULL AND tr_saleshead.salesNum = salesNumParams 
                        GROUP BY
                            tr_saleshead.salesNum,
                            tr_saleshead.branchID,
                            ms_branch.branchName,
                            tr_saleshead.tableID,
                            ms_table.tableName,
                            smlt.salesNum,
                            smlt.menuGroupID,
                            smlt.menuID,
                            ms_menu.menuName,
                            smlt.qty,
                            smu.qty,
                            smlt.price,
                            smlt.discount,
                            tr_saleshead.salesDateIn,
                            tr_saleshead.salesDateOut
                    )
                ) a
                ORDER BY
                    a._SalesDate DESC,
                    a._SalesModeID,
                    a._TableName;
            END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spESBOutstandingTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spESBOutstandingTable`(IN salesDateParams CHAR(10), IN tableNameParams VARCHAR(100))
BEGIN
                DECLARE row_number INT;
                DECLARE transSalesNum VARCHAR(100);
                SET @row_number = 0;
                SET @transSalesNum = '';

                SELECT * FROM (
                    SELECT 
                    @transSalesNum := CAST(tr_salesmenu.salesNum AS CHAR(100)) AS _OrderID,
                    tr_saleshead.branchID AS _ShopID,
                    CAST(ms_branch.branchName AS CHAR(50)) AS  _ShopName,
                    tr_saleshead.salesDateIn AS _SalesDate,
                    CASE WHEN tr_saleshead.tableID > 0 THEN 1 ELSE 2 END AS _SalesModeID,
                    CASE WHEN tr_saleshead.tableID > 0 THEN 'Dine In' ELSE 'Take Away' END AS _SalesModeName,
                    tr_saleshead.tableID AS _TableID,
                    CAST(COALESCE(ms_table.tableName, tr_saleshead.salesNum) AS CHAR(100)) AS _TableName,
                    @row_number := CASE
                        WHEN @transSalesNum = tr_salesmenu.salesNum THEN @row_number + 1
                        ELSE 1
                    END AS _OrderLine,
                    CASE WHEN tr_salesmenu.menuGroupID = 0 THEN 0 
                    ELSE 1 END AS _IndentLevel,
                    tr_salesmenu.menuID AS _ProductID,
                    CAST(ms_menu.menuName AS CHAR(100)) AS _ProductName,
                    tr_salesmenu.qty AS _Qty,
                    CAST(tr_salesmenu.price - (tr_salesmenu.price * tr_salesmenu.discount / 100) AS DECIMAL(18,4)) AS _PricePerUnit,
                    tr_salesmenu.price AS _OrgPricePerUnit,
                    tr_salesmenu.discount AS _Disc,
                    @transSalesNum := CAST(tr_salesmenu.salesNum AS CHAR(100)) AS _ReferenceNo
                    FROM tr_salesmenu
                    LEFT JOIN tr_saleshead ON tr_saleshead.salesNum = tr_salesmenu.salesNum
                    LEFT JOIN ms_menu ON ms_menu.menuID = tr_salesmenu.menuID
                    LEFT JOIN ms_branch ON tr_saleshead.branchID = ms_branch.branchID
                    LEFT JOIN ms_table ON tr_saleshead.tableID = ms_table.tableID
                    WHERE CASE WHEN salesDateParams = '' THEN 
                            CASE WHEN tableNameParams = '' THEN
                                1 = 1
                            ELSE 
                                ms_table.tableName = tableNameParams
                            END
                        ELSE
                            CASE WHEN tableNameParams = '' THEN
                                CAST(tr_saleshead.salesDateIn AS DATE)= salesDateParams
                            ELSE 
                                CAST(tr_saleshead.salesDateIn AS DATE) = salesDateParams AND ms_table.tableName = tableNameParams
                            END
                        END
                    AND tr_saleshead.salesDateOut IS NULL
                    
                    UNION ALL
                    
                    SELECT 
                    @transSalesNum := CAST(tr_salesmenuextra.salesNum AS CHAR(100)) AS _OrderID,
                    tr_saleshead.branchID AS _ShopID,
                    CAST(ms_branch.branchName AS CHAR(50)) AS  _ShopName,
                    tr_saleshead.salesDateIn AS _SalesDate,
                    CASE WHEN tr_saleshead.tableID > 0 THEN 1 ELSE 2 END AS _SalesModeID,
                    CASE WHEN tr_saleshead.tableID > 0 THEN 'Dine In' ELSE 'Take Away' END AS _SalesModeName,
                    tr_saleshead.tableID AS _TableID,
                    CAST(COALESCE(ms_table.tableName, tr_saleshead.salesNum) AS CHAR(100)) AS _TableName,
                    @row_number := CASE
                        WHEN @transSalesNum = tr_salesmenuextra.salesNum THEN @row_number + 1
                        ELSE 1
                    END AS _OrderLine,
                    0 AS _IndentLevel,
                    tr_salesmenuextra.menuExtraID AS _ProductID,
                    CAST(ms_menuextra.menuExtraName AS CHAR(100)) AS _ProductName,
                    tr_salesmenuextra.qty AS _Qty,
                    CAST(tr_salesmenuextra.price - (tr_salesmenuextra.price * tr_salesmenuextra.discount / 100) AS DECIMAL(18,4)) AS _PricePerUnit,
                    tr_salesmenuextra.price AS _OrgPricePerUnit,
                    tr_salesmenuextra.discount AS _Disc,
                    @transSalesNum := CAST(tr_salesmenuextra.salesNum AS CHAR(100)) AS _ReferenceNo
                    FROM tr_salesmenuextra
                    LEFT JOIN tr_saleshead ON tr_saleshead.salesNum = tr_salesmenuextra.salesNum
                    LEFT JOIN ms_menuextra ON ms_menuextra.menuID = tr_salesmenuextra.menuExtraID
                    LEFT JOIN ms_branch ON tr_saleshead.branchID = ms_branch.branchID
                    LEFT JOIN ms_table ON tr_saleshead.tableID = ms_table.tableID
                    WHERE 
                        CASE WHEN salesDateParams = '' THEN 
                            CASE WHEN tableNameParams = '' THEN
                                1 = 1
                            ELSE 
                                ms_table.tableName = tableNameParams
                            END
                        ELSE
                            CASE WHEN tableNameParams = '' THEN
                                CAST(tr_saleshead.salesDateIn AS DATE) = salesDateParams
                            ELSE 
                                CAST(tr_saleshead.salesDateIn AS DATE) = salesDateParams AND ms_table.tableName = tableNameParams
                            END
                        END
                    AND tr_saleshead.salesDateOut IS NULL                    
                ) a; 
            END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spESBTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spESBTable`()
BEGIN
                SELECT 
                    tableID AS _TableID,
                    tableID AS _TableNumber,
                    CAST(tableName AS CHAR(100)) AS _TableName
                FROM 
                    ms_table

                UNION ALL

                SELECT 
                    CAST(SUBSTRING(tr_saleshead.salesNum, 4) AS UNSIGNED) AS _TableID,
                    CAST(SUBSTRING(tr_saleshead.salesNum, 4) AS UNSIGNED) AS _TableNumber,
                    CAST(tr_saleshead.salesNum AS CHAR(100)) AS _TableName
                FROM
                    tr_saleshead 
                WHERE tableID  = 0;
            END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spESBTableApi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spESBTableApi`(IN branchParams VARCHAR(20))
BEGIN
                SELECT 
                    tableID AS _TableID,
                    tableID AS _TableNumber,
                    CAST(tableName AS CHAR(100)) AS _TableName
                FROM 
                    ms_table
                JOIN 
                    ms_tablesection on ms_table.tableSectionID = ms_tablesection.tableSectionID
                JOIN 
                    ms_branch on ms_tablesection.branchID = ms_branch.branchID and ms_branch.branchCode = branchParams

                UNION ALL

                SELECT
                    CAST(SUBSTRING(tr_saleshead.salesNum, 4) AS UNSIGNED) AS _TableID,
                    CAST(SUBSTRING(tr_saleshead.salesNum, 4) AS UNSIGNED) AS _TableNumber,
                    CAST(tr_saleshead.salesNum AS CHAR(100)) AS _TableName
                FROM
                    tr_saleshead 
                JOIN 
                    ms_branch on tr_saleshead.branchID = ms_branch.branchID and ms_branch.branchCode = branchParams
                WHERE tableID  = 0;
            END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_tax_jakarta`
--

/*!50001 DROP VIEW IF EXISTS `view_tax_jakarta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`useresb`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_tax_jakarta` AS (select coalesce(`a`.`billNum`,`a`.`salesNum`) AS `Sales_No`,coalesce(`a`.`billNum`,`a`.`salesNum`) AS `Receipt_No`,concat(date_format(`a`.`salesDateOut`,'%m/%d/%Y'),' ',date_format(`a`.`salesDateOut`,'%T')) AS `Tanggal_Trx`,`a`.`subtotal` AS `Subtotal`,`a`.`otherTaxTotal` AS `Service_Charge`,`a`.`vatTotal` AS `Tax`,(`a`.`grandTotal` - `a`.`roundingTotal`) AS `Amount`,`a`.`salesDate` AS `SaleDate`,`b`.`branchCode` AS `OutletCode`,`b`.`branchName` AS `OutletName`,`a`.`branchID` AS `ShopID` from (`tr_saleshead` `a` join `ms_branch` `b` on((`a`.`branchID` = `b`.`branchID`))) where ((`a`.`statusID` = 8) and (not(`a`.`salesNum` in (select `a`.`salesNum` from ((`tr_saleshead` `a` join `tr_salespayment` `b` on((`a`.`salesNum` = `b`.`salesNum`))) join `ms_paymentmethod` `c` on(((`b`.`paymentMethodID` = `c`.`paymentMethodID`) and (`c`.`paymentMethodTypeID` = 7)))) group by `a`.`salesNum` union select `a`.`salesNum` from (((`tr_saleshead` `a` join `tr_saleslink` `b` on((`a`.`salesNum` = `b`.`linkSalesNum`))) join `tr_salespayment` `c` on((`b`.`salesNum` = `c`.`salesNum`))) join `ms_paymentmethod` `d` on(((`c`.`paymentMethodID` = `d`.`paymentMethodID`) and (`d`.`paymentMethodTypeID` = 7)))) group by `a`.`salesNum`))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-18 12:03:14
