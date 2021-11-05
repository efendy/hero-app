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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spESBBilledOrder`(IN salesDateParams CHAR(10), IN tableNameParams VARCHAR(100))
BEGIN
                DECLARE `row_number` INT;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spESBBilledOrderApi`(IN salesNumParams VARCHAR(100))
BEGIN
            DECLARE `row_number` INT;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spESBOutstandingOrder`(IN salesDateParams CHAR(10), IN tableNameParams VARCHAR(100))
BEGIN
                DECLARE `row_number` INT;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spESBOutstandingOrderApi`(
                IN salesNumParams VARCHAR(100)
            )
BEGIN
                DECLARE `row_number` INT;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spESBOutstandingTable`(IN salesDateParams CHAR(10), IN tableNameParams VARCHAR(100))
BEGIN
                DECLARE `row_number` INT;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
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

-- Dump completed on 2021-10-22 11:37:57
