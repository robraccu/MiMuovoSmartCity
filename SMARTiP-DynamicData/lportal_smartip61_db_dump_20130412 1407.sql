-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.60-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,MYSQL323' */;


--
-- Create schema lportal_smartip61
--

CREATE DATABASE IF NOT EXISTS lportal_smartip61;
USE lportal_smartip61;

--
-- Definition of table `Account_`
--

DROP TABLE IF EXISTS `Account_`;
CREATE TABLE `Account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentAccountId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `legalName` varchar(75) DEFAULT NULL,
  `legalId` varchar(75) DEFAULT NULL,
  `legalType` varchar(75) DEFAULT NULL,
  `sicCode` varchar(75) DEFAULT NULL,
  `tickerSymbol` varchar(75) DEFAULT NULL,
  `industry` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `size_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Account_`
--

/*!40000 ALTER TABLE `Account_` DISABLE KEYS */;
INSERT INTO `Account_` (`accountId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`parentAccountId`,`name`,`legalName`,`legalId`,`legalType`,`sicCode`,`tickerSymbol`,`industry`,`type_`,`size_`) VALUES 
 (10156,10154,0,'','2012-02-20 09:47:29','2013-03-19 13:58:08',0,'MiMuovoSmart','','','','','','','','');
/*!40000 ALTER TABLE `Account_` ENABLE KEYS */;


--
-- Definition of table `Address`
--

DROP TABLE IF EXISTS `Address`;
CREATE TABLE `Address` (
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `street1` varchar(75) DEFAULT NULL,
  `street2` varchar(75) DEFAULT NULL,
  `street3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(75) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`addressId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Address`
--

/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;


--
-- Definition of table `AnnouncementsDelivery`
--

DROP TABLE IF EXISTS `AnnouncementsDelivery`;
CREATE TABLE `AnnouncementsDelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `email` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `website` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AnnouncementsDelivery`
--

/*!40000 ALTER TABLE `AnnouncementsDelivery` DISABLE KEYS */;
INSERT INTO `AnnouncementsDelivery` (`deliveryId`,`companyId`,`userId`,`type_`,`email`,`sms`,`website`) VALUES 
 (10406,10154,10196,'general',0,0,1),
 (10407,10154,10196,'news',0,0,1),
 (10408,10154,10196,'test',0,0,1),
 (19610,10154,19604,'general',0,0,0),
 (19611,10154,19604,'news',0,0,0),
 (19612,10154,19604,'test',0,0,0),
 (19619,10154,19613,'general',0,0,0),
 (19620,10154,19613,'news',0,0,0),
 (19621,10154,19613,'test',0,0,0),
 (21308,10154,21302,'general',0,0,0),
 (21309,10154,21302,'news',0,0,0),
 (21310,10154,21302,'test',0,0,0);
/*!40000 ALTER TABLE `AnnouncementsDelivery` ENABLE KEYS */;


--
-- Definition of table `AnnouncementsEntry`
--

DROP TABLE IF EXISTS `AnnouncementsEntry`;
CREATE TABLE `AnnouncementsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `alert` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AnnouncementsEntry`
--

/*!40000 ALTER TABLE `AnnouncementsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsEntry` ENABLE KEYS */;


--
-- Definition of table `AnnouncementsFlag`
--

DROP TABLE IF EXISTS `AnnouncementsFlag`;
CREATE TABLE `AnnouncementsFlag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`flagId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AnnouncementsFlag`
--

/*!40000 ALTER TABLE `AnnouncementsFlag` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsFlag` ENABLE KEYS */;


--
-- Definition of table `AssetCategory`
--

DROP TABLE IF EXISTS `AssetCategory`;
CREATE TABLE `AssetCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `leftCategoryId` bigint(20) DEFAULT NULL,
  `rightCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `vocabularyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AssetCategory`
--

/*!40000 ALTER TABLE `AssetCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetCategory` ENABLE KEYS */;


--
-- Definition of table `AssetCategoryProperty`
--

DROP TABLE IF EXISTS `AssetCategoryProperty`;
CREATE TABLE `AssetCategoryProperty` (
  `categoryPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`categoryPropertyId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AssetCategoryProperty`
--

/*!40000 ALTER TABLE `AssetCategoryProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetCategoryProperty` ENABLE KEYS */;


--
-- Definition of table `AssetEntries_AssetCategories`
--

DROP TABLE IF EXISTS `AssetEntries_AssetCategories`;
CREATE TABLE `AssetEntries_AssetCategories` (
  `entryId` bigint(20) NOT NULL,
  `categoryId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`categoryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AssetEntries_AssetCategories`
--

/*!40000 ALTER TABLE `AssetEntries_AssetCategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetEntries_AssetCategories` ENABLE KEYS */;


--
-- Definition of table `AssetEntries_AssetTags`
--

DROP TABLE IF EXISTS `AssetEntries_AssetTags`;
CREATE TABLE `AssetEntries_AssetTags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AssetEntries_AssetTags`
--

/*!40000 ALTER TABLE `AssetEntries_AssetTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetEntries_AssetTags` ENABLE KEYS */;


--
-- Definition of table `AssetEntry`
--

DROP TABLE IF EXISTS `AssetEntry`;
CREATE TABLE `AssetEntry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `classTypeId` bigint(20) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AssetEntry`
--

/*!40000 ALTER TABLE `AssetEntry` DISABLE KEYS */;
INSERT INTO `AssetEntry` (`entryId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`classUuid`,`classTypeId`,`visible`,`startDate`,`endDate`,`publishDate`,`expirationDate`,`mimeType`,`title`,`description`,`summary`,`url`,`layoutUuid`,`height`,`width`,`priority`,`viewCount`) VALUES 
 (10178,10172,10154,10158,'','2012-02-20 09:47:30','2012-02-20 09:47:30',10117,10176,'ee19f63d-305c-485c-ab3f-4c5ac1fb9028',0,0,NULL,NULL,NULL,NULL,'text/html','10175','','','','',0,0,0,0),
 (10186,10180,10154,10158,'','2012-02-20 09:47:30','2012-02-20 09:47:30',10117,10184,'d7971e95-5731-4cc7-a025-bfa3d549dedb',0,0,NULL,NULL,NULL,NULL,'text/html','10183','','','','',0,0,0,0),
 (10201,10192,10154,10196,'Test Test','2012-02-20 09:47:31','2013-04-11 16:02:08',10005,10196,'9a334fae-f7db-4a6e-bfb1-04a39d461cc9',0,0,NULL,NULL,NULL,NULL,'','Admin Minda','','','','',0,0,0,0),
 (10317,10310,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34',10117,10314,'91e8d3a3-ce70-44d2-b63f-2dd68b78b1aa',0,0,NULL,NULL,NULL,NULL,'text/html','10313','','','','',0,0,0,0),
 (10326,10320,10154,10158,'','2012-02-20 09:47:35','2012-02-20 09:47:35',10117,10324,'3f4674c4-21ea-45ed-9641-20c740469c26',0,0,NULL,NULL,NULL,NULL,'text/html','10323','','','','',0,0,0,0),
 (10335,10329,10154,10158,'','2012-02-20 09:47:35','2012-02-20 09:47:35',10117,10333,'450b9ef0-a65e-4959-9ecd-ed4fecc23c87',0,0,NULL,NULL,NULL,NULL,'text/html','10332','','','','',0,0,0,0),
 (10344,10338,10154,10158,'','2012-02-20 09:47:35','2012-02-20 09:47:35',10117,10342,'fa18dc5b-6d05-42fa-af7c-d273972f5dee',0,0,NULL,NULL,NULL,NULL,'text/html','10341','','','','',0,0,0,0),
 (10349,10338,10154,10158,'','2012-02-20 09:47:39','2012-02-20 09:47:39',10117,10347,'94b612f4-5fc3-470c-9682-b5b855ea344f',0,0,NULL,NULL,NULL,NULL,'text/html','10346','','','','',0,0,0,0),
 (10355,10338,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10117,10353,'41e108e9-713f-4373-aa71-559d0cde8882',0,0,NULL,NULL,NULL,NULL,'text/html','10352','','','','',0,0,0,0),
 (10361,10338,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10117,10359,'c45d1197-2d60-4381-8b42-980995b70637',0,0,NULL,NULL,NULL,NULL,'text/html','10358','','','','',0,0,0,0),
 (10370,10364,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10117,10368,'936fce62-4bd9-4f70-bba1-4913049a4f62',0,0,NULL,NULL,NULL,NULL,'text/html','10367','','','','',0,0,0,0),
 (10375,10364,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10117,10373,'2592ad70-63a8-40ed-9d84-a1b103177503',0,0,NULL,NULL,NULL,NULL,'text/html','10372','','','','',0,0,0,0),
 (10383,10364,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10117,10381,'e19ff245-8a91-4be8-ae37-be9b55e40923',0,0,NULL,NULL,NULL,NULL,'text/html','10380','','','','',0,0,0,0),
 (10389,10364,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10117,10387,'35659f75-dc29-487f-989e-dd3855699086',0,0,NULL,NULL,NULL,NULL,'text/html','10386','','','','',0,0,0,0),
 (10395,10364,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10117,10393,'75a7a79c-870a-424b-8483-5cddf3e679a0',0,0,NULL,NULL,NULL,NULL,'text/html','10392','','','','',0,0,0,0),
 (11908,10180,10154,10196,'admin Minda','2012-02-21 10:23:39','2012-02-21 10:23:39',10117,11906,'86ad1e49-955b-46d6-a8f7-0f49bf9e40b6',0,0,NULL,NULL,NULL,NULL,'text/html','11905','','','','',0,0,0,0),
 (11919,10180,10154,10196,'admin Minda','2012-02-21 10:46:19','2012-02-21 10:46:19',10117,11917,'9c21652f-08b2-493f-ae6b-5aa4a55aed34',0,0,NULL,NULL,NULL,NULL,'text/html','11916','','','','',0,0,0,0),
 (13504,10180,10154,10196,'admin Minda','2012-02-22 11:19:18','2012-02-22 11:19:18',10108,10180,'',0,0,NULL,NULL,NULL,NULL,'','10180','','','','',0,0,0,0),
 (13513,13507,10154,10196,'admin Minda','2012-02-22 11:22:26','2012-02-22 11:22:26',10117,13511,'b94abf29-62b9-40bb-9775-09013e64d756',0,0,NULL,NULL,NULL,NULL,'text/html','13510','','','','',0,0,0,0),
 (13905,10180,10154,10196,'admin Minda','2012-02-23 10:38:20','2012-02-23 10:38:20',10117,13903,'dd3f5529-7a1b-4aee-a418-96c954135892',0,0,NULL,NULL,NULL,NULL,'text/html','13902','','','','',0,0,0,0),
 (13912,10180,10154,10196,'admin Minda','2012-02-23 10:55:56','2012-02-23 10:55:56',10117,13910,'41bd4999-7d77-40b4-b62d-ca59c653338c',0,0,NULL,NULL,NULL,NULL,'text/html','13909','','','','',0,0,0,0),
 (13917,10180,10154,10196,'admin Minda','2012-02-23 11:00:54','2012-02-23 11:00:54',10117,13915,'779e2ef3-e8a1-4ed6-9f2c-05a68dea277b',0,0,NULL,NULL,NULL,NULL,'text/html','13914','','','','',0,0,0,0),
 (13922,10180,10154,10196,'admin Minda','2012-02-23 11:01:25','2012-02-23 11:01:25',10117,13920,'a64afcae-2d13-4867-8437-958f1b2bc897',0,0,NULL,NULL,NULL,NULL,'text/html','13919','','','','',0,0,0,0),
 (14006,10180,10154,10196,'admin Minda','2012-02-23 13:53:44','2012-02-23 13:53:44',10117,14004,'59a65a7b-65f3-4eef-ab9c-d591bdb8cbcf',0,0,NULL,NULL,NULL,NULL,'text/html','14003','','','','',0,0,0,0),
 (19609,10192,10154,10196,'admin Minda','2012-03-14 09:57:09','2012-03-19 17:04:26',10005,19604,'086851c9-e145-4180-a7d3-16205de7cec2',0,0,NULL,NULL,NULL,NULL,'','Dino Citta','','','','',0,0,0,0),
 (19618,10192,10154,10196,'admin Minda','2012-03-14 09:58:32','2012-03-19 17:04:46',10005,19613,'30bb4da5-dd2f-4dff-951a-d7ab037647fe',0,0,NULL,NULL,NULL,NULL,'','Ile Vig','','','','',0,0,0,0),
 (21307,10192,10154,10196,'Admin Minda','2012-03-20 09:41:12','2012-03-20 09:44:41',10005,21302,'fef5bac0-1802-4ef1-a5c9-e124aebbcc85',0,0,NULL,NULL,NULL,NULL,'','Chiara Mancini','','','','',0,0,0,0),
 (21712,10180,10154,10196,'Admin Minda','2012-04-18 07:27:47','2012-04-18 07:27:47',10117,21710,'67eb648f-2451-4dbd-8a5e-87eea2d034c4',0,0,NULL,NULL,NULL,NULL,'text/html','21705','','','','',0,0,0,0),
 (21716,10180,10154,10196,'Admin Minda','2012-04-18 07:27:48','2012-04-18 07:27:48',10117,21714,'0c936fde-15af-49dc-aeee-02da24018971',0,0,NULL,NULL,NULL,NULL,'text/html','21706','','','','',0,0,0,0),
 (21721,10180,10154,10196,'Admin Minda','2012-04-18 07:28:05','2012-04-18 07:28:05',10117,21719,'fe40f495-84be-452b-8f10-7b0d63da264e',0,0,NULL,NULL,NULL,NULL,'text/html','21718','','','','',0,0,0,0),
 (21726,10180,10154,10196,'Admin Minda','2012-04-18 07:28:12','2012-04-18 07:28:12',10117,21724,'1b7ebc70-ccc6-4497-9c01-63a8a0dad2a8',0,0,NULL,NULL,NULL,NULL,'text/html','21723','','','','',0,0,0,0),
 (21731,10180,10154,10196,'Admin Minda','2012-04-18 07:28:20','2012-04-18 07:28:20',10117,21729,'30145c27-ade9-48af-9a52-ebe85305f5d4',0,0,NULL,NULL,NULL,NULL,'text/html','21728','','','','',0,0,0,0),
 (21736,10180,10154,10196,'Admin Minda','2012-04-18 07:28:27','2012-04-18 07:28:27',10117,21734,'ad87543e-27d3-4375-8327-b94fa625e399',0,0,NULL,NULL,NULL,NULL,'text/html','21733','','','','',0,0,0,0),
 (21741,10180,10154,10196,'Admin Minda','2012-04-18 07:28:59','2012-04-18 07:28:59',10117,21739,'46c116ef-fd52-4240-986e-70e81cb195ce',0,0,NULL,NULL,NULL,NULL,'text/html','21738','','','','',0,0,0,0),
 (21746,10180,10154,10196,'Admin Minda','2012-04-18 07:29:12','2012-04-18 07:29:12',10117,21744,'7b76fbe7-5070-4e94-a04f-721a76cde32b',0,0,NULL,NULL,NULL,NULL,'text/html','21743','','','','',0,0,0,0),
 (21777,10180,10154,10196,'Admin Minda','2012-04-18 07:34:48','2012-04-18 07:34:48',10117,21775,'30d93398-3244-438e-96e4-90fdb420f1c1',0,0,NULL,NULL,NULL,NULL,'text/html','21774','','','','',0,0,0,0),
 (21806,10192,10154,21801,'Martino Maggio','2012-04-18 09:57:18','2012-04-18 09:57:18',10005,21801,'9e3e8046-4e32-4858-81cf-2c2515310260',0,0,NULL,NULL,NULL,NULL,'','Martino Maggio','','','','',0,0,0,0),
 (21904,10180,10154,10196,'Admin Minda','2012-04-19 10:13:03','2012-04-19 10:13:03',10117,21902,'d67e5c74-3d08-404f-96b2-24b095ae6c98',0,0,NULL,NULL,NULL,NULL,'text/html','21901','','','','',0,0,0,0),
 (23310,10180,10154,10196,'Admin Minda','2012-07-23 08:20:11','2012-07-23 08:20:11',10117,23308,'1c63cf33-c6b1-43be-a802-a7f8be680432',0,0,NULL,NULL,NULL,NULL,'text/html','23307','','','','',0,0,0,0),
 (24607,10180,10154,10196,'Admin Minda','2013-03-14 18:17:02','2013-03-14 18:17:03',10108,24605,'d6907ef6-71f8-47a1-9ebf-5f306a84c41d',0,1,NULL,NULL,'2013-03-12 10:01:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Partner SMARTiP</Title></root>','','','','',0,0,0,566),
 (24610,10180,10154,10196,'Admin Minda','2013-03-14 18:17:02','2013-03-14 18:17:02',10117,24608,'0518dad3-b43c-4afe-8e94-52a6aec8440d',0,0,NULL,NULL,NULL,NULL,'text/html','24605','','','','',0,0,0,0),
 (24624,10180,10154,10196,'Admin Minda','2013-03-14 18:17:03','2013-03-14 18:17:04',10108,24622,'f579d23f-2c4b-4644-a757-ba35296a2a94',0,1,NULL,NULL,'2013-03-14 10:05:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Lascia la tua opinione</Title></root>','','','','',0,0,0,568),
 (24627,10180,10154,10196,'Admin Minda','2013-03-14 18:17:03','2013-03-14 18:17:03',10117,24625,'2fa631d7-5771-49c0-aef1-09fe540ee57b',0,0,NULL,NULL,NULL,NULL,'text/html','24622','','','','',0,0,0,0);
/*!40000 ALTER TABLE `AssetEntry` ENABLE KEYS */;


--
-- Definition of table `AssetLink`
--

DROP TABLE IF EXISTS `AssetLink`;
CREATE TABLE `AssetLink` (
  `linkId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId1` bigint(20) DEFAULT NULL,
  `entryId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`linkId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AssetLink`
--

/*!40000 ALTER TABLE `AssetLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetLink` ENABLE KEYS */;


--
-- Definition of table `AssetTag`
--

DROP TABLE IF EXISTS `AssetTag`;
CREATE TABLE `AssetTag` (
  `tagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AssetTag`
--

/*!40000 ALTER TABLE `AssetTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTag` ENABLE KEYS */;


--
-- Definition of table `AssetTagProperty`
--

DROP TABLE IF EXISTS `AssetTagProperty`;
CREATE TABLE `AssetTagProperty` (
  `tagPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagPropertyId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AssetTagProperty`
--

/*!40000 ALTER TABLE `AssetTagProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTagProperty` ENABLE KEYS */;


--
-- Definition of table `AssetTagStats`
--

DROP TABLE IF EXISTS `AssetTagStats`;
CREATE TABLE `AssetTagStats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagStatsId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AssetTagStats`
--

/*!40000 ALTER TABLE `AssetTagStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTagStats` ENABLE KEYS */;


--
-- Definition of table `AssetVocabulary`
--

DROP TABLE IF EXISTS `AssetVocabulary`;
CREATE TABLE `AssetVocabulary` (
  `uuid_` varchar(75) DEFAULT NULL,
  `vocabularyId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `settings_` longtext,
  PRIMARY KEY (`vocabularyId`)
) TYPE=InnoDB;

--
-- Dumping data for table `AssetVocabulary`
--

/*!40000 ALTER TABLE `AssetVocabulary` DISABLE KEYS */;
INSERT INTO `AssetVocabulary` (`uuid_`,`vocabularyId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`title`,`description`,`settings_`) VALUES 
 ('9dc20cac-7574-4a15-90d0-00842cff340c',10316,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','','');
/*!40000 ALTER TABLE `AssetVocabulary` ENABLE KEYS */;


--
-- Definition of table `BlogsEntry`
--

DROP TABLE IF EXISTS `BlogsEntry`;
CREATE TABLE `BlogsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `content` longtext,
  `displayDate` datetime DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `allowTrackbacks` tinyint(4) DEFAULT NULL,
  `trackbacks` longtext,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `BlogsEntry`
--

/*!40000 ALTER TABLE `BlogsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogsEntry` ENABLE KEYS */;


--
-- Definition of table `BlogsStatsUser`
--

DROP TABLE IF EXISTS `BlogsStatsUser`;
CREATE TABLE `BlogsStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `entryCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `ratingsTotalEntries` int(11) DEFAULT NULL,
  `ratingsTotalScore` double DEFAULT NULL,
  `ratingsAverageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsUserId`)
) TYPE=InnoDB;

--
-- Dumping data for table `BlogsStatsUser`
--

/*!40000 ALTER TABLE `BlogsStatsUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogsStatsUser` ENABLE KEYS */;


--
-- Definition of table `BookmarksEntry`
--

DROP TABLE IF EXISTS `BookmarksEntry`;
CREATE TABLE `BookmarksEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `BookmarksEntry`
--

/*!40000 ALTER TABLE `BookmarksEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookmarksEntry` ENABLE KEYS */;


--
-- Definition of table `BookmarksFolder`
--

DROP TABLE IF EXISTS `BookmarksFolder`;
CREATE TABLE `BookmarksFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`folderId`)
) TYPE=InnoDB;

--
-- Dumping data for table `BookmarksFolder`
--

/*!40000 ALTER TABLE `BookmarksFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookmarksFolder` ENABLE KEYS */;


--
-- Definition of table `BrowserTracker`
--

DROP TABLE IF EXISTS `BrowserTracker`;
CREATE TABLE `BrowserTracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`browserTrackerId`)
) TYPE=InnoDB;

--
-- Dumping data for table `BrowserTracker`
--

/*!40000 ALTER TABLE `BrowserTracker` DISABLE KEYS */;
INSERT INTO `BrowserTracker` (`browserTrackerId`,`userId`,`browserKey`) VALUES 
 (10519,10196,363822057203);
/*!40000 ALTER TABLE `BrowserTracker` ENABLE KEYS */;


--
-- Definition of table `CalEvent`
--

DROP TABLE IF EXISTS `CalEvent`;
CREATE TABLE `CalEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `location` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `durationHour` int(11) DEFAULT NULL,
  `durationMinute` int(11) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `timeZoneSensitive` tinyint(4) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `remindBy` int(11) DEFAULT NULL,
  `firstReminder` int(11) DEFAULT NULL,
  `secondReminder` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventId`)
) TYPE=InnoDB;

--
-- Dumping data for table `CalEvent`
--

/*!40000 ALTER TABLE `CalEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `CalEvent` ENABLE KEYS */;


--
-- Definition of table `ClassName_`
--

DROP TABLE IF EXISTS `ClassName_`;
CREATE TABLE `ClassName_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`classNameId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ClassName_`
--

/*!40000 ALTER TABLE `ClassName_` DISABLE KEYS */;
INSERT INTO `ClassName_` (`classNameId`,`value`) VALUES 
 (10001,'com.liferay.portal.model.Group'),
 (10002,'com.liferay.portal.model.Layout'),
 (10003,'com.liferay.portal.model.Organization'),
 (10004,'com.liferay.portal.model.Role'),
 (10005,'com.liferay.portal.model.User'),
 (10006,'com.liferay.portal.model.UserGroup'),
 (10007,'com.liferay.portlet.blogs.model.BlogsEntry'),
 (10008,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),
 (10009,'com.liferay.portlet.calendar.model.CalEvent'),
 (10010,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),
 (10011,'com.liferay.portlet.messageboards.model.MBMessage'),
 (10012,'com.liferay.portlet.messageboards.model.MBThread'),
 (10013,'com.liferay.portlet.wiki.model.WikiPage'),
 (10014,'com.liferay.counter.model.Counter'),
 (10015,'com.liferay.portal.kernel.workflow.WorkflowTask'),
 (10016,'com.liferay.portal.model.Account'),
 (10017,'com.liferay.portal.model.Address'),
 (10018,'com.liferay.portal.model.BrowserTracker'),
 (10019,'com.liferay.portal.model.ClassName'),
 (10020,'com.liferay.portal.model.ClusterGroup'),
 (10021,'com.liferay.portal.model.Company'),
 (10022,'com.liferay.portal.model.Contact'),
 (10023,'com.liferay.portal.model.Country'),
 (10024,'com.liferay.portal.model.EmailAddress'),
 (10025,'com.liferay.portal.model.Image'),
 (10026,'com.liferay.portal.model.LayoutBranch'),
 (10027,'com.liferay.portal.model.LayoutPrototype'),
 (10028,'com.liferay.portal.model.LayoutRevision'),
 (10029,'com.liferay.portal.model.LayoutSet'),
 (10030,'com.liferay.portal.model.LayoutSetBranch'),
 (10031,'com.liferay.portal.model.LayoutSetPrototype'),
 (10032,'com.liferay.portal.model.ListType'),
 (10033,'com.liferay.portal.model.Lock'),
 (10034,'com.liferay.portal.model.MembershipRequest'),
 (10035,'com.liferay.portal.model.OrgGroupPermission'),
 (10036,'com.liferay.portal.model.OrgGroupRole'),
 (10037,'com.liferay.portal.model.OrgLabor'),
 (10038,'com.liferay.portal.model.PasswordPolicy'),
 (10039,'com.liferay.portal.model.PasswordPolicyRel'),
 (10040,'com.liferay.portal.model.PasswordTracker'),
 (10041,'com.liferay.portal.model.Permission'),
 (10042,'com.liferay.portal.model.Phone'),
 (10043,'com.liferay.portal.model.PluginSetting'),
 (10044,'com.liferay.portal.model.PortalPreferences'),
 (10045,'com.liferay.portal.model.Portlet'),
 (10046,'com.liferay.portal.model.PortletItem'),
 (10047,'com.liferay.portal.model.PortletPreferences'),
 (10048,'com.liferay.portal.model.Region'),
 (10049,'com.liferay.portal.model.Release'),
 (10050,'com.liferay.portal.model.Repository'),
 (10051,'com.liferay.portal.model.RepositoryEntry'),
 (10052,'com.liferay.portal.model.Resource'),
 (10053,'com.liferay.portal.model.ResourceAction'),
 (10054,'com.liferay.portal.model.ResourceBlock'),
 (10055,'com.liferay.portal.model.ResourceBlockPermission'),
 (10056,'com.liferay.portal.model.ResourceCode'),
 (10057,'com.liferay.portal.model.ResourcePermission'),
 (10058,'com.liferay.portal.model.ResourceTypePermission'),
 (10059,'com.liferay.portal.model.ServiceComponent'),
 (10060,'com.liferay.portal.model.Shard'),
 (10061,'com.liferay.portal.model.Subscription'),
 (10062,'com.liferay.portal.model.Team'),
 (10063,'com.liferay.portal.model.Ticket'),
 (10064,'com.liferay.portal.model.UserGroupGroupRole'),
 (10065,'com.liferay.portal.model.UserGroupRole'),
 (10066,'com.liferay.portal.model.UserIdMapper'),
 (10067,'com.liferay.portal.model.UserNotificationEvent'),
 (10068,'com.liferay.portal.model.UserTracker'),
 (10069,'com.liferay.portal.model.UserTrackerPath'),
 (10070,'com.liferay.portal.model.VirtualHost'),
 (10071,'com.liferay.portal.model.WebDAVProps'),
 (10072,'com.liferay.portal.model.Website'),
 (10073,'com.liferay.portal.model.WorkflowDefinitionLink'),
 (10074,'com.liferay.portal.model.WorkflowInstanceLink'),
 (10075,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),
 (10076,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),
 (10077,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),
 (10078,'com.liferay.portlet.asset.model.AssetCategory'),
 (10079,'com.liferay.portlet.asset.model.AssetCategoryProperty'),
 (10080,'com.liferay.portlet.asset.model.AssetEntry'),
 (10081,'com.liferay.portlet.asset.model.AssetLink'),
 (10082,'com.liferay.portlet.asset.model.AssetTag'),
 (10083,'com.liferay.portlet.asset.model.AssetTagProperty'),
 (10084,'com.liferay.portlet.asset.model.AssetTagStats'),
 (10085,'com.liferay.portlet.asset.model.AssetVocabulary'),
 (10086,'com.liferay.portlet.blogs.model.BlogsStatsUser'),
 (10087,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),
 (10088,'com.liferay.portlet.documentlibrary.model.DLContent'),
 (10089,'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),
 (10090,'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),
 (10091,'com.liferay.portlet.documentlibrary.model.DLFileRank'),
 (10092,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),
 (10093,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),
 (10094,'com.liferay.portlet.documentlibrary.model.DLFolder'),
 (10095,'com.liferay.portlet.documentlibrary.model.DLSync'),
 (10096,'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),
 (10097,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),
 (10098,'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),
 (10099,'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),
 (10100,'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),
 (10101,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),
 (10102,'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),
 (10103,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),
 (10104,'com.liferay.portlet.expando.model.ExpandoColumn'),
 (10105,'com.liferay.portlet.expando.model.ExpandoRow'),
 (10106,'com.liferay.portlet.expando.model.ExpandoTable'),
 (10107,'com.liferay.portlet.expando.model.ExpandoValue'),
 (10108,'com.liferay.portlet.journal.model.JournalArticle'),
 (10109,'com.liferay.portlet.journal.model.JournalArticleImage'),
 (10110,'com.liferay.portlet.journal.model.JournalArticleResource'),
 (10111,'com.liferay.portlet.journal.model.JournalContentSearch'),
 (10112,'com.liferay.portlet.journal.model.JournalFeed'),
 (10113,'com.liferay.portlet.journal.model.JournalStructure'),
 (10114,'com.liferay.portlet.journal.model.JournalTemplate'),
 (10115,'com.liferay.portlet.messageboards.model.MBBan'),
 (10116,'com.liferay.portlet.messageboards.model.MBCategory'),
 (10117,'com.liferay.portlet.messageboards.model.MBDiscussion'),
 (10118,'com.liferay.portlet.messageboards.model.MBMailingList'),
 (10119,'com.liferay.portlet.messageboards.model.MBStatsUser'),
 (10120,'com.liferay.portlet.messageboards.model.MBThreadFlag'),
 (10121,'com.liferay.portlet.mobiledevicerules.model.MDRAction'),
 (10122,'com.liferay.portlet.mobiledevicerules.model.MDRRule'),
 (10123,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),
 (10124,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),
 (10125,'com.liferay.portlet.polls.model.PollsChoice'),
 (10126,'com.liferay.portlet.polls.model.PollsQuestion'),
 (10127,'com.liferay.portlet.polls.model.PollsVote'),
 (10128,'com.liferay.portlet.ratings.model.RatingsEntry'),
 (10129,'com.liferay.portlet.ratings.model.RatingsStats'),
 (10130,'com.liferay.portlet.shopping.model.ShoppingCart'),
 (10131,'com.liferay.portlet.shopping.model.ShoppingCategory'),
 (10132,'com.liferay.portlet.shopping.model.ShoppingCoupon'),
 (10133,'com.liferay.portlet.shopping.model.ShoppingItem'),
 (10134,'com.liferay.portlet.shopping.model.ShoppingItemField'),
 (10135,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),
 (10136,'com.liferay.portlet.shopping.model.ShoppingOrder'),
 (10137,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),
 (10138,'com.liferay.portlet.social.model.SocialActivity'),
 (10139,'com.liferay.portlet.social.model.SocialActivityAchievement'),
 (10140,'com.liferay.portlet.social.model.SocialActivityCounter'),
 (10141,'com.liferay.portlet.social.model.SocialActivityLimit'),
 (10142,'com.liferay.portlet.social.model.SocialActivitySetting'),
 (10143,'com.liferay.portlet.social.model.SocialRelation'),
 (10144,'com.liferay.portlet.social.model.SocialRequest'),
 (10145,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),
 (10146,'com.liferay.portlet.softwarecatalog.model.SCLicense'),
 (10147,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),
 (10148,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),
 (10149,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),
 (10150,'com.liferay.portlet.usernotifications.model.UserNotificationEvent'),
 (10151,'com.liferay.portlet.wiki.model.WikiNode'),
 (10152,'com.liferay.portlet.wiki.model.WikiPageResource'),
 (10188,'com.liferay.portal.model.UserPersonalSite'),
 (10409,'com.liferay.chat.model.Entry'),
 (10410,'com.liferay.chat.model.Status'),
 (10414,'com.liferay.portal.workflow.kaleo.model.KaleoAction'),
 (10415,'com.liferay.portal.workflow.kaleo.model.KaleoCondition'),
 (10416,'com.liferay.portal.workflow.kaleo.model.KaleoDefinition'),
 (10417,'com.liferay.portal.workflow.kaleo.model.KaleoInstance'),
 (10418,'com.liferay.portal.workflow.kaleo.model.KaleoInstanceToken'),
 (10419,'com.liferay.portal.workflow.kaleo.model.KaleoLog'),
 (10420,'com.liferay.portal.workflow.kaleo.model.KaleoNode'),
 (10421,'com.liferay.portal.workflow.kaleo.model.KaleoNotification'),
 (10422,'com.liferay.portal.workflow.kaleo.model.KaleoNotificationRecipient'),
 (10423,'com.liferay.portal.workflow.kaleo.model.KaleoTask'),
 (10424,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignment'),
 (10425,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignmentInstance'),
 (10426,'com.liferay.portal.workflow.kaleo.model.KaleoTaskInstanceToken'),
 (10427,'com.liferay.portal.workflow.kaleo.model.KaleoTimer'),
 (10428,'com.liferay.portal.workflow.kaleo.model.KaleoTimerInstanceToken'),
 (10429,'com.liferay.portal.workflow.kaleo.model.KaleoTransition'),
 (10460,'com.liferay.knowledgebase.model.KBArticle'),
 (10461,'com.liferay.knowledgebase.model.KBComment'),
 (10462,'com.liferay.knowledgebase.model.KBTemplate'),
 (10471,'com.liferay.mail.model.Account'),
 (10472,'com.liferay.mail.model.Attachment'),
 (10473,'com.liferay.mail.model.Folder'),
 (10474,'com.liferay.mail.model.Message'),
 (10477,'com.liferay.opensocial.model.Gadget'),
 (10478,'com.liferay.opensocial.model.OAuthConsumer'),
 (10479,'com.liferay.opensocial.model.OAuthToken'),
 (10486,'com.liferay.socialnetworking.model.MeetupsEntry'),
 (10487,'com.liferay.socialnetworking.model.MeetupsRegistration'),
 (10488,'com.liferay.socialnetworking.model.WallEntry'),
 (10502,'com.liferay.wsrp.model.WSRPConsumer'),
 (10503,'com.liferay.wsrp.model.WSRPConsumerPortlet'),
 (10504,'com.liferay.wsrp.model.WSRPProducer'),
 (22908,'com.liferay.portal.repository.liferayrepository.LiferayRepository');
/*!40000 ALTER TABLE `ClassName_` ENABLE KEYS */;


--
-- Definition of table `ClusterGroup`
--

DROP TABLE IF EXISTS `ClusterGroup`;
CREATE TABLE `ClusterGroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`clusterGroupId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ClusterGroup`
--

/*!40000 ALTER TABLE `ClusterGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterGroup` ENABLE KEYS */;


--
-- Definition of table `Company`
--

DROP TABLE IF EXISTS `Company`;
CREATE TABLE `Company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `webId` varchar(75) DEFAULT NULL,
  `key_` longtext,
  `mx` varchar(75) DEFAULT NULL,
  `homeURL` longtext,
  `logoId` bigint(20) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  `maxUsers` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`companyId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Company`
--

/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` (`companyId`,`accountId`,`webId`,`key_`,`mx`,`homeURL`,`logoId`,`system`,`maxUsers`,`active_`) VALUES 
 (10154,10156,'liferay.com','rO0ABXNyABRqYXZhLnNlY3VyaXR5LktleVJlcL35T7OImqVDAgAETAAJYWxnb3JpdGhtdAASTGphdmEvbGFuZy9TdHJpbmc7WwAHZW5jb2RlZHQAAltCTAAGZm9ybWF0cQB+AAFMAAR0eXBldAAbTGphdmEvc2VjdXJpdHkvS2V5UmVwJFR5cGU7eHB0AANERVN1cgACW0Ks8xf4BghU4AIAAHhwAAAACKRrblvEAp1SdAADUkFXfnIAGWphdmEuc2VjdXJpdHkuS2V5UmVwJFR5cGUAAAAAAAAAABIAAHhyAA5qYXZhLmxhbmcuRW51bQAAAAAAAAAAEgAAeHB0AAZTRUNSRVQ=','mimuovosmart.com','/web/guest/home',0,0,0,1);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;


--
-- Definition of table `Contact_`
--

DROP TABLE IF EXISTS `Contact_`;
CREATE TABLE `Contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contactId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Contact_`
--

/*!40000 ALTER TABLE `Contact_` DISABLE KEYS */;
INSERT INTO `Contact_` (`contactId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`accountId`,`parentContactId`,`firstName`,`middleName`,`lastName`,`prefixId`,`suffixId`,`male`,`birthday`,`smsSn`,`aimSn`,`facebookSn`,`icqSn`,`jabberSn`,`msnSn`,`mySpaceSn`,`skypeSn`,`twitterSn`,`ymSn`,`employeeStatusId`,`employeeNumber`,`jobTitle`,`jobClass`,`hoursOfOperation`) VALUES 
 (10159,10154,10158,'','2012-02-20 09:47:28','2012-02-20 09:47:28',10156,0,'','','',0,0,1,'2012-02-20 09:47:28','','','','','','','','','','','','','','',''),
 (10197,10154,10196,'','2012-02-20 09:47:31','2013-04-11 16:02:07',10156,0,'Admin','','Minda',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),
 (19605,10154,10196,'admin Minda','2012-03-14 09:57:09','2012-03-19 17:04:26',10156,0,'Dino','','Citta',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),
 (19614,10154,10196,'admin Minda','2012-03-14 09:58:32','2012-03-19 17:04:46',10156,0,'Ile','','Vig',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),
 (21303,10154,10196,'Admin Minda','2012-03-20 09:41:11','2012-03-20 09:44:41',10156,0,'Chiara','','Mancini',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),
 (21802,10154,21801,'','2012-04-18 09:57:17','2012-04-18 09:57:17',10156,0,'Martino','','Maggio',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `Contact_` ENABLE KEYS */;


--
-- Definition of table `Counter`
--

DROP TABLE IF EXISTS `Counter`;
CREATE TABLE `Counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) TYPE=InnoDB;

--
-- Dumping data for table `Counter`
--

/*!40000 ALTER TABLE `Counter` DISABLE KEYS */;
INSERT INTO `Counter` (`name`,`currentId`) VALUES 
 ('com.liferay.counter.model.Counter',25200),
 ('com.liferay.portal.model.Layout#10172#true',1),
 ('com.liferay.portal.model.Layout#10180#false',20),
 ('com.liferay.portal.model.Layout#10180#true',3),
 ('com.liferay.portal.model.Layout#10310#true',1),
 ('com.liferay.portal.model.Layout#10320#true',1),
 ('com.liferay.portal.model.Layout#10329#true',1),
 ('com.liferay.portal.model.Layout#10338#true',3),
 ('com.liferay.portal.model.Layout#10364#true',4),
 ('com.liferay.portal.model.Layout#13507#true',1),
 ('com.liferay.portal.model.Permission',100),
 ('com.liferay.portal.model.Resource',100),
 ('com.liferay.portal.model.ResourceAction',2600),
 ('com.liferay.portal.model.ResourcePermission',5800);
/*!40000 ALTER TABLE `Counter` ENABLE KEYS */;


--
-- Definition of table `Country`
--

DROP TABLE IF EXISTS `Country`;
CREATE TABLE `Country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `a2` varchar(75) DEFAULT NULL,
  `a3` varchar(75) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `idd_` varchar(75) DEFAULT NULL,
  `zipRequired` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`countryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Country`
--

/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` (`countryId`,`name`,`a2`,`a3`,`number_`,`idd_`,`zipRequired`,`active_`) VALUES 
 (1,'Canada','CA','CAN','124','001',1,1),
 (2,'China','CN','CHN','156','086',1,1),
 (3,'France','FR','FRA','250','033',1,1),
 (4,'Germany','DE','DEU','276','049',1,1),
 (5,'Hong Kong','HK','HKG','344','852',1,1),
 (6,'Hungary','HU','HUN','348','036',1,1),
 (7,'Israel','IL','ISR','376','972',1,1),
 (8,'Italy','IT','ITA','380','039',1,1),
 (9,'Japan','JP','JPN','392','081',1,1),
 (10,'South Korea','KR','KOR','410','082',1,1),
 (11,'Netherlands','NL','NLD','528','031',1,1),
 (12,'Portugal','PT','PRT','620','351',1,1),
 (13,'Russia','RU','RUS','643','007',1,1),
 (14,'Singapore','SG','SGP','702','065',1,1),
 (15,'Spain','ES','ESP','724','034',1,1),
 (16,'Turkey','TR','TUR','792','090',1,1),
 (17,'Vietnam','VN','VNM','704','084',1,1),
 (18,'United Kingdom','GB','GBR','826','044',1,1),
 (19,'United States','US','USA','840','001',1,1),
 (20,'Afghanistan','AF','AFG','4','093',1,1),
 (21,'Albania','AL','ALB','8','355',1,1),
 (22,'Algeria','DZ','DZA','12','213',1,1),
 (23,'American Samoa','AS','ASM','16','684',1,1),
 (24,'Andorra','AD','AND','20','376',1,1),
 (25,'Angola','AO','AGO','24','244',0,1),
 (26,'Anguilla','AI','AIA','660','264',1,1),
 (27,'Antarctica','AQ','ATA','10','672',1,1),
 (28,'Antigua','AG','ATG','28','268',0,1),
 (29,'Argentina','AR','ARG','32','054',1,1),
 (30,'Armenia','AM','ARM','51','374',1,1),
 (31,'Aruba','AW','ABW','533','297',0,1),
 (32,'Australia','AU','AUS','36','061',1,1),
 (33,'Austria','AT','AUT','40','043',1,1),
 (34,'Azerbaijan','AZ','AZE','31','994',1,1),
 (35,'Bahamas','BS','BHS','44','242',0,1),
 (36,'Bahrain','BH','BHR','48','973',1,1),
 (37,'Bangladesh','BD','BGD','50','880',1,1),
 (38,'Barbados','BB','BRB','52','246',1,1),
 (39,'Belarus','BY','BLR','112','375',1,1),
 (40,'Belgium','BE','BEL','56','032',1,1),
 (41,'Belize','BZ','BLZ','84','501',0,1),
 (42,'Benin','BJ','BEN','204','229',0,1),
 (43,'Bermuda','BM','BMU','60','441',1,1),
 (44,'Bhutan','BT','BTN','64','975',1,1),
 (45,'Bolivia','BO','BOL','68','591',1,1),
 (46,'Bosnia-Herzegovina','BA','BIH','70','387',1,1),
 (47,'Botswana','BW','BWA','72','267',0,1),
 (48,'Brazil','BR','BRA','76','055',1,1),
 (49,'British Virgin Islands','VG','VGB','92','284',1,1),
 (50,'Brunei','BN','BRN','96','673',1,1),
 (51,'Bulgaria','BG','BGR','100','359',1,1),
 (52,'Burkina Faso','BF','BFA','854','226',0,1),
 (53,'Burma (Myanmar)','MM','MMR','104','095',1,1),
 (54,'Burundi','BI','BDI','108','257',0,1),
 (55,'Cambodia','KH','KHM','116','855',1,1),
 (56,'Cameroon','CM','CMR','120','237',1,1),
 (57,'Cape Verde Island','CV','CPV','132','238',1,1),
 (58,'Cayman Islands','KY','CYM','136','345',1,1),
 (59,'Central African Republic','CF','CAF','140','236',0,1),
 (60,'Chad','TD','TCD','148','235',1,1),
 (61,'Chile','CL','CHL','152','056',1,1),
 (62,'Christmas Island','CX','CXR','162','061',1,1),
 (63,'Cocos Islands','CC','CCK','166','061',1,1),
 (64,'Colombia','CO','COL','170','057',1,1),
 (65,'Comoros','KM','COM','174','269',0,1),
 (66,'Republic of Congo','CD','COD','180','242',0,1),
 (67,'Democratic Republic of Congo','CG','COG','178','243',0,1),
 (68,'Cook Islands','CK','COK','184','682',0,1),
 (69,'Costa Rica','CR','CRI','188','506',1,1),
 (70,'Croatia','HR','HRV','191','385',1,1),
 (71,'Cuba','CU','CUB','192','053',1,1),
 (72,'Cyprus','CY','CYP','196','357',1,1),
 (73,'Czech Republic','CZ','CZE','203','420',1,1),
 (74,'Denmark','DK','DNK','208','045',1,1),
 (75,'Djibouti','DJ','DJI','262','253',0,1),
 (76,'Dominica','DM','DMA','212','767',0,1),
 (77,'Dominican Republic','DO','DOM','214','809',1,1),
 (78,'Ecuador','EC','ECU','218','593',1,1),
 (79,'Egypt','EG','EGY','818','020',1,1),
 (80,'El Salvador','SV','SLV','222','503',1,1),
 (81,'Equatorial Guinea','GQ','GNQ','226','240',0,1),
 (82,'Eritrea','ER','ERI','232','291',0,1),
 (83,'Estonia','EE','EST','233','372',1,1),
 (84,'Ethiopia','ET','ETH','231','251',1,1),
 (85,'Faeroe Islands','FO','FRO','234','298',1,1),
 (86,'Falkland Islands','FK','FLK','238','500',1,1),
 (87,'Fiji Islands','FJ','FJI','242','679',0,1),
 (88,'Finland','FI','FIN','246','358',1,1),
 (89,'French Guiana','GF','GUF','254','594',1,1),
 (90,'French Polynesia','PF','PYF','258','689',1,1),
 (91,'Gabon','GA','GAB','266','241',1,1),
 (92,'Gambia','GM','GMB','270','220',0,1),
 (93,'Georgia','GE','GEO','268','995',1,1),
 (94,'Ghana','GH','GHA','288','233',0,1),
 (95,'Gibraltar','GI','GIB','292','350',1,1),
 (96,'Greece','GR','GRC','300','030',1,1),
 (97,'Greenland','GL','GRL','304','299',1,1),
 (98,'Grenada','GD','GRD','308','473',0,1),
 (99,'Guadeloupe','GP','GLP','312','590',1,1),
 (100,'Guam','GU','GUM','316','671',1,1),
 (101,'Guatemala','GT','GTM','320','502',1,1),
 (102,'Guinea','GN','GIN','324','224',0,1),
 (103,'Guinea-Bissau','GW','GNB','624','245',1,1),
 (104,'Guyana','GY','GUY','328','592',0,1),
 (105,'Haiti','HT','HTI','332','509',1,1),
 (106,'Honduras','HN','HND','340','504',1,1),
 (107,'Iceland','IS','ISL','352','354',1,1),
 (108,'India','IN','IND','356','091',1,1),
 (109,'Indonesia','ID','IDN','360','062',1,1),
 (110,'Iran','IR','IRN','364','098',1,1),
 (111,'Iraq','IQ','IRQ','368','964',1,1),
 (112,'Ireland','IE','IRL','372','353',0,1),
 (113,'Ivory Coast','CI','CIV','384','225',1,1),
 (114,'Jamaica','JM','JAM','388','876',1,1),
 (115,'Jordan','JO','JOR','400','962',1,1),
 (116,'Kazakhstan','KZ','KAZ','398','007',1,1),
 (117,'Kenya','KE','KEN','404','254',1,1),
 (118,'Kiribati','KI','KIR','408','686',0,1),
 (119,'Kuwait','KW','KWT','414','965',1,1),
 (120,'North Korea','KP','PRK','408','850',0,1),
 (121,'Kyrgyzstan','KG','KGZ','471','996',1,1),
 (122,'Laos','LA','LAO','418','856',1,1),
 (123,'Latvia','LV','LVA','428','371',1,1),
 (124,'Lebanon','LB','LBN','422','961',1,1),
 (125,'Lesotho','LS','LSO','426','266',1,1),
 (126,'Liberia','LR','LBR','430','231',1,1),
 (127,'Libya','LY','LBY','434','218',1,1),
 (128,'Liechtenstein','LI','LIE','438','423',1,1),
 (129,'Lithuania','LT','LTU','440','370',1,1),
 (130,'Luxembourg','LU','LUX','442','352',1,1),
 (131,'Macau','MO','MAC','446','853',0,1),
 (132,'Macedonia','MK','MKD','807','389',1,1),
 (133,'Madagascar','MG','MDG','450','261',1,1),
 (134,'Malawi','MW','MWI','454','265',0,1),
 (135,'Malaysia','MY','MYS','458','060',1,1),
 (136,'Maldives','MV','MDV','462','960',1,1),
 (137,'Mali','ML','MLI','466','223',0,1),
 (138,'Malta','MT','MLT','470','356',1,1),
 (139,'Marshall Islands','MH','MHL','584','692',1,1),
 (140,'Martinique','MQ','MTQ','474','596',1,1),
 (141,'Mauritania','MR','MRT','478','222',0,1),
 (142,'Mauritius','MU','MUS','480','230',0,1),
 (143,'Mayotte Island','YT','MYT','175','269',1,1),
 (144,'Mexico','MX','MEX','484','052',1,1),
 (145,'Micronesia','FM','FSM','583','691',1,1),
 (146,'Moldova','MD','MDA','498','373',1,1),
 (147,'Monaco','MC','MCO','492','377',1,1),
 (148,'Mongolia','MN','MNG','496','976',1,1),
 (149,'Montenegro','ME','MNE','499','382',1,1),
 (150,'Montserrat','MS','MSR','500','664',0,1),
 (151,'Morocco','MA','MAR','504','212',1,1),
 (152,'Mozambique','MZ','MOZ','508','258',1,1),
 (153,'Namibia','NA','NAM','516','264',1,1),
 (154,'Nauru','NR','NRU','520','674',0,1),
 (155,'Nepal','NP','NPL','524','977',1,1),
 (156,'Netherlands Antilles','AN','ANT','530','599',1,1),
 (157,'New Caledonia','NC','NCL','540','687',1,1),
 (158,'New Zealand','NZ','NZL','554','064',1,1),
 (159,'Nicaragua','NI','NIC','558','505',1,1),
 (160,'Niger','NE','NER','562','227',1,1),
 (161,'Nigeria','NG','NGA','566','234',1,1),
 (162,'Niue','NU','NIU','570','683',0,1),
 (163,'Norfolk Island','NF','NFK','574','672',1,1),
 (164,'Norway','NO','NOR','578','047',1,1),
 (165,'Oman','OM','OMN','512','968',1,1),
 (166,'Pakistan','PK','PAK','586','092',1,1),
 (167,'Palau','PW','PLW','585','680',1,1),
 (168,'Palestine','PS','PSE','275','970',1,1),
 (169,'Panama','PA','PAN','591','507',1,1),
 (170,'Papua New Guinea','PG','PNG','598','675',1,1),
 (171,'Paraguay','PY','PRY','600','595',1,1),
 (172,'Peru','PE','PER','604','051',1,1),
 (173,'Philippines','PH','PHL','608','063',1,1),
 (174,'Poland','PL','POL','616','048',1,1),
 (175,'Puerto Rico','PR','PRI','630','787',1,1),
 (176,'Qatar','QA','QAT','634','974',0,1),
 (177,'Reunion Island','RE','REU','638','262',1,1),
 (178,'Romania','RO','ROU','642','040',1,1),
 (179,'Rwanda','RW','RWA','646','250',0,1),
 (180,'St. Helena','SH','SHN','654','290',1,1),
 (181,'St. Kitts','KN','KNA','659','869',0,1),
 (182,'St. Lucia','LC','LCA','662','758',0,1),
 (183,'St. Pierre & Miquelon','PM','SPM','666','508',1,1),
 (184,'St. Vincent','VC','VCT','670','784',1,1),
 (185,'San Marino','SM','SMR','674','378',1,1),
 (186,'Sao Tome & Principe','ST','STP','678','239',0,1),
 (187,'Saudi Arabia','SA','SAU','682','966',1,1),
 (188,'Senegal','SN','SEN','686','221',1,1),
 (189,'Serbia','RS','SRB','688','381',1,1),
 (190,'Seychelles','SC','SYC','690','248',0,1),
 (191,'Sierra Leone','SL','SLE','694','249',0,1),
 (192,'Slovakia','SK','SVK','703','421',1,1),
 (193,'Slovenia','SI','SVN','705','386',1,1),
 (194,'Solomon Islands','SB','SLB','90','677',0,1),
 (195,'Somalia','SO','SOM','706','252',0,1),
 (196,'South Africa','ZA','ZAF','710','027',1,1),
 (197,'Sri Lanka','LK','LKA','144','094',1,1),
 (198,'Sudan','SD','SDN','736','095',1,1),
 (199,'Suriname','SR','SUR','740','597',0,1),
 (200,'Swaziland','SZ','SWZ','748','268',1,1),
 (201,'Sweden','SE','SWE','752','046',1,1),
 (202,'Switzerland','CH','CHE','756','041',1,1),
 (203,'Syria','SY','SYR','760','963',0,1),
 (204,'Taiwan','TW','TWN','158','886',1,1),
 (205,'Tajikistan','TJ','TJK','762','992',1,1),
 (206,'Tanzania','TZ','TZA','834','255',0,1),
 (207,'Thailand','TH','THA','764','066',1,1),
 (208,'Togo','TG','TGO','768','228',1,1),
 (209,'Tonga','TO','TON','776','676',0,1),
 (210,'Trinidad & Tobago','TT','TTO','780','868',0,1),
 (211,'Tunisia','TN','TUN','788','216',1,1),
 (212,'Turkmenistan','TM','TKM','795','993',1,1),
 (213,'Turks & Caicos','TC','TCA','796','649',1,1),
 (214,'Tuvalu','TV','TUV','798','688',0,1),
 (215,'Uganda','UG','UGA','800','256',0,1),
 (216,'Ukraine','UA','UKR','804','380',1,1),
 (217,'United Arab Emirates','AE','ARE','784','971',0,1),
 (218,'Uruguay','UY','URY','858','598',1,1),
 (219,'Uzbekistan','UZ','UZB','860','998',1,1),
 (220,'Vanuatu','VU','VUT','548','678',0,1),
 (221,'Vatican City','VA','VAT','336','039',1,1),
 (222,'Venezuela','VE','VEN','862','058',1,1),
 (223,'Wallis & Futuna','WF','WLF','876','681',1,1),
 (224,'Western Samoa','EH','ESH','732','685',1,1),
 (225,'Yemen','YE','YEM','887','967',0,1),
 (226,'Zambia','ZM','ZMB','894','260',1,1),
 (227,'Zimbabwe','ZW','ZWE','716','263',0,1);
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;


--
-- Definition of table `CyrusUser`
--

DROP TABLE IF EXISTS `CyrusUser`;
CREATE TABLE `CyrusUser` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY (`userId`)
) TYPE=InnoDB;

--
-- Dumping data for table `CyrusUser`
--

/*!40000 ALTER TABLE `CyrusUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusUser` ENABLE KEYS */;


--
-- Definition of table `CyrusVirtual`
--

DROP TABLE IF EXISTS `CyrusVirtual`;
CREATE TABLE `CyrusVirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY (`emailAddress`)
) TYPE=InnoDB;

--
-- Dumping data for table `CyrusVirtual`
--

/*!40000 ALTER TABLE `CyrusVirtual` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusVirtual` ENABLE KEYS */;


--
-- Definition of table `DDLRecord`
--

DROP TABLE IF EXISTS `DDLRecord`;
CREATE TABLE `DDLRecord` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DDLRecord`
--

/*!40000 ALTER TABLE `DDLRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecord` ENABLE KEYS */;


--
-- Definition of table `DDLRecordSet`
--

DROP TABLE IF EXISTS `DDLRecordSet`;
CREATE TABLE `DDLRecordSet` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `recordSetKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `minDisplayRows` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordSetId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DDLRecordSet`
--

/*!40000 ALTER TABLE `DDLRecordSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecordSet` ENABLE KEYS */;


--
-- Definition of table `DDLRecordVersion`
--

DROP TABLE IF EXISTS `DDLRecordVersion`;
CREATE TABLE `DDLRecordVersion` (
  `recordVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `recordId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recordVersionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DDLRecordVersion`
--

/*!40000 ALTER TABLE `DDLRecordVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecordVersion` ENABLE KEYS */;


--
-- Definition of table `DDMContent`
--

DROP TABLE IF EXISTS `DDMContent`;
CREATE TABLE `DDMContent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xml` longtext,
  PRIMARY KEY (`contentId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DDMContent`
--

/*!40000 ALTER TABLE `DDMContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDMContent` ENABLE KEYS */;


--
-- Definition of table `DDMStorageLink`
--

DROP TABLE IF EXISTS `DDMStorageLink`;
CREATE TABLE `DDMStorageLink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`storageLinkId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DDMStorageLink`
--

/*!40000 ALTER TABLE `DDMStorageLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDMStorageLink` ENABLE KEYS */;


--
-- Definition of table `DDMStructure`
--

DROP TABLE IF EXISTS `DDMStructure`;
CREATE TABLE `DDMStructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DDMStructure`
--

/*!40000 ALTER TABLE `DDMStructure` DISABLE KEYS */;
INSERT INTO `DDMStructure` (`uuid_`,`structureId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`structureKey`,`name`,`description`,`xsd`,`storageType`,`type_`) VALUES 
 ('b113634a-8163-4c90-ab9f-093f4a0fa948',10297,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34',10089,'Learning Module Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2235\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3212\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4115\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5069\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('5038c4d0-44ca-4f6b-96ce-122d979ef14d',10298,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34',10089,'Marketing Campaign Theme Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2305\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3229\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4282\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('fec15250-0846-4330-89f7-0a3a93dc5e15',10299,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34',10089,'Meeting Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date3054\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2217\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text4569\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text5638\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea6584\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea7502\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('132e8307-9d04-4902-a053-71c8ec3451c0',10301,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34',10089,'auto_10300','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Legal Contracts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date18949\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date20127\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select10264\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4893\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text14822\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text17700\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2087\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('d6bf1648-2802-49fe-89f6-0806828031d0',10303,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34',10089,'auto_10302','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"radio5547\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2033\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea2873\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('d541cf3e-61b9-4355-a2b5-4a6ef91cb121',10305,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34',10089,'auto_10304','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"text2082\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2979\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('0c092b76-240a-4c71-a06e-773831d8e6a5',10307,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34',10089,'auto_10306','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2890\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3864\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4831\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5929\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text1993\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('3be85cbe-2dcf-484a-b967-b2ed80a02d64',10308,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34',10010,'TikaRawMetadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TikaRawMetadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TikaRawMetadata</Description></root>','<root available-locales=\"en_US\" default-locale=\"en_US\"><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element></root>','xml',0),
 ('3974f3da-9b57-41bd-95d1-1181836add2c',10399,10180,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10097,'Contacts','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imService\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
INSERT INTO `DDMStructure` (`uuid_`,`structureId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`structureKey`,`name`,`description`,`xsd`,`storageType`,`type_`) VALUES 
 ('870e28f5-c63f-440a-a841-076872c2ac8e',10400,10180,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10097,'Events','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"name\"><![CDATA[cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"name\"><![CDATA[description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[textarea]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"name\"><![CDATA[eventDate]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-date]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"name\"><![CDATA[eventName]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"name\"><![CDATA[eventTime]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"name\"><![CDATA[location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('3e65774c-a828-43f6-9094-24c1147b07d9',10401,10180,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10097,'Inventory','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"name\"><![CDATA[purchasePrice]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"name\"><![CDATA[quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('0ed07e5a-7130-426a-a4ee-aa4307ebd62c',10402,10180,10154,10158,'','2012-02-20 09:47:41','2012-02-20 09:47:41',10097,'Issues Tracking','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('e4436097-eb6c-437f-832e-b406f4e304be',10403,10180,10154,10158,'','2012-02-20 09:47:41','2012-02-20 09:47:41',10097,'Meeting Minutes','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('5c184e04-4d9e-4bbb-9358-8a9ed1aac634',10404,10180,10154,10158,'','2012-02-20 09:47:41','2012-02-20 09:47:41',10097,'To Do','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" type=\"ddm-integer\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"name\"><![CDATA[percentComplete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-integer]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
/*!40000 ALTER TABLE `DDMStructure` ENABLE KEYS */;


--
-- Definition of table `DDMStructureLink`
--

DROP TABLE IF EXISTS `DDMStructureLink`;
CREATE TABLE `DDMStructureLink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`structureLinkId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DDMStructureLink`
--

/*!40000 ALTER TABLE `DDMStructureLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDMStructureLink` ENABLE KEYS */;


--
-- Definition of table `DDMTemplate`
--

DROP TABLE IF EXISTS `DDMTemplate`;
CREATE TABLE `DDMTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  PRIMARY KEY (`templateId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DDMTemplate`
--

/*!40000 ALTER TABLE `DDMTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDMTemplate` ENABLE KEYS */;


--
-- Definition of table `DLContent`
--

DROP TABLE IF EXISTS `DLContent`;
CREATE TABLE `DLContent` (
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `path_` varchar(255) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `data_` longblob,
  `size_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contentId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DLContent`
--

/*!40000 ALTER TABLE `DLContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLContent` ENABLE KEYS */;


--
-- Definition of table `DLFileEntry`
--

DROP TABLE IF EXISTS `DLFileEntry`;
CREATE TABLE `DLFileEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `readCount` int(11) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `custom1ImageId` bigint(20) DEFAULT NULL,
  `custom2ImageId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DLFileEntry`
--

/*!40000 ALTER TABLE `DLFileEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileEntry` ENABLE KEYS */;


--
-- Definition of table `DLFileEntryMetadata`
--

DROP TABLE IF EXISTS `DLFileEntryMetadata`;
CREATE TABLE `DLFileEntryMetadata` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryMetadataId` bigint(20) NOT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `fileVersionId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryMetadataId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DLFileEntryMetadata`
--

/*!40000 ALTER TABLE `DLFileEntryMetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileEntryMetadata` ENABLE KEYS */;


--
-- Definition of table `DLFileEntryType`
--

DROP TABLE IF EXISTS `DLFileEntryType`;
CREATE TABLE `DLFileEntryType` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`fileEntryTypeId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DLFileEntryType`
--

/*!40000 ALTER TABLE `DLFileEntryType` DISABLE KEYS */;
INSERT INTO `DLFileEntryType` (`uuid_`,`fileEntryTypeId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`description`) VALUES 
 ('77ee77bc-1d67-4f88-8452-e268ffebbbf6',0,0,0,0,'','2012-02-20 09:47:07','2012-02-20 09:47:07','Basic Document',''),
 ('07663980-6547-4693-a727-01796121eed2',10300,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34','Contract','Legal Contracts'),
 ('0eea0dde-678d-4f0b-80a4-47fcddc1e5ac',10302,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34','Marketing Banner','Marketing Banner'),
 ('c751cde6-bb75-4985-8160-b469eeff000f',10304,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34','Online Training','Online Training'),
 ('fec18850-c969-4f0b-96de-8f6faf217ddd',10306,10192,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34','Sales Presentation','Sales Presentation');
/*!40000 ALTER TABLE `DLFileEntryType` ENABLE KEYS */;


--
-- Definition of table `DLFileEntryTypes_DDMStructures`
--

DROP TABLE IF EXISTS `DLFileEntryTypes_DDMStructures`;
CREATE TABLE `DLFileEntryTypes_DDMStructures` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `structureId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`structureId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DLFileEntryTypes_DDMStructures`
--

/*!40000 ALTER TABLE `DLFileEntryTypes_DDMStructures` DISABLE KEYS */;
INSERT INTO `DLFileEntryTypes_DDMStructures` (`fileEntryTypeId`,`structureId`) VALUES 
 (10300,10301),
 (10302,10298),
 (10302,10303),
 (10304,10297),
 (10304,10305),
 (10306,10299),
 (10306,10307);
/*!40000 ALTER TABLE `DLFileEntryTypes_DDMStructures` ENABLE KEYS */;


--
-- Definition of table `DLFileEntryTypes_DLFolders`
--

DROP TABLE IF EXISTS `DLFileEntryTypes_DLFolders`;
CREATE TABLE `DLFileEntryTypes_DLFolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`folderId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DLFileEntryTypes_DLFolders`
--

/*!40000 ALTER TABLE `DLFileEntryTypes_DLFolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileEntryTypes_DLFolders` ENABLE KEYS */;


--
-- Definition of table `DLFileRank`
--

DROP TABLE IF EXISTS `DLFileRank`;
CREATE TABLE `DLFileRank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileRankId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DLFileRank`
--

/*!40000 ALTER TABLE `DLFileRank` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileRank` ENABLE KEYS */;


--
-- Definition of table `DLFileShortcut`
--

DROP TABLE IF EXISTS `DLFileShortcut`;
CREATE TABLE `DLFileShortcut` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `toFileEntryId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileShortcutId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DLFileShortcut`
--

/*!40000 ALTER TABLE `DLFileShortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileShortcut` ENABLE KEYS */;


--
-- Definition of table `DLFileVersion`
--

DROP TABLE IF EXISTS `DLFileVersion`;
CREATE TABLE `DLFileVersion` (
  `fileVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DLFileVersion`
--

/*!40000 ALTER TABLE `DLFileVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileVersion` ENABLE KEYS */;


--
-- Definition of table `DLFolder`
--

DROP TABLE IF EXISTS `DLFolder`;
CREATE TABLE `DLFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mountPoint` tinyint(4) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`folderId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DLFolder`
--

/*!40000 ALTER TABLE `DLFolder` DISABLE KEYS */;
INSERT INTO `DLFolder` (`uuid_`,`folderId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`repositoryId`,`mountPoint`,`parentFolderId`,`name`,`description`,`lastPostDate`,`defaultFileEntryTypeId`,`overrideFileEntryTypes`) VALUES 
 ('7db47359-ca79-4996-b8b3-454e25a7004d',23303,10180,10154,10196,'','2012-07-23 08:17:42','2012-07-23 08:17:42',10180,0,0,'OpenSocial Gadgets','',NULL,0,0);
/*!40000 ALTER TABLE `DLFolder` ENABLE KEYS */;


--
-- Definition of table `DLSync`
--

DROP TABLE IF EXISTS `DLSync`;
CREATE TABLE `DLSync` (
  `syncId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileId` bigint(20) DEFAULT NULL,
  `fileUuid` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`syncId`)
) TYPE=InnoDB;

--
-- Dumping data for table `DLSync`
--

/*!40000 ALTER TABLE `DLSync` DISABLE KEYS */;
INSERT INTO `DLSync` (`syncId`,`companyId`,`createDate`,`modifiedDate`,`fileId`,`fileUuid`,`repositoryId`,`parentFolderId`,`name`,`event`,`type_`,`version`) VALUES 
 (23304,10154,'2012-07-23 08:17:42','2012-07-23 08:17:42',23303,'7db47359-ca79-4996-b8b3-454e25a7004d',10180,0,'OpenSocial Gadgets','add','folder','-1');
/*!40000 ALTER TABLE `DLSync` ENABLE KEYS */;


--
-- Definition of table `EmailAddress`
--

DROP TABLE IF EXISTS `EmailAddress`;
CREATE TABLE `EmailAddress` (
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`emailAddressId`)
) TYPE=InnoDB;

--
-- Dumping data for table `EmailAddress`
--

/*!40000 ALTER TABLE `EmailAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmailAddress` ENABLE KEYS */;


--
-- Definition of table `ExpandoColumn`
--

DROP TABLE IF EXISTS `ExpandoColumn`;
CREATE TABLE `ExpandoColumn` (
  `columnId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `defaultData` longtext,
  `typeSettings` longtext,
  PRIMARY KEY (`columnId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ExpandoColumn`
--

/*!40000 ALTER TABLE `ExpandoColumn` DISABLE KEYS */;
INSERT INTO `ExpandoColumn` (`columnId`,`companyId`,`tableId`,`name`,`type_`,`defaultData`,`typeSettings`) VALUES 
 (10492,10154,10491,'aboutMe',15,'',''),
 (23316,10154,10485,'USER_PREFS__OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681_23307',15,'','');
/*!40000 ALTER TABLE `ExpandoColumn` ENABLE KEYS */;


--
-- Definition of table `ExpandoRow`
--

DROP TABLE IF EXISTS `ExpandoRow`;
CREATE TABLE `ExpandoRow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rowId_`)
) TYPE=InnoDB;

--
-- Dumping data for table `ExpandoRow`
--

/*!40000 ALTER TABLE `ExpandoRow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpandoRow` ENABLE KEYS */;


--
-- Definition of table `ExpandoTable`
--

DROP TABLE IF EXISTS `ExpandoTable`;
CREATE TABLE `ExpandoTable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`tableId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ExpandoTable`
--

/*!40000 ALTER TABLE `ExpandoTable` DISABLE KEYS */;
INSERT INTO `ExpandoTable` (`tableId`,`companyId`,`classNameId`,`name`) VALUES 
 (10485,10154,10002,'OPEN_SOCIAL_DATA_'),
 (10491,10154,10005,'SN'),
 (23401,10154,10002,'CUSTOM_FIELDS'),
 (24601,10154,10108,'CUSTOM_FIELDS');
/*!40000 ALTER TABLE `ExpandoTable` ENABLE KEYS */;


--
-- Definition of table `ExpandoValue`
--

DROP TABLE IF EXISTS `ExpandoValue`;
CREATE TABLE `ExpandoValue` (
  `valueId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `columnId` bigint(20) DEFAULT NULL,
  `rowId_` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`valueId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ExpandoValue`
--

/*!40000 ALTER TABLE `ExpandoValue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpandoValue` ENABLE KEYS */;


--
-- Definition of table `Group_`
--

DROP TABLE IF EXISTS `Group_`;
CREATE TABLE `Group_` (
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `friendlyURL` varchar(100) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Group_`
--

/*!40000 ALTER TABLE `Group_` DISABLE KEYS */;
INSERT INTO `Group_` (`groupId`,`companyId`,`creatorUserId`,`classNameId`,`classPK`,`parentGroupId`,`liveGroupId`,`name`,`description`,`type_`,`typeSettings`,`friendlyURL`,`site`,`active_`) VALUES 
 (10172,10154,10158,10001,10172,0,0,'Control Panel','',3,'','/control_panel',1,1),
 (10180,10154,10158,10001,10180,0,0,'Guest','',1,'mergeGuestPublicPages=false\n','/guest',1,1),
 (10189,10154,10158,10188,10158,0,0,'User Personal Site','',3,'','/personal_site',0,1),
 (10192,10154,10158,10021,10154,0,0,'10154','',0,'','/null',0,1),
 (10198,10154,10196,10005,10196,0,0,'10196','',0,'','/admin',0,1),
 (10310,10154,10158,10027,10309,0,0,'10309','',0,'','/template-10309',0,1),
 (10320,10154,10158,10027,10319,0,0,'10319','',0,'','/template-10319',0,1),
 (10329,10154,10158,10027,10328,0,0,'10328','',0,'','/template-10328',0,1),
 (10338,10154,10158,10031,10337,0,0,'10337','',0,'','/template-10337',0,1),
 (10364,10154,10158,10031,10363,0,0,'10363','',0,'','/template-10363',0,1),
 (13507,10154,10196,10027,13506,0,0,'Mobile Template','',0,'','/template-13506',0,1),
 (19606,10154,19604,10005,19604,0,0,'19604','',0,'','/cittadino',0,1),
 (19615,10154,19613,10005,19613,0,0,'19613','',0,'','/vigile',0,1),
 (21304,10154,21302,10005,21302,0,0,'21302','',0,'','/chiara',0,1),
 (21803,10154,21801,10005,21801,0,0,'21801','',0,'','/martino',0,1);
/*!40000 ALTER TABLE `Group_` ENABLE KEYS */;


--
-- Definition of table `Groups_Orgs`
--

DROP TABLE IF EXISTS `Groups_Orgs`;
CREATE TABLE `Groups_Orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`organizationId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Groups_Orgs`
--

/*!40000 ALTER TABLE `Groups_Orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Orgs` ENABLE KEYS */;


--
-- Definition of table `Groups_Permissions`
--

DROP TABLE IF EXISTS `Groups_Permissions`;
CREATE TABLE `Groups_Permissions` (
  `groupId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`permissionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Groups_Permissions`
--

/*!40000 ALTER TABLE `Groups_Permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Permissions` ENABLE KEYS */;


--
-- Definition of table `Groups_Roles`
--

DROP TABLE IF EXISTS `Groups_Roles`;
CREATE TABLE `Groups_Roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`roleId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Groups_Roles`
--

/*!40000 ALTER TABLE `Groups_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Roles` ENABLE KEYS */;


--
-- Definition of table `Groups_UserGroups`
--

DROP TABLE IF EXISTS `Groups_UserGroups`;
CREATE TABLE `Groups_UserGroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userGroupId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Groups_UserGroups`
--

/*!40000 ALTER TABLE `Groups_UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_UserGroups` ENABLE KEYS */;


--
-- Definition of table `Image`
--

DROP TABLE IF EXISTS `Image`;
CREATE TABLE `Image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `text_` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Image`
--

/*!40000 ALTER TABLE `Image` DISABLE KEYS */;
INSERT INTO `Image` (`imageId`,`modifiedDate`,`text_`,`type_`,`height`,`width`,`size_`) VALUES 
 (11703,'2013-03-14 18:16:10','','png',100,1000,9248);
/*!40000 ALTER TABLE `Image` ENABLE KEYS */;


--
-- Definition of table `JournalArticle`
--

DROP TABLE IF EXISTS `JournalArticle`;
CREATE TABLE `JournalArticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `title` longtext,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `indexable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) TYPE=InnoDB;

--
-- Dumping data for table `JournalArticle`
--

/*!40000 ALTER TABLE `JournalArticle` DISABLE KEYS */;
INSERT INTO `JournalArticle` (`uuid_`,`id_`,`resourcePrimKey`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`articleId`,`version`,`title`,`urlTitle`,`description`,`content`,`type_`,`structureId`,`templateId`,`layoutUuid`,`displayDate`,`expirationDate`,`reviewDate`,`indexable`,`smallImage`,`smallImageId`,`smallImageURL`,`status`,`statusByUserId`,`statusByUserName`,`statusDate`) VALUES 
 ('8e9c8e3e-1c51-447c-a637-4b573a92ca23',24604,24605,10180,10154,10196,'Admin Minda','2013-03-13 17:12:32','2013-03-13 17:12:32',0,0,'24603',3.8,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Partner SMARTiP</Title></root>','partner-smartip','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;style type=\"text/css\"&gt; .riga { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 1000px; min-width: 960px; width: 100%; } [class*=\"colonna-\"] { background: none repeat scroll 0 0 transparent; float: left; min-height: 1px; padding: 0 15px; } .colonna-1-5 { text-align: center; width: 20%; } .colonna-1-4 {text-align: center; } .riga:before, .riga:after { content: \" \"; display: table; } .riga:after { clear: both; } .riga { } .partner { border-color: #E49241; background: url(\"../images/custom/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #DBDBDB; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; } &lt;/style&gt; &lt;div class=\"partner\"&gt; &lt;div class=\"riga\"&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-regione-emilia-romagna.png\" style=\"height: 30px; width: 212px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\" style=\"width: auto; height: 36px;\"&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-comune-bologna.png\" style=\"height: 87px; width: auto;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-engineering.png\" style=\"height: 30px; width: 126px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; in collaborazione con:&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-tper.png\" style=\"height: 35px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-smartip.png\" style=\"width: auto; height: 32px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-europa.png\" style=\"width: auto; height: 55px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-12 10:01:00',NULL,NULL,1,0,24606,'',0,10196,'Admin Minda','2013-03-13 17:12:32'),
 ('6413cbf6-2df2-47db-8aba-724579bea993',24612,24605,10180,10154,10196,'Admin Minda','2013-03-13 17:18:47','2013-03-13 17:18:47',0,0,'24603',3.9,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Partner SMARTiP</Title></root>','partner-smartip','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;style type=\"text/css\"&gt; .riga { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 1000px; min-width: 960px; width: 100%; } [class*=\"colonna-\"] { background: none repeat scroll 0 0 transparent; float: left; min-height: 1px; padding: 0 15px; } .colonna-1-5 { text-align: center; width: 20%; } .colonna-1-4 {text-align: center; } .riga:before, .riga:after { content: \" \"; display: table; } .riga:after { clear: both; } .riga { } .partner { background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; }&lt;/style&gt; &lt;div class=\"partner\"&gt; &lt;div class=\"riga\"&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-regione-emilia-romagna.png\" style=\"height: 30px; width: 212px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\" style=\"width: auto; height: 36px;\"&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-comune-bologna.png\" style=\"height: 87px; width: auto;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-engineering.png\" style=\"height: 30px; width: 126px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; in collaborazione con:&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-tper.png\" style=\"height: 35px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-smartip.png\" style=\"width: auto; height: 32px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-europa.png\" style=\"width: auto; height: 55px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-12 10:01:00',NULL,NULL,1,0,24606,'',0,10196,'Admin Minda','2013-03-13 17:18:47'),
 ('79362eff-47d0-4ffb-b02d-b985a38b22c1',24614,24605,10180,10154,10196,'Admin Minda','2013-03-13 17:20:13','2013-03-13 17:20:13',0,0,'24603',4,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Partner SMARTiP</Title></root>','partner-smartip','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;style type=\"text/css\"&gt; .riga { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 1000px; min-width: 960px; width: 100%; } [class*=\"colonna-\"] { background: none repeat scroll 0 0 transparent; float: left; min-height: 1px; padding: 0 15px; } .colonna-1-5 { text-align: center; width: 20%; } .colonna-1-4 {text-align: center; } .riga:before, .riga:after { content: \" \"; display: table; } .riga:after { clear: both; } .riga { } .partner { background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; }&lt;/style&gt; &lt;div class=\"partner\"&gt; &lt;div class=\"riga\"&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-regione-emilia-romagna.png\" style=\"height: 28px; width: 198px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\" style=\"width: auto; height: 36px;\"&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-comune-bologna.png\" style=\"height: 82px; width: 128px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-engineering.png\" style=\"height: 30px; width: 126px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; in collaborazione con:&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-tper.png\" style=\"height: 35px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-smartip.png\" style=\"width: auto; height: 32px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img alt=\"\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-europa.png\" style=\"width: auto; height: 55px;\" /&gt;&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-12 10:01:00',NULL,NULL,1,0,24606,'',0,10196,'Admin Minda','2013-03-13 17:20:13'),
 ('a1b73ebd-88d9-41ff-9b21-df6c2b546553',24616,24605,10180,10154,10196,'Admin Minda','2013-03-13 17:22:13','2013-03-13 17:22:13',0,0,'24603',4.1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Partner SMARTiP</Title></root>','partner-smartip','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;style type=\"text/css\"&gt; .riga { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 1000px; min-width: 960px; width: 100%; } [class*=\"colonna-\"] { background: none repeat scroll 0 0 transparent; float: left; min-height: 1px; padding: 0 15px; } .colonna-1-5 { text-align: center; width: 20%; } .colonna-1-4 {text-align: center; } .riga:before, .riga:after { content: \" \"; display: table; } .riga:after { clear: both; } .riga { } .partner { background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; }&lt;/style&gt; &lt;div class=\"partner\"&gt; &lt;div class=\"riga\"&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img style=\"height: 28px; width: auto;\" src=\"/SMARTiP-DynamicData/images/partner/logo-regione-emilia-romagna.png\" class=\"scala\" alt=\"\"&gt;&lt;/p&gt; &lt;/div&gt; &lt;div style=\"width: auto; height: 36px;\" class=\"colonna-1-4\"&gt; &lt;p&gt; &lt;img style=\"height: 82px; width: auto;\" src=\"/SMARTiP-DynamicData/images/partner/logo-comune-bologna.png\" class=\"scala\" alt=\"\"&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img style=\"height: 30px; width: 126px;\" src=\"/SMARTiP-DynamicData/images/partner/logo-engineering.png\" class=\"scala\" alt=\"\"&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; in collaborazione con:&lt;/p&gt; &lt;p&gt; &lt;img style=\"height: 35px;\" src=\"/SMARTiP-DynamicData/images/partner/logo-tper.png\" class=\"scala\" alt=\"\"&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img style=\"width: auto; height: 32px;\" src=\"/SMARTiP-DynamicData/images/partner/logo-smartip.png\" class=\"scala\" alt=\"\"&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;img style=\"width: auto; height: 55px;\" src=\"/SMARTiP-DynamicData/images/partner/logo-europa.png\" class=\"scala\" alt=\"\"&gt;&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-12 10:01:00',NULL,NULL,1,0,24606,'',0,10196,'Admin Minda','2013-03-13 17:22:13'),
 ('5c0b7b53-ed3e-464a-aacc-f632d385ef9c',24618,24605,10180,10154,10196,'Admin Minda','2013-03-14 16:18:15','2013-03-14 16:18:15',0,0,'24603',4.2,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Partner SMARTiP</Title></root>','partner-smartip','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;style type=\"text/css\"&gt; .riga { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 1000px; min-width: 960px; width: 100%; } [class*=\"colonna-\"] { background: none repeat scroll 0 0 transparent; float: left; min-height: 1px; padding: 0 15px; } .colonna-1-5 { text-align: center; width: 20%; } .colonna-1-4 {text-align: center; } .riga:before, .riga:after { content: \" \"; display: table; } .riga:after { clear: both; } .riga { } .partner { background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; }&lt;/style&gt; &lt;div class=\"partner\"&gt; &lt;div class=\"riga\"&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;a href=\"http://www.regione.emilia-romagna.it\"&gt;&lt;img alt=\"Regione Emilia Romagna\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-regione-emilia-romagna.png\" style=\"height: 28px;\" /&gt;&lt;/a&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\" style=\"width: auto; height: 36px;\"&gt; &lt;p&gt; &lt;a href=\"http://www.comune.bologna.it\"&gt;&lt;img alt=\"Comune di Bologna\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-comune-bologna.png\" style=\"height: 82px;\" /&gt;&lt;/a&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;a href=\"http://www.eng.it\"&gt;&lt;img alt=\"Engineering Ingegneria Informatica\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-engineering.png\" style=\"height: 30px; width: 126px;\" /&gt;&lt;/a&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; in collaborazione con:&lt;/p&gt; &lt;p&gt; &lt;a href=\"http://www.tper.it\"&gt;&lt;img alt=\"Trasporto Passeggeri Emilia Romagna\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-tper.png\" style=\"height: 35px;\" /&gt;&lt;/a&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;a href=\"http://www.smart-ip.eu/\"&gt;&lt;img alt=\"Smartip: Smart Citizens in Smart Cities\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-smartip.png\" style=\"height: 32px;\" /&gt;&lt;/a&gt;&lt;/p&gt; &lt;/div&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;a href=\"http://ec.europa.eu/cip/\"&gt;&lt;img alt=\"Unione Europea\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/partner/logo-europa.png\" style=\"height: 55px;\" /&gt;&lt;/a&gt;&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-12 10:01:00',NULL,NULL,1,0,24606,'',0,10196,'Admin Minda','2013-03-14 16:18:15'),
 ('7ca8c03d-638c-44d1-994c-c60454db2acd',24621,24622,10180,10154,10196,'Admin Minda','2013-03-14 10:10:09','2013-03-14 10:10:10',0,0,'24620',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Lascia la tua opinione</Title></root>','lascia-la-tua-opinione','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;style type=\"text/css\"&gt; .partner { background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; }&lt;/style&gt; &lt;div class=\"partner\"&gt; &lt;div class=\"riga\"&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;a href=\"https://docs.google.com/forms/d/1jxczVwllMVzQivU_u1oRhN_kqX0qlE6cHBB8lPEbfOs/viewform?pli=1\" target=\"_blank\"&gt;&lt;img alt=\"Lascia la tua opinione sul portale.\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/Opinione-01.png\" style=\"height: 137px; width: 300px;\" /&gt;&lt;/a&gt;&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-14 10:05:00',NULL,NULL,1,0,24623,'',0,10196,'Admin Minda','2013-03-14 10:10:10'),
 ('8dac4cc2-115e-4658-a4f4-aba48618a000',24629,24622,10180,10154,10196,'Admin Minda','2013-03-14 10:14:02','2013-03-14 10:14:02',0,0,'24620',1.1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Lascia la tua opinione</Title></root>','lascia-la-tua-opinione','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;p&gt; &lt;style type=\"text/css\"&gt; .riga-opinion { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 300px; width: 100%; } [class*=\"colonna-\"] { background: none repeat scroll 0 0 transparent; float: left; min-height: 1px; padding: 0 15px; } .colonna-1-4 {text-align: center; } .riga-opinion:before, .riga-opinion:after { content: \" \"; display: table; } .riga-opinion:after { clear: both; } .partner { background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; } &lt;/style&gt; &lt;/p&gt; &lt;div class=\"partner\"&gt; &lt;div class=\"riga-opinion\"&gt; &lt;div class=\"colonna-1-4\"&gt; &lt;p&gt; &amp;nbsp;&lt;/p&gt; &lt;p&gt; &lt;a href=\"https://docs.google.com/forms/d/1jxczVwllMVzQivU_u1oRhN_kqX0qlE6cHBB8lPEbfOs/viewform?pli=1\" target=\"_blank\"&gt;&lt;img alt=\"Lascia la tua opinione sul portale.\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/Opinione-01.png\" style=\"height: 137px; width: 300px;\" /&gt;&lt;/a&gt;&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-14 10:05:00',NULL,NULL,1,0,24623,'',0,10196,'Admin Minda','2013-03-14 10:14:02'),
 ('2b2d561e-9d86-4b7b-a260-2625a09cc3f7',24631,24622,10180,10154,10196,'Admin Minda','2013-03-14 10:41:55','2013-03-14 10:41:55',0,0,'24620',1.2,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Lascia la tua opinione</Title></root>','lascia-la-tua-opinione','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;style type=\"text/css\"&gt; .riga-opinion { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 250px; width: 100%; } [class*=\"colonna-\"] { padding: 0 15px; } .colonna-opinion {text-align: center; background: none repeat scroll 0 0 transparent; float: left; min-height: 1px;} .opinion{ background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; } &lt;/style&gt; &lt;div class=\"opinion\"&gt; &lt;div class=\"riga-opinion\"&gt; &lt;div class=\"colonna-opinion\"&gt; &lt;p&gt; &lt;a href=\"https://docs.google.com/forms/d/1jxczVwllMVzQivU_u1oRhN_kqX0qlE6cHBB8lPEbfOs/viewform?pli=1\" target=\"_blank\"&gt;&lt;img alt=\"Lascia la tua opinione sul portale.\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/Opinione-01.png\" style=\"height: auto; width: 250px;\"&gt;&lt;/a&gt;&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-14 10:05:00',NULL,NULL,1,0,24623,'',0,10196,'Admin Minda','2013-03-14 10:41:55'),
 ('3a5a2e5a-4591-4c2a-8c03-b7e96046141a',24633,24622,10180,10154,10196,'Admin Minda','2013-03-14 10:44:30','2013-03-14 10:44:30',0,0,'24620',1.3,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Lascia la tua opinione</Title></root>','lascia-la-tua-opinione','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;p&gt; &lt;style type=\"text/css\"&gt; .riga-opinion { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 250px; width: 100%; } .colonna-opinion {text-align: center; background: none repeat scroll 0 0 transparent; float: left; min-height: 250px;} .opinion{ background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; } &lt;/style&gt; &lt;/p&gt; &lt;div class=\"opinion\"&gt; &lt;div class=\"riga-opinion\"&gt; &lt;div class=\"colonna-opinion\"&gt; &lt;p&gt; &lt;a href=\"https://docs.google.com/forms/d/1jxczVwllMVzQivU_u1oRhN_kqX0qlE6cHBB8lPEbfOs/viewform?pli=1\" target=\"_blank\"&gt;&lt;img alt=\"Lascia la tua opinione sul portale.\" class=\"scala\" src=\"/SMARTiP-DynamicData/images/Opinione-01.png\" style=\"height: auto; width: 250px;\" /&gt;&lt;/a&gt;&lt;/p&gt; &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-14 10:05:00',NULL,NULL,1,0,24623,'',0,10196,'Admin Minda','2013-03-14 10:44:30'),
 ('717591b6-e3fd-416e-b6c8-b023ac31ea12',24635,24622,10180,10154,10196,'Admin Minda','2013-03-14 10:52:12','2013-03-14 10:52:12',0,0,'24620',1.4,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Lascia la tua opinione</Title></root>','lascia-la-tua-opinione','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;p&gt; &lt;style type=\"text/css\"&gt; .riga-opinion { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 250px; width: 100%; } .colonna-opinion {text-align: center; background: none repeat scroll 0 0 transparent; float: left; min-height: 250px;} .opinion{ background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; height: 115px; } &lt;/style&gt; &lt;/p&gt; &lt;div class=\"opinion\"&gt; &lt;div class=\"riga-opinion\"&gt; &lt;div class=\"colonna-opinion\"&gt; &lt;img alt=\"\" src=\"/SMARTiP-DynamicData/images/Opinione-01.png\" style=\"width: 250px; height: 105px;\" /&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-14 10:05:00',NULL,NULL,1,0,24623,'',0,10196,'Admin Minda','2013-03-14 10:52:12'),
 ('419fa65c-1d97-47f1-ae19-b5a416053288',24637,24622,10180,10154,10196,'Admin Minda','2013-03-14 11:21:38','2013-03-14 11:21:38',0,0,'24620',1.5,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Lascia la tua opinione</Title></root>','lascia-la-tua-opinione','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;p&gt; &lt;style type=\"text/css\"&gt; .riga-opinion { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 250px; width: 100%; } .colonna-opinion {text-align: center; background: none repeat scroll 0 0 transparent; float: left; min-height: 250px;} .opinion{ background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; height: 115px; } &lt;/style&gt; &lt;/p&gt; &lt;div class=\"opinion\"&gt; &lt;div class=\"riga-opinion\"&gt; &lt;div class=\"colonna-opinion\"&gt; &lt;img alt=\"\" src=\"/SMARTiP-DynamicData/images/Opinione-01.png\" style=\"width: 200px; height: 84px;\" /&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-14 10:05:00',NULL,NULL,1,0,24623,'',0,10196,'Admin Minda','2013-03-14 11:21:38'),
 ('5a513896-ae25-4c91-aa0c-371cc034e041',24639,24622,10180,10154,10196,'Admin Minda','2013-03-14 11:33:13','2013-03-14 11:33:13',0,0,'24620',1.6,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Lascia la tua opinione</Title></root>','lascia-la-tua-opinione','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;p&gt; &lt;style type=\"text/css\"&gt; .riga-opinion { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 250px; width: 100%; } .colonna-opinion {text-align: center; background: none repeat scroll 0 0 transparent; float: left; min-height: 250px;} .opinion{ background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; height: 115px; } &lt;/style&gt; &lt;/p&gt; &lt;div class=\"opinion\"&gt; &lt;div class=\"riga-opinion\"&gt; &lt;div class=\"colonna-opinion\"&gt; &lt;img alt=\"\" src=\"/SMARTiP-DynamicData/images/Opinione_v2-01.png\" style=\"width: 222px; height: 72px;\" /&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-14 10:05:00',NULL,NULL,1,0,24623,'',0,10196,'Admin Minda','2013-03-14 11:33:13'),
 ('1e41e2f3-5bb8-4418-8cf2-c56f980b1424',24641,24622,10180,10154,10196,'Admin Minda','2013-03-14 11:36:41','2013-03-14 11:36:41',0,0,'24620',1.7,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Lascia la tua opinione</Title></root>','lascia-la-tua-opinione','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;p&gt; &lt;style type=\"text/css\"&gt; .riga-opinion { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 250px; width: 100%; } .colonna-opinion {text-align: center; background: none repeat scroll 0 0 transparent; float: left; min-height: 250px;} .opinion{ background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; height: 80px; } &lt;/style&gt; &lt;/p&gt; &lt;div class=\"opinion\"&gt; &lt;div class=\"riga-opinion\"&gt; &lt;div class=\"colonna-opinion\"&gt; &lt;img alt=\"\" src=\"/SMARTiP-DynamicData/images/Opinione_v2-01.png\" style=\"width: 222px; height: 72px;\" /&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-14 10:05:00',NULL,NULL,1,0,24623,'',0,10196,'Admin Minda','2013-03-14 11:36:41'),
 ('5ef1a6ab-66d7-4193-b9a1-5ebb6bbfd84b',24643,24622,10180,10154,10196,'Admin Minda','2013-03-14 16:10:14','2013-03-14 16:10:14',0,0,'24620',1.8,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Lascia la tua opinione</Title></root>','lascia-la-tua-opinione','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;p&gt; &lt;style type=\"text/css\"&gt; .riga-opinion { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 250px; width: 100%; } .colonna-opinion {text-align: center; background: none repeat scroll 0 0 transparent; float: left; min-height: 250px;} .opinion{ background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; height: 80px; } &lt;/style&gt; &lt;/p&gt; &lt;div class=\"opinion\"&gt; &lt;div class=\"riga-opinion\"&gt; &lt;div class=\"colonna-opinion\"&gt; &lt;a href=\"https://docs.google.com/forms/d/1jxczVwllMVzQivU_u1oRhN_kqX0qlE6cHBB8lPEbfOs/viewformhttps://docs.google.com/forms/d/1jxczVwllMVzQivU_u1oRhN_kqX0qlE6cHBB8lPEbfOs/viewform\"&gt;&lt;img alt=\"\" src=\"/SMARTiP-DynamicData/images/Opinione_v2-01.png\" style=\"width: 222px; height: 72px;\" /&gt;&lt;/a&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-14 10:05:00',NULL,NULL,1,0,24623,'',0,10196,'Admin Minda','2013-03-14 16:10:14'),
 ('9900b014-3cad-4316-8ccf-9aca5a61e566',24645,24622,10180,10154,10196,'Admin Minda','2013-03-14 17:31:43','2013-03-14 17:31:43',0,0,'24620',1.9,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Lascia la tua opinione</Title></root>','lascia-la-tua-opinione','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;p&gt; &lt;style type=\"text/css\"&gt; .riga-opinion { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 250px; width: 100%; } .colonna-opinion {text-align: center; background: none repeat scroll 0 0 transparent; float: left; min-height: 250px;} .opinion{ background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; height: 80px; } &lt;/style&gt; &lt;/p&gt; &lt;div class=\"opinion\"&gt; &lt;div class=\"riga-opinion\"&gt; &lt;div class=\"colonna-opinion\"&gt; &lt;a href=\"https://docs.google.com/forms/d/1jxczVwllMVzQivU_u1oRhN_kqX0qlE6cHBB8lPEbfOs/viewform\"&gt;&lt;img alt=\"\" src=\"/SMARTiP-DynamicData/images/Opinione_v2-01.png\" style=\"width: 222px; height: 72px;\" /&gt;&lt;/a&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-14 10:05:00',NULL,NULL,1,0,24623,'',0,10196,'Admin Minda','2013-03-14 17:31:43'),
 ('364b2e1c-d05a-49c9-9591-6a0b7c8baeb6',24647,24622,10180,10154,10196,'Admin Minda','2013-03-14 17:32:18','2013-03-14 17:32:18',0,0,'24620',2,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Lascia la tua opinione</Title></root>','lascia-la-tua-opinione','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\">&lt;p&gt; &lt;style type=\"text/css\"&gt; .riga-opinion { background: none repeat scroll 0 0 transparent; margin: 0 auto; max-width: 250px; width: 100%; } .colonna-opinion {text-align: center; background: none repeat scroll 0 0 transparent; float: left; min-height: 250px;} .opinion{ background: url(\"/SMARTiP-DynamicData/images/partner/portlet_bg.png\") repeat-x scroll left bottom white; border: 1px solid #E49241; border-radius: 6px 6px 6px 6px; box-shadow: 0 0 4px -1px; margin: 0 0 10px; padding: 10px; height: 80px; } &lt;/style&gt; &lt;/p&gt; &lt;div class=\"opinion\"&gt; &lt;div class=\"riga-opinion\"&gt; &lt;div class=\"colonna-opinion\"&gt; &lt;a href=\"https://docs.google.com/forms/d/1jxczVwllMVzQivU_u1oRhN_kqX0qlE6cHBB8lPEbfOs/viewform\" target=\"_blank\"&gt;&lt;img alt=\"\" src=\"/SMARTiP-DynamicData/images/Opinione_v2-01.png\" style=\"width: 222px; height: 72px;\" /&gt;&lt;/a&gt;&lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</static-content>\n</root>','general','','','','2013-03-14 10:05:00',NULL,NULL,1,0,24623,'',0,10196,'Admin Minda','2013-03-14 17:32:18');
/*!40000 ALTER TABLE `JournalArticle` ENABLE KEYS */;


--
-- Definition of table `JournalArticleImage`
--

DROP TABLE IF EXISTS `JournalArticleImage`;
CREATE TABLE `JournalArticleImage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `elInstanceId` varchar(75) DEFAULT NULL,
  `elName` varchar(75) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `tempImage` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`articleImageId`)
) TYPE=InnoDB;

--
-- Dumping data for table `JournalArticleImage`
--

/*!40000 ALTER TABLE `JournalArticleImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalArticleImage` ENABLE KEYS */;


--
-- Definition of table `JournalArticleResource`
--

DROP TABLE IF EXISTS `JournalArticleResource`;
CREATE TABLE `JournalArticleResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`)
) TYPE=InnoDB;

--
-- Dumping data for table `JournalArticleResource`
--

/*!40000 ALTER TABLE `JournalArticleResource` DISABLE KEYS */;
INSERT INTO `JournalArticleResource` (`uuid_`,`resourcePrimKey`,`groupId`,`articleId`) VALUES 
 ('d6907ef6-71f8-47a1-9ebf-5f306a84c41d',24605,10180,'24603'),
 ('f579d23f-2c4b-4644-a757-ba35296a2a94',24622,10180,'24620');
/*!40000 ALTER TABLE `JournalArticleResource` ENABLE KEYS */;


--
-- Definition of table `JournalContentSearch`
--

DROP TABLE IF EXISTS `JournalContentSearch`;
CREATE TABLE `JournalContentSearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contentSearchId`)
) TYPE=InnoDB;

--
-- Dumping data for table `JournalContentSearch`
--

/*!40000 ALTER TABLE `JournalContentSearch` DISABLE KEYS */;
INSERT INTO `JournalContentSearch` (`contentSearchId`,`groupId`,`companyId`,`privateLayout`,`layoutId`,`portletId`,`articleId`) VALUES 
 (24650,10180,10154,0,1,'56_INSTANCE_FHwOq3nV1ZSQ','24620'),
 (24652,10180,10154,0,1,'56_INSTANCE_8IS7T5JuDmhk','24603'),
 (24804,10180,10154,0,19,'56_INSTANCE_6kcr8AK7zZ2z','24620'),
 (24806,10180,10154,0,19,'56_INSTANCE_ATkxmlf9qHbG','24603');
/*!40000 ALTER TABLE `JournalContentSearch` ENABLE KEYS */;


--
-- Definition of table `JournalFeed`
--

DROP TABLE IF EXISTS `JournalFeed`;
CREATE TABLE `JournalFeed` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `feedId` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `rendererTemplateId` varchar(75) DEFAULT NULL,
  `delta` int(11) DEFAULT NULL,
  `orderByCol` varchar(75) DEFAULT NULL,
  `orderByType` varchar(75) DEFAULT NULL,
  `targetLayoutFriendlyUrl` varchar(255) DEFAULT NULL,
  `targetPortletId` varchar(75) DEFAULT NULL,
  `contentField` varchar(75) DEFAULT NULL,
  `feedType` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL,
  PRIMARY KEY (`id_`)
) TYPE=InnoDB;

--
-- Dumping data for table `JournalFeed`
--

/*!40000 ALTER TABLE `JournalFeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalFeed` ENABLE KEYS */;


--
-- Definition of table `JournalStructure`
--

DROP TABLE IF EXISTS `JournalStructure`;
CREATE TABLE `JournalStructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `parentStructureId` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  PRIMARY KEY (`id_`)
) TYPE=InnoDB;

--
-- Dumping data for table `JournalStructure`
--

/*!40000 ALTER TABLE `JournalStructure` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalStructure` ENABLE KEYS */;


--
-- Definition of table `JournalTemplate`
--

DROP TABLE IF EXISTS `JournalTemplate`;
CREATE TABLE `JournalTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsl` longtext,
  `langType` varchar(75) DEFAULT NULL,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  PRIMARY KEY (`id_`)
) TYPE=InnoDB;

--
-- Dumping data for table `JournalTemplate`
--

/*!40000 ALTER TABLE `JournalTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalTemplate` ENABLE KEYS */;


--
-- Definition of table `KBArticle`
--

DROP TABLE IF EXISTS `KBArticle`;
CREATE TABLE `KBArticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `kbArticleId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `rootResourcePrimKey` bigint(20) DEFAULT NULL,
  `parentResourcePrimKey` bigint(20) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `title` longtext,
  `content` longtext,
  `description` longtext,
  `priority` double DEFAULT NULL,
  `sections` longtext,
  `viewCount` int(11) DEFAULT NULL,
  `latest` tinyint(4) DEFAULT NULL,
  `main` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kbArticleId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KBArticle`
--

/*!40000 ALTER TABLE `KBArticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `KBArticle` ENABLE KEYS */;


--
-- Definition of table `KBComment`
--

DROP TABLE IF EXISTS `KBComment`;
CREATE TABLE `KBComment` (
  `uuid_` varchar(75) DEFAULT NULL,
  `kbCommentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `content` longtext,
  `helpful` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kbCommentId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KBComment`
--

/*!40000 ALTER TABLE `KBComment` DISABLE KEYS */;
/*!40000 ALTER TABLE `KBComment` ENABLE KEYS */;


--
-- Definition of table `KBTemplate`
--

DROP TABLE IF EXISTS `KBTemplate`;
CREATE TABLE `KBTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `kbTemplateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `content` longtext,
  PRIMARY KEY (`kbTemplateId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KBTemplate`
--

/*!40000 ALTER TABLE `KBTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `KBTemplate` ENABLE KEYS */;


--
-- Definition of table `KaleoAction`
--

DROP TABLE IF EXISTS `KaleoAction`;
CREATE TABLE `KaleoAction` (
  `kaleoActionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`kaleoActionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoAction`
--

/*!40000 ALTER TABLE `KaleoAction` DISABLE KEYS */;
INSERT INTO `KaleoAction` (`kaleoActionId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoClassName`,`kaleoClassPK`,`kaleoDefinitionId`,`kaleoNodeName`,`name`,`description`,`executionType`,`script`,`scriptLanguage`,`priority`) VALUES 
 (10438,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoNode',10437,10432,'approved','approve','','onEntry','					\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					\n				','javascript',0);
/*!40000 ALTER TABLE `KaleoAction` ENABLE KEYS */;


--
-- Definition of table `KaleoCondition`
--

DROP TABLE IF EXISTS `KaleoCondition`;
CREATE TABLE `KaleoCondition` (
  `kaleoConditionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoConditionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoCondition`
--

/*!40000 ALTER TABLE `KaleoCondition` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoCondition` ENABLE KEYS */;


--
-- Definition of table `KaleoDefinition`
--

DROP TABLE IF EXISTS `KaleoDefinition`;
CREATE TABLE `KaleoDefinition` (
  `kaleoDefinitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `content` longtext,
  `version` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `startKaleoNodeId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`kaleoDefinitionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoDefinition`
--

/*!40000 ALTER TABLE `KaleoDefinition` DISABLE KEYS */;
INSERT INTO `KaleoDefinition` (`kaleoDefinitionId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`title`,`description`,`content`,`version`,`active_`,`startKaleoNodeId`) VALUES 
 (10432,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','Single Approver','Single Approver','A single approver can approve a workflow content.','<?xml version=\"1.0\"?>\n\n<workflow-definition xmlns=\"urn:liferay.com:liferay-workflow_6.1.0\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"urn:liferay.com:liferay-workflow_6.1.0 http://www.liferay.com/dtd/liferay-workflow-definition_6_1_0.xsd\">\n	<name>Single Approver</name>\n	<description>A single approver can approve a workflow content.</description>\n	<version>1</version>\n	<state>\n		<name>created</name>\n		<metadata> <![CDATA[{\"xy\":[78,53]}]]> </metadata>\n		<initial>true</initial>\n		<transitions>\n			<transition>\n				<name>review</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</state>\n	<task>\n		<name>update</name>\n		<metadata> <![CDATA[{\"xy\":[397,191]}]]> </metadata>\n		<actions>\n			<notification>\n				<name>Creator Modification Notification</name>\n				<template>Your submission was rejected by a reviewer, please modify and resubmit.</template>\n				<template-language>text</template-language>\n				<notification-type>email</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<user/>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>resubmit</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</task>\n	<task>\n		<name>review</name>\n		<metadata> <![CDATA[{\"xy\":[225,45]}]]> </metadata>\n		<actions>\n			<notification>\n				<name>Review Notification</name>\n				<template>You have a new submission waiting for your review in the workflow.</template>\n				<template-language>text</template-language>\n				<notification-type>email</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n			<notification>\n				<name>Review Completion Notification</name>\n				<template>Your submission has been reviewed and the reviewer has applied the following ${taskComments}.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<recipients>\n					<user/>\n				</recipients>\n				<execution-type>onExit</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<roles>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Administrator</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Owner</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Administrator</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Portal Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Administrator</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Owner</name>\n				</role>\n			</roles>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>approve</name>\n				<target>approved</target>\n			</transition>\n			<transition>\n				<name>reject</name>\n				<target>update</target>\n				<default>false</default>\n			</transition>\n		</transitions>\n	</task>\n	<state>\n		<name>approved</name>\n		<metadata> <![CDATA[{\"xy\":[422,56]}]]> </metadata>\n		<actions>\n			<action>\n				<name>approve</name>\n				<script> <![CDATA[\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					]]> </script>\n				<script-language>javascript</script-language>\n				<execution-type>onEntry</execution-type>\n			</action>\n		</actions>\n	</state>\n</workflow-definition>',1,1,10439);
/*!40000 ALTER TABLE `KaleoDefinition` ENABLE KEYS */;


--
-- Definition of table `KaleoInstance`
--

DROP TABLE IF EXISTS `KaleoInstance`;
CREATE TABLE `KaleoInstance` (
  `kaleoInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoDefinitionName` varchar(200) DEFAULT NULL,
  `kaleoDefinitionVersion` int(11) DEFAULT NULL,
  `rootKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoInstanceId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoInstance`
--

/*!40000 ALTER TABLE `KaleoInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoInstance` ENABLE KEYS */;


--
-- Definition of table `KaleoInstanceToken`
--

DROP TABLE IF EXISTS `KaleoInstanceToken`;
CREATE TABLE `KaleoInstanceToken` (
  `kaleoInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `parentKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoInstanceTokenId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoInstanceToken`
--

/*!40000 ALTER TABLE `KaleoInstanceToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoInstanceToken` ENABLE KEYS */;


--
-- Definition of table `KaleoLog`
--

DROP TABLE IF EXISTS `KaleoLog`;
CREATE TABLE `KaleoLog` (
  `kaleoLogId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `terminalKaleoNode` tinyint(4) DEFAULT NULL,
  `kaleoActionId` bigint(20) DEFAULT NULL,
  `kaleoActionName` varchar(200) DEFAULT NULL,
  `kaleoActionDescription` longtext,
  `previousKaleoNodeId` bigint(20) DEFAULT NULL,
  `previousKaleoNodeName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassPK` bigint(20) DEFAULT NULL,
  `currentAssigneeClassName` varchar(200) DEFAULT NULL,
  `currentAssigneeClassPK` bigint(20) DEFAULT NULL,
  `type_` varchar(50) DEFAULT NULL,
  `comment_` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoLogId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoLog`
--

/*!40000 ALTER TABLE `KaleoLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoLog` ENABLE KEYS */;


--
-- Definition of table `KaleoNode`
--

DROP TABLE IF EXISTS `KaleoNode`;
CREATE TABLE `KaleoNode` (
  `kaleoNodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `type_` varchar(20) DEFAULT NULL,
  `initial_` tinyint(4) DEFAULT NULL,
  `terminal` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoNodeId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoNode`
--

/*!40000 ALTER TABLE `KaleoNode` DISABLE KEYS */;
INSERT INTO `KaleoNode` (`kaleoNodeId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoDefinitionId`,`name`,`metadata`,`description`,`type_`,`initial_`,`terminal`) VALUES 
 (10433,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07',10432,'update','{\"xy\":[397,191]}','','TASK',0,0),
 (10437,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07',10432,'approved','{\"xy\":[422,56]}','','STATE',0,1),
 (10439,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07',10432,'created','{\"xy\":[78,53]}','','STATE',1,0),
 (10440,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07',10432,'review','{\"xy\":[225,45]}','','TASK',0,0);
/*!40000 ALTER TABLE `KaleoNode` ENABLE KEYS */;


--
-- Definition of table `KaleoNotification`
--

DROP TABLE IF EXISTS `KaleoNotification`;
CREATE TABLE `KaleoNotification` (
  `kaleoNotificationId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `template` longtext,
  `templateLanguage` varchar(75) DEFAULT NULL,
  `notificationTypes` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoNotification`
--

/*!40000 ALTER TABLE `KaleoNotification` DISABLE KEYS */;
INSERT INTO `KaleoNotification` (`kaleoNotificationId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoClassName`,`kaleoClassPK`,`kaleoDefinitionId`,`kaleoNodeName`,`name`,`description`,`executionType`,`template`,`templateLanguage`,`notificationTypes`) VALUES 
 (10434,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoNode',10433,10432,'update','Creator Modification Notification','','onAssignment','Your submission was rejected by a reviewer, please modify and resubmit.','text','email'),
 (10441,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoNode',10440,10432,'review','Review Notification','','onAssignment','You have a new submission waiting for your review in the workflow.','text','email'),
 (10442,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoNode',10440,10432,'review','Review Completion Notification','','onExit','					Your submission has been reviewed and the reviewer has applied the following ${taskComments}.','freemarker','email');
/*!40000 ALTER TABLE `KaleoNotification` ENABLE KEYS */;


--
-- Definition of table `KaleoNotificationRecipient`
--

DROP TABLE IF EXISTS `KaleoNotificationRecipient`;
CREATE TABLE `KaleoNotificationRecipient` (
  `kaleoNotificationRecipientId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNotificationId` bigint(20) DEFAULT NULL,
  `recipientClassName` varchar(200) DEFAULT NULL,
  `recipientClassPK` bigint(20) DEFAULT NULL,
  `recipientRoleType` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationRecipientId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoNotificationRecipient`
--

/*!40000 ALTER TABLE `KaleoNotificationRecipient` DISABLE KEYS */;
INSERT INTO `KaleoNotificationRecipient` (`kaleoNotificationRecipientId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoDefinitionId`,`kaleoNotificationId`,`recipientClassName`,`recipientClassPK`,`recipientRoleType`,`address`) VALUES 
 (10443,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07',10432,10442,'com.liferay.portal.model.User',0,0,'');
/*!40000 ALTER TABLE `KaleoNotificationRecipient` ENABLE KEYS */;


--
-- Definition of table `KaleoTask`
--

DROP TABLE IF EXISTS `KaleoTask`;
CREATE TABLE `KaleoTask` (
  `kaleoTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`kaleoTaskId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoTask`
--

/*!40000 ALTER TABLE `KaleoTask` DISABLE KEYS */;
INSERT INTO `KaleoTask` (`kaleoTaskId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoDefinitionId`,`kaleoNodeId`,`name`,`description`) VALUES 
 (10435,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07',10432,10433,'update',''),
 (10444,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07',10432,10440,'review','');
/*!40000 ALTER TABLE `KaleoTask` ENABLE KEYS */;


--
-- Definition of table `KaleoTaskAssignment`
--

DROP TABLE IF EXISTS `KaleoTaskAssignment`;
CREATE TABLE `KaleoTaskAssignment` (
  `kaleoTaskAssignmentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `assigneeActionId` varchar(75) DEFAULT NULL,
  `assigneeScript` longtext,
  `assigneeScriptLanguage` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoTaskAssignmentId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoTaskAssignment`
--

/*!40000 ALTER TABLE `KaleoTaskAssignment` DISABLE KEYS */;
INSERT INTO `KaleoTaskAssignment` (`kaleoTaskAssignmentId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoClassName`,`kaleoClassPK`,`kaleoDefinitionId`,`kaleoNodeId`,`assigneeClassName`,`assigneeClassPK`,`assigneeActionId`,`assigneeScript`,`assigneeScriptLanguage`) VALUES 
 (10436,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoTask',10435,10432,0,'com.liferay.portal.model.User',0,'','',''),
 (10445,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoTask',10444,10432,0,'com.liferay.portal.model.Role',10161,'','',''),
 (10446,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoTask',10444,10432,0,'com.liferay.portal.model.Role',10447,'','',''),
 (10448,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoTask',10444,10432,0,'com.liferay.portal.model.Role',10449,'','',''),
 (10450,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoTask',10444,10432,0,'com.liferay.portal.model.Role',10451,'','',''),
 (10452,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoTask',10444,10432,0,'com.liferay.portal.model.Role',10171,'','',''),
 (10453,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoTask',10444,10432,0,'com.liferay.portal.model.Role',10169,'','',''),
 (10454,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoTask',10444,10432,0,'com.liferay.portal.model.Role',10166,'','',''),
 (10455,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07','com.liferay.portal.workflow.kaleo.model.KaleoTask',10444,10432,0,'com.liferay.portal.model.Role',10167,'','','');
/*!40000 ALTER TABLE `KaleoTaskAssignment` ENABLE KEYS */;


--
-- Definition of table `KaleoTaskAssignmentInstance`
--

DROP TABLE IF EXISTS `KaleoTaskAssignmentInstance`;
CREATE TABLE `KaleoTaskAssignmentInstance` (
  `kaleoTaskAssignmentInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoTaskAssignmentInstanceId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoTaskAssignmentInstance`
--

/*!40000 ALTER TABLE `KaleoTaskAssignmentInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoTaskAssignmentInstance` ENABLE KEYS */;


--
-- Definition of table `KaleoTaskInstanceToken`
--

DROP TABLE IF EXISTS `KaleoTaskInstanceToken`;
CREATE TABLE `KaleoTaskInstanceToken` (
  `kaleoTaskInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTaskInstanceTokenId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoTaskInstanceToken`
--

/*!40000 ALTER TABLE `KaleoTaskInstanceToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoTaskInstanceToken` ENABLE KEYS */;


--
-- Definition of table `KaleoTimer`
--

DROP TABLE IF EXISTS `KaleoTimer`;
CREATE TABLE `KaleoTimer` (
  `kaleoTimerId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `description` longtext,
  `duration` double DEFAULT NULL,
  `scale` varchar(75) DEFAULT NULL,
  `recurrenceDuration` double DEFAULT NULL,
  `recurrenceScale` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoTimerId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoTimer`
--

/*!40000 ALTER TABLE `KaleoTimer` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoTimer` ENABLE KEYS */;


--
-- Definition of table `KaleoTimerInstanceToken`
--

DROP TABLE IF EXISTS `KaleoTimerInstanceToken`;
CREATE TABLE `KaleoTimerInstanceToken` (
  `kaleoTimerInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTimerId` bigint(20) DEFAULT NULL,
  `kaleoTimerName` varchar(200) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTimerInstanceTokenId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoTimerInstanceToken`
--

/*!40000 ALTER TABLE `KaleoTimerInstanceToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `KaleoTimerInstanceToken` ENABLE KEYS */;


--
-- Definition of table `KaleoTransition`
--

DROP TABLE IF EXISTS `KaleoTransition`;
CREATE TABLE `KaleoTransition` (
  `kaleoTransitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `sourceKaleoNodeId` bigint(20) DEFAULT NULL,
  `sourceKaleoNodeName` varchar(200) DEFAULT NULL,
  `targetKaleoNodeId` bigint(20) DEFAULT NULL,
  `targetKaleoNodeName` varchar(200) DEFAULT NULL,
  `defaultTransition` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoTransitionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `KaleoTransition`
--

/*!40000 ALTER TABLE `KaleoTransition` DISABLE KEYS */;
INSERT INTO `KaleoTransition` (`kaleoTransitionId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoDefinitionId`,`kaleoNodeId`,`name`,`description`,`sourceKaleoNodeId`,`sourceKaleoNodeName`,`targetKaleoNodeId`,`targetKaleoNodeName`,`defaultTransition`) VALUES 
 (10456,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07',10432,10433,'resubmit','',10433,'update',10440,'review',1),
 (10457,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07',10432,10439,'review','',10439,'created',10440,'review',1),
 (10458,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07',10432,10440,'approve','',10440,'review',10437,'approved',1),
 (10459,0,10154,10158,'','2012-02-20 09:51:07','2012-02-20 09:51:07',10432,10440,'reject','',10440,'review',10433,'update',0);
/*!40000 ALTER TABLE `KaleoTransition` ENABLE KEYS */;


--
-- Definition of table `Layout`
--

DROP TABLE IF EXISTS `Layout`;
CREATE TABLE `Layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `parentLayoutId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `priority` int(11) DEFAULT NULL,
  `layoutPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  `sourcePrototypeLayoutUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`plid`)
) TYPE=InnoDB;

--
-- Dumping data for table `Layout`
--

/*!40000 ALTER TABLE `Layout` DISABLE KEYS */;
INSERT INTO `Layout` (`uuid_`,`plid`,`groupId`,`companyId`,`createDate`,`modifiedDate`,`privateLayout`,`layoutId`,`parentLayoutId`,`name`,`title`,`description`,`keywords`,`robots`,`type_`,`typeSettings`,`hidden_`,`friendlyURL`,`iconImage`,`iconImageId`,`themeId`,`colorSchemeId`,`wapThemeId`,`wapColorSchemeId`,`css`,`priority`,`layoutPrototypeUuid`,`layoutPrototypeLinkEnabled`,`sourcePrototypeLayoutUuid`) VALUES 
 ('18917291-e50e-4925-8f21-1314fcb692ef',10175,10172,10154,'2012-02-20 09:47:30','2012-02-20 09:47:30',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','',0,'/manage',0,0,'','','','','',0,'',0,''),
 ('cbdb8a99-7a5a-4831-90d0-eb53b308c6f5',10183,10180,10154,'2012-02-20 09:47:30','2013-03-14 18:27:29',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Welcome</Title></root>','','','','portlet','column-3-customizable=false\nsitemap-changefreq=daily\nshow-alternate-links=true\nlayout-template-id=SMARTiP_Cicium_2_1\nsitemap-include=1\ncolumn-3=56_INSTANCE_8IS7T5JuDmhk\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\nmodifiedDate=20130314182729\ncolumn-2=parcheggi_WAR_SMARTiPCisiumParcheggiportlet,56_INSTANCE_FHwOq3nV1ZSQ,stradepulite_WAR_SMARTiPCisiumStradePuliteportlet,codicisms_WAR_SMARTiPCisiumCodiciSMSportlet,\ncolumn-1=traffico_WAR_SMARTiPCisiumTrafficoportlet,eventi_WAR_SMARTiPCisiumEventiportlet,\n',0,'/home',0,0,'classic','','classic','','',0,'',0,''),
 ('589e93f1-df51-4432-9016-b47a5c791771',10313,10310,10154,'2012-02-20 09:47:34','2012-02-20 09:47:35',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\nmodifiedDate=20120220094735\ncolumn-2=148_INSTANCE_v6IJpkUH38sj,114,\ncolumn-1=33,',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('a8101b0a-de52-4e6e-baca-ab3cc5c6b2a9',10323,10320,10154,'2012-02-20 09:47:35','2012-02-20 09:47:35',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','default-asset-publisher-portlet-id=101_INSTANCE_kq5WhMdd8eJ9\nlayout-template-id=2_columns_ii\nmodifiedDate=20120220094735\ncolumn-2=3,101_INSTANCE_kq5WhMdd8eJ9,\ncolumn-1=141_INSTANCE_BC93W3TBCxTK,122_INSTANCE_vNhr64gN5kNk,',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('ac454831-55e3-4e4f-a048-e4dcd40d5780',10332,10329,10154,'2012-02-20 09:47:35','2012-02-20 09:47:35',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\nmodifiedDate=20120220094735\ncolumn-2=122_INSTANCE_oJDCqAmc90Wj,141_INSTANCE_DmR5YkJE4adJ,\ncolumn-1=36,',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('7c750d1d-b3ce-4d40-93b0-5eb5ed475287',10346,10338,10154,'2012-02-20 09:47:39','2012-02-20 09:47:40',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\nmodifiedDate=20120220094740\ncolumn-2=3,59_INSTANCE_I6r0W4ylSwNx,180,\ncolumn-1=19,',0,'/home',0,0,'','','','','',0,'',0,''),
 ('9e99fb14-bd05-4149-a857-eef8225d3707',10352,10338,10154,'2012-02-20 09:47:40','2012-02-20 09:47:40',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\nmodifiedDate=20120220094740\ncolumn-2=101_INSTANCE_jMR7WDquwITl,\ncolumn-1=8,',0,'/calendar',0,0,'','','','','',1,'',0,''),
 ('598db365-1847-4e76-ac81-f03562339fb3',10358,10338,10154,'2012-02-20 09:47:40','2012-02-20 09:47:40',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\nmodifiedDate=20120220094740\ncolumn-2=122_INSTANCE_kGD1IRsDpmMF,148_INSTANCE_fObddyRE7eF0,\ncolumn-1=36,',0,'/wiki',0,0,'','','','','',2,'',0,''),
 ('fd4288e9-18f4-4cc4-ace9-62834a8a4825',10372,10364,10154,'2012-02-20 09:47:40','2012-02-20 09:47:40',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_i\nmodifiedDate=20120220094740\ncolumn-2=3,82,101_INSTANCE_hSr9gUFyYvN7,\ncolumn-1=116,',0,'/home',0,0,'','','','','',0,'',0,''),
 ('0a280bb2-4f94-46f5-be56-a7ffce544313',10380,10364,10154,'2012-02-20 09:47:40','2012-02-20 09:47:40',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','layout-template-id=1_column\nmodifiedDate=20120220094740\ncolumn-1=20,',0,'/documents',0,0,'','','','','',1,'',0,''),
 ('fcab9e95-6ff1-4d6e-ba89-74d0f301a8f0',10386,10364,10154,'2012-02-20 09:47:40','2012-02-20 09:47:40',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\nmodifiedDate=20120220094740\ncolumn-2=101_INSTANCE_fEsArppW35f6,\ncolumn-1=8,',0,'/calendar',0,0,'','','','','',2,'',0,''),
 ('2f44a89a-ed4e-4705-aff6-d9375652e1e9',10392,10364,10154,'2012-02-20 09:47:40','2012-02-20 09:47:40',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\nmodifiedDate=20120220094740\ncolumn-2=39_INSTANCE_NH5RoQi5oNjv,\ncolumn-1=39_INSTANCE_YScAF8Hn13vi,',0,'/news',0,0,'','','','','',3,'',0,''),
 ('1c7422d9-f8f2-4efc-8a6e-e3937f06d6b6',11916,10180,10154,'2012-02-21 10:46:19','2012-11-22 16:16:10',0,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome Mobile</Name></root>','','','','','portlet','sitemap-changefreq=daily\nlayout-template-id=1_column\nshow-alternate-links=true\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\nmodifiedDate=20121122161610\ncolumn-1=mobile_WAR_SMARTiPCisiumMobileportlet',1,'/mobile',0,0,'SMARTiPCisiumMobile_WAR_SMARTiPCisiumMobiletheme','01','mobile','01','',1,'',0,''),
 ('15257ca9-1bd8-448a-bbf2-64f2848b62c1',13510,13507,10154,'2012-02-22 11:22:26','2012-02-22 11:29:24',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Mobile&amp;#x26;&amp;#x23;x20&amp;#x3b;Template</Name></root>','','','','','portlet','layout-template-id=1_column\nshow-alternate-links=true\nlayoutUpdateable=true\nmodifiedDate=20120222112924\ncolumn-1=71_INSTANCE_RpI5ahAtmiBi',0,'/1',0,0,'classic','','classic','','',0,'',0,''),
 ('e5fdf759-8eb7-40bb-b6c7-a0fb68ee93b1',21718,10180,10154,'2012-04-18 07:28:05','2012-11-22 16:03:01',0,12,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home Mobile</Name></root>','','','','','portlet','sitemap-changefreq=daily\nshow-alternate-links=true\nlayout-template-id=2_columns_ii\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\nmodifiedDate=20120507160747\ncolumn-1=homeguest_WAR_MobileSplitportlet',1,'/cisium-mobile',0,0,'SMARTiPCisiumMobile_WAR_SMARTiPCisiumMobiletheme','01','classic','','',3,'',0,''),
 ('ebf5bbe5-6eb0-477e-933a-2dbc3932c3b2',21723,10180,10154,'2012-04-18 07:28:12','2012-11-22 16:03:01',0,13,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Mappa</Name></root>','','','','','portlet','sitemap-changefreq=daily\nlayout-template-id=2_columns_ii\nshow-alternate-links=true\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\nmodifiedDate=20120418073729\ncolumn-1=mappa_WAR_MobileSplitportlet',1,'/mappa',0,0,'SMARTiPCisiumMobile_WAR_SMARTiPCisiumMobiletheme','01','classic','','',4,'',0,''),
 ('10e07dcf-4d36-431e-a993-e1e7926568a4',21728,10180,10154,'2012-04-18 07:28:20','2012-11-22 16:03:01',0,14,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Parcheggi</Name></root>','','','','','portlet','sitemap-changefreq=daily\nlayout-template-id=2_columns_ii\nshow-alternate-links=true\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\nmodifiedDate=20120418073808\ncolumn-1=parcheggi_WAR_MobileSplitportlet',1,'/parcheggi',0,0,'SMARTiPCisiumMobile_WAR_SMARTiPCisiumMobiletheme','01','classic','','',5,'',0,''),
 ('a6f22467-fc45-447c-850d-6b54aa82d6b1',21733,10180,10154,'2012-04-18 07:28:27','2012-11-22 16:03:01',0,15,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Eventi</Name></root>','','','','','portlet','sitemap-changefreq=daily\nlayout-template-id=2_columns_ii\nshow-alternate-links=true\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\nmodifiedDate=20120418073846\ncolumn-1=eventi_WAR_MobileSplitportlet',1,'/eventi',0,0,'SMARTiPCisiumMobile_WAR_SMARTiPCisiumMobiletheme','01','classic','','',6,'',0,''),
 ('f59fdeba-b759-4132-a48d-1ed6a23104d5',21738,10180,10154,'2012-04-18 07:28:59','2012-11-22 16:03:01',0,16,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Codici sms</Name></root>','','','','','portlet','sitemap-changefreq=daily\nlayout-template-id=2_columns_ii\nshow-alternate-links=true\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\nmodifiedDate=20120418073923\ncolumn-1=codicisms_WAR_MobileSplitportlet',1,'/codici-sms',0,0,'SMARTiPCisiumMobile_WAR_SMARTiPCisiumMobiletheme','01','classic','','',7,'',0,''),
 ('d3e2c8d8-3125-484d-87cb-1506ddbf0381',21743,10180,10154,'2012-04-18 07:29:12','2012-11-22 16:03:01',0,17,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Strade pulite</Name></root>','','','','','portlet','sitemap-changefreq=daily\nlayout-template-id=2_columns_ii\nshow-alternate-links=true\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\nmodifiedDate=20120418074005\ncolumn-2=stradepulite_WAR_MobileSplitportlet',1,'/strade-pulite',0,0,'SMARTiPCisiumMobile_WAR_SMARTiPCisiumMobiletheme','01','classic','','',8,'',0,''),
 ('205f10d3-1fc4-4832-b729-bacda3e20c23',21774,10180,10154,'2012-04-18 07:34:48','2012-11-22 16:03:01',0,18,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Autenticazione</Name></root>','','','','','portlet','sitemap-changefreq=daily\nlayout-template-id=2_columns_ii\nshow-alternate-links=true\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\nmodifiedDate=20120418074045\ncolumn-1=58',1,'/autenticazione',0,0,'SMARTiPCisiumMobile_WAR_SMARTiPCisiumMobiletheme','01','classic','','',9,'',0,''),
 ('54a58105-3e01-4d8e-9412-8d25220243f3',21901,10180,10154,'2012-04-19 10:13:03','2013-03-19 14:12:14',0,19,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,it_IT,\" default-locale=\"it_IT\"><Name language-id=\"en_US\">Home</Name><Name language-id=\"it_IT\">Home</Name></root>','','','','','portlet','sitemap-changefreq=daily\nshow-alternate-links=true\nlayout-template-id=SMARTiP_Cicium_2_1\nsitemap-include=1\ncolumn-3=56_INSTANCE_ATkxmlf9qHbG\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\nmodifiedDate=20130319141156\ncolumn-2=parcheggi_WAR_SMARTiPCisiumParcheggiportlet,56_INSTANCE_6kcr8AK7zZ2z,stradepulite_WAR_SMARTiPCisiumStradePuliteportlet,codicisms_WAR_SMARTiPCisiumCodiciSMSportlet,\ncolumn-1=traffico_WAR_SMARTiPCisiumTrafficoportlet,eventi_WAR_SMARTiPCisiumEventiportlet,\n',1,'/home-desktop',0,0,'EngCleapColors_WAR_EngCleapColorstheme','04','classic','','',10,'',0,''),
 ('5fbb1c7b-5dd8-4862-8001-c9aae224b812',23307,10180,10154,'2012-07-23 08:20:10','2012-07-23 08:20:27',0,20,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Test</Name></root>','','','','','portlet','sitemap-changefreq=daily\nshow-alternate-links=true\nlayout-template-id=2_columns_ii\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\ncolumn-2=fermatebus_WAR_SMARTiPCisiumFermateBusportlet\nmodifiedDate=20121019100544',1,'/test',0,0,'classic','','classic','','',12,'',0,'');
/*!40000 ALTER TABLE `Layout` ENABLE KEYS */;


--
-- Definition of table `LayoutBranch`
--

DROP TABLE IF EXISTS `LayoutBranch`;
CREATE TABLE `LayoutBranch` (
  `LayoutBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`LayoutBranchId`)
) TYPE=InnoDB;

--
-- Dumping data for table `LayoutBranch`
--

/*!40000 ALTER TABLE `LayoutBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutBranch` ENABLE KEYS */;


--
-- Definition of table `LayoutPrototype`
--

DROP TABLE IF EXISTS `LayoutPrototype`;
CREATE TABLE `LayoutPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`)
) TYPE=InnoDB;

--
-- Dumping data for table `LayoutPrototype`
--

/*!40000 ALTER TABLE `LayoutPrototype` DISABLE KEYS */;
INSERT INTO `LayoutPrototype` (`uuid_`,`layoutPrototypeId`,`companyId`,`name`,`description`,`settings_`,`active_`) VALUES 
 ('557b5a88-c26c-473a-baf0-ed3d992f3d65',10309,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),
 ('34b3335a-96ad-4477-876b-52fb12c9edf8',10319,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),
 ('b6386f88-593c-41ae-a497-c67073b4e5bb',10328,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1),
 ('5f33e42f-f024-42c2-83b5-c3b9b38f1bbb',13506,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Mobile Template</Name></root>','','',1);
/*!40000 ALTER TABLE `LayoutPrototype` ENABLE KEYS */;


--
-- Definition of table `LayoutRevision`
--

DROP TABLE IF EXISTS `LayoutRevision`;
CREATE TABLE `LayoutRevision` (
  `layoutRevisionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `layoutBranchId` bigint(20) DEFAULT NULL,
  `parentLayoutRevisionId` bigint(20) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `major` tinyint(4) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `typeSettings` longtext,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`layoutRevisionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `LayoutRevision`
--

/*!40000 ALTER TABLE `LayoutRevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutRevision` ENABLE KEYS */;


--
-- Definition of table `LayoutSet`
--

DROP TABLE IF EXISTS `LayoutSet`;
CREATE TABLE `LayoutSet` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `pageCount` int(11) DEFAULT NULL,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetId`)
) TYPE=InnoDB;

--
-- Dumping data for table `LayoutSet`
--

/*!40000 ALTER TABLE `LayoutSet` DISABLE KEYS */;
INSERT INTO `LayoutSet` (`layoutSetId`,`groupId`,`companyId`,`createDate`,`modifiedDate`,`privateLayout`,`logo`,`logoId`,`themeId`,`colorSchemeId`,`wapThemeId`,`wapColorSchemeId`,`css`,`pageCount`,`settings_`,`layoutSetPrototypeUuid`,`layoutSetPrototypeLinkEnabled`) VALUES 
 (10173,10172,10154,'2012-02-20 09:47:29','2012-02-20 09:47:30',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10174,10172,10154,'2012-02-20 09:47:29','2012-02-20 09:47:29',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10181,10180,10154,'2012-02-20 09:47:30','2012-03-15 09:46:50',1,0,0,'classic','03','mobile','01','',0,'showSiteName=false','',0),
 (10182,10180,10154,'2012-02-20 09:47:30','2013-03-14 18:26:48',0,1,11703,'EngCleapColors_WAR_EngCleapColorstheme','05','mobile','01','',11,'showSiteName=false\n','',0),
 (10190,10189,10154,'2012-02-20 09:47:30','2012-02-20 09:47:30',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10191,10189,10154,'2012-02-20 09:47:30','2012-02-20 09:47:30',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10193,10192,10154,'2012-02-20 09:47:30','2012-02-20 09:47:30',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10194,10192,10154,'2012-02-20 09:47:30','2012-02-20 09:47:30',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10199,10198,10154,'2012-02-20 09:47:31','2012-02-20 09:47:31',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10200,10198,10154,'2012-02-20 09:47:31','2012-02-20 09:47:31',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10311,10310,10154,'2012-02-20 09:47:34','2012-02-20 09:47:34',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10312,10310,10154,'2012-02-20 09:47:34','2012-02-20 09:47:34',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10321,10320,10154,'2012-02-20 09:47:35','2012-02-20 09:47:35',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10322,10320,10154,'2012-02-20 09:47:35','2012-02-20 09:47:35',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10330,10329,10154,'2012-02-20 09:47:35','2012-02-20 09:47:35',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10331,10329,10154,'2012-02-20 09:47:35','2012-02-20 09:47:35',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10339,10338,10154,'2012-02-20 09:47:35','2012-02-20 09:47:40',1,0,0,'classic','01','mobile','01','',3,'','',0),
 (10340,10338,10154,'2012-02-20 09:47:35','2012-02-20 09:47:35',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10365,10364,10154,'2012-02-20 09:47:40','2012-02-20 09:47:40',1,0,0,'classic','01','mobile','01','',4,'','',0),
 (10366,10364,10154,'2012-02-20 09:47:40','2012-02-20 09:47:40',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (13508,13507,10154,'2012-02-22 11:22:26','2012-02-22 11:22:26',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (13509,13507,10154,'2012-02-22 11:22:26','2012-02-22 11:22:26',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (19607,19606,10154,'2012-03-14 09:57:09','2012-03-14 09:57:09',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (19608,19606,10154,'2012-03-14 09:57:09','2012-03-14 09:57:09',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (19616,19615,10154,'2012-03-14 09:58:32','2012-03-14 09:58:32',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (19617,19615,10154,'2012-03-14 09:58:32','2012-03-14 09:58:32',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (21305,21304,10154,'2012-03-20 09:41:12','2012-03-20 09:41:12',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (21306,21304,10154,'2012-03-20 09:41:12','2012-03-20 09:41:12',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (21804,21803,10154,'2012-04-18 09:57:18','2012-04-18 09:57:18',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (21805,21803,10154,'2012-04-18 09:57:18','2012-04-18 09:57:18',0,0,0,'classic','01','mobile','01','',0,'','',0);
/*!40000 ALTER TABLE `LayoutSet` ENABLE KEYS */;


--
-- Definition of table `LayoutSetBranch`
--

DROP TABLE IF EXISTS `LayoutSetBranch`;
CREATE TABLE `LayoutSetBranch` (
  `layoutSetBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetBranchId`)
) TYPE=InnoDB;

--
-- Dumping data for table `LayoutSetBranch`
--

/*!40000 ALTER TABLE `LayoutSetBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutSetBranch` ENABLE KEYS */;


--
-- Definition of table `LayoutSetPrototype`
--

DROP TABLE IF EXISTS `LayoutSetPrototype`;
CREATE TABLE `LayoutSetPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`)
) TYPE=InnoDB;

--
-- Dumping data for table `LayoutSetPrototype`
--

/*!40000 ALTER TABLE `LayoutSetPrototype` DISABLE KEYS */;
INSERT INTO `LayoutSetPrototype` (`uuid_`,`layoutSetPrototypeId`,`companyId`,`createDate`,`modifiedDate`,`name`,`description`,`settings_`,`active_`) VALUES 
 ('d136029c-6bcf-47cc-86b9-a5716a09e604',10337,10154,'2012-02-20 09:47:35','2012-02-20 09:47:40','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums, Calendar and Wiki','layoutsUpdateable=true',1),
 ('06864942-1ea9-4d66-a499-a474f47bf0f2',10363,10154,'2012-02-20 09:47:40','2012-02-20 09:47:40','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents, Calendar and News','layoutsUpdateable=true',1);
/*!40000 ALTER TABLE `LayoutSetPrototype` ENABLE KEYS */;


--
-- Definition of table `ListType`
--

DROP TABLE IF EXISTS `ListType`;
CREATE TABLE `ListType` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`listTypeId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ListType`
--

/*!40000 ALTER TABLE `ListType` DISABLE KEYS */;
INSERT INTO `ListType` (`listTypeId`,`name`,`type_`) VALUES 
 (10000,'billing','com.liferay.portal.model.Account.address'),
 (10001,'other','com.liferay.portal.model.Account.address'),
 (10002,'p-o-box','com.liferay.portal.model.Account.address'),
 (10003,'shipping','com.liferay.portal.model.Account.address'),
 (10004,'email-address','com.liferay.portal.model.Account.emailAddress'),
 (10005,'email-address-2','com.liferay.portal.model.Account.emailAddress'),
 (10006,'email-address-3','com.liferay.portal.model.Account.emailAddress'),
 (10007,'fax','com.liferay.portal.model.Account.phone'),
 (10008,'local','com.liferay.portal.model.Account.phone'),
 (10009,'other','com.liferay.portal.model.Account.phone'),
 (10010,'toll-free','com.liferay.portal.model.Account.phone'),
 (10011,'tty','com.liferay.portal.model.Account.phone'),
 (10012,'intranet','com.liferay.portal.model.Account.website'),
 (10013,'public','com.liferay.portal.model.Account.website'),
 (11000,'business','com.liferay.portal.model.Contact.address'),
 (11001,'other','com.liferay.portal.model.Contact.address'),
 (11002,'personal','com.liferay.portal.model.Contact.address'),
 (11003,'email-address','com.liferay.portal.model.Contact.emailAddress'),
 (11004,'email-address-2','com.liferay.portal.model.Contact.emailAddress'),
 (11005,'email-address-3','com.liferay.portal.model.Contact.emailAddress'),
 (11006,'business','com.liferay.portal.model.Contact.phone'),
 (11007,'business-fax','com.liferay.portal.model.Contact.phone'),
 (11008,'mobile-phone','com.liferay.portal.model.Contact.phone'),
 (11009,'other','com.liferay.portal.model.Contact.phone'),
 (11010,'pager','com.liferay.portal.model.Contact.phone'),
 (11011,'personal','com.liferay.portal.model.Contact.phone'),
 (11012,'personal-fax','com.liferay.portal.model.Contact.phone'),
 (11013,'tty','com.liferay.portal.model.Contact.phone'),
 (11014,'dr','com.liferay.portal.model.Contact.prefix'),
 (11015,'mr','com.liferay.portal.model.Contact.prefix'),
 (11016,'mrs','com.liferay.portal.model.Contact.prefix'),
 (11017,'ms','com.liferay.portal.model.Contact.prefix'),
 (11020,'ii','com.liferay.portal.model.Contact.suffix'),
 (11021,'iii','com.liferay.portal.model.Contact.suffix'),
 (11022,'iv','com.liferay.portal.model.Contact.suffix'),
 (11023,'jr','com.liferay.portal.model.Contact.suffix'),
 (11024,'phd','com.liferay.portal.model.Contact.suffix'),
 (11025,'sr','com.liferay.portal.model.Contact.suffix'),
 (11026,'blog','com.liferay.portal.model.Contact.website'),
 (11027,'business','com.liferay.portal.model.Contact.website'),
 (11028,'other','com.liferay.portal.model.Contact.website'),
 (11029,'personal','com.liferay.portal.model.Contact.website'),
 (12000,'billing','com.liferay.portal.model.Organization.address'),
 (12001,'other','com.liferay.portal.model.Organization.address'),
 (12002,'p-o-box','com.liferay.portal.model.Organization.address'),
 (12003,'shipping','com.liferay.portal.model.Organization.address'),
 (12004,'email-address','com.liferay.portal.model.Organization.emailAddress'),
 (12005,'email-address-2','com.liferay.portal.model.Organization.emailAddress'),
 (12006,'email-address-3','com.liferay.portal.model.Organization.emailAddress'),
 (12007,'fax','com.liferay.portal.model.Organization.phone'),
 (12008,'local','com.liferay.portal.model.Organization.phone'),
 (12009,'other','com.liferay.portal.model.Organization.phone'),
 (12010,'toll-free','com.liferay.portal.model.Organization.phone'),
 (12011,'tty','com.liferay.portal.model.Organization.phone'),
 (12012,'administrative','com.liferay.portal.model.Organization.service'),
 (12013,'contracts','com.liferay.portal.model.Organization.service'),
 (12014,'donation','com.liferay.portal.model.Organization.service'),
 (12015,'retail','com.liferay.portal.model.Organization.service'),
 (12016,'training','com.liferay.portal.model.Organization.service'),
 (12017,'full-member','com.liferay.portal.model.Organization.status'),
 (12018,'provisional-member','com.liferay.portal.model.Organization.status'),
 (12019,'intranet','com.liferay.portal.model.Organization.website'),
 (12020,'public','com.liferay.portal.model.Organization.website');
/*!40000 ALTER TABLE `ListType` ENABLE KEYS */;


--
-- Definition of table `Lock_`
--

DROP TABLE IF EXISTS `Lock_`;
CREATE TABLE `Lock_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `lockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `className` varchar(75) DEFAULT NULL,
  `key_` varchar(200) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `inheritable` tinyint(4) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`lockId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Lock_`
--

/*!40000 ALTER TABLE `Lock_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lock_` ENABLE KEYS */;


--
-- Definition of table `MBBan`
--

DROP TABLE IF EXISTS `MBBan`;
CREATE TABLE `MBBan` (
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `banUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`banId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MBBan`
--

/*!40000 ALTER TABLE `MBBan` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBBan` ENABLE KEYS */;


--
-- Definition of table `MBCategory`
--

DROP TABLE IF EXISTS `MBCategory`;
CREATE TABLE `MBCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `displayStyle` varchar(75) DEFAULT NULL,
  `threadCount` int(11) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MBCategory`
--

/*!40000 ALTER TABLE `MBCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBCategory` ENABLE KEYS */;


--
-- Definition of table `MBDiscussion`
--

DROP TABLE IF EXISTS `MBDiscussion`;
CREATE TABLE `MBDiscussion` (
  `discussionId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`discussionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MBDiscussion`
--

/*!40000 ALTER TABLE `MBDiscussion` DISABLE KEYS */;
INSERT INTO `MBDiscussion` (`discussionId`,`classNameId`,`classPK`,`threadId`) VALUES 
 (10179,10002,10175,10177),
 (10187,10002,10183,10185),
 (10318,10002,10313,10315),
 (10327,10002,10323,10325),
 (10336,10002,10332,10334),
 (10350,10002,10346,10348),
 (10356,10002,10352,10354),
 (10362,10002,10358,10360),
 (10376,10002,10372,10374),
 (10384,10002,10380,10382),
 (10390,10002,10386,10388),
 (10396,10002,10392,10394),
 (11920,10002,11916,11918),
 (13514,10002,13510,13512),
 (21722,10002,21718,21720),
 (21727,10002,21723,21725),
 (21732,10002,21728,21730),
 (21737,10002,21733,21735),
 (21742,10002,21738,21740),
 (21747,10002,21743,21745),
 (21778,10002,21774,21776),
 (21905,10002,21901,21903),
 (23311,10002,23307,23309),
 (24611,10108,24605,24609),
 (24628,10108,24622,24626);
/*!40000 ALTER TABLE `MBDiscussion` ENABLE KEYS */;


--
-- Definition of table `MBMailingList`
--

DROP TABLE IF EXISTS `MBMailingList`;
CREATE TABLE `MBMailingList` (
  `uuid_` varchar(75) DEFAULT NULL,
  `mailingListId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `inProtocol` varchar(75) DEFAULT NULL,
  `inServerName` varchar(75) DEFAULT NULL,
  `inServerPort` int(11) DEFAULT NULL,
  `inUseSSL` tinyint(4) DEFAULT NULL,
  `inUserName` varchar(75) DEFAULT NULL,
  `inPassword` varchar(75) DEFAULT NULL,
  `inReadInterval` int(11) DEFAULT NULL,
  `outEmailAddress` varchar(75) DEFAULT NULL,
  `outCustom` tinyint(4) DEFAULT NULL,
  `outServerName` varchar(75) DEFAULT NULL,
  `outServerPort` int(11) DEFAULT NULL,
  `outUseSSL` tinyint(4) DEFAULT NULL,
  `outUserName` varchar(75) DEFAULT NULL,
  `outPassword` varchar(75) DEFAULT NULL,
  `allowAnonymous` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mailingListId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MBMailingList`
--

/*!40000 ALTER TABLE `MBMailingList` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBMailingList` ENABLE KEYS */;


--
-- Definition of table `MBMessage`
--

DROP TABLE IF EXISTS `MBMessage`;
CREATE TABLE `MBMessage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `messageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `parentMessageId` bigint(20) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  `format` varchar(75) DEFAULT NULL,
  `attachments` tinyint(4) DEFAULT NULL,
  `anonymous` tinyint(4) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MBMessage`
--

/*!40000 ALTER TABLE `MBMessage` DISABLE KEYS */;
INSERT INTO `MBMessage` (`uuid_`,`messageId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`categoryId`,`threadId`,`rootMessageId`,`parentMessageId`,`subject`,`body`,`format`,`attachments`,`anonymous`,`priority`,`allowPingbacks`,`answer`,`status`,`statusByUserId`,`statusByUserName`,`statusDate`) VALUES 
 ('ee19f63d-305c-485c-ab3f-4c5ac1fb9028',10176,10172,10154,10158,'','2012-02-20 09:47:30','2012-02-20 09:47:30',10002,10175,-1,10177,10176,0,'10175','10175','bbcode',0,1,0,0,0,0,10158,'','2012-02-20 09:47:30'),
 ('d7971e95-5731-4cc7-a025-bfa3d549dedb',10184,10180,10154,10158,'','2012-02-20 09:47:30','2012-02-20 09:47:30',10002,10183,-1,10185,10184,0,'10183','10183','bbcode',0,1,0,0,0,0,10158,'','2012-02-20 09:47:30'),
 ('91e8d3a3-ce70-44d2-b63f-2dd68b78b1aa',10314,10310,10154,10158,'','2012-02-20 09:47:34','2012-02-20 09:47:34',10002,10313,-1,10315,10314,0,'10313','10313','bbcode',0,1,0,0,0,0,10158,'','2012-02-20 09:47:34'),
 ('3f4674c4-21ea-45ed-9641-20c740469c26',10324,10320,10154,10158,'','2012-02-20 09:47:35','2012-02-20 09:47:35',10002,10323,-1,10325,10324,0,'10323','10323','bbcode',0,1,0,0,0,0,10158,'','2012-02-20 09:47:35'),
 ('450b9ef0-a65e-4959-9ecd-ed4fecc23c87',10333,10329,10154,10158,'','2012-02-20 09:47:35','2012-02-20 09:47:35',10002,10332,-1,10334,10333,0,'10332','10332','bbcode',0,1,0,0,0,0,10158,'','2012-02-20 09:47:35'),
 ('94b612f4-5fc3-470c-9682-b5b855ea344f',10347,10338,10154,10158,'','2012-02-20 09:47:39','2012-02-20 09:47:39',10002,10346,-1,10348,10347,0,'10346','10346','bbcode',0,1,0,0,0,0,10158,'','2012-02-20 09:47:39'),
 ('41e108e9-713f-4373-aa71-559d0cde8882',10353,10338,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10002,10352,-1,10354,10353,0,'10352','10352','bbcode',0,1,0,0,0,0,10158,'','2012-02-20 09:47:40'),
 ('c45d1197-2d60-4381-8b42-980995b70637',10359,10338,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10002,10358,-1,10360,10359,0,'10358','10358','bbcode',0,1,0,0,0,0,10158,'','2012-02-20 09:47:40'),
 ('2592ad70-63a8-40ed-9d84-a1b103177503',10373,10364,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10002,10372,-1,10374,10373,0,'10372','10372','bbcode',0,1,0,0,0,0,10158,'','2012-02-20 09:47:40'),
 ('e19ff245-8a91-4be8-ae37-be9b55e40923',10381,10364,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10002,10380,-1,10382,10381,0,'10380','10380','bbcode',0,1,0,0,0,0,10158,'','2012-02-20 09:47:40'),
 ('35659f75-dc29-487f-989e-dd3855699086',10387,10364,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10002,10386,-1,10388,10387,0,'10386','10386','bbcode',0,1,0,0,0,0,10158,'','2012-02-20 09:47:40'),
 ('75a7a79c-870a-424b-8483-5cddf3e679a0',10393,10364,10154,10158,'','2012-02-20 09:47:40','2012-02-20 09:47:40',10002,10392,-1,10394,10393,0,'10392','10392','bbcode',0,1,0,0,0,0,10158,'','2012-02-20 09:47:40'),
 ('9c21652f-08b2-493f-ae6b-5aa4a55aed34',11917,10180,10154,10196,'admin Minda','2012-02-21 10:46:19','2012-02-21 10:46:19',10002,11916,-1,11918,11917,0,'11916','11916','bbcode',0,0,0,0,0,0,10196,'admin Minda','2012-02-21 10:46:19'),
 ('b94abf29-62b9-40bb-9775-09013e64d756',13511,13507,10154,10196,'admin Minda','2012-02-22 11:22:26','2012-02-22 11:22:26',10002,13510,-1,13512,13511,0,'13510','13510','bbcode',0,0,0,0,0,0,10196,'admin Minda','2012-02-22 11:22:26'),
 ('fe40f495-84be-452b-8f10-7b0d63da264e',21719,10180,10154,10196,'Admin Minda','2012-04-18 07:28:05','2012-04-18 07:28:05',10002,21718,-1,21720,21719,0,'21718','21718','bbcode',0,0,0,0,0,0,10196,'Admin Minda','2012-04-18 07:28:05'),
 ('1b7ebc70-ccc6-4497-9c01-63a8a0dad2a8',21724,10180,10154,10196,'Admin Minda','2012-04-18 07:28:12','2012-04-18 07:28:12',10002,21723,-1,21725,21724,0,'21723','21723','bbcode',0,0,0,0,0,0,10196,'Admin Minda','2012-04-18 07:28:12'),
 ('30145c27-ade9-48af-9a52-ebe85305f5d4',21729,10180,10154,10196,'Admin Minda','2012-04-18 07:28:20','2012-04-18 07:28:20',10002,21728,-1,21730,21729,0,'21728','21728','bbcode',0,0,0,0,0,0,10196,'Admin Minda','2012-04-18 07:28:20'),
 ('ad87543e-27d3-4375-8327-b94fa625e399',21734,10180,10154,10196,'Admin Minda','2012-04-18 07:28:27','2012-04-18 07:28:27',10002,21733,-1,21735,21734,0,'21733','21733','bbcode',0,0,0,0,0,0,10196,'Admin Minda','2012-04-18 07:28:27'),
 ('46c116ef-fd52-4240-986e-70e81cb195ce',21739,10180,10154,10196,'Admin Minda','2012-04-18 07:28:59','2012-04-18 07:28:59',10002,21738,-1,21740,21739,0,'21738','21738','bbcode',0,0,0,0,0,0,10196,'Admin Minda','2012-04-18 07:28:59'),
 ('7b76fbe7-5070-4e94-a04f-721a76cde32b',21744,10180,10154,10196,'Admin Minda','2012-04-18 07:29:12','2012-04-18 07:29:12',10002,21743,-1,21745,21744,0,'21743','21743','bbcode',0,0,0,0,0,0,10196,'Admin Minda','2012-04-18 07:29:12'),
 ('30d93398-3244-438e-96e4-90fdb420f1c1',21775,10180,10154,10196,'Admin Minda','2012-04-18 07:34:48','2012-04-18 07:34:48',10002,21774,-1,21776,21775,0,'21774','21774','bbcode',0,0,0,0,0,0,10196,'Admin Minda','2012-04-18 07:34:48'),
 ('d67e5c74-3d08-404f-96b2-24b095ae6c98',21902,10180,10154,10196,'Admin Minda','2012-04-19 10:13:03','2012-04-19 10:13:03',10002,21901,-1,21903,21902,0,'21901','21901','bbcode',0,0,0,0,0,0,10196,'Admin Minda','2012-04-19 10:13:03'),
 ('1c63cf33-c6b1-43be-a802-a7f8be680432',23308,10180,10154,10196,'Admin Minda','2012-07-23 08:20:10','2012-07-23 08:20:10',10002,23307,-1,23309,23308,0,'23307','23307','bbcode',0,0,0,0,0,0,10196,'Admin Minda','2012-07-23 08:20:11'),
 ('0518dad3-b43c-4afe-8e94-52a6aec8440d',24608,10180,10154,10196,'Admin Minda','2013-03-14 18:17:02','2013-03-14 18:17:02',10108,24605,-1,24609,24608,0,'24605','24605','bbcode',0,0,0,0,0,0,10196,'Admin Minda','2013-03-14 18:17:02'),
 ('2fa631d7-5771-49c0-aef1-09fe540ee57b',24625,10180,10154,10196,'Admin Minda','2013-03-14 18:17:03','2013-03-14 18:17:03',10108,24622,-1,24626,24625,0,'24622','24622','bbcode',0,0,0,0,0,0,10196,'Admin Minda','2013-03-14 18:17:03');
/*!40000 ALTER TABLE `MBMessage` ENABLE KEYS */;


--
-- Definition of table `MBStatsUser`
--

DROP TABLE IF EXISTS `MBStatsUser`;
CREATE TABLE `MBStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`statsUserId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MBStatsUser`
--

/*!40000 ALTER TABLE `MBStatsUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBStatsUser` ENABLE KEYS */;


--
-- Definition of table `MBThread`
--

DROP TABLE IF EXISTS `MBThread`;
CREATE TABLE `MBThread` (
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `rootMessageUserId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `lastPostByUserId` bigint(20) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `question` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`threadId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MBThread`
--

/*!40000 ALTER TABLE `MBThread` DISABLE KEYS */;
INSERT INTO `MBThread` (`threadId`,`groupId`,`companyId`,`categoryId`,`rootMessageId`,`rootMessageUserId`,`messageCount`,`viewCount`,`lastPostByUserId`,`lastPostDate`,`priority`,`question`,`status`,`statusByUserId`,`statusByUserName`,`statusDate`) VALUES 
 (10177,10172,10154,-1,10176,10158,1,0,0,'2012-02-20 09:47:30',0,0,0,10158,'','2012-02-20 09:47:30'),
 (10185,10180,10154,-1,10184,10158,1,0,0,'2012-02-20 09:47:30',0,0,0,10158,'','2012-02-20 09:47:30'),
 (10315,10310,10154,-1,10314,10158,1,0,0,'2012-02-20 09:47:34',0,0,0,10158,'','2012-02-20 09:47:34'),
 (10325,10320,10154,-1,10324,10158,1,0,0,'2012-02-20 09:47:35',0,0,0,10158,'','2012-02-20 09:47:35'),
 (10334,10329,10154,-1,10333,10158,1,0,0,'2012-02-20 09:47:35',0,0,0,10158,'','2012-02-20 09:47:35'),
 (10348,10338,10154,-1,10347,10158,1,0,0,'2012-02-20 09:47:39',0,0,0,10158,'','2012-02-20 09:47:39'),
 (10354,10338,10154,-1,10353,10158,1,0,0,'2012-02-20 09:47:40',0,0,0,10158,'','2012-02-20 09:47:40'),
 (10360,10338,10154,-1,10359,10158,1,0,0,'2012-02-20 09:47:40',0,0,0,10158,'','2012-02-20 09:47:40'),
 (10374,10364,10154,-1,10373,10158,1,0,0,'2012-02-20 09:47:40',0,0,0,10158,'','2012-02-20 09:47:40'),
 (10382,10364,10154,-1,10381,10158,1,0,0,'2012-02-20 09:47:40',0,0,0,10158,'','2012-02-20 09:47:40'),
 (10388,10364,10154,-1,10387,10158,1,0,0,'2012-02-20 09:47:40',0,0,0,10158,'','2012-02-20 09:47:40'),
 (10394,10364,10154,-1,10393,10158,1,0,0,'2012-02-20 09:47:40',0,0,0,10158,'','2012-02-20 09:47:40'),
 (11918,10180,10154,-1,11917,10196,1,0,10196,'2012-02-21 10:46:19',0,0,0,10196,'admin Minda','2012-02-21 10:46:19'),
 (13512,13507,10154,-1,13511,10196,1,0,10196,'2012-02-22 11:22:26',0,0,0,10196,'admin Minda','2012-02-22 11:22:26'),
 (21720,10180,10154,-1,21719,10196,1,0,10196,'2012-04-18 07:28:05',0,0,0,10196,'Admin Minda','2012-04-18 07:28:05'),
 (21725,10180,10154,-1,21724,10196,1,0,10196,'2012-04-18 07:28:12',0,0,0,10196,'Admin Minda','2012-04-18 07:28:12'),
 (21730,10180,10154,-1,21729,10196,1,0,10196,'2012-04-18 07:28:20',0,0,0,10196,'Admin Minda','2012-04-18 07:28:20'),
 (21735,10180,10154,-1,21734,10196,1,0,10196,'2012-04-18 07:28:27',0,0,0,10196,'Admin Minda','2012-04-18 07:28:27'),
 (21740,10180,10154,-1,21739,10196,1,0,10196,'2012-04-18 07:28:59',0,0,0,10196,'Admin Minda','2012-04-18 07:28:59'),
 (21745,10180,10154,-1,21744,10196,1,0,10196,'2012-04-18 07:29:12',0,0,0,10196,'Admin Minda','2012-04-18 07:29:12'),
 (21776,10180,10154,-1,21775,10196,1,0,10196,'2012-04-18 07:34:48',0,0,0,10196,'Admin Minda','2012-04-18 07:34:48'),
 (21903,10180,10154,-1,21902,10196,1,0,10196,'2012-04-19 10:13:03',0,0,0,10196,'Admin Minda','2012-04-19 10:13:03'),
 (23309,10180,10154,-1,23308,10196,1,0,10196,'2012-07-23 08:20:11',0,0,0,10196,'Admin Minda','2012-07-23 08:20:11'),
 (24609,10180,10154,-1,24608,10196,1,0,10196,'2013-03-14 18:17:02',0,0,0,10196,'Admin Minda','2013-03-14 18:17:02'),
 (24626,10180,10154,-1,24625,10196,1,0,10196,'2013-03-14 18:17:03',0,0,0,10196,'Admin Minda','2013-03-14 18:17:03');
/*!40000 ALTER TABLE `MBThread` ENABLE KEYS */;


--
-- Definition of table `MBThreadFlag`
--

DROP TABLE IF EXISTS `MBThreadFlag`;
CREATE TABLE `MBThreadFlag` (
  `threadFlagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threadFlagId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MBThreadFlag`
--

/*!40000 ALTER TABLE `MBThreadFlag` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBThreadFlag` ENABLE KEYS */;


--
-- Definition of table `MDRAction`
--

DROP TABLE IF EXISTS `MDRAction`;
CREATE TABLE `MDRAction` (
  `uuid_` varchar(75) DEFAULT NULL,
  `actionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`actionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MDRAction`
--

/*!40000 ALTER TABLE `MDRAction` DISABLE KEYS */;
INSERT INTO `MDRAction` (`uuid_`,`actionId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`ruleGroupInstanceId`,`name`,`description`,`type_`,`typeSettings`) VALUES 
 ('6fb3a6b5-d4cc-4846-96a5-92dacdce9d23',11911,10180,10154,10196,'admin Minda','2012-02-21 10:27:18','2012-02-21 10:27:18',10002,11905,11910,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Android Redirect Action</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Redirect to the Cisium Android version</Description></root>','com.liferay.portal.mobile.device.rulegroup.action.impl.SimpleRedirectActionHandler','url=http://divino.eng.it/SMARTiP-Mobile/index.html'),
 ('2f202372-8fe0-45d9-885f-6a79106dcb9a',11913,10180,10154,10196,'admin Minda','2012-02-21 10:29:48','2012-04-18 11:55:57',10002,10183,11912,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Android Redirection Action</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Redirection to Cisium Android version</Description></root>','com.liferay.portal.mobile.device.rulegroup.action.impl.SiteRedirectActionHandler','groupId=10180\nplid=21718'),
 ('550cba17-059d-4891-9788-f59f9d881b5e',11915,10180,10154,10196,'admin Minda','2012-02-21 10:34:52','2012-04-18 11:57:15',10002,10183,11912,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">iPhone Redirection Action</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Redirect to Cisium iPhone version</Description></root>','com.liferay.portal.mobile.device.rulegroup.action.impl.SiteRedirectActionHandler','groupId=10180\nplid=21718'),
 ('ab422c2a-e225-4f14-8794-69a67af4493b',13302,10180,10154,10196,'admin Minda','2012-02-22 09:22:59','2012-03-15 10:02:08',10002,10183,11912,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Mobile Theme</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Change into Mobile theme</Description></root>','com.liferay.portal.mobile.device.rulegroup.action.impl.ThemeModificationActionHandler','themeId=SMARTiPCisiumMobile_WAR_SMARTiPCisiumMobiletheme\ncolorSchemeId=03'),
 ('5161ffa0-f582-4430-9e30-81a84590845e',13403,10180,10154,10196,'admin Minda','2012-02-22 10:47:44','2012-03-15 09:53:30',10002,11916,13402,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Change Theme</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">change in mobile theme</Description></root>','com.liferay.portal.mobile.device.rulegroup.action.impl.ThemeModificationActionHandler','themeId=SMARTiPCisiumMobile_WAR_SMARTiPCisiumMobiletheme');
/*!40000 ALTER TABLE `MDRAction` ENABLE KEYS */;


--
-- Definition of table `MDRRule`
--

DROP TABLE IF EXISTS `MDRRule`;
CREATE TABLE `MDRRule` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`ruleId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MDRRule`
--

/*!40000 ALTER TABLE `MDRRule` DISABLE KEYS */;
INSERT INTO `MDRRule` (`uuid_`,`ruleId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`ruleGroupId`,`name`,`description`,`type_`,`typeSettings`) VALUES 
 ('04b3e67b-1567-4889-a09c-57ad0497be76',11904,10180,10154,10196,'admin Minda','2012-02-21 10:21:00','2012-02-21 10:22:12',11903,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Android Cisium</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Access to Cisium Android version</Description></root>','com.liferay.portal.mobile.device.rulegroup.rule.impl.SimpleRuleHandler','os=Android\ntablet=false'),
 ('dc139fbd-43b4-4429-80b3-f03c9f13d0bd',11914,10180,10154,10196,'admin Minda','2012-02-21 10:32:35','2012-02-21 10:33:24',11903,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">iPhone Cisium</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Access to Cisium iPhone version</Description></root>','com.liferay.portal.mobile.device.rulegroup.rule.impl.SimpleRuleHandler','os=iPhone OS\ntablet=false');
/*!40000 ALTER TABLE `MDRRule` ENABLE KEYS */;


--
-- Definition of table `MDRRuleGroup`
--

DROP TABLE IF EXISTS `MDRRuleGroup`;
CREATE TABLE `MDRRuleGroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`ruleGroupId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MDRRuleGroup`
--

/*!40000 ALTER TABLE `MDRRuleGroup` DISABLE KEYS */;
INSERT INTO `MDRRuleGroup` (`uuid_`,`ruleGroupId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`description`) VALUES 
 ('8991283d-4a45-4e0a-9130-e038f1dabf3b',11903,10180,10154,10196,'admin Minda','2012-02-21 10:16:37','2012-02-21 10:30:48','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Smartphone</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Access for Smartphone</Description></root>');
/*!40000 ALTER TABLE `MDRRuleGroup` ENABLE KEYS */;


--
-- Definition of table `MDRRuleGroupInstance`
--

DROP TABLE IF EXISTS `MDRRuleGroupInstance`;
CREATE TABLE `MDRRuleGroupInstance` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ruleGroupInstanceId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MDRRuleGroupInstance`
--

/*!40000 ALTER TABLE `MDRRuleGroupInstance` DISABLE KEYS */;
INSERT INTO `MDRRuleGroupInstance` (`uuid_`,`ruleGroupInstanceId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`ruleGroupId`,`priority`) VALUES 
 ('5b36c5fc-a43f-4891-ba7a-05e3e696fc0e',11910,10180,0,10196,'admin Minda','2012-02-21 10:25:37','2012-02-21 10:25:37',10002,11905,11903,0),
 ('a4576292-d8a6-4ebb-a965-d20070e38d22',11912,10180,0,10196,'admin Minda','2012-02-21 10:28:38','2012-02-21 10:28:38',10002,10183,11903,0),
 ('0d6fb8e8-f47f-441d-8dbe-7b81f49f7a73',13402,10180,0,10196,'admin Minda','2012-02-22 10:46:35','2012-02-22 10:46:35',10002,11916,11903,0);
/*!40000 ALTER TABLE `MDRRuleGroupInstance` ENABLE KEYS */;


--
-- Definition of table `Mail_Account`
--

DROP TABLE IF EXISTS `Mail_Account`;
CREATE TABLE `Mail_Account` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `personalName` varchar(75) DEFAULT NULL,
  `protocol` varchar(75) DEFAULT NULL,
  `incomingHostName` varchar(75) DEFAULT NULL,
  `incomingPort` int(11) DEFAULT NULL,
  `incomingSecure` tinyint(4) DEFAULT NULL,
  `outgoingHostName` varchar(75) DEFAULT NULL,
  `outgoingPort` int(11) DEFAULT NULL,
  `outgoingSecure` tinyint(4) DEFAULT NULL,
  `login` varchar(75) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `savePassword` tinyint(4) DEFAULT NULL,
  `signature` varchar(75) DEFAULT NULL,
  `useSignature` tinyint(4) DEFAULT NULL,
  `folderPrefix` varchar(75) DEFAULT NULL,
  `inboxFolderId` bigint(20) DEFAULT NULL,
  `draftFolderId` bigint(20) DEFAULT NULL,
  `sentFolderId` bigint(20) DEFAULT NULL,
  `trashFolderId` bigint(20) DEFAULT NULL,
  `defaultSender` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Mail_Account`
--

/*!40000 ALTER TABLE `Mail_Account` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mail_Account` ENABLE KEYS */;


--
-- Definition of table `Mail_Attachment`
--

DROP TABLE IF EXISTS `Mail_Attachment`;
CREATE TABLE `Mail_Attachment` (
  `attachmentId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `messageId` bigint(20) DEFAULT NULL,
  `contentPath` varchar(75) DEFAULT NULL,
  `fileName` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`attachmentId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Mail_Attachment`
--

/*!40000 ALTER TABLE `Mail_Attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mail_Attachment` ENABLE KEYS */;


--
-- Definition of table `Mail_Folder`
--

DROP TABLE IF EXISTS `Mail_Folder`;
CREATE TABLE `Mail_Folder` (
  `folderId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `fullName` varchar(75) DEFAULT NULL,
  `displayName` varchar(75) DEFAULT NULL,
  `remoteMessageCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`folderId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Mail_Folder`
--

/*!40000 ALTER TABLE `Mail_Folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mail_Folder` ENABLE KEYS */;


--
-- Definition of table `Mail_Message`
--

DROP TABLE IF EXISTS `Mail_Message`;
CREATE TABLE `Mail_Message` (
  `messageId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `sender` longtext,
  `to_` longtext,
  `cc` longtext,
  `bcc` longtext,
  `sentDate` datetime DEFAULT NULL,
  `subject` longtext,
  `preview` varchar(75) DEFAULT NULL,
  `body` longtext,
  `flags` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `remoteMessageId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Mail_Message`
--

/*!40000 ALTER TABLE `Mail_Message` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mail_Message` ENABLE KEYS */;


--
-- Definition of table `MembershipRequest`
--

DROP TABLE IF EXISTS `MembershipRequest`;
CREATE TABLE `MembershipRequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime DEFAULT NULL,
  `replierUserId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`membershipRequestId`)
) TYPE=InnoDB;

--
-- Dumping data for table `MembershipRequest`
--

/*!40000 ALTER TABLE `MembershipRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `MembershipRequest` ENABLE KEYS */;


--
-- Definition of table `OpenSocial_Gadget`
--

DROP TABLE IF EXISTS `OpenSocial_Gadget`;
CREATE TABLE `OpenSocial_Gadget` (
  `uuid_` varchar(75) DEFAULT NULL,
  `gadgetId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `portletCategoryNames` longtext,
  PRIMARY KEY (`gadgetId`)
) TYPE=InnoDB;

--
-- Dumping data for table `OpenSocial_Gadget`
--

/*!40000 ALTER TABLE `OpenSocial_Gadget` DISABLE KEYS */;
INSERT INTO `OpenSocial_Gadget` (`uuid_`,`gadgetId`,`companyId`,`createDate`,`modifiedDate`,`name`,`url`,`portletCategoryNames`) VALUES 
 ('c292eb6c-8cf1-4271-a3ee-cdde1f9b2681',23305,10154,'2012-07-23 08:19:23','2012-07-23 08:19:23','Commenti','http://localhost/XNetLabCommentService/comments-gadget/commentService.xml','root//category.gadgets');
/*!40000 ALTER TABLE `OpenSocial_Gadget` ENABLE KEYS */;


--
-- Definition of table `OpenSocial_OAuthConsumer`
--

DROP TABLE IF EXISTS `OpenSocial_OAuthConsumer`;
CREATE TABLE `OpenSocial_OAuthConsumer` (
  `oAuthConsumerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `gadgetKey` varchar(75) DEFAULT NULL,
  `serviceName` varchar(75) DEFAULT NULL,
  `consumerKey` varchar(75) DEFAULT NULL,
  `consumerSecret` longtext,
  `keyType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`oAuthConsumerId`)
) TYPE=InnoDB;

--
-- Dumping data for table `OpenSocial_OAuthConsumer`
--

/*!40000 ALTER TABLE `OpenSocial_OAuthConsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `OpenSocial_OAuthConsumer` ENABLE KEYS */;


--
-- Definition of table `OpenSocial_OAuthToken`
--

DROP TABLE IF EXISTS `OpenSocial_OAuthToken`;
CREATE TABLE `OpenSocial_OAuthToken` (
  `oAuthTokenId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `gadgetKey` varchar(75) DEFAULT NULL,
  `serviceName` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) DEFAULT NULL,
  `accessToken` varchar(75) DEFAULT NULL,
  `tokenName` varchar(75) DEFAULT NULL,
  `tokenSecret` varchar(75) DEFAULT NULL,
  `sessionHandle` varchar(75) DEFAULT NULL,
  `expiration` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oAuthTokenId`)
) TYPE=InnoDB;

--
-- Dumping data for table `OpenSocial_OAuthToken`
--

/*!40000 ALTER TABLE `OpenSocial_OAuthToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `OpenSocial_OAuthToken` ENABLE KEYS */;


--
-- Definition of table `OrgGroupPermission`
--

DROP TABLE IF EXISTS `OrgGroupPermission`;
CREATE TABLE `OrgGroupPermission` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`permissionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `OrgGroupPermission`
--

/*!40000 ALTER TABLE `OrgGroupPermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgGroupPermission` ENABLE KEYS */;


--
-- Definition of table `OrgGroupRole`
--

DROP TABLE IF EXISTS `OrgGroupRole`;
CREATE TABLE `OrgGroupRole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`roleId`)
) TYPE=InnoDB;

--
-- Dumping data for table `OrgGroupRole`
--

/*!40000 ALTER TABLE `OrgGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgGroupRole` ENABLE KEYS */;


--
-- Definition of table `OrgLabor`
--

DROP TABLE IF EXISTS `OrgLabor`;
CREATE TABLE `OrgLabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sunOpen` int(11) DEFAULT NULL,
  `sunClose` int(11) DEFAULT NULL,
  `monOpen` int(11) DEFAULT NULL,
  `monClose` int(11) DEFAULT NULL,
  `tueOpen` int(11) DEFAULT NULL,
  `tueClose` int(11) DEFAULT NULL,
  `wedOpen` int(11) DEFAULT NULL,
  `wedClose` int(11) DEFAULT NULL,
  `thuOpen` int(11) DEFAULT NULL,
  `thuClose` int(11) DEFAULT NULL,
  `friOpen` int(11) DEFAULT NULL,
  `friClose` int(11) DEFAULT NULL,
  `satOpen` int(11) DEFAULT NULL,
  `satClose` int(11) DEFAULT NULL,
  PRIMARY KEY (`orgLaborId`)
) TYPE=InnoDB;

--
-- Dumping data for table `OrgLabor`
--

/*!40000 ALTER TABLE `OrgLabor` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgLabor` ENABLE KEYS */;


--
-- Definition of table `Organization_`
--

DROP TABLE IF EXISTS `Organization_`;
CREATE TABLE `Organization_` (
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `recursable` tinyint(4) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`organizationId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Organization_`
--

/*!40000 ALTER TABLE `Organization_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Organization_` ENABLE KEYS */;


--
-- Definition of table `PasswordPolicy`
--

DROP TABLE IF EXISTS `PasswordPolicy`;
CREATE TABLE `PasswordPolicy` (
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultPolicy` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeable` tinyint(4) DEFAULT NULL,
  `changeRequired` tinyint(4) DEFAULT NULL,
  `minAge` bigint(20) DEFAULT NULL,
  `checkSyntax` tinyint(4) DEFAULT NULL,
  `allowDictionaryWords` tinyint(4) DEFAULT NULL,
  `minAlphanumeric` int(11) DEFAULT NULL,
  `minLength` int(11) DEFAULT NULL,
  `minLowerCase` int(11) DEFAULT NULL,
  `minNumbers` int(11) DEFAULT NULL,
  `minSymbols` int(11) DEFAULT NULL,
  `minUpperCase` int(11) DEFAULT NULL,
  `history` tinyint(4) DEFAULT NULL,
  `historyCount` int(11) DEFAULT NULL,
  `expireable` tinyint(4) DEFAULT NULL,
  `maxAge` bigint(20) DEFAULT NULL,
  `warningTime` bigint(20) DEFAULT NULL,
  `graceLimit` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `maxFailure` int(11) DEFAULT NULL,
  `lockoutDuration` bigint(20) DEFAULT NULL,
  `requireUnlock` tinyint(4) DEFAULT NULL,
  `resetFailureCount` bigint(20) DEFAULT NULL,
  `resetTicketMaxAge` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyId`)
) TYPE=InnoDB;

--
-- Dumping data for table `PasswordPolicy`
--

/*!40000 ALTER TABLE `PasswordPolicy` DISABLE KEYS */;
INSERT INTO `PasswordPolicy` (`passwordPolicyId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`defaultPolicy`,`name`,`description`,`changeable`,`changeRequired`,`minAge`,`checkSyntax`,`allowDictionaryWords`,`minAlphanumeric`,`minLength`,`minLowerCase`,`minNumbers`,`minSymbols`,`minUpperCase`,`history`,`historyCount`,`expireable`,`maxAge`,`warningTime`,`graceLimit`,`lockout`,`maxFailure`,`lockoutDuration`,`requireUnlock`,`resetFailureCount`,`resetTicketMaxAge`) VALUES 
 (10195,10154,10158,'','2012-02-20 09:47:30','2012-02-20 09:47:30',1,'Default Password Policy','Default Password Policy',1,1,0,0,1,0,6,0,1,0,1,0,6,0,8640000,86400,0,0,3,0,1,600,86400);
/*!40000 ALTER TABLE `PasswordPolicy` ENABLE KEYS */;


--
-- Definition of table `PasswordPolicyRel`
--

DROP TABLE IF EXISTS `PasswordPolicyRel`;
CREATE TABLE `PasswordPolicyRel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyRelId`)
) TYPE=InnoDB;

--
-- Dumping data for table `PasswordPolicyRel`
--

/*!40000 ALTER TABLE `PasswordPolicyRel` DISABLE KEYS */;
/*!40000 ALTER TABLE `PasswordPolicyRel` ENABLE KEYS */;


--
-- Definition of table `PasswordTracker`
--

DROP TABLE IF EXISTS `PasswordTracker`;
CREATE TABLE `PasswordTracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`passwordTrackerId`)
) TYPE=InnoDB;

--
-- Dumping data for table `PasswordTracker`
--

/*!40000 ALTER TABLE `PasswordTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `PasswordTracker` ENABLE KEYS */;


--
-- Definition of table `Permission_`
--

DROP TABLE IF EXISTS `Permission_`;
CREATE TABLE `Permission_` (
  `permissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `resourceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`permissionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Permission_`
--

/*!40000 ALTER TABLE `Permission_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Permission_` ENABLE KEYS */;


--
-- Definition of table `Phone`
--

DROP TABLE IF EXISTS `Phone`;
CREATE TABLE `Phone` (
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`phoneId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Phone`
--

/*!40000 ALTER TABLE `Phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `Phone` ENABLE KEYS */;


--
-- Definition of table `PluginSetting`
--

DROP TABLE IF EXISTS `PluginSetting`;
CREATE TABLE `PluginSetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pluginSettingId`)
) TYPE=InnoDB;

--
-- Dumping data for table `PluginSetting`
--

/*!40000 ALTER TABLE `PluginSetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `PluginSetting` ENABLE KEYS */;


--
-- Definition of table `PollsChoice`
--

DROP TABLE IF EXISTS `PollsChoice`;
CREATE TABLE `PollsChoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`choiceId`)
) TYPE=InnoDB;

--
-- Dumping data for table `PollsChoice`
--

/*!40000 ALTER TABLE `PollsChoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsChoice` ENABLE KEYS */;


--
-- Definition of table `PollsQuestion`
--

DROP TABLE IF EXISTS `PollsQuestion`;
CREATE TABLE `PollsQuestion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `expirationDate` datetime DEFAULT NULL,
  `lastVoteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`questionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `PollsQuestion`
--

/*!40000 ALTER TABLE `PollsQuestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsQuestion` ENABLE KEYS */;


--
-- Definition of table `PollsVote`
--

DROP TABLE IF EXISTS `PollsVote`;
CREATE TABLE `PollsVote` (
  `voteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `choiceId` bigint(20) DEFAULT NULL,
  `voteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`voteId`)
) TYPE=InnoDB;

--
-- Dumping data for table `PollsVote`
--

/*!40000 ALTER TABLE `PollsVote` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsVote` ENABLE KEYS */;


--
-- Definition of table `PortalPreferences`
--

DROP TABLE IF EXISTS `PortalPreferences`;
CREATE TABLE `PortalPreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portalPreferencesId`)
) TYPE=InnoDB;

--
-- Dumping data for table `PortalPreferences`
--

/*!40000 ALTER TABLE `PortalPreferences` DISABLE KEYS */;
INSERT INTO `PortalPreferences` (`portalPreferencesId`,`ownerId`,`ownerType`,`preferences`) VALUES 
 (10153,0,1,'<portlet-preferences />'),
 (10160,10154,1,'<portlet-preferences><preference><name>company.security.strangers.verify</name><value>false</value></preference><preference><name>locales</name><value>en_US,en_GB,it_IT</value></preference><preference><name>ldap.server.ids</name><value></value></preference><preference><name>admin.email.password.reset.subject</name><value>[$PORTAL_URL$]: Reset Your Password</value></preference><preference><name>admin.email.user.added.subject</name><value>[$PORTAL_URL$]: Your New Account</value></preference><preference><name>company.security.strangers.with.mx</name><value>true</value></preference><preference><name>admin.email.password.sent.body</name><value>&lt;p&gt;[$NEW_LINE$]	Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Your new password for [$PORTAL_URL$] is [$USER_PASSWORD$].&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	The request for a new password was made from [$REMOTE_ADDRESS$] / [$REMOTE_HOST$] with the browser [$USER_AGENT$].&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Sincerely,&lt;br /&gt;[$NEW_LINE$]	[$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$]	[$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$]	[$PORTAL_URL$]&lt;/p&gt;[$NEW_LINE$]</value></preference><preference><name>admin.email.verification.subject</name><value>[$PORTAL_URL$]: Email Address Verification</value></preference><preference><name>admin.default.role.names</name><value>Power User[$NEW_LINE$]User</value></preference><preference><name>company.security.site.logo</name><value>true</value></preference><preference><name>company.security.auto.login</name><value>true</value></preference><preference><name>admin.email.password.sent.subject</name><value>[$PORTAL_URL$]: Your New Password</value></preference><preference><name>admin.email.password.reset.body</name><value>&lt;p&gt;[$NEW_LINE$]	Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	You can reset your password for [$PORTAL_URL$] at [$PASSWORD_RESET_URL$].&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	The request for a new password was made from [$REMOTE_ADDRESS$] / [$REMOTE_HOST$] with the browser [$USER_AGENT$].&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Sincerely,&lt;br /&gt;[$NEW_LINE$]	[$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$]	[$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$]	[$PORTAL_URL$]&lt;/p&gt;[$NEW_LINE$]</value></preference><preference><name>company.security.send.password</name><value>true</value></preference><preference><name>admin.email.verification.body</name><value>&lt;p&gt;[$NEW_LINE$]	Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Please verify your email address for [$PORTAL_URL$] at [$EMAIL_VERIFICATION_URL$].&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Your verification code is [$EMAIL_VERIFICATION_CODE$] Sincerely,&lt;br /&gt;[$NEW_LINE$]	[$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$]	[$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$]	[$PORTAL_URL$]&lt;/p&gt;[$NEW_LINE$]</value></preference><preference><name>admin.email.user.added.no.password.body</name><value>&lt;p&gt;[$NEW_LINE$]	Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Welcome! You recently created an account at [$PORTAL_URL$].&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Sincerely,&lt;br /&gt;[$NEW_LINE$]	[$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$]	[$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$]	[$PORTAL_URL$]&lt;/p&gt;[$NEW_LINE$]</value></preference><preference><name>admin.email.user.added.body</name><value>&lt;p&gt;[$NEW_LINE$]	Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Welcome! You recently created an account at [$PORTAL_URL$]. Your password is [$USER_PASSWORD$]. Enjoy!&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Sincerely,&lt;br /&gt;[$NEW_LINE$]	[$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$]	[$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$]	[$PORTAL_URL$]&lt;/p&gt;[$NEW_LINE$]</value></preference><preference><name>company.security.strangers</name><value>true</value></preference><preference><name>company.security.auth.type</name><value>emailAddress</value></preference></portlet-preferences>'),
 (10405,10158,4,'<portlet-preferences />'),
 (10510,10196,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-portal</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#control-panel-sidebar-minimized</name><value>0</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-content</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_dockbar_pinned</name><value>0</value></preference><preference><name>com.liferay.portal.util.SessionClicks#jgpw</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-server</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#usersAdminUsersPanel</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_toggle_controls</name><value>visible</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-my</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#layoutsTreeRootNode</name><value>1</value></preference></portlet-preferences>'),
 (21312,21302,4,'<portlet-preferences />'),
 (21807,21801,4,'<portlet-preferences />');
/*!40000 ALTER TABLE `PortalPreferences` ENABLE KEYS */;


--
-- Definition of table `Portlet`
--

DROP TABLE IF EXISTS `Portlet`;
CREATE TABLE `Portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) TYPE=InnoDB;

--
-- Dumping data for table `Portlet`
--

/*!40000 ALTER TABLE `Portlet` DISABLE KEYS */;
INSERT INTO `Portlet` (`id_`,`companyId`,`portletId`,`roles`,`active_`) VALUES 
 (10202,10154,'98','',1),
 (10203,10154,'66','',1),
 (10204,10154,'180','',1),
 (10205,10154,'27','',1),
 (10206,10154,'152','',1),
 (10207,10154,'134','',1),
 (10208,10154,'130','',1),
 (10209,10154,'122','',1),
 (10210,10154,'36','',1),
 (10211,10154,'26','',1),
 (10212,10154,'104','',1),
 (10213,10154,'175','',1),
 (10214,10154,'153','',1),
 (10215,10154,'64','',1),
 (10216,10154,'129','',1),
 (10217,10154,'179','',1),
 (10218,10154,'173','',1),
 (10219,10154,'100','',1),
 (10220,10154,'19','',1),
 (10221,10154,'157','',1),
 (10222,10154,'128','',1),
 (10223,10154,'181','',1),
 (10224,10154,'154','',1),
 (10225,10154,'148','',1),
 (10226,10154,'11','',1),
 (10227,10154,'29','',1),
 (10228,10154,'158','',1),
 (10229,10154,'178','',1),
 (10230,10154,'8','',1),
 (10231,10154,'58','',1),
 (10232,10154,'71','',1),
 (10233,10154,'97','',1),
 (10234,10154,'39','',1),
 (10235,10154,'177','',1),
 (10236,10154,'85','',1),
 (10237,10154,'118','',1),
 (10238,10154,'107','',1),
 (10239,10154,'30','',1),
 (10240,10154,'147','',1),
 (10241,10154,'48','',1),
 (10242,10154,'125','',1),
 (10243,10154,'161','',1),
 (10244,10154,'146','',1),
 (10245,10154,'62','',1),
 (10246,10154,'162','',1),
 (10247,10154,'176','',1),
 (10248,10154,'108','',1),
 (10249,10154,'84','',1),
 (10250,10154,'101','',1),
 (10251,10154,'121','',1),
 (10252,10154,'143','',1),
 (10253,10154,'77','',1),
 (10254,10154,'167','',1),
 (10255,10154,'115','',1),
 (10256,10154,'56','',1),
 (10257,10154,'16','',1),
 (10258,10154,'111','',1),
 (10259,10154,'3','',1),
 (10260,10154,'23','',1),
 (10261,10154,'20','',1),
 (10262,10154,'83','',1),
 (10263,10154,'164','',1),
 (10264,10154,'99','',1),
 (10265,10154,'70','',1),
 (10266,10154,'141','',1),
 (10267,10154,'9','',1),
 (10268,10154,'28','',1),
 (10269,10154,'137','',1),
 (10270,10154,'47','',1),
 (10271,10154,'15','',1),
 (10272,10154,'116','',1),
 (10273,10154,'82','',1),
 (10274,10154,'151','',1),
 (10275,10154,'54','',1),
 (10276,10154,'34','',1),
 (10277,10154,'169','',1),
 (10278,10154,'132','',1),
 (10279,10154,'61','',1),
 (10280,10154,'73','',1),
 (10281,10154,'31','',1),
 (10282,10154,'136','',1),
 (10283,10154,'50','',1),
 (10284,10154,'127','',1),
 (10285,10154,'25','',1),
 (10286,10154,'166','',1),
 (10287,10154,'33','',1),
 (10288,10154,'150','',1),
 (10289,10154,'114','',1),
 (10290,10154,'149','',1),
 (10291,10154,'67','',1),
 (10292,10154,'110','',1),
 (10293,10154,'59','',1),
 (10294,10154,'135','',1),
 (10295,10154,'131','',1),
 (10296,10154,'102','',1),
 (10413,10154,'1_WAR_googlemapsportlet','',1),
 (10465,10154,'4_WAR_knowledgebaseportlet','',1),
 (10466,10154,'3_WAR_knowledgebaseportlet','',1),
 (10467,10154,'2_WAR_knowledgebaseportlet','',1),
 (10468,10154,'5_WAR_knowledgebaseportlet','',1),
 (10469,10154,'1_WAR_knowledgebaseportlet','',1),
 (10476,10154,'1_WAR_mailportlet','',1),
 (10481,10154,'4_WAR_opensocialportlet','',1),
 (10482,10154,'2_WAR_opensocialportlet','',1),
 (10483,10154,'1_WAR_opensocialportlet','',1),
 (10484,10154,'3_WAR_opensocialportlet','',1),
 (10493,10154,'6_WAR_socialnetworkingportlet','',1),
 (10494,10154,'1_WAR_socialnetworkingportlet','',1),
 (10495,10154,'3_WAR_socialnetworkingportlet','',1),
 (10496,10154,'7_WAR_socialnetworkingportlet','',1),
 (10497,10154,'8_WAR_socialnetworkingportlet','',1),
 (10498,10154,'4_WAR_socialnetworkingportlet','',1),
 (10499,10154,'2_WAR_socialnetworkingportlet','',1),
 (10500,10154,'5_WAR_socialnetworkingportlet','',1),
 (10501,10154,'1_WAR_webformportlet','',1),
 (10507,10154,'1_WAR_wsrpportlet','',1),
 (10508,10154,'2_WAR_wsrpportlet','',1),
 (10601,10154,'cisiumeventi_WAR_CisiumEventiportlet','',1),
 (10602,10154,'cisiumparcheggi_WAR_CisiumParcheggiportlet','',1),
 (10603,10154,'cisiumtraffico_WAR_CisiumTrafficoportlet','',1),
 (11302,10154,'prova61_WAR_prova61portlet','',1),
 (12001,10154,'cisiummobiletraffico_WAR_CisiumMobileTrafficoportlet','',1),
 (14001,10154,'cisiummobile_WAR_CisiumMobileAppportlet','',1),
 (15302,10154,'traffico_WAR_SMARTiPTrafficoportlet','',1),
 (17303,10154,'parcheggio_WAR_SMARTiPParcheggioportlet','',1),
 (17802,10154,'prova_WAR_provaportlet','',1),
 (20601,10154,'traffico_WAR_SMARTiPCisiumTrafficoportlet','',1),
 (20701,10154,'eventi_WAR_SMARTiPCisiumEventiportlet','',1),
 (20801,10154,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet','',1),
 (20901,10154,'mobile_WAR_SMARTiPCisiumMobileportlet','',1),
 (21101,10154,'SMARTiPDynamicData_WAR_SMARTiPDynamicData','',1),
 (21601,10154,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet','',1),
 (21602,10154,'parcheggi_WAR_MobileSplitportlet','',1),
 (21603,10154,'indicazioni_WAR_MobileSplitportlet','',1),
 (21604,10154,'segnala_WAR_MobileSplitportlet','',1),
 (21605,10154,'autenticazione_WAR_MobileSplitportlet','',1),
 (21606,10154,'mobilesplit_WAR_MobileSplitportlet','',1),
 (21607,10154,'codicisms_WAR_MobileSplitportlet','',1),
 (21608,10154,'homeguest_WAR_MobileSplitportlet','',1),
 (21609,10154,'home_WAR_MobileSplitportlet','',1),
 (21610,10154,'mappa_WAR_MobileSplitportlet','',1),
 (21611,10154,'homevigile_WAR_MobileSplitportlet','',1),
 (21612,10154,'stradepulite_WAR_MobileSplitportlet','',1),
 (21613,10154,'eventi_WAR_MobileSplitportlet','',1),
 (21701,10154,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet','',1),
 (23306,10154,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681','',1),
 (23601,10154,'fermatebus_WAR_SMARTiPCisiumFermateBusportlet','',1);
/*!40000 ALTER TABLE `Portlet` ENABLE KEYS */;


--
-- Definition of table `PortletItem`
--

DROP TABLE IF EXISTS `PortletItem`;
CREATE TABLE `PortletItem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(75) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`portletItemId`)
) TYPE=InnoDB;

--
-- Dumping data for table `PortletItem`
--

/*!40000 ALTER TABLE `PortletItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `PortletItem` ENABLE KEYS */;


--
-- Definition of table `PortletPreferences`
--

DROP TABLE IF EXISTS `PortletPreferences`;
CREATE TABLE `PortletPreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portletPreferencesId`)
) TYPE=InnoDB;

--
-- Dumping data for table `PortletPreferences`
--

/*!40000 ALTER TABLE `PortletPreferences` DISABLE KEYS */;
INSERT INTO `PortletPreferences` (`portletPreferencesId`,`ownerId`,`ownerType`,`plid`,`portletId`,`preferences`) VALUES 
 (10351,0,3,10346,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
 (10357,0,3,10352,'101_INSTANCE_jMR7WDquwITl','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10009</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),
 (10377,0,3,10372,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
 (10378,0,3,10372,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),
 (10379,0,3,10372,'101_INSTANCE_hSr9gUFyYvN7','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),
 (10385,0,3,10380,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
 (10391,0,3,10386,'101_INSTANCE_fEsArppW35f6','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10009</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),
 (10397,0,3,10392,'39_INSTANCE_YScAF8Hn13vi','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),
 (10398,0,3,10392,'39_INSTANCE_NH5RoQi5oNjv','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),
 (10511,0,3,10183,'145','<portlet-preferences />'),
 (10512,0,3,10183,'terms-of-use','<portlet-preferences />'),
 (10513,0,3,10183,'new-password','<portlet-preferences />'),
 (10514,0,3,10183,'password-reminder','<portlet-preferences />'),
 (10515,0,3,10183,'103','<portlet-preferences />'),
 (10517,0,3,10183,'1_WAR_chatportlet','<portlet-preferences />'),
 (10520,0,3,10183,'status','<portlet-preferences />'),
 (10521,0,3,10175,'165','<portlet-preferences />'),
 (10522,0,3,10175,'88','<portlet-preferences />'),
 (10523,0,3,10183,'88','<portlet-preferences />'),
 (10524,0,3,10175,'160','<portlet-preferences />'),
 (10525,0,3,10175,'145','<portlet-preferences />'),
 (10526,0,3,10175,'130','<portlet-preferences />'),
 (10527,0,3,10175,'49','<portlet-preferences />'),
 (10528,0,3,10183,'87','<portlet-preferences />'),
 (10802,0,3,10183,'58','<portlet-preferences />'),
 (11404,0,3,10183,'86','<portlet-preferences />'),
 (11702,0,3,10175,'156','<portlet-preferences />'),
 (11902,0,3,10175,'178','<portlet-preferences />'),
 (11922,0,3,11916,'103','<portlet-preferences />'),
 (11923,0,3,11916,'1_WAR_chatportlet','<portlet-preferences />'),
 (11924,0,3,11916,'145','<portlet-preferences />'),
 (11925,0,3,11916,'87','<portlet-preferences />'),
 (13404,10180,2,0,'15','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"10180\" owner-type=\"2\" default-user=\"false\" plid=\"0\" portlet-id=\"15\"/>'),
 (13405,0,3,10175,'15','<portlet-preferences />'),
 (13502,0,3,10175,'86','<portlet-preferences />'),
 (13505,0,3,10175,'146','<portlet-preferences />'),
 (13515,0,3,13510,'103','<portlet-preferences />'),
 (13516,0,3,13510,'1_WAR_chatportlet','<portlet-preferences />'),
 (13517,0,3,13510,'145','<portlet-preferences />'),
 (13518,0,3,13510,'87','<portlet-preferences />'),
 (13519,0,3,13510,'71_INSTANCE_RpI5ahAtmiBi','<portlet-preferences><preference><name>portlet-freeform-styles</name><value>height=300px[$NEW_LINE$]width=400px[$NEW_LINE$]top=197px[$NEW_LINE$]left=105px[$NEW_LINE$]</value></preference><preference><name>nestedChildren</name><value>1</value></preference><preference><name>includedLayouts</name><value>auto</value></preference><preference><name>rootLayoutLevel</name><value>1</value></preference><preference><name>bulletStyle</name><value>Arrows</value></preference><preference><name>headerType</name><value>root-layout</value></preference><preference><name>rootLayoutType</name><value>absolute</value></preference><preference><name>displayStyle</name><value>from-level-1-to-all-sublevels</value></preference></portlet-preferences>'),
 (13520,0,3,13510,'86','<portlet-preferences />'),
 (13907,0,3,10183,'49','<portlet-preferences />'),
 (13924,0,3,10175,'status','<portlet-preferences />'),
 (16105,0,3,13909,'145','<portlet-preferences />'),
 (18402,0,3,10175,'136','<portlet-preferences />'),
 (18403,0,3,10175,'132','<portlet-preferences />'),
 (18404,0,3,10175,'104','<portlet-preferences />'),
 (19502,0,3,10175,'137','<portlet-preferences />'),
 (19602,0,3,10175,'174','<portlet-preferences />'),
 (19603,0,3,10175,'125','<portlet-preferences />'),
 (19622,0,3,10175,'128','<portlet-preferences />'),
 (19623,0,3,10175,'134','<portlet-preferences />'),
 (20903,0,3,10175,'140','<portlet-preferences />'),
 (20904,0,3,11916,'mobile_WAR_SMARTiPCisiumMobileportlet','<portlet-preferences />'),
 (21001,0,3,11916,'58','<portlet-preferences />'),
 (21102,0,3,10183,'traffico_WAR_SMARTiPTrafficoportlet','<portlet-preferences />'),
 (21204,0,3,10175,'2','<portlet-preferences />'),
 (21301,0,3,10175,'173','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\">\n			<preference>\n				<name>assetVocabularyId</name>\n				<value>-1</value>\n			</preference>\n			<preference>\n				<name>delta</name>\n				<value>5</value>\n			</preference>\n			<preference>\n				<name>displayStyle</name>\n				<value>title-list</value>\n			</preference>\n		</portlet-preferences>'),
 (21404,0,3,10175,'153','<portlet-preferences />'),
 (21748,0,3,21718,'103','<portlet-preferences />'),
 (21749,0,3,21718,'145','<portlet-preferences />'),
 (21752,0,3,21718,'87','<portlet-preferences />'),
 (21753,0,3,21718,'homeguest_WAR_MobileSplitportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"21718\" portlet-id=\"homeguest_WAR_MobileSplitportlet\"/>'),
 (21754,0,3,21723,'103','<portlet-preferences />'),
 (21755,0,3,21723,'145','<portlet-preferences />'),
 (21756,0,3,21723,'87','<portlet-preferences />'),
 (21757,0,3,21723,'mappa_WAR_MobileSplitportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"21723\" portlet-id=\"mappa_WAR_MobileSplitportlet\"/>'),
 (21758,0,3,21728,'103','<portlet-preferences />'),
 (21759,0,3,21728,'145','<portlet-preferences />'),
 (21760,0,3,21728,'87','<portlet-preferences />'),
 (21761,0,3,21728,'parcheggi_WAR_MobileSplitportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"21728\" portlet-id=\"parcheggi_WAR_MobileSplitportlet\"/>'),
 (21762,0,3,21733,'103','<portlet-preferences />'),
 (21763,0,3,21733,'145','<portlet-preferences />'),
 (21764,0,3,21733,'87','<portlet-preferences />'),
 (21765,0,3,21733,'eventi_WAR_MobileSplitportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"21733\" portlet-id=\"eventi_WAR_MobileSplitportlet\"/>'),
 (21766,0,3,21738,'103','<portlet-preferences />'),
 (21767,0,3,21738,'145','<portlet-preferences />'),
 (21768,0,3,21738,'87','<portlet-preferences />'),
 (21769,0,3,21738,'codicisms_WAR_MobileSplitportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"21738\" portlet-id=\"codicisms_WAR_MobileSplitportlet\"/>'),
 (21770,0,3,21743,'103','<portlet-preferences />'),
 (21771,0,3,21743,'145','<portlet-preferences />'),
 (21772,0,3,21743,'87','<portlet-preferences />'),
 (21773,0,3,21743,'stradepulite_WAR_MobileSplitportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"21743\" portlet-id=\"stradepulite_WAR_MobileSplitportlet\"/>'),
 (21779,0,3,21774,'103','<portlet-preferences />'),
 (21780,0,3,21774,'145','<portlet-preferences />'),
 (21781,0,3,21774,'87','<portlet-preferences />'),
 (21782,0,3,21774,'58','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"21774\" portlet-id=\"58\"/>'),
 (21906,0,3,21901,'103','<portlet-preferences />'),
 (21907,0,3,21901,'145','<portlet-preferences />'),
 (21908,0,3,21901,'87','<portlet-preferences />'),
 (21909,0,3,21901,'traffico_WAR_SMARTiPCisiumTrafficoportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"21901\" portlet-id=\"traffico_WAR_SMARTiPCisiumTrafficoportlet\"/>'),
 (21910,0,3,21901,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"21901\" portlet-id=\"parcheggi_WAR_SMARTiPCisiumParcheggiportlet\"/>'),
 (21911,0,3,21901,'eventi_WAR_SMARTiPCisiumEventiportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"21901\" portlet-id=\"eventi_WAR_SMARTiPCisiumEventiportlet\"/>'),
 (21912,0,3,21901,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"21901\" portlet-id=\"codicisms_WAR_SMARTiPCisiumCodiciSMSportlet\"/>'),
 (21913,0,3,21901,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"21901\" portlet-id=\"stradepulite_WAR_SMARTiPCisiumStradePuliteportlet\"/>'),
 (21915,0,3,10175,'135','<portlet-preferences />'),
 (22201,0,3,21901,'58','<portlet-preferences />'),
 (22401,0,3,21901,'49','<portlet-preferences />'),
 (22906,0,3,10175,'179','<portlet-preferences />'),
 (22907,0,3,10175,'20','<portlet-preferences />'),
 (23101,0,3,10183,'traffico_WAR_SMARTiPCisiumTrafficoportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10183\" portlet-id=\"traffico_WAR_SMARTiPCisiumTrafficoportlet\">\n	<preference>\n		<name>lfrFacebookApiKey</name>\n		<value>279813805395064</value>\n	</preference>\n	<preference>\n		<name>lfrFacebookShowAddAppLink</name>\n		<value>true</value>\n	</preference>\n	<preference>\n		<name>lfrFacebookCanvasPageUrl</name>\n		<value>/smartiptraffico/</value>\n	</preference>\n	<preference>\n		<name>lfrIgoogleShowAddAppLink</name>\n		<value>true</value>\n	</preference>\n</portlet-preferences>'),
 (23201,0,3,10183,'eventi_WAR_SMARTiPCisiumEventiportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10183\" portlet-id=\"eventi_WAR_SMARTiPCisiumEventiportlet\">\n	<preference>\n		<name>lfrFacebookApiKey</name>\n		<value>194897717280290</value>\n	</preference>\n	<preference>\n		<name>lfrFacebookShowAddAppLink</name>\n		<value>true</value>\n	</preference>\n	<preference>\n		<name>lfrFacebookCanvasPageUrl</name>\n		<value>cisiumeventi</value>\n	</preference>\n	<preference>\n		<name>lfrIgoogleShowAddAppLink</name>\n		<value>true</value>\n	</preference>\n</portlet-preferences>'),
 (23202,0,3,10183,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10183\" portlet-id=\"parcheggi_WAR_SMARTiPCisiumParcheggiportlet\">\n	<preference>\n		<name>lfrFacebookApiKey</name>\n		<value>180629202030044</value>\n	</preference>\n	<preference>\n		<name>lfrFacebookShowAddAppLink</name>\n		<value>true</value>\n	</preference>\n	<preference>\n		<name>lfrFacebookCanvasPageUrl</name>\n		<value>cisiumparcheggi</value>\n	</preference>\n	<preference>\n		<name>lfrWidgetShowAddAppLink</name>\n		<value>false</value>\n	</preference>\n	<preference>\n		<name>lfrIgoogleShowAddAppLink</name>\n		<value>true</value>\n	</preference>\n</portlet-preferences>'),
 (23203,0,3,10183,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10183\" portlet-id=\"codicisms_WAR_SMARTiPCisiumCodiciSMSportlet\">\n	<preference>\n		<name>lfrIgoogleShowAddAppLink</name>\n		<value>false</value>\n	</preference>\n</portlet-preferences>'),
 (23204,0,3,10183,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10183\" portlet-id=\"stradepulite_WAR_SMARTiPCisiumStradePuliteportlet\">\n	<preference>\n		<name>lfrIgoogleShowAddAppLink</name>\n		<value>false</value>\n	</preference>\n</portlet-preferences>'),
 (23301,0,3,10175,'1_WAR_opensocialportlet','<portlet-preferences />'),
 (23302,0,3,10175,'4_WAR_opensocialportlet','<portlet-preferences />'),
 (23312,0,3,23307,'103','<portlet-preferences />'),
 (23313,0,3,23307,'145','<portlet-preferences />'),
 (23314,0,3,23307,'87','<portlet-preferences />'),
 (23315,0,3,23307,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681','<portlet-preferences />'),
 (24602,0,3,10183,'15','<portlet-preferences><preference><name>lfrScopeType</name><value></value></preference><preference><name>lfrScopeLayoutUuid</name><value></value></preference></portlet-preferences>'),
 (24649,0,3,10183,'56_INSTANCE_FHwOq3nV1ZSQ','<portlet-preferences><preference><name>lfrWapInitialWindowState</name><value>NORMAL</value></preference><preference><name>portletSetupUseCustomTitle</name><value>false</value></preference><preference><name>showAvailableLocales</name><value>false</value></preference><preference><name>enableViewCountIncrement</name><value>true</value></preference><preference><name>enableRatings</name><value>false</value></preference><preference><name>articleId</name><value>24620</value></preference><preference><name>extensions</name><value>NULL_VALUE</value></preference><preference><name>lfrWapTitle</name><value></value></preference><preference><name>enableRelatedAssets</name><value>true</value></preference><preference><name>templateId</name><value></value></preference><preference><name>portletSetupCss</name><value>{&#034;wapData&#034;:{&#034;title&#034;:&#034;&#034;,&#034;initialWindowState&#034;:&#034;NORMAL&#034;},&#034;spacingData&#034;:{&#034;margin&#034;:{&#034;sameForAll&#034;:true,&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;}},&#034;padding&#034;:{&#034;sameForAll&#034;:true,&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;}}},&#034;borderData&#034;:{&#034;borderStyle&#034;:{&#034;sameForAll&#034;:true,&#034;bottom&#034;:&#034;&#034;,&#034;left&#034;:&#034;&#034;,&#034;right&#034;:&#034;&#034;,&#034;top&#034;:&#034;&#034;},&#034;borderColor&#034;:{&#034;sameForAll&#034;:true,&#034;bottom&#034;:&#034;&#034;,&#034;left&#034;:&#034;&#034;,&#034;right&#034;:&#034;&#034;,&#034;top&#034;:&#034;&#034;},&#034;borderWidth&#034;:{&#034;sameForAll&#034;:true,&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;}}},&#034;textData&#034;:{&#034;fontWeight&#034;:&#034;&#034;,&#034;lineHeight&#034;:&#034;&#034;,&#034;textDecoration&#034;:&#034;&#034;,&#034;letterSpacing&#034;:&#034;&#034;,&#034;color&#034;:&#034;&#034;,&#034;textAlign&#034;:&#034;&#034;,&#034;fontStyle&#034;:&#034;&#034;,&#034;fontFamily&#034;:&#034;&#034;,&#034;wordSpacing&#034;:&#034;&#034;,&#034;fontSize&#034;:&#034;&#034;},&#034;bgData&#034;:{&#034;backgroundPosition&#034;:{&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;}},&#034;backgroundColor&#034;:&#034;&#034;,&#034;backgroundRepeat&#034;:&#034;&#034;,&#034;backgroundImage&#034;:&#034;&#034;,&#034;useBgImage&#034;:false},&#034;advancedData&#034;:{&#034;customCSS&#034;:&#034;&#034;,&#034;customCSSClassName&#034;:&#034;&#034;}}</value></preference><preference><name>enablePrint</name><value>false</value></preference><preference><name>enableCommentRatings</name><value>false</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference><preference><name>groupId</name><value>10180</value></preference><preference><name>enableComments</name><value>false</value></preference></portlet-preferences>'),
 (24651,0,3,10183,'56_INSTANCE_8IS7T5JuDmhk','<portlet-preferences><preference><name>lfrWapInitialWindowState</name><value>NORMAL</value></preference><preference><name>portletSetupUseCustomTitle</name><value>false</value></preference><preference><name>showAvailableLocales</name><value>false</value></preference><preference><name>enableViewCountIncrement</name><value>true</value></preference><preference><name>enableRatings</name><value>false</value></preference><preference><name>articleId</name><value>24603</value></preference><preference><name>extensions</name><value>NULL_VALUE</value></preference><preference><name>lfrWapTitle</name><value></value></preference><preference><name>enableRelatedAssets</name><value>true</value></preference><preference><name>templateId</name><value></value></preference><preference><name>portletSetupCss</name><value>{&#034;wapData&#034;:{&#034;title&#034;:&#034;&#034;,&#034;initialWindowState&#034;:&#034;NORMAL&#034;},&#034;spacingData&#034;:{&#034;margin&#034;:{&#034;sameForAll&#034;:true,&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;}},&#034;padding&#034;:{&#034;sameForAll&#034;:true,&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;}}},&#034;borderData&#034;:{&#034;borderStyle&#034;:{&#034;sameForAll&#034;:true,&#034;bottom&#034;:&#034;&#034;,&#034;left&#034;:&#034;&#034;,&#034;right&#034;:&#034;&#034;,&#034;top&#034;:&#034;&#034;},&#034;borderColor&#034;:{&#034;sameForAll&#034;:true,&#034;bottom&#034;:&#034;&#034;,&#034;left&#034;:&#034;&#034;,&#034;right&#034;:&#034;&#034;,&#034;top&#034;:&#034;&#034;},&#034;borderWidth&#034;:{&#034;sameForAll&#034;:true,&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;}}},&#034;textData&#034;:{&#034;fontWeight&#034;:&#034;&#034;,&#034;lineHeight&#034;:&#034;&#034;,&#034;textDecoration&#034;:&#034;&#034;,&#034;letterSpacing&#034;:&#034;&#034;,&#034;color&#034;:&#034;&#034;,&#034;textAlign&#034;:&#034;&#034;,&#034;fontStyle&#034;:&#034;&#034;,&#034;fontFamily&#034;:&#034;&#034;,&#034;wordSpacing&#034;:&#034;&#034;,&#034;fontSize&#034;:&#034;&#034;},&#034;bgData&#034;:{&#034;backgroundPosition&#034;:{&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;}},&#034;backgroundColor&#034;:&#034;&#034;,&#034;backgroundRepeat&#034;:&#034;&#034;,&#034;backgroundImage&#034;:&#034;&#034;,&#034;useBgImage&#034;:false},&#034;advancedData&#034;:{&#034;customCSS&#034;:&#034;&#034;,&#034;customCSSClassName&#034;:&#034;&#034;}}</value></preference><preference><name>enablePrint</name><value>false</value></preference><preference><name>enableCommentRatings</name><value>false</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference><preference><name>groupId</name><value>10180</value></preference><preference><name>enableComments</name><value>false</value></preference></portlet-preferences>'),
 (24653,0,3,10183,'113','<portlet-preferences />'),
 (24802,0,3,21901,'56_INSTANCE_6kcr8AK7zZ2z','<portlet-preferences><preference><name>showAvailableLocales</name><value>false</value></preference><preference><name>enableViewCountIncrement</name><value>true</value></preference><preference><name>enableRatings</name><value>false</value></preference><preference><name>articleId</name><value>24620</value></preference><preference><name>extensions</name><value>NULL_VALUE</value></preference><preference><name>enableRelatedAssets</name><value>true</value></preference><preference><name>templateId</name><value></value></preference><preference><name>enablePrint</name><value>false</value></preference><preference><name>enableCommentRatings</name><value>false</value></preference><preference><name>groupId</name><value>10180</value></preference><preference><name>enableComments</name><value>false</value></preference></portlet-preferences>'),
 (24803,0,3,21901,'86','<portlet-preferences />'),
 (24805,0,3,21901,'56_INSTANCE_ATkxmlf9qHbG','<portlet-preferences><preference><name>showAvailableLocales</name><value>false</value></preference><preference><name>enableViewCountIncrement</name><value>true</value></preference><preference><name>enableRatings</name><value>false</value></preference><preference><name>articleId</name><value>24603</value></preference><preference><name>extensions</name><value>NULL_VALUE</value></preference><preference><name>enableRelatedAssets</name><value>true</value></preference><preference><name>templateId</name><value></value></preference><preference><name>enablePrint</name><value>false</value></preference><preference><name>enableCommentRatings</name><value>false</value></preference><preference><name>groupId</name><value>10180</value></preference><preference><name>enableComments</name><value>false</value></preference></portlet-preferences>');
/*!40000 ALTER TABLE `PortletPreferences` ENABLE KEYS */;


--
-- Definition of table `QUARTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_BLOB_TRIGGERS`;
CREATE TABLE `QUARTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) TYPE=InnoDB;

--
-- Dumping data for table `QUARTZ_BLOB_TRIGGERS`
--

/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` ENABLE KEYS */;


--
-- Definition of table `QUARTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QUARTZ_CALENDARS`;
CREATE TABLE `QUARTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) TYPE=InnoDB;

--
-- Dumping data for table `QUARTZ_CALENDARS`
--

/*!40000 ALTER TABLE `QUARTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` ENABLE KEYS */;


--
-- Definition of table `QUARTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_CRON_TRIGGERS`;
CREATE TABLE `QUARTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) TYPE=InnoDB;

--
-- Dumping data for table `QUARTZ_CRON_TRIGGERS`
--

/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` ENABLE KEYS */;


--
-- Definition of table `QUARTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_FIRED_TRIGGERS`;
CREATE TABLE `QUARTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(4) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IX_BE3835E5` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_4BD722BM` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_204D31E8` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IX_339E078M` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IX_5005E3AF` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_BC2F03B0` (`SCHED_NAME`,`JOB_GROUP`)
) TYPE=InnoDB;

--
-- Dumping data for table `QUARTZ_FIRED_TRIGGERS`
--

/*!40000 ALTER TABLE `QUARTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_FIRED_TRIGGERS` ENABLE KEYS */;


--
-- Definition of table `QUARTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QUARTZ_JOB_DETAILS`;
CREATE TABLE `QUARTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_NONCONCURRENT` tinyint(4) NOT NULL,
  `IS_UPDATE_DATA` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_88328984` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_779BCA37` (`SCHED_NAME`,`REQUESTS_RECOVERY`)
) TYPE=InnoDB;

--
-- Dumping data for table `QUARTZ_JOB_DETAILS`
--

/*!40000 ALTER TABLE `QUARTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_JOB_DETAILS` ENABLE KEYS */;


--
-- Definition of table `QUARTZ_LOCKS`
--

DROP TABLE IF EXISTS `QUARTZ_LOCKS`;
CREATE TABLE `QUARTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) TYPE=InnoDB;

--
-- Dumping data for table `QUARTZ_LOCKS`
--

/*!40000 ALTER TABLE `QUARTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` ENABLE KEYS */;


--
-- Definition of table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QUARTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) TYPE=InnoDB;

--
-- Dumping data for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;


--
-- Definition of table `QUARTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QUARTZ_SCHEDULER_STATE`;
CREATE TABLE `QUARTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) TYPE=InnoDB;

--
-- Dumping data for table `QUARTZ_SCHEDULER_STATE`
--

/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` ENABLE KEYS */;


--
-- Definition of table `QUARTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QUARTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) TYPE=InnoDB;

--
-- Dumping data for table `QUARTZ_SIMPLE_TRIGGERS`
--

/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;


--
-- Definition of table `QUARTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QUARTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(4) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) TYPE=InnoDB;

--
-- Dumping data for table `QUARTZ_SIMPROP_TRIGGERS`
--

/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;


--
-- Definition of table `QUARTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_TRIGGERS`;
CREATE TABLE `QUARTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_186442A4` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_1BA1F9DC` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_91CA7CCE` (`SCHED_NAME`,`TRIGGER_GROUP`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_D219AFDE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_A85822A0` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_8AA50BE1` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_EEFE382A` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IX_F026CF4C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IX_F2DD7C7E` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_1F92813C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`MISFIRE_INSTR`),
  KEY `IX_99108B6E` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IX_CD7132D0` (`SCHED_NAME`,`CALENDAR_NAME`)
) TYPE=InnoDB;

--
-- Dumping data for table `QUARTZ_TRIGGERS`
--

/*!40000 ALTER TABLE `QUARTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_TRIGGERS` ENABLE KEYS */;


--
-- Definition of table `RatingsEntry`
--

DROP TABLE IF EXISTS `RatingsEntry`;
CREATE TABLE `RatingsEntry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`entryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `RatingsEntry`
--

/*!40000 ALTER TABLE `RatingsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `RatingsEntry` ENABLE KEYS */;


--
-- Definition of table `RatingsStats`
--

DROP TABLE IF EXISTS `RatingsStats`;
CREATE TABLE `RatingsStats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsId`)
) TYPE=InnoDB;

--
-- Dumping data for table `RatingsStats`
--

/*!40000 ALTER TABLE `RatingsStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `RatingsStats` ENABLE KEYS */;


--
-- Definition of table `Region`
--

DROP TABLE IF EXISTS `Region`;
CREATE TABLE `Region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `regionCode` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`regionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Region`
--

/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` (`regionId`,`countryId`,`regionCode`,`name`,`active_`) VALUES 
 (1001,1,'AB','Alberta',1),
 (1002,1,'BC','British Columbia',1),
 (1003,1,'MB','Manitoba',1),
 (1004,1,'NB','New Brunswick',1),
 (1005,1,'NL','Newfoundland and Labrador',1),
 (1006,1,'NT','Northwest Territories',1),
 (1007,1,'NS','Nova Scotia',1),
 (1008,1,'NU','Nunavut',1),
 (1009,1,'ON','Ontario',1),
 (1010,1,'PE','Prince Edward Island',1),
 (1011,1,'QC','Quebec',1),
 (1012,1,'SK','Saskatchewan',1),
 (1013,1,'YT','Yukon',1),
 (2001,2,'CN-34','Anhui',1),
 (2002,2,'CN-92','Aomen',1),
 (2003,2,'CN-11','Beijing',1),
 (2004,2,'CN-50','Chongqing',1),
 (2005,2,'CN-35','Fujian',1),
 (2006,2,'CN-62','Gansu',1),
 (2007,2,'CN-44','Guangdong',1),
 (2008,2,'CN-45','Guangxi',1),
 (2009,2,'CN-52','Guizhou',1),
 (2010,2,'CN-46','Hainan',1),
 (2011,2,'CN-13','Hebei',1),
 (2012,2,'CN-23','Heilongjiang',1),
 (2013,2,'CN-41','Henan',1),
 (2014,2,'CN-42','Hubei',1),
 (2015,2,'CN-43','Hunan',1),
 (2016,2,'CN-32','Jiangsu',1),
 (2017,2,'CN-36','Jiangxi',1),
 (2018,2,'CN-22','Jilin',1),
 (2019,2,'CN-21','Liaoning',1),
 (2020,2,'CN-15','Nei Mongol',1),
 (2021,2,'CN-64','Ningxia',1),
 (2022,2,'CN-63','Qinghai',1),
 (2023,2,'CN-61','Shaanxi',1),
 (2024,2,'CN-37','Shandong',1),
 (2025,2,'CN-31','Shanghai',1),
 (2026,2,'CN-14','Shanxi',1),
 (2027,2,'CN-51','Sichuan',1),
 (2028,2,'CN-71','Taiwan',1),
 (2029,2,'CN-12','Tianjin',1),
 (2030,2,'CN-91','Xianggang',1),
 (2031,2,'CN-65','Xinjiang',1),
 (2032,2,'CN-54','Xizang',1),
 (2033,2,'CN-53','Yunnan',1),
 (2034,2,'CN-33','Zhejiang',1),
 (3001,3,'A','Alsace',1),
 (3002,3,'B','Aquitaine',1),
 (3003,3,'C','Auvergne',1),
 (3004,3,'P','Basse-Normandie',1),
 (3005,3,'D','Bourgogne',1),
 (3006,3,'E','Bretagne',1),
 (3007,3,'F','Centre',1),
 (3008,3,'G','Champagne-Ardenne',1),
 (3009,3,'H','Corse',1),
 (3010,3,'GF','Guyane',1),
 (3011,3,'I','Franche Comté',1),
 (3012,3,'GP','Guadeloupe',1),
 (3013,3,'Q','Haute-Normandie',1),
 (3014,3,'J','Île-de-France',1),
 (3015,3,'K','Languedoc-Roussillon',1),
 (3016,3,'L','Limousin',1),
 (3017,3,'M','Lorraine',1),
 (3018,3,'MQ','Martinique',1),
 (3019,3,'N','Midi-Pyrénées',1),
 (3020,3,'O','Nord Pas de Calais',1),
 (3021,3,'R','Pays de la Loire',1),
 (3022,3,'S','Picardie',1),
 (3023,3,'T','Poitou-Charentes',1),
 (3024,3,'U','Provence-Alpes-Côte-d\'Azur',1),
 (3025,3,'RE','Réunion',1),
 (3026,3,'V','Rhône-Alpes',1),
 (4001,4,'BW','Baden-Württemberg',1),
 (4002,4,'BY','Bayern',1),
 (4003,4,'BE','Berlin',1),
 (4004,4,'BR','Brandenburg',1),
 (4005,4,'HB','Bremen',1),
 (4006,4,'HH','Hamburg',1),
 (4007,4,'HE','Hessen',1),
 (4008,4,'MV','Mecklenburg-Vorpommern',1),
 (4009,4,'NI','Niedersachsen',1),
 (4010,4,'NW','Nordrhein-Westfalen',1),
 (4011,4,'RP','Rheinland-Pfalz',1),
 (4012,4,'SL','Saarland',1),
 (4013,4,'SN','Sachsen',1),
 (4014,4,'ST','Sachsen-Anhalt',1),
 (4015,4,'SH','Schleswig-Holstein',1),
 (4016,4,'TH','Thüringen',1),
 (8001,8,'AG','Agrigento',1),
 (8002,8,'AL','Alessandria',1),
 (8003,8,'AN','Ancona',1),
 (8004,8,'AO','Aosta',1),
 (8005,8,'AR','Arezzo',1),
 (8006,8,'AP','Ascoli Piceno',1),
 (8007,8,'AT','Asti',1),
 (8008,8,'AV','Avellino',1),
 (8009,8,'BA','Bari',1),
 (8010,8,'BT','Barletta-Andria-Trani',1),
 (8011,8,'BL','Belluno',1),
 (8012,8,'BN','Benevento',1),
 (8013,8,'BG','Bergamo',1),
 (8014,8,'BI','Biella',1),
 (8015,8,'BO','Bologna',1),
 (8016,8,'BZ','Bolzano',1),
 (8017,8,'BS','Brescia',1),
 (8018,8,'BR','Brindisi',1),
 (8019,8,'CA','Cagliari',1),
 (8020,8,'CL','Caltanissetta',1),
 (8021,8,'CB','Campobasso',1),
 (8022,8,'CI','Carbonia-Iglesias',1),
 (8023,8,'CE','Caserta',1),
 (8024,8,'CT','Catania',1),
 (8025,8,'CZ','Catanzaro',1),
 (8026,8,'CH','Chieti',1),
 (8027,8,'CO','Como',1),
 (8028,8,'CS','Cosenza',1),
 (8029,8,'CR','Cremona',1),
 (8030,8,'KR','Crotone',1),
 (8031,8,'CN','Cuneo',1),
 (8032,8,'EN','Enna',1),
 (8033,8,'FM','Fermo',1),
 (8034,8,'FE','Ferrara',1),
 (8035,8,'FI','Firenze',1),
 (8036,8,'FG','Foggia',1),
 (8037,8,'FC','Forli-Cesena',1),
 (8038,8,'FR','Frosinone',1),
 (8039,8,'GE','Genova',1),
 (8040,8,'GO','Gorizia',1),
 (8041,8,'GR','Grosseto',1),
 (8042,8,'IM','Imperia',1),
 (8043,8,'IS','Isernia',1),
 (8044,8,'AQ','L\'Aquila',1),
 (8045,8,'SP','La Spezia',1),
 (8046,8,'LT','Latina',1),
 (8047,8,'LE','Lecce',1),
 (8048,8,'LC','Lecco',1),
 (8049,8,'LI','Livorno',1),
 (8050,8,'LO','Lodi',1),
 (8051,8,'LU','Lucca',1),
 (8052,8,'MC','Macerata',1),
 (8053,8,'MN','Mantova',1),
 (8054,8,'MS','Massa-Carrara',1),
 (8055,8,'MT','Matera',1),
 (8056,8,'MA','Medio Campidano',1),
 (8057,8,'ME','Messina',1),
 (8058,8,'MI','Milano',1),
 (8059,8,'MO','Modena',1),
 (8060,8,'MZ','Monza',1),
 (8061,8,'NA','Napoli',1),
 (8062,8,'NO','Novara',1),
 (8063,8,'NU','Nuoro',1),
 (8064,8,'OG','Ogliastra',1),
 (8065,8,'OT','Olbia-Tempio',1),
 (8066,8,'OR','Oristano',1),
 (8067,8,'PD','Padova',1),
 (8068,8,'PA','Palermo',1),
 (8069,8,'PR','Parma',1),
 (8070,8,'PV','Pavia',1),
 (8071,8,'PG','Perugia',1),
 (8072,8,'PU','Pesaro e Urbino',1),
 (8073,8,'PE','Pescara',1),
 (8074,8,'PC','Piacenza',1),
 (8075,8,'PI','Pisa',1),
 (8076,8,'PT','Pistoia',1),
 (8077,8,'PN','Pordenone',1),
 (8078,8,'PZ','Potenza',1),
 (8079,8,'PO','Prato',1),
 (8080,8,'RG','Ragusa',1),
 (8081,8,'RA','Ravenna',1),
 (8082,8,'RC','Reggio Calabria',1),
 (8083,8,'RE','Reggio Emilia',1),
 (8084,8,'RI','Rieti',1),
 (8085,8,'RN','Rimini',1),
 (8086,8,'RM','Roma',1),
 (8087,8,'RO','Rovigo',1),
 (8088,8,'SA','Salerno',1),
 (8089,8,'SS','Sassari',1),
 (8090,8,'SV','Savona',1),
 (8091,8,'SI','Siena',1),
 (8092,8,'SR','Siracusa',1),
 (8093,8,'SO','Sondrio',1),
 (8094,8,'TA','Taranto',1),
 (8095,8,'TE','Teramo',1),
 (8096,8,'TR','Terni',1),
 (8097,8,'TO','Torino',1),
 (8098,8,'TP','Trapani',1),
 (8099,8,'TN','Trento',1),
 (8100,8,'TV','Treviso',1),
 (8101,8,'TS','Trieste',1),
 (8102,8,'UD','Udine',1),
 (8103,8,'VA','Varese',1),
 (8104,8,'VE','Venezia',1),
 (8105,8,'VB','Verbano-Cusio-Ossola',1),
 (8106,8,'VC','Vercelli',1),
 (8107,8,'VR','Verona',1),
 (8108,8,'VV','Vibo Valentia',1),
 (8109,8,'VI','Vicenza',1),
 (8110,8,'VT','Viterbo',1),
 (11001,11,'DR','Drenthe',1),
 (11002,11,'FL','Flevoland',1),
 (11003,11,'FR','Friesland',1),
 (11004,11,'GE','Gelderland',1),
 (11005,11,'GR','Groningen',1),
 (11006,11,'LI','Limburg',1),
 (11007,11,'NB','Noord-Brabant',1),
 (11008,11,'NH','Noord-Holland',1),
 (11009,11,'OV','Overijssel',1),
 (11010,11,'UT','Utrecht',1),
 (11011,11,'ZE','Zeeland',1),
 (11012,11,'ZH','Zuid-Holland',1),
 (15001,15,'AN','Andalusia',1),
 (15002,15,'AR','Aragon',1),
 (15003,15,'AS','Asturias',1),
 (15004,15,'IB','Balearic Islands',1),
 (15005,15,'PV','Basque Country',1),
 (15006,15,'CN','Canary Islands',1),
 (15007,15,'CB','Cantabria',1),
 (15008,15,'CL','Castile and Leon',1),
 (15009,15,'CM','Castile-La Mancha',1),
 (15010,15,'CT','Catalonia',1),
 (15011,15,'CE','Ceuta',1),
 (15012,15,'EX','Extremadura',1),
 (15013,15,'GA','Galicia',1),
 (15014,15,'LO','La Rioja',1),
 (15015,15,'M','Madrid',1),
 (15016,15,'ML','Melilla',1),
 (15017,15,'MU','Murcia',1),
 (15018,15,'NA','Navarra',1),
 (15019,15,'VC','Valencia',1),
 (19001,19,'AL','Alabama',1),
 (19002,19,'AK','Alaska',1),
 (19003,19,'AZ','Arizona',1),
 (19004,19,'AR','Arkansas',1),
 (19005,19,'CA','California',1),
 (19006,19,'CO','Colorado',1),
 (19007,19,'CT','Connecticut',1),
 (19008,19,'DC','District of Columbia',1),
 (19009,19,'DE','Delaware',1),
 (19010,19,'FL','Florida',1),
 (19011,19,'GA','Georgia',1),
 (19012,19,'HI','Hawaii',1),
 (19013,19,'ID','Idaho',1),
 (19014,19,'IL','Illinois',1),
 (19015,19,'IN','Indiana',1),
 (19016,19,'IA','Iowa',1),
 (19017,19,'KS','Kansas',1),
 (19018,19,'KY','Kentucky',1),
 (19019,19,'LA','Louisiana',1),
 (19020,19,'ME','Maine',1),
 (19021,19,'MD','Maryland',1),
 (19022,19,'MA','Massachusetts',1),
 (19023,19,'MI','Michigan',1),
 (19024,19,'MN','Minnesota',1),
 (19025,19,'MS','Mississippi',1),
 (19026,19,'MO','Missouri',1),
 (19027,19,'MT','Montana',1),
 (19028,19,'NE','Nebraska',1),
 (19029,19,'NV','Nevada',1),
 (19030,19,'NH','New Hampshire',1),
 (19031,19,'NJ','New Jersey',1),
 (19032,19,'NM','New Mexico',1),
 (19033,19,'NY','New York',1),
 (19034,19,'NC','North Carolina',1),
 (19035,19,'ND','North Dakota',1),
 (19036,19,'OH','Ohio',1),
 (19037,19,'OK','Oklahoma',1),
 (19038,19,'OR','Oregon',1),
 (19039,19,'PA','Pennsylvania',1),
 (19040,19,'PR','Puerto Rico',1),
 (19041,19,'RI','Rhode Island',1),
 (19042,19,'SC','South Carolina',1),
 (19043,19,'SD','South Dakota',1),
 (19044,19,'TN','Tennessee',1),
 (19045,19,'TX','Texas',1),
 (19046,19,'UT','Utah',1),
 (19047,19,'VT','Vermont',1),
 (19048,19,'VA','Virginia',1),
 (19049,19,'WA','Washington',1),
 (19050,19,'WV','West Virginia',1),
 (19051,19,'WI','Wisconsin',1),
 (19052,19,'WY','Wyoming',1),
 (32001,32,'ACT','Australian Capital Territory',1),
 (32002,32,'NSW','New South Wales',1),
 (32003,32,'NT','Northern Territory',1),
 (32004,32,'QLD','Queensland',1),
 (32005,32,'SA','South Australia',1),
 (32006,32,'TAS','Tasmania',1),
 (32007,32,'VIC','Victoria',1),
 (32008,32,'WA','Western Australia',1),
 (144001,144,'MX-AGS','Aguascalientes',1),
 (144002,144,'MX-BCN','Baja California',1),
 (144003,144,'MX-BCS','Baja California Sur',1),
 (144004,144,'MX-CAM','Campeche',1),
 (144005,144,'MX-CHP','Chiapas',1),
 (144006,144,'MX-CHI','Chihuahua',1),
 (144007,144,'MX-COA','Coahuila',1),
 (144008,144,'MX-COL','Colima',1),
 (144009,144,'MX-DUR','Durango',1),
 (144010,144,'MX-GTO','Guanajuato',1),
 (144011,144,'MX-GRO','Guerrero',1),
 (144012,144,'MX-HGO','Hidalgo',1),
 (144013,144,'MX-JAL','Jalisco',1),
 (144014,144,'MX-MEX','Mexico',1),
 (144015,144,'MX-MIC','Michoacan',1),
 (144016,144,'MX-MOR','Morelos',1),
 (144017,144,'MX-NAY','Nayarit',1),
 (144018,144,'MX-NLE','Nuevo Leon',1),
 (144019,144,'MX-OAX','Oaxaca',1),
 (144020,144,'MX-PUE','Puebla',1),
 (144021,144,'MX-QRO','Queretaro',1),
 (144023,144,'MX-ROO','Quintana Roo',1),
 (144024,144,'MX-SLP','San Luis Potosí',1),
 (144025,144,'MX-SIN','Sinaloa',1),
 (144026,144,'MX-SON','Sonora',1),
 (144027,144,'MX-TAB','Tabasco',1),
 (144028,144,'MX-TAM','Tamaulipas',1),
 (144029,144,'MX-TLX','Tlaxcala',1),
 (144030,144,'MX-VER','Veracruz',1),
 (144031,144,'MX-YUC','Yucatan',1),
 (144032,144,'MX-ZAC','Zacatecas',1),
 (164001,164,'01','Østfold',1),
 (164002,164,'02','Akershus',1),
 (164003,164,'03','Oslo',1),
 (164004,164,'04','Hedmark',1),
 (164005,164,'05','Oppland',1),
 (164006,164,'06','Buskerud',1),
 (164007,164,'07','Vestfold',1),
 (164008,164,'08','Telemark',1),
 (164009,164,'09','Aust-Agder',1),
 (164010,164,'10','Vest-Agder',1),
 (164011,164,'11','Rogaland',1),
 (164012,164,'12','Hordaland',1),
 (164013,164,'14','Sogn og Fjordane',1),
 (164014,164,'15','Møre of Romsdal',1),
 (164015,164,'16','Sør-Trøndelag',1),
 (164016,164,'17','Nord-Trøndelag',1),
 (164017,164,'18','Nordland',1),
 (164018,164,'19','Troms',1),
 (164019,164,'20','Finnmark',1),
 (202001,202,'AG','Aargau',1),
 (202002,202,'AR','Appenzell Ausserrhoden',1),
 (202003,202,'AI','Appenzell Innerrhoden',1),
 (202004,202,'BL','Basel-Landschaft',1),
 (202005,202,'BS','Basel-Stadt',1),
 (202006,202,'BE','Bern',1),
 (202007,202,'FR','Fribourg',1),
 (202008,202,'GE','Geneva',1),
 (202009,202,'GL','Glarus',1),
 (202010,202,'GR','Graubünden',1),
 (202011,202,'JU','Jura',1),
 (202012,202,'LU','Lucerne',1),
 (202013,202,'NE','Neuchâtel',1),
 (202014,202,'NW','Nidwalden',1),
 (202015,202,'OW','Obwalden',1),
 (202016,202,'SH','Schaffhausen',1),
 (202017,202,'SZ','Schwyz',1),
 (202018,202,'SO','Solothurn',1),
 (202019,202,'SG','St. Gallen',1),
 (202020,202,'TG','Thurgau',1),
 (202021,202,'TI','Ticino',1),
 (202022,202,'UR','Uri',1),
 (202023,202,'VS','Valais',1),
 (202024,202,'VD','Vaud',1),
 (202025,202,'ZG','Zug',1),
 (202026,202,'ZH','Zürich',1);
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;


--
-- Definition of table `Release_`
--

DROP TABLE IF EXISTS `Release_`;
CREATE TABLE `Release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `servletContextName` varchar(75) DEFAULT NULL,
  `buildNumber` int(11) DEFAULT NULL,
  `buildDate` datetime DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `testString` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`releaseId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Release_`
--

/*!40000 ALTER TABLE `Release_` DISABLE KEYS */;
INSERT INTO `Release_` (`releaseId`,`createDate`,`modifiedDate`,`servletContextName`,`buildNumber`,`buildDate`,`verified`,`testString`) VALUES 
 (1,'2012-02-20 10:46:00','2013-04-11 16:22:29','portal',6100,'2013-04-11 16:22:29',1,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.'),
 (10412,'2012-02-20 09:50:55','2013-04-11 16:22:47','google-maps-portlet',100,NULL,1,''),
 (10431,'2012-02-20 09:51:06','2013-04-11 16:22:55','kaleo-web',100,NULL,1,''),
 (10464,'2012-02-20 09:51:10','2013-04-11 16:22:58','knowledge-base-portlet',120,NULL,1,''),
 (10490,'2012-02-20 09:51:36','2013-04-11 16:24:20','social-networking-portlet',100,NULL,1,''),
 (10506,'2012-02-20 09:51:42','2013-04-11 16:24:26','wsrp-portlet',110,NULL,1,'');
/*!40000 ALTER TABLE `Release_` ENABLE KEYS */;


--
-- Definition of table `Repository`
--

DROP TABLE IF EXISTS `Repository`;
CREATE TABLE `Repository` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `portletId` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`repositoryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Repository`
--

/*!40000 ALTER TABLE `Repository` DISABLE KEYS */;
/*!40000 ALTER TABLE `Repository` ENABLE KEYS */;


--
-- Definition of table `RepositoryEntry`
--

DROP TABLE IF EXISTS `RepositoryEntry`;
CREATE TABLE `RepositoryEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`repositoryEntryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `RepositoryEntry`
--

/*!40000 ALTER TABLE `RepositoryEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `RepositoryEntry` ENABLE KEYS */;


--
-- Definition of table `ResourceAction`
--

DROP TABLE IF EXISTS `ResourceAction`;
CREATE TABLE `ResourceAction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceActionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ResourceAction`
--

/*!40000 ALTER TABLE `ResourceAction` DISABLE KEYS */;
INSERT INTO `ResourceAction` (`resourceActionId`,`name`,`actionId`,`bitwiseValue`) VALUES 
 (1,'com.liferay.portlet.softwarecatalog','ADD_FRAMEWORK_VERSION',2),
 (2,'com.liferay.portlet.softwarecatalog','ADD_PRODUCT_ENTRY',4),
 (3,'com.liferay.portlet.softwarecatalog','PERMISSIONS',8),
 (4,'com.liferay.portal.model.Team','ASSIGN_MEMBERS',2),
 (5,'com.liferay.portal.model.Team','DELETE',4),
 (6,'com.liferay.portal.model.Team','PERMISSIONS',8),
 (7,'com.liferay.portal.model.Team','UPDATE',16),
 (8,'com.liferay.portal.model.Team','VIEW',1),
 (9,'com.liferay.portal.model.PasswordPolicy','ASSIGN_MEMBERS',2),
 (10,'com.liferay.portal.model.PasswordPolicy','DELETE',4),
 (11,'com.liferay.portal.model.PasswordPolicy','PERMISSIONS',8),
 (12,'com.liferay.portal.model.PasswordPolicy','UPDATE',16),
 (13,'com.liferay.portal.model.PasswordPolicy','VIEW',1),
 (14,'com.liferay.portlet.blogs.model.BlogsEntry','ADD_DISCUSSION',2),
 (15,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE',4),
 (16,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE_DISCUSSION',8),
 (17,'com.liferay.portlet.blogs.model.BlogsEntry','PERMISSIONS',16),
 (18,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE',32),
 (19,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE_DISCUSSION',64),
 (20,'com.liferay.portlet.blogs.model.BlogsEntry','VIEW',1),
 (21,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','DELETE',2),
 (22,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','PERMISSIONS',4),
 (23,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','UPDATE',8),
 (24,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','VIEW',1),
 (25,'com.liferay.portlet.journal.model.JournalFeed','DELETE',2),
 (26,'com.liferay.portlet.journal.model.JournalFeed','PERMISSIONS',4),
 (27,'com.liferay.portlet.journal.model.JournalFeed','UPDATE',8),
 (28,'com.liferay.portlet.journal.model.JournalFeed','VIEW',1),
 (29,'com.liferay.portlet.wiki.model.WikiNode','ADD_ATTACHMENT',2),
 (30,'com.liferay.portlet.wiki.model.WikiNode','ADD_PAGE',4),
 (31,'com.liferay.portlet.wiki.model.WikiNode','DELETE',8),
 (32,'com.liferay.portlet.wiki.model.WikiNode','IMPORT',16),
 (33,'com.liferay.portlet.wiki.model.WikiNode','PERMISSIONS',32),
 (34,'com.liferay.portlet.wiki.model.WikiNode','SUBSCRIBE',64),
 (35,'com.liferay.portlet.wiki.model.WikiNode','UPDATE',128),
 (36,'com.liferay.portlet.wiki.model.WikiNode','VIEW',1),
 (37,'com.liferay.portlet.announcements.model.AnnouncementsEntry','DELETE',2),
 (38,'com.liferay.portlet.announcements.model.AnnouncementsEntry','UPDATE',4),
 (39,'com.liferay.portlet.announcements.model.AnnouncementsEntry','VIEW',1),
 (40,'com.liferay.portlet.announcements.model.AnnouncementsEntry','PERMISSIONS',8),
 (41,'com.liferay.portlet.bookmarks','ADD_ENTRY',2),
 (42,'com.liferay.portlet.bookmarks','ADD_FOLDER',4),
 (43,'com.liferay.portlet.bookmarks','PERMISSIONS',8),
 (44,'com.liferay.portlet.bookmarks','VIEW',1),
 (45,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','DELETE',2),
 (46,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','PERMISSIONS',4),
 (47,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','UPDATE',8),
 (48,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','VIEW',1),
 (49,'com.liferay.portlet.asset.model.AssetVocabulary','DELETE',2),
 (50,'com.liferay.portlet.asset.model.AssetVocabulary','PERMISSIONS',4),
 (51,'com.liferay.portlet.asset.model.AssetVocabulary','UPDATE',8),
 (52,'com.liferay.portlet.asset.model.AssetVocabulary','VIEW',1),
 (53,'com.liferay.portlet.documentlibrary.model.DLFolder','ACCESS',2),
 (54,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_DOCUMENT',4),
 (55,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SHORTCUT',8),
 (56,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SUBFOLDER',16),
 (57,'com.liferay.portlet.documentlibrary.model.DLFolder','DELETE',32),
 (58,'com.liferay.portlet.documentlibrary.model.DLFolder','PERMISSIONS',64),
 (59,'com.liferay.portlet.documentlibrary.model.DLFolder','UPDATE',128),
 (60,'com.liferay.portlet.documentlibrary.model.DLFolder','VIEW',1),
 (61,'com.liferay.portlet.expando.model.ExpandoColumn','DELETE',2),
 (62,'com.liferay.portlet.expando.model.ExpandoColumn','PERMISSIONS',4),
 (63,'com.liferay.portlet.expando.model.ExpandoColumn','UPDATE',8),
 (64,'com.liferay.portlet.expando.model.ExpandoColumn','VIEW',1),
 (65,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT',2),
 (66,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT_TYPE',4),
 (67,'com.liferay.portlet.documentlibrary','ADD_FOLDER',8),
 (68,'com.liferay.portlet.documentlibrary','ADD_REPOSITORY',16),
 (69,'com.liferay.portlet.documentlibrary','ADD_STRUCTURE',32),
 (70,'com.liferay.portlet.documentlibrary','ADD_SHORTCUT',64),
 (71,'com.liferay.portlet.documentlibrary','PERMISSIONS',128),
 (72,'com.liferay.portlet.documentlibrary','UPDATE',256),
 (73,'com.liferay.portlet.documentlibrary','VIEW',1),
 (74,'com.liferay.portlet.calendar.model.CalEvent','ADD_DISCUSSION',2),
 (75,'com.liferay.portlet.calendar.model.CalEvent','DELETE',4),
 (76,'com.liferay.portlet.calendar.model.CalEvent','DELETE_DISCUSSION',8),
 (77,'com.liferay.portlet.calendar.model.CalEvent','PERMISSIONS',16),
 (78,'com.liferay.portlet.calendar.model.CalEvent','UPDATE',32),
 (79,'com.liferay.portlet.calendar.model.CalEvent','UPDATE_DISCUSSION',64),
 (80,'com.liferay.portlet.calendar.model.CalEvent','VIEW',1),
 (81,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_ITEM',2),
 (82,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_SUBCATEGORY',4),
 (83,'com.liferay.portlet.shopping.model.ShoppingCategory','DELETE',8),
 (84,'com.liferay.portlet.shopping.model.ShoppingCategory','PERMISSIONS',16),
 (85,'com.liferay.portlet.shopping.model.ShoppingCategory','UPDATE',32),
 (86,'com.liferay.portlet.shopping.model.ShoppingCategory','VIEW',1),
 (87,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','ADD_DISCUSSION',2),
 (88,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE',4),
 (89,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE_DISCUSSION',8),
 (90,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','PERMISSIONS',16),
 (91,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE',32),
 (92,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE_DISCUSSION',64),
 (93,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','VIEW',1),
 (94,'com.liferay.portlet.journal','ADD_ARTICLE',2),
 (95,'com.liferay.portlet.journal','ADD_FEED',4),
 (96,'com.liferay.portlet.journal','ADD_STRUCTURE',8),
 (97,'com.liferay.portlet.journal','ADD_TEMPLATE',16),
 (98,'com.liferay.portlet.journal','SUBSCRIBE',32),
 (99,'com.liferay.portlet.journal','PERMISSIONS',64),
 (100,'com.liferay.portlet.calendar','ADD_EVENT',2),
 (101,'com.liferay.portlet.calendar','EXPORT_ALL_EVENTS',4),
 (102,'com.liferay.portlet.calendar','PERMISSIONS',8),
 (103,'com.liferay.portal.model.LayoutPrototype','DELETE',2),
 (104,'com.liferay.portal.model.LayoutPrototype','PERMISSIONS',4),
 (105,'com.liferay.portal.model.LayoutPrototype','UPDATE',8),
 (106,'com.liferay.portal.model.LayoutPrototype','VIEW',1),
 (107,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','ADD_RECORD',2),
 (108,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','DELETE',4),
 (109,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','PERMISSIONS',8),
 (110,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','UPDATE',16),
 (111,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','VIEW',1),
 (112,'com.liferay.portal.model.Organization','ASSIGN_USER_ROLES',2),
 (113,'com.liferay.portal.model.Organization','DELETE',4),
 (114,'com.liferay.portal.model.Organization','MANAGE_ANNOUNCEMENTS',8),
 (115,'com.liferay.portal.model.Organization','MANAGE_SUBORGANIZATIONS',16),
 (116,'com.liferay.portal.model.Organization','MANAGE_USERS',32),
 (117,'com.liferay.portal.model.Organization','PERMISSIONS',64),
 (118,'com.liferay.portal.model.Organization','UPDATE',128),
 (119,'com.liferay.portal.model.Organization','VIEW',1),
 (120,'com.liferay.portlet.softwarecatalog.model.SCLicense','DELETE',2),
 (121,'com.liferay.portlet.softwarecatalog.model.SCLicense','PERMISSIONS',4),
 (122,'com.liferay.portlet.softwarecatalog.model.SCLicense','UPDATE',8),
 (123,'com.liferay.portlet.softwarecatalog.model.SCLicense','VIEW',1),
 (124,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','DELETE',2),
 (125,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','PERMISSIONS',4),
 (126,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','UPDATE',8),
 (127,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','VIEW',1),
 (128,'com.liferay.portlet.journal.model.JournalTemplate','DELETE',2),
 (129,'com.liferay.portlet.journal.model.JournalTemplate','PERMISSIONS',4),
 (130,'com.liferay.portlet.journal.model.JournalTemplate','UPDATE',8),
 (131,'com.liferay.portlet.journal.model.JournalTemplate','VIEW',1),
 (132,'com.liferay.portlet.journal.model.JournalArticle','ADD_DISCUSSION',2),
 (133,'com.liferay.portlet.journal.model.JournalArticle','DELETE',4),
 (134,'com.liferay.portlet.journal.model.JournalArticle','DELETE_DISCUSSION',8),
 (135,'com.liferay.portlet.journal.model.JournalArticle','EXPIRE',16),
 (136,'com.liferay.portlet.journal.model.JournalArticle','PERMISSIONS',32),
 (137,'com.liferay.portlet.journal.model.JournalArticle','UPDATE',64),
 (138,'com.liferay.portlet.journal.model.JournalArticle','UPDATE_DISCUSSION',128),
 (139,'com.liferay.portlet.journal.model.JournalArticle','VIEW',1),
 (140,'com.liferay.portlet.dynamicdatalists','ADD_RECORD_SET',2),
 (141,'com.liferay.portlet.dynamicdatalists','ADD_STRUCTURE',4),
 (142,'com.liferay.portlet.dynamicdatalists','ADD_TEMPLATE',8),
 (143,'com.liferay.portlet.dynamicdatalists','PERMISSIONS',16),
 (144,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ACCESS',2),
 (145,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_ENTRY',4),
 (146,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_SUBFOLDER',8),
 (147,'com.liferay.portlet.bookmarks.model.BookmarksFolder','DELETE',16),
 (148,'com.liferay.portlet.bookmarks.model.BookmarksFolder','PERMISSIONS',32),
 (149,'com.liferay.portlet.bookmarks.model.BookmarksFolder','UPDATE',64),
 (150,'com.liferay.portlet.bookmarks.model.BookmarksFolder','VIEW',1),
 (151,'com.liferay.portal.model.Group','ADD_LAYOUT',2),
 (152,'com.liferay.portal.model.Group','ADD_LAYOUT_BRANCH',4),
 (153,'com.liferay.portal.model.Group','ADD_LAYOUT_SET_BRANCH',8),
 (154,'com.liferay.portal.model.Group','ASSIGN_MEMBERS',16),
 (155,'com.liferay.portal.model.Group','ASSIGN_USER_ROLES',32),
 (156,'com.liferay.portal.model.Group','CONFIGURE_PORTLETS',64),
 (157,'com.liferay.portal.model.Group','DELETE',128),
 (158,'com.liferay.portal.model.Group','EXPORT_IMPORT_LAYOUTS',256),
 (159,'com.liferay.portal.model.Group','EXPORT_IMPORT_PORTLET_INFO',512),
 (160,'com.liferay.portal.model.Group','MANAGE_ANNOUNCEMENTS',1024),
 (161,'com.liferay.portal.model.Group','MANAGE_ARCHIVED_SETUPS',2048),
 (162,'com.liferay.portal.model.Group','MANAGE_LAYOUTS',4096),
 (163,'com.liferay.portal.model.Group','MANAGE_STAGING',8192),
 (164,'com.liferay.portal.model.Group','MANAGE_TEAMS',16384),
 (165,'com.liferay.portal.model.Group','PERMISSIONS',32768),
 (166,'com.liferay.portal.model.Group','PUBLISH_STAGING',65536),
 (167,'com.liferay.portal.model.Group','PUBLISH_TO_REMOTE',131072),
 (168,'com.liferay.portal.model.Group','UPDATE',262144),
 (169,'com.liferay.portal.model.Group','VIEW',1),
 (170,'com.liferay.portal.model.Group','VIEW_MEMBERS',524288),
 (171,'com.liferay.portal.model.Group','VIEW_STAGING',1048576),
 (172,'com.liferay.portlet.journal.model.JournalStructure','DELETE',2),
 (173,'com.liferay.portlet.journal.model.JournalStructure','PERMISSIONS',4),
 (174,'com.liferay.portlet.journal.model.JournalStructure','UPDATE',8),
 (175,'com.liferay.portlet.journal.model.JournalStructure','VIEW',1),
 (176,'com.liferay.portlet.asset.model.AssetTag','DELETE',2),
 (177,'com.liferay.portlet.asset.model.AssetTag','PERMISSIONS',4),
 (178,'com.liferay.portlet.asset.model.AssetTag','UPDATE',8),
 (179,'com.liferay.portlet.asset.model.AssetTag','VIEW',1),
 (180,'com.liferay.portal.model.Layout','ADD_DISCUSSION',2),
 (181,'com.liferay.portal.model.Layout','ADD_LAYOUT',4),
 (182,'com.liferay.portal.model.Layout','CONFIGURE_PORTLETS',8),
 (183,'com.liferay.portal.model.Layout','CUSTOMIZE',16),
 (184,'com.liferay.portal.model.Layout','DELETE',32),
 (185,'com.liferay.portal.model.Layout','DELETE_DISCUSSION',64),
 (186,'com.liferay.portal.model.Layout','PERMISSIONS',128),
 (187,'com.liferay.portal.model.Layout','UPDATE',256),
 (188,'com.liferay.portal.model.Layout','UPDATE_DISCUSSION',512),
 (189,'com.liferay.portal.model.Layout','VIEW',1),
 (190,'com.liferay.portlet.asset','ADD_TAG',2),
 (191,'com.liferay.portlet.asset','PERMISSIONS',4),
 (192,'com.liferay.portlet.asset','ADD_CATEGORY',8),
 (193,'com.liferay.portlet.asset','ADD_VOCABULARY',16),
 (194,'com.liferay.portal.model.LayoutBranch','DELETE',2),
 (195,'com.liferay.portal.model.LayoutBranch','PERMISSIONS',4),
 (196,'com.liferay.portal.model.LayoutBranch','UPDATE',8),
 (197,'com.liferay.portal.model.LayoutSetBranch','DELETE',2),
 (198,'com.liferay.portal.model.LayoutSetBranch','MERGE',4),
 (199,'com.liferay.portal.model.LayoutSetBranch','PERMISSIONS',8),
 (200,'com.liferay.portal.model.LayoutSetBranch','UPDATE',16),
 (201,'com.liferay.portlet.messageboards','ADD_CATEGORY',2),
 (202,'com.liferay.portlet.messageboards','ADD_FILE',4),
 (203,'com.liferay.portlet.messageboards','ADD_MESSAGE',8),
 (204,'com.liferay.portlet.messageboards','BAN_USER',16),
 (205,'com.liferay.portlet.messageboards','MOVE_THREAD',32),
 (206,'com.liferay.portlet.messageboards','LOCK_THREAD',64),
 (207,'com.liferay.portlet.messageboards','PERMISSIONS',128),
 (208,'com.liferay.portlet.messageboards','REPLY_TO_MESSAGE',256),
 (209,'com.liferay.portlet.messageboards','SUBSCRIBE',512),
 (210,'com.liferay.portlet.messageboards','UPDATE_THREAD_PRIORITY',1024),
 (211,'com.liferay.portlet.messageboards','VIEW',1),
 (212,'com.liferay.portlet.polls','ADD_QUESTION',2),
 (213,'com.liferay.portlet.polls','PERMISSIONS',4),
 (214,'com.liferay.portlet.shopping.model.ShoppingItem','DELETE',2),
 (215,'com.liferay.portlet.shopping.model.ShoppingItem','PERMISSIONS',4),
 (216,'com.liferay.portlet.shopping.model.ShoppingItem','UPDATE',8),
 (217,'com.liferay.portlet.shopping.model.ShoppingItem','VIEW',1),
 (218,'com.liferay.portlet.bookmarks.model.BookmarksEntry','DELETE',2),
 (219,'com.liferay.portlet.bookmarks.model.BookmarksEntry','PERMISSIONS',4),
 (220,'com.liferay.portlet.bookmarks.model.BookmarksEntry','UPDATE',8),
 (221,'com.liferay.portlet.bookmarks.model.BookmarksEntry','VIEW',1),
 (222,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','ADD_DISCUSSION',2),
 (223,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE',4),
 (224,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE_DISCUSSION',8),
 (225,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','PERMISSIONS',16),
 (226,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE',32),
 (227,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE_DISCUSSION',64),
 (228,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','VIEW',1),
 (229,'com.liferay.portal.model.User','DELETE',2),
 (230,'com.liferay.portal.model.User','IMPERSONATE',4),
 (231,'com.liferay.portal.model.User','PERMISSIONS',8),
 (232,'com.liferay.portal.model.User','UPDATE',16),
 (233,'com.liferay.portal.model.User','VIEW',1),
 (234,'com.liferay.portal.model.LayoutSetPrototype','DELETE',2),
 (235,'com.liferay.portal.model.LayoutSetPrototype','PERMISSIONS',4),
 (236,'com.liferay.portal.model.LayoutSetPrototype','UPDATE',8),
 (237,'com.liferay.portal.model.LayoutSetPrototype','VIEW',1),
 (238,'com.liferay.portlet.shopping','ADD_CATEGORY',2),
 (239,'com.liferay.portlet.shopping','ADD_ITEM',4),
 (240,'com.liferay.portlet.shopping','MANAGE_COUPONS',8),
 (241,'com.liferay.portlet.shopping','MANAGE_ORDERS',16),
 (242,'com.liferay.portlet.shopping','PERMISSIONS',32),
 (243,'com.liferay.portlet.shopping','VIEW',1),
 (244,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','DELETE',2),
 (245,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','PERMISSIONS',4),
 (246,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','UPDATE',8),
 (247,'com.liferay.portlet.wiki','ADD_NODE',2),
 (248,'com.liferay.portlet.wiki','PERMISSIONS',4),
 (249,'com.liferay.portlet.polls.model.PollsQuestion','ADD_VOTE',2),
 (250,'com.liferay.portlet.polls.model.PollsQuestion','DELETE',4),
 (251,'com.liferay.portlet.polls.model.PollsQuestion','PERMISSIONS',8),
 (252,'com.liferay.portlet.polls.model.PollsQuestion','UPDATE',16),
 (253,'com.liferay.portlet.polls.model.PollsQuestion','VIEW',1),
 (254,'com.liferay.portlet.shopping.model.ShoppingOrder','DELETE',2),
 (255,'com.liferay.portlet.shopping.model.ShoppingOrder','PERMISSIONS',4),
 (256,'com.liferay.portlet.shopping.model.ShoppingOrder','UPDATE',8),
 (257,'com.liferay.portlet.shopping.model.ShoppingOrder','VIEW',1),
 (258,'com.liferay.portal.model.UserGroup','ASSIGN_MEMBERS',2),
 (259,'com.liferay.portal.model.UserGroup','DELETE',4),
 (260,'com.liferay.portal.model.UserGroup','MANAGE_ANNOUNCEMENTS',8),
 (261,'com.liferay.portal.model.UserGroup','PERMISSIONS',16),
 (262,'com.liferay.portal.model.UserGroup','UPDATE',32),
 (263,'com.liferay.portal.model.UserGroup','VIEW',1),
 (264,'com.liferay.portal.model.Role','ASSIGN_MEMBERS',2),
 (265,'com.liferay.portal.model.Role','DEFINE_PERMISSIONS',4),
 (266,'com.liferay.portal.model.Role','DELETE',8),
 (267,'com.liferay.portal.model.Role','MANAGE_ANNOUNCEMENTS',16),
 (268,'com.liferay.portal.model.Role','PERMISSIONS',32),
 (269,'com.liferay.portal.model.Role','UPDATE',64),
 (270,'com.liferay.portal.model.Role','VIEW',1),
 (271,'com.liferay.portlet.messageboards.model.MBCategory','ADD_FILE',2),
 (272,'com.liferay.portlet.messageboards.model.MBCategory','ADD_MESSAGE',4),
 (273,'com.liferay.portlet.messageboards.model.MBCategory','ADD_SUBCATEGORY',8),
 (274,'com.liferay.portlet.messageboards.model.MBCategory','DELETE',16),
 (275,'com.liferay.portlet.messageboards.model.MBCategory','LOCK_THREAD',32),
 (276,'com.liferay.portlet.messageboards.model.MBCategory','MOVE_THREAD',64),
 (277,'com.liferay.portlet.messageboards.model.MBCategory','PERMISSIONS',128),
 (278,'com.liferay.portlet.messageboards.model.MBCategory','REPLY_TO_MESSAGE',256),
 (279,'com.liferay.portlet.messageboards.model.MBCategory','SUBSCRIBE',512),
 (280,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE',1024),
 (281,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE_THREAD_PRIORITY',2048),
 (282,'com.liferay.portlet.messageboards.model.MBCategory','VIEW',1),
 (283,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP',2),
 (284,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP_INSTANCE',4),
 (285,'com.liferay.portlet.mobiledevicerules','CONFIGURATION',8),
 (286,'com.liferay.portlet.mobiledevicerules','VIEW',1),
 (287,'com.liferay.portlet.mobiledevicerules','PERMISSIONS',16),
 (288,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','DELETE',2),
 (289,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','PERMISSIONS',4),
 (290,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','UPDATE',8),
 (291,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','VIEW',1),
 (292,'com.liferay.portlet.wiki.model.WikiPage','ADD_DISCUSSION',2),
 (293,'com.liferay.portlet.wiki.model.WikiPage','DELETE',4),
 (294,'com.liferay.portlet.wiki.model.WikiPage','DELETE_DISCUSSION',8),
 (295,'com.liferay.portlet.wiki.model.WikiPage','PERMISSIONS',16),
 (296,'com.liferay.portlet.wiki.model.WikiPage','SUBSCRIBE',32),
 (297,'com.liferay.portlet.wiki.model.WikiPage','UPDATE',64),
 (298,'com.liferay.portlet.wiki.model.WikiPage','UPDATE_DISCUSSION',128),
 (299,'com.liferay.portlet.wiki.model.WikiPage','VIEW',1),
 (300,'com.liferay.portlet.asset.model.AssetCategory','ADD_CATEGORY',2),
 (301,'com.liferay.portlet.asset.model.AssetCategory','DELETE',4),
 (302,'com.liferay.portlet.asset.model.AssetCategory','PERMISSIONS',8),
 (303,'com.liferay.portlet.asset.model.AssetCategory','UPDATE',16),
 (304,'com.liferay.portlet.asset.model.AssetCategory','VIEW',1),
 (305,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','DELETE',2),
 (306,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','PERMISSIONS',4),
 (307,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','UPDATE',8),
 (308,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','VIEW',1),
 (309,'com.liferay.portlet.messageboards.model.MBMessage','DELETE',2),
 (310,'com.liferay.portlet.messageboards.model.MBMessage','PERMISSIONS',4),
 (311,'com.liferay.portlet.messageboards.model.MBMessage','SUBSCRIBE',8),
 (312,'com.liferay.portlet.messageboards.model.MBMessage','UPDATE',16),
 (313,'com.liferay.portlet.messageboards.model.MBMessage','VIEW',1),
 (314,'com.liferay.portlet.messageboards.model.MBThread','SUBSCRIBE',2),
 (315,'com.liferay.portlet.messageboards.model.MBThread','PERMISSIONS',4),
 (316,'com.liferay.portlet.blogs','ADD_ENTRY',2),
 (317,'com.liferay.portlet.blogs','PERMISSIONS',4),
 (318,'com.liferay.portlet.blogs','SUBSCRIBE',8),
 (319,'com.liferay.portlet.documentlibrary.model.DLFileEntry','ADD_DISCUSSION',2),
 (320,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE',4),
 (321,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE_DISCUSSION',8),
 (322,'com.liferay.portlet.documentlibrary.model.DLFileEntry','PERMISSIONS',16),
 (323,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE',32),
 (324,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE_DISCUSSION',64),
 (325,'com.liferay.portlet.documentlibrary.model.DLFileEntry','VIEW',1),
 (326,'98','ACCESS_IN_CONTROL_PANEL',2),
 (327,'98','ADD_TO_PAGE',4),
 (328,'98','CONFIGURATION',8),
 (329,'98','VIEW',1),
 (330,'98','PERMISSIONS',16),
 (331,'66','VIEW',1),
 (332,'66','ADD_TO_PAGE',2),
 (333,'66','CONFIGURATION',4),
 (334,'66','PERMISSIONS',8),
 (335,'156','VIEW',1),
 (336,'156','ADD_TO_PAGE',2),
 (337,'156','ACCESS_IN_CONTROL_PANEL',4),
 (338,'156','CONFIGURATION',8),
 (339,'156','PERMISSIONS',16),
 (340,'180','VIEW',1),
 (341,'180','ADD_TO_PAGE',2),
 (342,'180','CONFIGURATION',4),
 (343,'180','PERMISSIONS',8),
 (344,'152','ACCESS_IN_CONTROL_PANEL',2),
 (345,'152','CONFIGURATION',4),
 (346,'152','VIEW',1),
 (347,'152','PERMISSIONS',8),
 (348,'27','VIEW',1),
 (349,'27','ADD_TO_PAGE',2),
 (350,'27','CONFIGURATION',4),
 (351,'27','PERMISSIONS',8),
 (352,'88','VIEW',1),
 (353,'88','ADD_TO_PAGE',2),
 (354,'88','CONFIGURATION',4),
 (355,'88','PERMISSIONS',8),
 (356,'87','VIEW',1),
 (357,'87','ADD_TO_PAGE',2),
 (358,'87','CONFIGURATION',4),
 (359,'87','PERMISSIONS',8),
 (360,'134','ACCESS_IN_CONTROL_PANEL',2),
 (361,'134','CONFIGURATION',4),
 (362,'134','VIEW',1),
 (363,'134','PERMISSIONS',8),
 (364,'130','ACCESS_IN_CONTROL_PANEL',2),
 (365,'130','CONFIGURATION',4),
 (366,'130','VIEW',1),
 (367,'130','PERMISSIONS',8),
 (368,'122','VIEW',1),
 (369,'122','ADD_TO_PAGE',2),
 (370,'122','CONFIGURATION',4),
 (371,'122','PERMISSIONS',8),
 (372,'36','ADD_TO_PAGE',2),
 (373,'36','CONFIGURATION',4),
 (374,'36','VIEW',1),
 (375,'36','PERMISSIONS',8),
 (376,'26','VIEW',1),
 (377,'26','ADD_TO_PAGE',2),
 (378,'26','CONFIGURATION',4),
 (379,'26','PERMISSIONS',8),
 (380,'104','VIEW',1),
 (381,'104','ADD_TO_PAGE',2),
 (382,'104','ACCESS_IN_CONTROL_PANEL',4),
 (383,'104','CONFIGURATION',8),
 (384,'104','PERMISSIONS',16),
 (385,'175','VIEW',1),
 (386,'175','ADD_TO_PAGE',2),
 (387,'175','CONFIGURATION',4),
 (388,'175','PERMISSIONS',8),
 (389,'64','VIEW',1),
 (390,'64','ADD_TO_PAGE',2),
 (391,'64','CONFIGURATION',4),
 (392,'64','PERMISSIONS',8),
 (393,'153','ACCESS_IN_CONTROL_PANEL',2),
 (394,'153','CONFIGURATION',4),
 (395,'153','VIEW',1),
 (396,'153','PERMISSIONS',8),
 (397,'129','ACCESS_IN_CONTROL_PANEL',2),
 (398,'129','CONFIGURATION',4),
 (399,'129','VIEW',1),
 (400,'129','PERMISSIONS',8),
 (401,'179','VIEW',1),
 (402,'179','ADD_TO_PAGE',2),
 (403,'179','ACCESS_IN_CONTROL_PANEL',4),
 (404,'179','CONFIGURATION',8),
 (405,'179','PERMISSIONS',16),
 (406,'173','VIEW',1),
 (407,'173','ADD_TO_PAGE',2),
 (408,'173','ACCESS_IN_CONTROL_PANEL',4),
 (409,'173','CONFIGURATION',8),
 (410,'173','PERMISSIONS',16),
 (411,'100','VIEW',1),
 (412,'100','ADD_TO_PAGE',2),
 (413,'100','CONFIGURATION',4),
 (414,'100','PERMISSIONS',8),
 (415,'157','ACCESS_IN_CONTROL_PANEL',2),
 (416,'157','CONFIGURATION',4),
 (417,'157','VIEW',1),
 (418,'157','PERMISSIONS',8),
 (419,'19','ADD_TO_PAGE',2),
 (420,'19','CONFIGURATION',4),
 (421,'19','VIEW',1),
 (422,'19','PERMISSIONS',8),
 (423,'160','VIEW',1),
 (424,'160','ADD_TO_PAGE',2),
 (425,'160','CONFIGURATION',4),
 (426,'160','PERMISSIONS',8),
 (427,'128','ACCESS_IN_CONTROL_PANEL',2),
 (428,'128','CONFIGURATION',4),
 (429,'128','VIEW',1),
 (430,'128','PERMISSIONS',8),
 (431,'181','VIEW',1),
 (432,'181','ADD_TO_PAGE',2),
 (433,'181','CONFIGURATION',4),
 (434,'181','PERMISSIONS',8),
 (435,'86','VIEW',1),
 (436,'86','ADD_TO_PAGE',2),
 (437,'86','CONFIGURATION',4),
 (438,'86','PERMISSIONS',8),
 (439,'154','ACCESS_IN_CONTROL_PANEL',2),
 (440,'154','CONFIGURATION',4),
 (441,'154','VIEW',1),
 (442,'154','PERMISSIONS',8),
 (443,'148','VIEW',1),
 (444,'148','ADD_TO_PAGE',2),
 (445,'148','CONFIGURATION',4),
 (446,'148','PERMISSIONS',8),
 (447,'11','ADD_TO_PAGE',2),
 (448,'11','CONFIGURATION',4),
 (449,'11','VIEW',1),
 (450,'11','PERMISSIONS',8),
 (451,'29','ADD_TO_PAGE',2),
 (452,'29','CONFIGURATION',4),
 (453,'29','VIEW',1),
 (454,'29','PERMISSIONS',8),
 (455,'174','VIEW',1),
 (456,'174','ADD_TO_PAGE',2),
 (457,'174','ACCESS_IN_CONTROL_PANEL',4),
 (458,'174','CONFIGURATION',8),
 (459,'174','PERMISSIONS',16),
 (460,'158','ACCESS_IN_CONTROL_PANEL',2),
 (461,'158','CONFIGURATION',4),
 (462,'158','VIEW',1),
 (463,'158','PERMISSIONS',8),
 (464,'178','VIEW',1),
 (465,'178','ADD_TO_PAGE',2),
 (466,'178','ACCESS_IN_CONTROL_PANEL',4),
 (467,'178','CONFIGURATION',8),
 (468,'178','PERMISSIONS',16),
 (469,'124','VIEW',1),
 (470,'124','ADD_TO_PAGE',2),
 (471,'124','CONFIGURATION',4),
 (472,'124','PERMISSIONS',8),
 (473,'8','ACCESS_IN_CONTROL_PANEL',2),
 (474,'8','ADD_TO_PAGE',4),
 (475,'8','CONFIGURATION',8),
 (476,'8','VIEW',1),
 (477,'8','PERMISSIONS',16),
 (478,'58','ADD_TO_PAGE',2),
 (479,'58','CONFIGURATION',4),
 (480,'58','VIEW',1),
 (481,'58','PERMISSIONS',8),
 (482,'97','VIEW',1),
 (483,'97','ADD_TO_PAGE',2),
 (484,'97','CONFIGURATION',4),
 (485,'97','PERMISSIONS',8),
 (486,'71','ADD_TO_PAGE',2),
 (487,'71','CONFIGURATION',4),
 (488,'71','VIEW',1),
 (489,'71','PERMISSIONS',8),
 (490,'39','VIEW',1),
 (491,'39','ADD_TO_PAGE',2),
 (492,'39','CONFIGURATION',4),
 (493,'39','PERMISSIONS',8),
 (494,'177','CONFIGURATION',2),
 (495,'177','VIEW',1),
 (496,'177','ADD_TO_PAGE',4),
 (497,'177','PERMISSIONS',8),
 (498,'177','ACCESS_IN_CONTROL_PANEL',16),
 (499,'170','VIEW',1),
 (500,'170','ADD_TO_PAGE',2),
 (501,'170','CONFIGURATION',4),
 (502,'170','PERMISSIONS',8),
 (503,'85','ADD_TO_PAGE',2),
 (504,'85','CONFIGURATION',4),
 (505,'85','VIEW',1),
 (506,'85','PERMISSIONS',8),
 (507,'118','VIEW',1),
 (508,'118','ADD_TO_PAGE',2),
 (509,'118','CONFIGURATION',4),
 (510,'118','PERMISSIONS',8),
 (511,'107','VIEW',1),
 (512,'107','ADD_TO_PAGE',2),
 (513,'107','CONFIGURATION',4),
 (514,'107','PERMISSIONS',8),
 (515,'30','VIEW',1),
 (516,'30','ADD_TO_PAGE',2),
 (517,'30','CONFIGURATION',4),
 (518,'30','PERMISSIONS',8),
 (519,'147','ACCESS_IN_CONTROL_PANEL',2),
 (520,'147','CONFIGURATION',4),
 (521,'147','VIEW',1),
 (522,'147','PERMISSIONS',8),
 (523,'48','VIEW',1),
 (524,'48','ADD_TO_PAGE',2),
 (525,'48','CONFIGURATION',4),
 (526,'48','PERMISSIONS',8),
 (527,'125','ACCESS_IN_CONTROL_PANEL',2),
 (528,'125','CONFIGURATION',4),
 (529,'125','EXPORT_USER',8),
 (530,'125','VIEW',1),
 (531,'125','PERMISSIONS',16),
 (532,'161','ACCESS_IN_CONTROL_PANEL',2),
 (533,'161','CONFIGURATION',4),
 (534,'161','VIEW',1),
 (535,'161','PERMISSIONS',8),
 (536,'144','VIEW',1),
 (537,'144','ADD_TO_PAGE',2),
 (538,'144','CONFIGURATION',4),
 (539,'144','PERMISSIONS',8),
 (540,'146','ACCESS_IN_CONTROL_PANEL',2),
 (541,'146','CONFIGURATION',4),
 (542,'146','VIEW',1),
 (543,'146','PERMISSIONS',8),
 (544,'62','VIEW',1),
 (545,'62','ADD_TO_PAGE',2),
 (546,'62','CONFIGURATION',4),
 (547,'62','PERMISSIONS',8),
 (548,'162','ACCESS_IN_CONTROL_PANEL',2),
 (549,'162','CONFIGURATION',4),
 (550,'162','VIEW',1),
 (551,'162','PERMISSIONS',8),
 (552,'176','VIEW',1),
 (553,'176','ADD_TO_PAGE',2),
 (554,'176','ACCESS_IN_CONTROL_PANEL',4),
 (555,'176','CONFIGURATION',8),
 (556,'176','PERMISSIONS',16),
 (557,'172','VIEW',1),
 (558,'172','ADD_TO_PAGE',2),
 (559,'172','CONFIGURATION',4),
 (560,'172','PERMISSIONS',8),
 (561,'108','VIEW',1),
 (562,'108','ADD_TO_PAGE',2),
 (563,'108','CONFIGURATION',4),
 (564,'108','PERMISSIONS',8),
 (565,'139','ACCESS_IN_CONTROL_PANEL',2),
 (566,'139','ADD_EXPANDO',4),
 (567,'139','CONFIGURATION',8),
 (568,'139','VIEW',1),
 (569,'139','PERMISSIONS',16),
 (570,'84','ADD_ENTRY',2),
 (571,'84','ADD_TO_PAGE',4),
 (572,'84','CONFIGURATION',8),
 (573,'84','VIEW',1),
 (574,'84','PERMISSIONS',16),
 (575,'101','VIEW',1),
 (576,'101','ADD_TO_PAGE',2),
 (577,'101','CONFIGURATION',4),
 (578,'101','PERMISSIONS',8),
 (579,'121','VIEW',1),
 (580,'121','ADD_TO_PAGE',2),
 (581,'121','CONFIGURATION',4),
 (582,'121','PERMISSIONS',8),
 (583,'49','VIEW',1),
 (584,'49','ADD_TO_PAGE',2),
 (585,'49','CONFIGURATION',4),
 (586,'49','PERMISSIONS',8),
 (587,'143','VIEW',1),
 (588,'143','ADD_TO_PAGE',2),
 (589,'143','CONFIGURATION',4),
 (590,'143','PERMISSIONS',8),
 (591,'167','ACCESS_IN_CONTROL_PANEL',2),
 (592,'167','ADD_TO_PAGE',4),
 (593,'167','CONFIGURATION',8),
 (594,'167','VIEW',1),
 (595,'167','PERMISSIONS',16),
 (596,'77','VIEW',1),
 (597,'77','ADD_TO_PAGE',2),
 (598,'77','CONFIGURATION',4),
 (599,'77','PERMISSIONS',8),
 (600,'115','VIEW',1),
 (601,'115','ADD_TO_PAGE',2),
 (602,'115','CONFIGURATION',4),
 (603,'115','PERMISSIONS',8),
 (604,'56','ADD_TO_PAGE',2),
 (605,'56','CONFIGURATION',4),
 (606,'56','VIEW',1),
 (607,'56','PERMISSIONS',8),
 (608,'142','VIEW',1),
 (609,'142','ADD_TO_PAGE',2),
 (610,'142','CONFIGURATION',4),
 (611,'142','PERMISSIONS',8),
 (612,'111','VIEW',1),
 (613,'111','ADD_TO_PAGE',2),
 (614,'111','CONFIGURATION',4),
 (615,'111','PERMISSIONS',8),
 (616,'16','PREFERENCES',2),
 (617,'16','GUEST_PREFERENCES',4),
 (618,'16','VIEW',1),
 (619,'16','ADD_TO_PAGE',8),
 (620,'16','CONFIGURATION',16),
 (621,'16','PERMISSIONS',32),
 (622,'3','VIEW',1),
 (623,'3','ADD_TO_PAGE',2),
 (624,'3','CONFIGURATION',4),
 (625,'3','PERMISSIONS',8),
 (626,'20','ACCESS_IN_CONTROL_PANEL',2),
 (627,'20','ADD_TO_PAGE',4),
 (628,'20','CONFIGURATION',8),
 (629,'20','VIEW',1),
 (630,'20','PERMISSIONS',16),
 (631,'23','VIEW',1),
 (632,'23','ADD_TO_PAGE',2),
 (633,'23','CONFIGURATION',4),
 (634,'23','PERMISSIONS',8),
 (635,'145','VIEW',1),
 (636,'145','ADD_TO_PAGE',2),
 (637,'145','CONFIGURATION',4),
 (638,'145','PERMISSIONS',8),
 (639,'83','ADD_ENTRY',2),
 (640,'83','ADD_TO_PAGE',4),
 (641,'83','CONFIGURATION',8),
 (642,'83','VIEW',1),
 (643,'83','PERMISSIONS',16),
 (644,'99','ACCESS_IN_CONTROL_PANEL',2),
 (645,'99','CONFIGURATION',4),
 (646,'99','VIEW',1),
 (647,'99','PERMISSIONS',8),
 (648,'70','VIEW',1),
 (649,'70','ADD_TO_PAGE',2),
 (650,'70','CONFIGURATION',4),
 (651,'70','PERMISSIONS',8),
 (652,'164','VIEW',1),
 (653,'164','ADD_TO_PAGE',2),
 (654,'164','CONFIGURATION',4),
 (655,'164','PERMISSIONS',8),
 (656,'141','VIEW',1),
 (657,'141','ADD_TO_PAGE',2),
 (658,'141','CONFIGURATION',4),
 (659,'141','PERMISSIONS',8),
 (660,'9','VIEW',1),
 (661,'9','ADD_TO_PAGE',2),
 (662,'9','CONFIGURATION',4),
 (663,'9','PERMISSIONS',8),
 (664,'137','ACCESS_IN_CONTROL_PANEL',2),
 (665,'137','CONFIGURATION',4),
 (666,'137','VIEW',1),
 (667,'137','PERMISSIONS',8),
 (668,'28','ACCESS_IN_CONTROL_PANEL',2),
 (669,'28','ADD_TO_PAGE',4),
 (670,'28','CONFIGURATION',8),
 (671,'28','VIEW',1),
 (672,'28','PERMISSIONS',16),
 (673,'133','VIEW',1),
 (674,'133','ADD_TO_PAGE',2),
 (675,'133','CONFIGURATION',4),
 (676,'133','PERMISSIONS',8),
 (677,'116','VIEW',1),
 (678,'116','ADD_TO_PAGE',2),
 (679,'116','CONFIGURATION',4),
 (680,'116','PERMISSIONS',8),
 (681,'15','ACCESS_IN_CONTROL_PANEL',2),
 (682,'15','ADD_TO_PAGE',4),
 (683,'15','CONFIGURATION',8),
 (684,'15','VIEW',1),
 (685,'15','PERMISSIONS',16),
 (686,'47','VIEW',1),
 (687,'47','ADD_TO_PAGE',2),
 (688,'47','CONFIGURATION',4),
 (689,'47','PERMISSIONS',8),
 (690,'82','VIEW',1),
 (691,'82','ADD_TO_PAGE',2),
 (692,'82','CONFIGURATION',4),
 (693,'82','PERMISSIONS',8),
 (694,'103','VIEW',1),
 (695,'103','ADD_TO_PAGE',2),
 (696,'103','CONFIGURATION',4),
 (697,'103','PERMISSIONS',8),
 (698,'151','ACCESS_IN_CONTROL_PANEL',2),
 (699,'151','CONFIGURATION',4),
 (700,'151','VIEW',1),
 (701,'151','PERMISSIONS',8),
 (702,'140','VIEW',1),
 (703,'140','ADD_TO_PAGE',2),
 (704,'140','ACCESS_IN_CONTROL_PANEL',4),
 (705,'140','CONFIGURATION',8),
 (706,'140','PERMISSIONS',16),
 (707,'54','VIEW',1),
 (708,'54','ADD_TO_PAGE',2),
 (709,'54','CONFIGURATION',4),
 (710,'54','PERMISSIONS',8),
 (711,'169','VIEW',1),
 (712,'169','ADD_TO_PAGE',2),
 (713,'169','CONFIGURATION',4),
 (714,'169','PERMISSIONS',8),
 (715,'132','ACCESS_IN_CONTROL_PANEL',2),
 (716,'132','CONFIGURATION',4),
 (717,'132','VIEW',1),
 (718,'132','PERMISSIONS',8),
 (719,'34','ADD_TO_PAGE',2),
 (720,'34','CONFIGURATION',4),
 (721,'34','VIEW',1),
 (722,'34','PERMISSIONS',8),
 (723,'61','VIEW',1),
 (724,'61','ADD_TO_PAGE',2),
 (725,'61','CONFIGURATION',4),
 (726,'61','PERMISSIONS',8),
 (727,'73','ADD_TO_PAGE',2),
 (728,'73','CONFIGURATION',4),
 (729,'73','VIEW',1),
 (730,'73','PERMISSIONS',8),
 (731,'31','VIEW',1),
 (732,'31','ADD_TO_PAGE',2),
 (733,'31','CONFIGURATION',4),
 (734,'31','PERMISSIONS',8),
 (735,'165','VIEW',1),
 (736,'165','ADD_TO_PAGE',2),
 (737,'165','ACCESS_IN_CONTROL_PANEL',4),
 (738,'165','CONFIGURATION',8),
 (739,'165','PERMISSIONS',16),
 (740,'136','ACCESS_IN_CONTROL_PANEL',2),
 (741,'136','CONFIGURATION',4),
 (742,'136','VIEW',1),
 (743,'136','PERMISSIONS',8),
 (744,'127','VIEW',1),
 (745,'127','ADD_TO_PAGE',2),
 (746,'127','ACCESS_IN_CONTROL_PANEL',4),
 (747,'127','CONFIGURATION',8),
 (748,'127','PERMISSIONS',16),
 (749,'50','VIEW',1),
 (750,'50','ADD_TO_PAGE',2),
 (751,'50','CONFIGURATION',4),
 (752,'50','PERMISSIONS',8),
 (753,'25','ACCESS_IN_CONTROL_PANEL',2),
 (754,'25','CONFIGURATION',4),
 (755,'25','VIEW',1),
 (756,'25','PERMISSIONS',8),
 (757,'166','ACCESS_IN_CONTROL_PANEL',2),
 (758,'166','ADD_TO_PAGE',4),
 (759,'166','CONFIGURATION',8),
 (760,'166','VIEW',1),
 (761,'166','PERMISSIONS',16),
 (762,'90','ADD_COMMUNITY',2),
 (763,'90','ADD_LAYOUT_PROTOTYPE',4),
 (764,'90','ADD_LAYOUT_SET_PROTOTYPE',8),
 (765,'90','ADD_LICENSE',16),
 (766,'90','ADD_ORGANIZATION',32),
 (767,'90','ADD_PASSWORD_POLICY',64),
 (768,'90','ADD_ROLE',128),
 (769,'90','ADD_USER',256),
 (770,'90','ADD_USER_GROUP',512),
 (771,'90','CONFIGURATION',1024),
 (772,'90','EXPORT_USER',2048),
 (773,'90','UNLINK_LAYOUT_SET_PROTOTYPE',4096),
 (774,'90','VIEW_CONTROL_PANEL',8192),
 (775,'90','ADD_TO_PAGE',16384),
 (776,'90','PERMISSIONS',32768),
 (777,'90','VIEW',1),
 (778,'150','ACCESS_IN_CONTROL_PANEL',2),
 (779,'150','CONFIGURATION',4),
 (780,'150','VIEW',1),
 (781,'150','PERMISSIONS',8),
 (782,'113','VIEW',1),
 (783,'113','ADD_TO_PAGE',2),
 (784,'113','CONFIGURATION',4),
 (785,'113','PERMISSIONS',8),
 (786,'33','ADD_TO_PAGE',2),
 (787,'33','CONFIGURATION',4),
 (788,'33','VIEW',1),
 (789,'33','PERMISSIONS',8),
 (790,'2','VIEW',1),
 (791,'2','ADD_TO_PAGE',2),
 (792,'2','ACCESS_IN_CONTROL_PANEL',4),
 (793,'2','CONFIGURATION',8),
 (794,'2','PERMISSIONS',16),
 (795,'119','VIEW',1),
 (796,'119','ADD_TO_PAGE',2),
 (797,'119','CONFIGURATION',4),
 (798,'119','PERMISSIONS',8),
 (799,'114','VIEW',1),
 (800,'114','ADD_TO_PAGE',2),
 (801,'114','CONFIGURATION',4),
 (802,'114','PERMISSIONS',8),
 (803,'149','ACCESS_IN_CONTROL_PANEL',2),
 (804,'149','CONFIGURATION',4),
 (805,'149','VIEW',1),
 (806,'149','PERMISSIONS',8),
 (807,'67','VIEW',1),
 (808,'67','ADD_TO_PAGE',2),
 (809,'67','CONFIGURATION',4),
 (810,'67','PERMISSIONS',8),
 (811,'110','VIEW',1),
 (812,'110','ADD_TO_PAGE',2),
 (813,'110','CONFIGURATION',4),
 (814,'110','PERMISSIONS',8),
 (815,'135','ACCESS_IN_CONTROL_PANEL',2),
 (816,'135','CONFIGURATION',4),
 (817,'135','VIEW',1),
 (818,'135','PERMISSIONS',8),
 (819,'59','VIEW',1),
 (820,'59','ADD_TO_PAGE',2),
 (821,'59','CONFIGURATION',4),
 (822,'59','PERMISSIONS',8),
 (823,'131','ACCESS_IN_CONTROL_PANEL',2),
 (824,'131','CONFIGURATION',4),
 (825,'131','VIEW',1),
 (826,'131','PERMISSIONS',8),
 (827,'102','VIEW',1),
 (828,'102','ADD_TO_PAGE',2),
 (829,'102','CONFIGURATION',4),
 (830,'102','PERMISSIONS',8),
 (831,'1_WAR_chatportlet','VIEW',1),
 (832,'1_WAR_chatportlet','ADD_TO_PAGE',2),
 (833,'1_WAR_chatportlet','CONFIGURATION',4),
 (834,'1_WAR_chatportlet','PERMISSIONS',8),
 (835,'1_WAR_googlemapsportlet','VIEW',1),
 (836,'1_WAR_googlemapsportlet','ADD_TO_PAGE',2),
 (837,'1_WAR_googlemapsportlet','CONFIGURATION',4),
 (838,'1_WAR_googlemapsportlet','PERMISSIONS',8),
 (839,'4_WAR_knowledgebaseportlet','ADD_TO_PAGE',2),
 (840,'4_WAR_knowledgebaseportlet','CONFIGURATION',4),
 (841,'4_WAR_knowledgebaseportlet','VIEW',1),
 (842,'4_WAR_knowledgebaseportlet','PERMISSIONS',8),
 (843,'3_WAR_knowledgebaseportlet','ADD_TO_PAGE',2),
 (844,'3_WAR_knowledgebaseportlet','CONFIGURATION',4),
 (845,'3_WAR_knowledgebaseportlet','VIEW',1),
 (846,'3_WAR_knowledgebaseportlet','PERMISSIONS',8),
 (847,'2_WAR_knowledgebaseportlet','ADD_TO_PAGE',2),
 (848,'2_WAR_knowledgebaseportlet','CONFIGURATION',4),
 (849,'2_WAR_knowledgebaseportlet','VIEW',1),
 (850,'2_WAR_knowledgebaseportlet','PERMISSIONS',8),
 (851,'com.liferay.knowledgebase.display','ADD_KB_ARTICLE',2),
 (852,'com.liferay.knowledgebase.display','ADD_KB_TEMPLATE',4),
 (853,'com.liferay.knowledgebase.display','ADMINISTRATOR',8),
 (854,'com.liferay.knowledgebase.display','PERMISSIONS',16),
 (855,'com.liferay.knowledgebase.display','SUBSCRIBE',32),
 (856,'com.liferay.knowledgebase.display','VIEW_KB_TEMPLATES',64),
 (857,'5_WAR_knowledgebaseportlet','ADD_TO_PAGE',2),
 (858,'5_WAR_knowledgebaseportlet','CONFIGURATION',4),
 (859,'5_WAR_knowledgebaseportlet','VIEW',1),
 (860,'5_WAR_knowledgebaseportlet','PERMISSIONS',8),
 (861,'1_WAR_knowledgebaseportlet','ACCESS_IN_CONTROL_PANEL',2),
 (862,'1_WAR_knowledgebaseportlet','CONFIGURATION',4),
 (863,'1_WAR_knowledgebaseportlet','VIEW',1),
 (864,'1_WAR_knowledgebaseportlet','PERMISSIONS',8),
 (865,'com.liferay.knowledgebase.admin','ADD_KB_ARTICLE',2),
 (866,'com.liferay.knowledgebase.admin','ADD_KB_TEMPLATE',4),
 (867,'com.liferay.knowledgebase.admin','DELETE_KB_ARTICLES',8),
 (868,'com.liferay.knowledgebase.admin','DELETE_KB_TEMPLATES',16),
 (869,'com.liferay.knowledgebase.admin','PERMISSIONS',32),
 (870,'com.liferay.knowledgebase.admin','SUBSCRIBE',64),
 (871,'com.liferay.knowledgebase.admin','UPDATE_KB_ARTICLES_PRIORITIES',128),
 (872,'com.liferay.knowledgebase.admin','VIEW_KB_TEMPLATES',256),
 (873,'com.liferay.knowledgebase.model.KBArticle','DELETE',2),
 (874,'com.liferay.knowledgebase.model.KBArticle','MOVE_KB_ARTICLE',4),
 (875,'com.liferay.knowledgebase.model.KBArticle','PERMISSIONS',8),
 (876,'com.liferay.knowledgebase.model.KBArticle','SUBSCRIBE',16),
 (877,'com.liferay.knowledgebase.model.KBArticle','UPDATE',32),
 (878,'com.liferay.knowledgebase.model.KBArticle','VIEW',1),
 (879,'com.liferay.knowledgebase.model.KBTemplate','DELETE',2),
 (880,'com.liferay.knowledgebase.model.KBTemplate','PERMISSIONS',4),
 (881,'com.liferay.knowledgebase.model.KBTemplate','UPDATE',8),
 (882,'com.liferay.knowledgebase.model.KBTemplate','VIEW',1),
 (883,'1_WAR_mailportlet','VIEW',1),
 (884,'1_WAR_mailportlet','ADD_TO_PAGE',2),
 (885,'1_WAR_mailportlet','CONFIGURATION',4),
 (886,'1_WAR_mailportlet','PERMISSIONS',8),
 (887,'4_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',2),
 (888,'4_WAR_opensocialportlet','CONFIGURATION',4),
 (889,'4_WAR_opensocialportlet','VIEW',1),
 (890,'4_WAR_opensocialportlet','PERMISSIONS',8),
 (891,'2_WAR_opensocialportlet','ADD_TO_PAGE',2),
 (892,'2_WAR_opensocialportlet','CONFIGURATION',4),
 (893,'2_WAR_opensocialportlet','VIEW',1),
 (894,'2_WAR_opensocialportlet','PERMISSIONS',8),
 (895,'1_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',2),
 (896,'1_WAR_opensocialportlet','CONFIGURATION',4),
 (897,'1_WAR_opensocialportlet','VIEW',1),
 (898,'1_WAR_opensocialportlet','PERMISSIONS',8),
 (899,'com.liferay.opensocial.model.Gadget','DELETE',2),
 (900,'com.liferay.opensocial.model.Gadget','PERMISSIONS',4),
 (901,'com.liferay.opensocial.model.Gadget','UPDATE',8),
 (902,'com.liferay.opensocial.model.Gadget','VIEW',1),
 (903,'com.liferay.opensocial','PERMISSIONS',2),
 (904,'com.liferay.opensocial','PUBLISH_GADGET',4),
 (905,'3_WAR_opensocialportlet','ADD_TO_PAGE',2),
 (906,'3_WAR_opensocialportlet','CONFIGURATION',4),
 (907,'3_WAR_opensocialportlet','VIEW',1),
 (908,'3_WAR_opensocialportlet','PERMISSIONS',8),
 (909,'6_WAR_socialnetworkingportlet','VIEW',1),
 (910,'6_WAR_socialnetworkingportlet','ADD_TO_PAGE',2),
 (911,'6_WAR_socialnetworkingportlet','CONFIGURATION',4),
 (912,'6_WAR_socialnetworkingportlet','PERMISSIONS',8),
 (913,'1_WAR_socialnetworkingportlet','VIEW',1),
 (914,'1_WAR_socialnetworkingportlet','ADD_TO_PAGE',2),
 (915,'1_WAR_socialnetworkingportlet','CONFIGURATION',4),
 (916,'1_WAR_socialnetworkingportlet','PERMISSIONS',8),
 (917,'3_WAR_socialnetworkingportlet','VIEW',1),
 (918,'3_WAR_socialnetworkingportlet','ADD_TO_PAGE',2),
 (919,'3_WAR_socialnetworkingportlet','CONFIGURATION',4),
 (920,'3_WAR_socialnetworkingportlet','PERMISSIONS',8),
 (921,'7_WAR_socialnetworkingportlet','VIEW',1),
 (922,'7_WAR_socialnetworkingportlet','ADD_TO_PAGE',2),
 (923,'7_WAR_socialnetworkingportlet','CONFIGURATION',4),
 (924,'7_WAR_socialnetworkingportlet','PERMISSIONS',8),
 (925,'8_WAR_socialnetworkingportlet','VIEW',1),
 (926,'8_WAR_socialnetworkingportlet','ADD_TO_PAGE',2),
 (927,'8_WAR_socialnetworkingportlet','CONFIGURATION',4),
 (928,'8_WAR_socialnetworkingportlet','PERMISSIONS',8),
 (929,'4_WAR_socialnetworkingportlet','VIEW',1),
 (930,'4_WAR_socialnetworkingportlet','ADD_TO_PAGE',2),
 (931,'4_WAR_socialnetworkingportlet','CONFIGURATION',4),
 (932,'4_WAR_socialnetworkingportlet','PERMISSIONS',8),
 (933,'2_WAR_socialnetworkingportlet','VIEW',1),
 (934,'2_WAR_socialnetworkingportlet','ADD_TO_PAGE',2),
 (935,'2_WAR_socialnetworkingportlet','CONFIGURATION',4),
 (936,'2_WAR_socialnetworkingportlet','PERMISSIONS',8),
 (937,'5_WAR_socialnetworkingportlet','VIEW',1),
 (938,'5_WAR_socialnetworkingportlet','ADD_TO_PAGE',2),
 (939,'5_WAR_socialnetworkingportlet','CONFIGURATION',4),
 (940,'5_WAR_socialnetworkingportlet','PERMISSIONS',8),
 (941,'1_WAR_webformportlet','VIEW',1),
 (942,'1_WAR_webformportlet','ADD_TO_PAGE',2),
 (943,'1_WAR_webformportlet','CONFIGURATION',4),
 (944,'1_WAR_webformportlet','PERMISSIONS',8),
 (945,'1_WAR_wsrpportlet','VIEW',1),
 (946,'1_WAR_wsrpportlet','ADD_TO_PAGE',2),
 (947,'1_WAR_wsrpportlet','ACCESS_IN_CONTROL_PANEL',4),
 (948,'1_WAR_wsrpportlet','CONFIGURATION',8),
 (949,'1_WAR_wsrpportlet','PERMISSIONS',16),
 (950,'2_WAR_wsrpportlet','VIEW',1),
 (951,'2_WAR_wsrpportlet','ADD_TO_PAGE',2),
 (952,'2_WAR_wsrpportlet','CONFIGURATION',4),
 (953,'2_WAR_wsrpportlet','PERMISSIONS',8),
 (1001,'cisiumeventi_WAR_CisiumEventiportlet','VIEW',1),
 (1002,'cisiumeventi_WAR_CisiumEventiportlet','ADD_TO_PAGE',2),
 (1003,'cisiumeventi_WAR_CisiumEventiportlet','CONFIGURATION',4),
 (1004,'cisiumeventi_WAR_CisiumEventiportlet','PERMISSIONS',8),
 (1005,'cisiumparcheggi_WAR_CisiumParcheggiportlet','VIEW',1),
 (1006,'cisiumparcheggi_WAR_CisiumParcheggiportlet','ADD_TO_PAGE',2),
 (1007,'cisiumparcheggi_WAR_CisiumParcheggiportlet','CONFIGURATION',4),
 (1008,'cisiumparcheggi_WAR_CisiumParcheggiportlet','PERMISSIONS',8),
 (1009,'cisiumtraffico_WAR_CisiumTrafficoportlet','VIEW',1),
 (1010,'cisiumtraffico_WAR_CisiumTrafficoportlet','ADD_TO_PAGE',2),
 (1011,'cisiumtraffico_WAR_CisiumTrafficoportlet','CONFIGURATION',4),
 (1012,'cisiumtraffico_WAR_CisiumTrafficoportlet','PERMISSIONS',8),
 (1101,'prova61_WAR_prova61portlet','VIEW',1),
 (1102,'prova61_WAR_prova61portlet','ADD_TO_PAGE',2),
 (1103,'prova61_WAR_prova61portlet','CONFIGURATION',4),
 (1104,'prova61_WAR_prova61portlet','PERMISSIONS',8),
 (1201,'cisiummobiletraffico_WAR_CisiumMobileTrafficoportlet','VIEW',1),
 (1202,'cisiummobiletraffico_WAR_CisiumMobileTrafficoportlet','ADD_TO_PAGE',2),
 (1203,'cisiummobiletraffico_WAR_CisiumMobileTrafficoportlet','CONFIGURATION',4),
 (1204,'cisiummobiletraffico_WAR_CisiumMobileTrafficoportlet','PERMISSIONS',8),
 (1301,'cisiummobile_WAR_CisiumMobileAppportlet','VIEW',1),
 (1302,'cisiummobile_WAR_CisiumMobileAppportlet','ADD_TO_PAGE',2),
 (1303,'cisiummobile_WAR_CisiumMobileAppportlet','CONFIGURATION',4),
 (1304,'cisiummobile_WAR_CisiumMobileAppportlet','PERMISSIONS',8),
 (1401,'traffico_WAR_SMARTiPTrafficoportlet','VIEW',1),
 (1402,'traffico_WAR_SMARTiPTrafficoportlet','ADD_TO_PAGE',2),
 (1403,'traffico_WAR_SMARTiPTrafficoportlet','CONFIGURATION',4),
 (1404,'traffico_WAR_SMARTiPTrafficoportlet','PERMISSIONS',8),
 (1501,'parcheggio_WAR_SMARTiPParcheggioportlet','VIEW',1),
 (1502,'parcheggio_WAR_SMARTiPParcheggioportlet','ADD_TO_PAGE',2),
 (1503,'parcheggio_WAR_SMARTiPParcheggioportlet','CONFIGURATION',4),
 (1504,'parcheggio_WAR_SMARTiPParcheggioportlet','PERMISSIONS',8),
 (1601,'prova_WAR_provaportlet','VIEW',1),
 (1602,'prova_WAR_provaportlet','ADD_TO_PAGE',2),
 (1603,'prova_WAR_provaportlet','CONFIGURATION',4),
 (1604,'prova_WAR_provaportlet','PERMISSIONS',8),
 (1701,'traffico_WAR_SMARTiPCisiumTrafficoportlet','VIEW',1),
 (1702,'traffico_WAR_SMARTiPCisiumTrafficoportlet','ADD_TO_PAGE',2),
 (1703,'traffico_WAR_SMARTiPCisiumTrafficoportlet','CONFIGURATION',4),
 (1704,'traffico_WAR_SMARTiPCisiumTrafficoportlet','PERMISSIONS',8),
 (1801,'eventi_WAR_SMARTiPCisiumEventiportlet','VIEW',1),
 (1802,'eventi_WAR_SMARTiPCisiumEventiportlet','ADD_TO_PAGE',2),
 (1803,'eventi_WAR_SMARTiPCisiumEventiportlet','CONFIGURATION',4),
 (1804,'eventi_WAR_SMARTiPCisiumEventiportlet','PERMISSIONS',8),
 (1901,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet','VIEW',1),
 (1902,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet','ADD_TO_PAGE',2),
 (1903,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet','CONFIGURATION',4),
 (1904,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet','PERMISSIONS',8),
 (2001,'mobile_WAR_SMARTiPCisiumMobileportlet','VIEW',1),
 (2002,'mobile_WAR_SMARTiPCisiumMobileportlet','ADD_TO_PAGE',2),
 (2003,'mobile_WAR_SMARTiPCisiumMobileportlet','CONFIGURATION',4),
 (2004,'mobile_WAR_SMARTiPCisiumMobileportlet','PERMISSIONS',8),
 (2101,'SMARTiPDynamicData_WAR_SMARTiPDynamicData','VIEW',1),
 (2102,'SMARTiPDynamicData_WAR_SMARTiPDynamicData','ADD_TO_PAGE',2),
 (2103,'SMARTiPDynamicData_WAR_SMARTiPDynamicData','CONFIGURATION',4),
 (2104,'SMARTiPDynamicData_WAR_SMARTiPDynamicData','PERMISSIONS',8),
 (2201,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet','VIEW',1),
 (2202,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet','ADD_TO_PAGE',2),
 (2203,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet','CONFIGURATION',4),
 (2204,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet','PERMISSIONS',8),
 (2205,'parcheggi_WAR_MobileSplitportlet','VIEW',1),
 (2206,'parcheggi_WAR_MobileSplitportlet','ADD_TO_PAGE',2),
 (2207,'parcheggi_WAR_MobileSplitportlet','CONFIGURATION',4),
 (2208,'parcheggi_WAR_MobileSplitportlet','PERMISSIONS',8),
 (2209,'indicazioni_WAR_MobileSplitportlet','VIEW',1),
 (2210,'indicazioni_WAR_MobileSplitportlet','ADD_TO_PAGE',2),
 (2211,'indicazioni_WAR_MobileSplitportlet','CONFIGURATION',4),
 (2212,'indicazioni_WAR_MobileSplitportlet','PERMISSIONS',8),
 (2213,'segnala_WAR_MobileSplitportlet','VIEW',1),
 (2214,'segnala_WAR_MobileSplitportlet','ADD_TO_PAGE',2),
 (2215,'segnala_WAR_MobileSplitportlet','CONFIGURATION',4),
 (2216,'segnala_WAR_MobileSplitportlet','PERMISSIONS',8),
 (2217,'autenticazione_WAR_MobileSplitportlet','VIEW',1),
 (2218,'autenticazione_WAR_MobileSplitportlet','ADD_TO_PAGE',2),
 (2219,'autenticazione_WAR_MobileSplitportlet','CONFIGURATION',4),
 (2220,'autenticazione_WAR_MobileSplitportlet','PERMISSIONS',8),
 (2221,'mobilesplit_WAR_MobileSplitportlet','VIEW',1),
 (2222,'mobilesplit_WAR_MobileSplitportlet','ADD_TO_PAGE',2),
 (2223,'mobilesplit_WAR_MobileSplitportlet','CONFIGURATION',4),
 (2224,'mobilesplit_WAR_MobileSplitportlet','PERMISSIONS',8),
 (2225,'codicisms_WAR_MobileSplitportlet','VIEW',1),
 (2226,'codicisms_WAR_MobileSplitportlet','ADD_TO_PAGE',2),
 (2227,'codicisms_WAR_MobileSplitportlet','CONFIGURATION',4),
 (2228,'codicisms_WAR_MobileSplitportlet','PERMISSIONS',8),
 (2229,'homeguest_WAR_MobileSplitportlet','VIEW',1),
 (2230,'homeguest_WAR_MobileSplitportlet','ADD_TO_PAGE',2),
 (2231,'homeguest_WAR_MobileSplitportlet','CONFIGURATION',4),
 (2232,'homeguest_WAR_MobileSplitportlet','PERMISSIONS',8),
 (2233,'home_WAR_MobileSplitportlet','VIEW',1),
 (2234,'home_WAR_MobileSplitportlet','ADD_TO_PAGE',2),
 (2235,'home_WAR_MobileSplitportlet','CONFIGURATION',4),
 (2236,'home_WAR_MobileSplitportlet','PERMISSIONS',8),
 (2237,'mappa_WAR_MobileSplitportlet','VIEW',1),
 (2238,'mappa_WAR_MobileSplitportlet','ADD_TO_PAGE',2),
 (2239,'mappa_WAR_MobileSplitportlet','CONFIGURATION',4),
 (2240,'mappa_WAR_MobileSplitportlet','PERMISSIONS',8),
 (2241,'homevigile_WAR_MobileSplitportlet','VIEW',1),
 (2242,'homevigile_WAR_MobileSplitportlet','ADD_TO_PAGE',2),
 (2243,'homevigile_WAR_MobileSplitportlet','CONFIGURATION',4),
 (2244,'homevigile_WAR_MobileSplitportlet','PERMISSIONS',8),
 (2245,'stradepulite_WAR_MobileSplitportlet','VIEW',1),
 (2246,'stradepulite_WAR_MobileSplitportlet','ADD_TO_PAGE',2),
 (2247,'stradepulite_WAR_MobileSplitportlet','CONFIGURATION',4),
 (2248,'stradepulite_WAR_MobileSplitportlet','PERMISSIONS',8),
 (2249,'eventi_WAR_MobileSplitportlet','VIEW',1),
 (2250,'eventi_WAR_MobileSplitportlet','ADD_TO_PAGE',2),
 (2251,'eventi_WAR_MobileSplitportlet','CONFIGURATION',4),
 (2252,'eventi_WAR_MobileSplitportlet','PERMISSIONS',8),
 (2301,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet','VIEW',1),
 (2302,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet','ADD_TO_PAGE',2),
 (2303,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet','CONFIGURATION',4),
 (2304,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet','PERMISSIONS',8),
 (2401,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681','VIEW',1),
 (2402,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681','ADD_TO_PAGE',2),
 (2403,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681','CONFIGURATION',4),
 (2404,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681','PERMISSIONS',8),
 (2501,'fermatebus_WAR_SMARTiPCisiumFermateBusportlet','VIEW',1),
 (2502,'fermatebus_WAR_SMARTiPCisiumFermateBusportlet','ADD_TO_PAGE',2),
 (2503,'fermatebus_WAR_SMARTiPCisiumFermateBusportlet','CONFIGURATION',4),
 (2504,'fermatebus_WAR_SMARTiPCisiumFermateBusportlet','PERMISSIONS',8);
/*!40000 ALTER TABLE `ResourceAction` ENABLE KEYS */;


--
-- Definition of table `ResourceBlock`
--

DROP TABLE IF EXISTS `ResourceBlock`;
CREATE TABLE `ResourceBlock` (
  `resourceBlockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `permissionsHash` varchar(75) DEFAULT NULL,
  `referenceCount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ResourceBlock`
--

/*!40000 ALTER TABLE `ResourceBlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceBlock` ENABLE KEYS */;


--
-- Definition of table `ResourceBlockPermission`
--

DROP TABLE IF EXISTS `ResourceBlockPermission`;
CREATE TABLE `ResourceBlockPermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockPermissionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ResourceBlockPermission`
--

/*!40000 ALTER TABLE `ResourceBlockPermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceBlockPermission` ENABLE KEYS */;


--
-- Definition of table `ResourceCode`
--

DROP TABLE IF EXISTS `ResourceCode`;
CREATE TABLE `ResourceCode` (
  `codeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`codeId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ResourceCode`
--

/*!40000 ALTER TABLE `ResourceCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceCode` ENABLE KEYS */;


--
-- Definition of table `ResourcePermission`
--

DROP TABLE IF EXISTS `ResourcePermission`;
CREATE TABLE `ResourcePermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourcePermissionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ResourcePermission`
--

/*!40000 ALTER TABLE `ResourcePermission` DISABLE KEYS */;
INSERT INTO `ResourcePermission` (`resourcePermissionId`,`companyId`,`name`,`scope`,`primKey`,`roleId`,`ownerId`,`actionIds`) VALUES 
 (1,10154,'153',1,'10154',10165,0,3),
 (2,10154,'158',1,'10154',10165,0,3),
 (3,10154,'com.liferay.portal.model.Layout',4,'10175',10163,10158,1023),
 (4,10154,'com.liferay.portal.model.Layout',4,'10175',10170,0,3),
 (5,10154,'com.liferay.portal.model.Layout',4,'10175',10162,0,1),
 (6,10154,'com.liferay.portal.model.Layout',4,'10183',10163,10158,1023),
 (7,10154,'com.liferay.portal.model.Layout',4,'10183',10170,0,3),
 (8,10154,'com.liferay.portal.model.Layout',4,'10183',10162,0,1),
 (9,10154,'90',1,'10154',10165,0,8192),
 (10,10154,'98',2,'10189',10165,0,1),
 (11,10154,'66',2,'10189',10165,0,1),
 (12,10154,'180',2,'10189',10165,0,1),
 (13,10154,'27',2,'10189',10165,0,1),
 (14,10154,'152',2,'10189',10165,0,1),
 (15,10154,'134',2,'10189',10165,0,1),
 (16,10154,'130',2,'10189',10165,0,1),
 (17,10154,'122',2,'10189',10165,0,1),
 (18,10154,'36',2,'10189',10165,0,1),
 (19,10154,'26',2,'10189',10165,0,1),
 (20,10154,'104',2,'10189',10165,0,1),
 (21,10154,'175',2,'10189',10165,0,1),
 (22,10154,'153',2,'10189',10165,0,1),
 (23,10154,'64',2,'10189',10165,0,1),
 (24,10154,'129',2,'10189',10165,0,1),
 (25,10154,'179',2,'10189',10165,0,1),
 (26,10154,'173',2,'10189',10165,0,1),
 (27,10154,'100',2,'10189',10165,0,1),
 (28,10154,'19',2,'10189',10165,0,1),
 (29,10154,'157',2,'10189',10165,0,1),
 (30,10154,'128',2,'10189',10165,0,1),
 (31,10154,'181',2,'10189',10165,0,1),
 (32,10154,'154',2,'10189',10165,0,1),
 (33,10154,'148',2,'10189',10165,0,1),
 (34,10154,'11',2,'10189',10165,0,1),
 (35,10154,'29',2,'10189',10165,0,1),
 (36,10154,'158',2,'10189',10165,0,1),
 (37,10154,'178',2,'10189',10165,0,1),
 (38,10154,'8',2,'10189',10165,0,1),
 (39,10154,'58',2,'10189',10165,0,1),
 (40,10154,'71',2,'10189',10165,0,1),
 (41,10154,'97',2,'10189',10165,0,1),
 (42,10154,'39',2,'10189',10165,0,1),
 (43,10154,'177',2,'10189',10165,0,1),
 (44,10154,'85',2,'10189',10165,0,1),
 (45,10154,'118',2,'10189',10165,0,1),
 (46,10154,'107',2,'10189',10165,0,1),
 (47,10154,'30',2,'10189',10165,0,1),
 (48,10154,'147',2,'10189',10165,0,1),
 (49,10154,'48',2,'10189',10165,0,1),
 (50,10154,'125',2,'10189',10165,0,1),
 (51,10154,'161',2,'10189',10165,0,1),
 (52,10154,'146',2,'10189',10165,0,1),
 (53,10154,'62',2,'10189',10165,0,1),
 (54,10154,'162',2,'10189',10165,0,1),
 (55,10154,'176',2,'10189',10165,0,1),
 (56,10154,'108',2,'10189',10165,0,1),
 (57,10154,'84',2,'10189',10165,0,1),
 (58,10154,'101',2,'10189',10165,0,1),
 (59,10154,'121',2,'10189',10165,0,1),
 (60,10154,'143',2,'10189',10165,0,1),
 (61,10154,'77',2,'10189',10165,0,1),
 (62,10154,'167',2,'10189',10165,0,1),
 (63,10154,'115',2,'10189',10165,0,1),
 (64,10154,'56',2,'10189',10165,0,1),
 (65,10154,'16',2,'10189',10165,0,1),
 (66,10154,'111',2,'10189',10165,0,1),
 (67,10154,'3',2,'10189',10165,0,1),
 (68,10154,'23',2,'10189',10165,0,1),
 (69,10154,'20',2,'10189',10165,0,1),
 (70,10154,'83',2,'10189',10165,0,1),
 (71,10154,'164',2,'10189',10165,0,1),
 (72,10154,'99',2,'10189',10165,0,1),
 (73,10154,'70',2,'10189',10165,0,1),
 (74,10154,'141',2,'10189',10165,0,1),
 (75,10154,'9',2,'10189',10165,0,1),
 (76,10154,'28',2,'10189',10165,0,1),
 (77,10154,'137',2,'10189',10165,0,1),
 (78,10154,'47',2,'10189',10165,0,1),
 (79,10154,'15',2,'10189',10165,0,1),
 (80,10154,'116',2,'10189',10165,0,1),
 (81,10154,'82',2,'10189',10165,0,1),
 (82,10154,'151',2,'10189',10165,0,1),
 (83,10154,'54',2,'10189',10165,0,1),
 (84,10154,'34',2,'10189',10165,0,1),
 (85,10154,'169',2,'10189',10165,0,1),
 (86,10154,'132',2,'10189',10165,0,1),
 (87,10154,'61',2,'10189',10165,0,1),
 (88,10154,'73',2,'10189',10165,0,1),
 (89,10154,'31',2,'10189',10165,0,1),
 (90,10154,'136',2,'10189',10165,0,1),
 (91,10154,'50',2,'10189',10165,0,1),
 (92,10154,'127',2,'10189',10165,0,1),
 (93,10154,'25',2,'10189',10165,0,1),
 (94,10154,'166',2,'10189',10165,0,1),
 (95,10154,'33',2,'10189',10165,0,1),
 (96,10154,'150',2,'10189',10165,0,1),
 (97,10154,'114',2,'10189',10165,0,1),
 (98,10154,'149',2,'10189',10165,0,1),
 (99,10154,'67',2,'10189',10165,0,1),
 (100,10154,'110',2,'10189',10165,0,1),
 (101,10154,'59',2,'10189',10165,0,1),
 (102,10154,'135',2,'10189',10165,0,1),
 (103,10154,'131',2,'10189',10165,0,1),
 (104,10154,'102',2,'10189',10165,0,1),
 (105,10154,'com.liferay.portal.model.Layout',2,'10189',10165,0,1),
 (106,10154,'com.liferay.portlet.blogs',2,'10189',10165,0,14),
 (107,10154,'com.liferay.portlet.calendar',2,'10189',10165,0,14),
 (108,10154,'98',2,'10189',10164,0,2),
 (109,10154,'152',2,'10189',10164,0,2),
 (110,10154,'179',2,'10189',10164,0,4),
 (111,10154,'173',2,'10189',10164,0,4),
 (112,10154,'154',2,'10189',10164,0,2),
 (113,10154,'178',2,'10189',10164,0,4),
 (114,10154,'8',2,'10189',10164,0,2),
 (115,10154,'147',2,'10189',10164,0,2),
 (116,10154,'161',2,'10189',10164,0,2),
 (117,10154,'162',2,'10189',10164,0,2),
 (118,10154,'167',2,'10189',10164,0,2),
 (119,10154,'20',2,'10189',10164,0,2),
 (120,10154,'99',2,'10189',10164,0,2),
 (121,10154,'28',2,'10189',10164,0,2),
 (122,10154,'15',2,'10189',10164,0,2),
 (123,10154,'25',2,'10189',10164,0,2),
 (124,10154,'com.liferay.portal.model.Group',2,'10189',10164,0,4096),
 (125,10154,'com.liferay.portlet.asset',2,'10189',10164,0,30),
 (126,10154,'com.liferay.portlet.blogs',2,'10189',10164,0,14),
 (127,10154,'com.liferay.portlet.bookmarks',2,'10189',10164,0,15),
 (128,10154,'com.liferay.portlet.calendar',2,'10189',10164,0,14),
 (129,10154,'com.liferay.portlet.documentlibrary',2,'10189',10164,0,511),
 (130,10154,'com.liferay.portlet.messageboards',2,'10189',10164,0,2047),
 (131,10154,'com.liferay.portlet.polls',2,'10189',10164,0,6),
 (132,10154,'com.liferay.portlet.wiki',2,'10189',10164,0,6),
 (133,10154,'com.liferay.portal.model.User',4,'10196',10163,10196,31),
 (134,10154,'98',1,'10154',10164,0,4),
 (135,10154,'98',1,'10154',10165,0,4),
 (136,10154,'66',1,'10154',10164,0,2),
 (137,10154,'66',1,'10154',10165,0,2),
 (138,10154,'180',1,'10154',10162,0,2),
 (139,10154,'180',1,'10154',10164,0,2),
 (140,10154,'180',1,'10154',10165,0,2),
 (141,10154,'27',1,'10154',10164,0,2),
 (142,10154,'27',1,'10154',10165,0,2),
 (143,10154,'122',1,'10154',10162,0,2),
 (144,10154,'122',1,'10154',10164,0,2),
 (145,10154,'122',1,'10154',10165,0,2),
 (146,10154,'36',1,'10154',10164,0,2),
 (147,10154,'36',1,'10154',10165,0,2),
 (148,10154,'26',1,'10154',10164,0,2),
 (149,10154,'26',1,'10154',10165,0,2),
 (150,10154,'104',1,'10154',10161,0,2),
 (151,10154,'175',1,'10154',10162,0,2),
 (152,10154,'175',1,'10154',10164,0,2),
 (153,10154,'175',1,'10154',10165,0,2),
 (154,10154,'64',1,'10154',10162,0,2),
 (155,10154,'64',1,'10154',10164,0,2),
 (156,10154,'64',1,'10154',10165,0,2),
 (157,10154,'179',1,'10154',10161,0,2),
 (158,10154,'173',1,'10154',10162,0,2),
 (159,10154,'173',1,'10154',10164,0,2),
 (160,10154,'173',1,'10154',10165,0,2),
 (161,10154,'100',1,'10154',10164,0,2),
 (162,10154,'100',1,'10154',10165,0,2),
 (163,10154,'19',1,'10154',10164,0,2),
 (164,10154,'19',1,'10154',10165,0,2),
 (165,10154,'181',1,'10154',10162,0,2),
 (166,10154,'181',1,'10154',10164,0,2),
 (167,10154,'181',1,'10154',10165,0,2),
 (168,10154,'148',1,'10154',10162,0,2),
 (169,10154,'148',1,'10154',10164,0,2),
 (170,10154,'148',1,'10154',10165,0,2),
 (171,10154,'11',1,'10154',10164,0,2),
 (172,10154,'11',1,'10154',10165,0,2),
 (173,10154,'29',1,'10154',10164,0,2),
 (174,10154,'29',1,'10154',10165,0,2),
 (175,10154,'178',1,'10154',10164,0,2),
 (176,10154,'178',1,'10154',10165,0,2),
 (177,10154,'8',1,'10154',10164,0,4),
 (178,10154,'8',1,'10154',10165,0,4),
 (179,10154,'58',1,'10154',10162,0,2),
 (180,10154,'58',1,'10154',10164,0,2),
 (181,10154,'58',1,'10154',10165,0,2),
 (182,10154,'71',1,'10154',10162,0,2),
 (183,10154,'71',1,'10154',10164,0,2),
 (184,10154,'71',1,'10154',10165,0,2),
 (185,10154,'97',1,'10154',10164,0,2),
 (186,10154,'97',1,'10154',10165,0,2),
 (187,10154,'39',1,'10154',10164,0,2),
 (188,10154,'39',1,'10154',10165,0,2),
 (189,10154,'177',1,'10154',10164,0,4),
 (190,10154,'177',1,'10154',10165,0,4),
 (191,10154,'85',1,'10154',10162,0,2),
 (192,10154,'85',1,'10154',10164,0,2),
 (193,10154,'85',1,'10154',10165,0,2),
 (194,10154,'118',1,'10154',10162,0,2),
 (195,10154,'118',1,'10154',10164,0,2),
 (196,10154,'118',1,'10154',10165,0,2),
 (197,10154,'107',1,'10154',10164,0,2),
 (198,10154,'107',1,'10154',10165,0,2),
 (199,10154,'30',1,'10154',10164,0,2),
 (200,10154,'30',1,'10154',10165,0,2),
 (201,10154,'48',1,'10154',10164,0,2),
 (202,10154,'48',1,'10154',10165,0,2),
 (203,10154,'62',1,'10154',10164,0,2),
 (204,10154,'62',1,'10154',10165,0,2),
 (205,10154,'176',1,'10154',10161,0,2),
 (206,10154,'108',1,'10154',10164,0,2),
 (207,10154,'108',1,'10154',10165,0,2),
 (208,10154,'84',1,'10154',10164,0,4),
 (209,10154,'84',1,'10154',10165,0,4),
 (210,10154,'101',1,'10154',10162,0,2),
 (211,10154,'101',1,'10154',10164,0,2),
 (212,10154,'101',1,'10154',10165,0,2),
 (213,10154,'121',1,'10154',10162,0,2),
 (214,10154,'121',1,'10154',10164,0,2),
 (215,10154,'121',1,'10154',10165,0,2),
 (216,10154,'143',1,'10154',10162,0,2),
 (217,10154,'143',1,'10154',10164,0,2),
 (218,10154,'143',1,'10154',10165,0,2),
 (219,10154,'77',1,'10154',10162,0,2),
 (220,10154,'77',1,'10154',10164,0,2),
 (221,10154,'77',1,'10154',10165,0,2),
 (222,10154,'167',1,'10154',10164,0,4),
 (223,10154,'167',1,'10154',10165,0,4),
 (224,10154,'115',1,'10154',10162,0,2),
 (225,10154,'115',1,'10154',10164,0,2),
 (226,10154,'115',1,'10154',10165,0,2),
 (227,10154,'56',1,'10154',10162,0,2),
 (228,10154,'56',1,'10154',10164,0,2),
 (229,10154,'56',1,'10154',10165,0,2),
 (230,10154,'16',1,'10154',10164,0,8),
 (231,10154,'16',1,'10154',10165,0,8),
 (232,10154,'111',1,'10154',10161,0,2),
 (233,10154,'3',1,'10154',10162,0,2),
 (234,10154,'3',1,'10154',10164,0,2),
 (235,10154,'3',1,'10154',10165,0,2),
 (236,10154,'23',1,'10154',10164,0,2),
 (237,10154,'23',1,'10154',10165,0,2),
 (238,10154,'20',1,'10154',10162,0,4),
 (239,10154,'20',1,'10154',10164,0,4),
 (240,10154,'20',1,'10154',10165,0,4),
 (241,10154,'83',1,'10154',10164,0,4),
 (242,10154,'83',1,'10154',10165,0,4),
 (243,10154,'164',1,'10154',10162,0,2),
 (244,10154,'164',1,'10154',10164,0,2),
 (245,10154,'164',1,'10154',10165,0,2),
 (246,10154,'70',1,'10154',10164,0,2),
 (247,10154,'70',1,'10154',10165,0,2),
 (248,10154,'141',1,'10154',10162,0,2),
 (249,10154,'141',1,'10154',10164,0,2),
 (250,10154,'141',1,'10154',10165,0,2),
 (251,10154,'9',1,'10154',10161,0,2),
 (252,10154,'28',1,'10154',10164,0,4),
 (253,10154,'28',1,'10154',10165,0,4),
 (254,10154,'47',1,'10154',10162,0,2),
 (255,10154,'47',1,'10154',10164,0,2),
 (256,10154,'47',1,'10154',10165,0,2),
 (257,10154,'15',1,'10154',10164,0,4),
 (258,10154,'15',1,'10154',10165,0,4),
 (259,10154,'116',1,'10154',10162,0,2),
 (260,10154,'116',1,'10154',10164,0,2),
 (261,10154,'116',1,'10154',10165,0,2),
 (262,10154,'82',1,'10154',10162,0,2),
 (263,10154,'82',1,'10154',10164,0,2),
 (264,10154,'82',1,'10154',10165,0,2),
 (265,10154,'54',1,'10154',10164,0,2),
 (266,10154,'54',1,'10154',10165,0,2),
 (267,10154,'34',1,'10154',10164,0,2),
 (268,10154,'34',1,'10154',10165,0,2),
 (269,10154,'169',1,'10154',10164,0,2),
 (270,10154,'169',1,'10154',10165,0,2),
 (271,10154,'61',1,'10154',10164,0,2),
 (272,10154,'61',1,'10154',10165,0,2),
 (273,10154,'73',1,'10154',10162,0,2),
 (274,10154,'73',1,'10154',10164,0,2),
 (275,10154,'73',1,'10154',10165,0,2),
 (276,10154,'31',1,'10154',10162,0,2),
 (277,10154,'31',1,'10154',10164,0,2),
 (278,10154,'31',1,'10154',10165,0,2),
 (279,10154,'50',1,'10154',10162,0,2),
 (280,10154,'50',1,'10154',10164,0,2),
 (281,10154,'50',1,'10154',10165,0,2),
 (282,10154,'127',1,'10154',10161,0,2),
 (283,10154,'166',1,'10154',10164,0,4),
 (284,10154,'166',1,'10154',10165,0,4),
 (285,10154,'33',1,'10154',10162,0,2),
 (286,10154,'33',1,'10154',10164,0,2),
 (287,10154,'33',1,'10154',10165,0,2),
 (288,10154,'114',1,'10154',10162,0,2),
 (289,10154,'114',1,'10154',10164,0,2),
 (290,10154,'114',1,'10154',10165,0,2),
 (291,10154,'67',1,'10154',10164,0,2),
 (292,10154,'67',1,'10154',10165,0,2),
 (293,10154,'110',1,'10154',10164,0,2),
 (294,10154,'110',1,'10154',10165,0,2),
 (295,10154,'59',1,'10154',10164,0,2),
 (296,10154,'59',1,'10154',10165,0,2),
 (297,10154,'102',1,'10154',10162,0,2),
 (298,10154,'102',1,'10154',10164,0,2),
 (299,10154,'102',1,'10154',10165,0,2),
 (300,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10297',10163,10158,15),
 (301,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10298',10163,10158,15),
 (302,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10299',10163,10158,15),
 (303,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10301',10163,10158,15),
 (304,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10300',10163,10158,15),
 (305,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10303',10163,10158,15),
 (306,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10302',10163,10158,15),
 (307,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10305',10163,10158,15),
 (308,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10304',10163,10158,15),
 (309,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10307',10163,10158,15),
 (310,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10306',10163,10158,15),
 (311,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10308',10163,10158,15),
 (312,10154,'com.liferay.portal.model.LayoutPrototype',4,'10309',10163,10158,15),
 (313,10154,'com.liferay.portal.model.Layout',4,'10313',10163,10158,1023),
 (314,10154,'com.liferay.portal.model.Layout',4,'10313',10170,0,3),
 (315,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10316',10163,10158,15),
 (316,10154,'33',4,'10313_LAYOUT_33',10163,0,15),
 (317,10154,'33',4,'10313_LAYOUT_33',10170,0,1),
 (318,10154,'33',4,'10313_LAYOUT_33',10162,0,1),
 (319,10154,'com.liferay.portlet.blogs',4,'10310',10163,0,14),
 (320,10154,'148',4,'10313_LAYOUT_148_INSTANCE_v6IJpkUH38sj',10163,0,15),
 (321,10154,'148',4,'10313_LAYOUT_148_INSTANCE_v6IJpkUH38sj',10170,0,1),
 (322,10154,'148',4,'10313_LAYOUT_148_INSTANCE_v6IJpkUH38sj',10162,0,1),
 (323,10154,'114',4,'10313_LAYOUT_114',10163,0,15),
 (324,10154,'114',4,'10313_LAYOUT_114',10170,0,1),
 (325,10154,'114',4,'10313_LAYOUT_114',10162,0,1),
 (326,10154,'com.liferay.portal.model.LayoutPrototype',4,'10319',10163,10158,15),
 (327,10154,'com.liferay.portal.model.Layout',4,'10323',10163,10158,1023),
 (328,10154,'com.liferay.portal.model.Layout',4,'10323',10170,0,3),
 (329,10154,'141',4,'10323_LAYOUT_141_INSTANCE_BC93W3TBCxTK',10163,0,15),
 (330,10154,'141',4,'10323_LAYOUT_141_INSTANCE_BC93W3TBCxTK',10170,0,1),
 (331,10154,'141',4,'10323_LAYOUT_141_INSTANCE_BC93W3TBCxTK',10162,0,1),
 (332,10154,'122',4,'10323_LAYOUT_122_INSTANCE_vNhr64gN5kNk',10163,0,15),
 (333,10154,'122',4,'10323_LAYOUT_122_INSTANCE_vNhr64gN5kNk',10170,0,1),
 (334,10154,'122',4,'10323_LAYOUT_122_INSTANCE_vNhr64gN5kNk',10162,0,1),
 (335,10154,'3',4,'10323_LAYOUT_3',10163,0,15),
 (336,10154,'3',4,'10323_LAYOUT_3',10170,0,1),
 (337,10154,'3',4,'10323_LAYOUT_3',10162,0,1),
 (338,10154,'101',4,'10323_LAYOUT_101_INSTANCE_kq5WhMdd8eJ9',10163,0,15),
 (339,10154,'101',4,'10323_LAYOUT_101_INSTANCE_kq5WhMdd8eJ9',10170,0,1),
 (340,10154,'101',4,'10323_LAYOUT_101_INSTANCE_kq5WhMdd8eJ9',10162,0,1),
 (341,10154,'com.liferay.portal.model.LayoutPrototype',4,'10328',10163,10158,15),
 (342,10154,'com.liferay.portal.model.Layout',4,'10332',10163,10158,1023),
 (343,10154,'com.liferay.portal.model.Layout',4,'10332',10170,0,3),
 (344,10154,'36',4,'10332_LAYOUT_36',10163,0,15),
 (345,10154,'36',4,'10332_LAYOUT_36',10170,0,1),
 (346,10154,'36',4,'10332_LAYOUT_36',10162,0,1),
 (347,10154,'com.liferay.portlet.wiki',4,'10329',10163,0,6),
 (348,10154,'122',4,'10332_LAYOUT_122_INSTANCE_oJDCqAmc90Wj',10163,0,15),
 (349,10154,'122',4,'10332_LAYOUT_122_INSTANCE_oJDCqAmc90Wj',10170,0,1),
 (350,10154,'122',4,'10332_LAYOUT_122_INSTANCE_oJDCqAmc90Wj',10162,0,1),
 (351,10154,'141',4,'10332_LAYOUT_141_INSTANCE_DmR5YkJE4adJ',10163,0,15),
 (352,10154,'141',4,'10332_LAYOUT_141_INSTANCE_DmR5YkJE4adJ',10170,0,1),
 (353,10154,'141',4,'10332_LAYOUT_141_INSTANCE_DmR5YkJE4adJ',10162,0,1),
 (354,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10337',10163,10158,15),
 (358,10154,'com.liferay.portal.model.Layout',4,'10346',10163,10158,1023),
 (359,10154,'com.liferay.portal.model.Layout',4,'10346',10170,0,3),
 (360,10154,'com.liferay.portal.model.Layout',4,'10346',10162,0,1),
 (361,10154,'com.liferay.portal.model.Layout',4,'10352',10163,10158,1023),
 (362,10154,'com.liferay.portal.model.Layout',4,'10352',10170,0,3),
 (363,10154,'com.liferay.portal.model.Layout',4,'10352',10162,0,1),
 (364,10154,'com.liferay.portal.model.Layout',4,'10358',10163,10158,1023),
 (365,10154,'com.liferay.portal.model.Layout',4,'10358',10170,0,3),
 (366,10154,'com.liferay.portal.model.Layout',4,'10358',10162,0,1),
 (367,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10363',10163,10158,15),
 (371,10154,'com.liferay.portal.model.Layout',4,'10372',10163,10158,1023),
 (372,10154,'com.liferay.portal.model.Layout',4,'10372',10170,0,3),
 (373,10154,'com.liferay.portal.model.Layout',4,'10372',10162,0,1),
 (374,10154,'com.liferay.portal.model.Layout',4,'10380',10163,10158,1023),
 (375,10154,'com.liferay.portal.model.Layout',4,'10380',10170,0,3),
 (376,10154,'com.liferay.portal.model.Layout',4,'10380',10162,0,1),
 (377,10154,'com.liferay.portal.model.Layout',4,'10386',10163,10158,1023),
 (378,10154,'com.liferay.portal.model.Layout',4,'10386',10170,0,3),
 (379,10154,'com.liferay.portal.model.Layout',4,'10386',10162,0,1),
 (380,10154,'com.liferay.portal.model.Layout',4,'10392',10163,10158,1023),
 (381,10154,'com.liferay.portal.model.Layout',4,'10392',10170,0,3),
 (382,10154,'com.liferay.portal.model.Layout',4,'10392',10162,0,1),
 (383,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10399',10163,10158,15),
 (384,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10400',10163,10158,15),
 (385,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10401',10163,10158,15),
 (386,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10402',10163,10158,15),
 (387,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10403',10163,10158,15),
 (388,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10404',10163,10158,15),
 (389,10154,'1_WAR_googlemapsportlet',1,'10154',10161,0,2),
 (390,10154,'1_WAR_googlemapsportlet',1,'10154',10162,0,2),
 (391,10154,'1_WAR_googlemapsportlet',1,'10154',10164,0,2),
 (392,10154,'1_WAR_googlemapsportlet',1,'10154',10165,0,2),
 (393,10154,'com.liferay.portal.model.Role',4,'10447',10163,10158,127),
 (394,10154,'com.liferay.portal.model.Role',4,'10449',10163,10158,127),
 (395,10154,'com.liferay.portal.model.Role',4,'10451',10163,10158,127),
 (396,10154,'4_WAR_knowledgebaseportlet',1,'10154',10161,0,2),
 (397,10154,'4_WAR_knowledgebaseportlet',1,'10154',10162,0,2),
 (398,10154,'4_WAR_knowledgebaseportlet',1,'10154',10164,0,2),
 (399,10154,'4_WAR_knowledgebaseportlet',1,'10154',10165,0,2),
 (400,10154,'3_WAR_knowledgebaseportlet',1,'10154',10161,0,2),
 (401,10154,'3_WAR_knowledgebaseportlet',1,'10154',10162,0,2),
 (402,10154,'3_WAR_knowledgebaseportlet',1,'10154',10164,0,2),
 (403,10154,'3_WAR_knowledgebaseportlet',1,'10154',10165,0,2),
 (404,10154,'2_WAR_knowledgebaseportlet',1,'10154',10161,0,2),
 (405,10154,'2_WAR_knowledgebaseportlet',1,'10154',10162,0,2),
 (406,10154,'2_WAR_knowledgebaseportlet',1,'10154',10164,0,2),
 (407,10154,'2_WAR_knowledgebaseportlet',1,'10154',10165,0,2),
 (408,10154,'5_WAR_knowledgebaseportlet',1,'10154',10161,0,2),
 (409,10154,'5_WAR_knowledgebaseportlet',1,'10154',10162,0,2),
 (410,10154,'5_WAR_knowledgebaseportlet',1,'10154',10164,0,2),
 (411,10154,'5_WAR_knowledgebaseportlet',1,'10154',10165,0,2),
 (412,10154,'1_WAR_mailportlet',1,'10154',10161,0,2),
 (413,10154,'1_WAR_mailportlet',1,'10154',10162,0,2),
 (414,10154,'1_WAR_mailportlet',1,'10154',10164,0,2),
 (415,10154,'1_WAR_mailportlet',1,'10154',10165,0,2),
 (416,10154,'2_WAR_opensocialportlet',1,'10154',10161,0,2),
 (417,10154,'2_WAR_opensocialportlet',1,'10154',10162,0,2),
 (418,10154,'2_WAR_opensocialportlet',1,'10154',10164,0,2),
 (419,10154,'2_WAR_opensocialportlet',1,'10154',10165,0,2),
 (420,10154,'3_WAR_opensocialportlet',1,'10154',10161,0,2),
 (421,10154,'3_WAR_opensocialportlet',1,'10154',10162,0,2),
 (422,10154,'3_WAR_opensocialportlet',1,'10154',10164,0,2),
 (423,10154,'3_WAR_opensocialportlet',1,'10154',10165,0,2),
 (424,10154,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10492',10163,0,15),
 (425,10154,'6_WAR_socialnetworkingportlet',1,'10154',10161,0,2),
 (426,10154,'6_WAR_socialnetworkingportlet',1,'10154',10162,0,2),
 (427,10154,'6_WAR_socialnetworkingportlet',1,'10154',10164,0,2),
 (428,10154,'6_WAR_socialnetworkingportlet',1,'10154',10165,0,2),
 (429,10154,'1_WAR_socialnetworkingportlet',1,'10154',10161,0,2),
 (430,10154,'1_WAR_socialnetworkingportlet',1,'10154',10162,0,2),
 (431,10154,'1_WAR_socialnetworkingportlet',1,'10154',10164,0,2),
 (432,10154,'1_WAR_socialnetworkingportlet',1,'10154',10165,0,2),
 (433,10154,'3_WAR_socialnetworkingportlet',1,'10154',10161,0,2),
 (434,10154,'3_WAR_socialnetworkingportlet',1,'10154',10162,0,2),
 (435,10154,'3_WAR_socialnetworkingportlet',1,'10154',10164,0,2),
 (436,10154,'3_WAR_socialnetworkingportlet',1,'10154',10165,0,2),
 (437,10154,'7_WAR_socialnetworkingportlet',1,'10154',10161,0,2),
 (438,10154,'7_WAR_socialnetworkingportlet',1,'10154',10162,0,2),
 (439,10154,'7_WAR_socialnetworkingportlet',1,'10154',10164,0,2),
 (440,10154,'7_WAR_socialnetworkingportlet',1,'10154',10165,0,2),
 (441,10154,'8_WAR_socialnetworkingportlet',1,'10154',10161,0,2),
 (442,10154,'8_WAR_socialnetworkingportlet',1,'10154',10162,0,2),
 (443,10154,'8_WAR_socialnetworkingportlet',1,'10154',10164,0,2),
 (444,10154,'8_WAR_socialnetworkingportlet',1,'10154',10165,0,2),
 (445,10154,'4_WAR_socialnetworkingportlet',1,'10154',10161,0,2),
 (446,10154,'4_WAR_socialnetworkingportlet',1,'10154',10162,0,2),
 (447,10154,'4_WAR_socialnetworkingportlet',1,'10154',10164,0,2),
 (448,10154,'4_WAR_socialnetworkingportlet',1,'10154',10165,0,2),
 (449,10154,'2_WAR_socialnetworkingportlet',1,'10154',10161,0,2),
 (450,10154,'2_WAR_socialnetworkingportlet',1,'10154',10162,0,2),
 (451,10154,'2_WAR_socialnetworkingportlet',1,'10154',10164,0,2),
 (452,10154,'2_WAR_socialnetworkingportlet',1,'10154',10165,0,2),
 (453,10154,'5_WAR_socialnetworkingportlet',1,'10154',10161,0,2),
 (454,10154,'5_WAR_socialnetworkingportlet',1,'10154',10162,0,2),
 (455,10154,'5_WAR_socialnetworkingportlet',1,'10154',10164,0,2),
 (456,10154,'5_WAR_socialnetworkingportlet',1,'10154',10165,0,2),
 (457,10154,'1_WAR_webformportlet',1,'10154',10161,0,2),
 (458,10154,'1_WAR_webformportlet',1,'10154',10162,0,2),
 (459,10154,'1_WAR_webformportlet',1,'10154',10164,0,2),
 (460,10154,'1_WAR_webformportlet',1,'10154',10165,0,2),
 (461,10154,'1_WAR_wsrpportlet',1,'10154',10161,0,2),
 (462,10154,'2_WAR_wsrpportlet',1,'10154',10161,0,2),
 (463,10154,'2_WAR_wsrpportlet',1,'10154',10162,0,2),
 (464,10154,'2_WAR_wsrpportlet',1,'10154',10164,0,2),
 (465,10154,'2_WAR_wsrpportlet',1,'10154',10165,0,2),
 (469,10154,'145',4,'10183_LAYOUT_145',10163,0,15),
 (470,10154,'145',4,'10183_LAYOUT_145',10170,0,1),
 (471,10154,'145',4,'10183_LAYOUT_145',10162,0,1),
 (472,10154,'103',4,'10183_LAYOUT_103',10163,0,15),
 (473,10154,'103',4,'10183_LAYOUT_103',10170,0,1),
 (474,10154,'103',4,'10183_LAYOUT_103',10162,0,1),
 (478,10154,'1_WAR_chatportlet',4,'10183_LAYOUT_1_WAR_chatportlet',10163,0,15),
 (479,10154,'1_WAR_chatportlet',4,'10183_LAYOUT_1_WAR_chatportlet',10170,0,1),
 (480,10154,'1_WAR_chatportlet',4,'10183_LAYOUT_1_WAR_chatportlet',10162,0,1),
 (481,10154,'165',4,'10175_LAYOUT_165',10163,0,31),
 (482,10154,'165',4,'10175_LAYOUT_165',10170,0,1),
 (483,10154,'165',4,'10175_LAYOUT_165',10162,0,1),
 (484,10154,'88',4,'10175_LAYOUT_88',10163,0,15),
 (485,10154,'88',4,'10175_LAYOUT_88',10170,0,1),
 (486,10154,'88',4,'10175_LAYOUT_88',10162,0,1),
 (487,10154,'160',4,'10175_LAYOUT_160',10163,0,15),
 (488,10154,'160',4,'10175_LAYOUT_160',10170,0,1),
 (489,10154,'160',4,'10175_LAYOUT_160',10162,0,1),
 (490,10154,'145',4,'10175_LAYOUT_145',10163,0,15),
 (491,10154,'145',4,'10175_LAYOUT_145',10170,0,1),
 (492,10154,'145',4,'10175_LAYOUT_145',10162,0,1),
 (493,10154,'130',4,'10175_LAYOUT_130',10163,0,15),
 (494,10154,'130',4,'10175_LAYOUT_130',10170,0,1),
 (495,10154,'130',4,'10175_LAYOUT_130',10162,0,1),
 (496,10154,'49',4,'10175_LAYOUT_49',10163,0,15),
 (497,10154,'49',4,'10175_LAYOUT_49',10170,0,1),
 (498,10154,'49',4,'10175_LAYOUT_49',10162,0,1),
 (499,10154,'87',4,'10183_LAYOUT_87',10163,0,15),
 (500,10154,'87',4,'10183_LAYOUT_87',10170,0,1),
 (501,10154,'87',4,'10183_LAYOUT_87',10162,0,1),
 (601,10154,'cisiumeventi_WAR_CisiumEventiportlet',1,'10154',10161,0,2),
 (602,10154,'cisiumeventi_WAR_CisiumEventiportlet',1,'10154',10162,0,2),
 (603,10154,'cisiumeventi_WAR_CisiumEventiportlet',1,'10154',10164,0,2),
 (604,10154,'cisiumeventi_WAR_CisiumEventiportlet',1,'10154',10165,0,2),
 (605,10154,'cisiumparcheggi_WAR_CisiumParcheggiportlet',1,'10154',10161,0,2),
 (606,10154,'cisiumparcheggi_WAR_CisiumParcheggiportlet',1,'10154',10162,0,2),
 (607,10154,'cisiumparcheggi_WAR_CisiumParcheggiportlet',1,'10154',10164,0,2),
 (608,10154,'cisiumparcheggi_WAR_CisiumParcheggiportlet',1,'10154',10165,0,2),
 (609,10154,'cisiumtraffico_WAR_CisiumTrafficoportlet',1,'10154',10161,0,2),
 (610,10154,'cisiumtraffico_WAR_CisiumTrafficoportlet',1,'10154',10162,0,2),
 (611,10154,'cisiumtraffico_WAR_CisiumTrafficoportlet',1,'10154',10164,0,2),
 (612,10154,'cisiumtraffico_WAR_CisiumTrafficoportlet',1,'10154',10165,0,2),
 (701,10154,'58',4,'10183_LAYOUT_58',10163,0,15),
 (702,10154,'58',4,'10183_LAYOUT_58',10170,0,1),
 (703,10154,'58',4,'10183_LAYOUT_58',10162,0,1),
 (801,10154,'prova61_WAR_prova61portlet',1,'10154',10161,0,2),
 (802,10154,'prova61_WAR_prova61portlet',1,'10154',10162,0,2),
 (803,10154,'prova61_WAR_prova61portlet',1,'10154',10164,0,2),
 (804,10154,'prova61_WAR_prova61portlet',1,'10154',10165,0,2),
 (907,10154,'86',4,'10183_LAYOUT_86',10163,0,15),
 (908,10154,'86',4,'10183_LAYOUT_86',10170,0,1),
 (909,10154,'86',4,'10183_LAYOUT_86',10162,0,1),
 (1001,10154,'156',4,'10175_LAYOUT_156',10163,0,31),
 (1002,10154,'156',4,'10175_LAYOUT_156',10170,0,1),
 (1003,10154,'156',4,'10175_LAYOUT_156',10162,0,1),
 (1101,10154,'178',4,'10175_LAYOUT_178',10163,0,31),
 (1102,10154,'178',4,'10175_LAYOUT_178',10170,0,1),
 (1103,10154,'178',4,'10175_LAYOUT_178',10162,0,1),
 (1107,10154,'com.liferay.portal.model.Layout',4,'11916',10163,10196,1023),
 (1108,10154,'com.liferay.portal.model.Layout',4,'11916',10170,0,3),
 (1109,10154,'com.liferay.portal.model.Layout',4,'11916',10162,0,1),
 (1110,10154,'103',4,'11916_LAYOUT_103',10163,0,15),
 (1111,10154,'103',4,'11916_LAYOUT_103',10170,0,1),
 (1112,10154,'103',4,'11916_LAYOUT_103',10162,0,1),
 (1113,10154,'1_WAR_chatportlet',4,'11916_LAYOUT_1_WAR_chatportlet',10163,0,15),
 (1114,10154,'1_WAR_chatportlet',4,'11916_LAYOUT_1_WAR_chatportlet',10170,0,1),
 (1115,10154,'1_WAR_chatportlet',4,'11916_LAYOUT_1_WAR_chatportlet',10162,0,1),
 (1116,10154,'145',4,'11916_LAYOUT_145',10163,0,15),
 (1117,10154,'145',4,'11916_LAYOUT_145',10170,0,1),
 (1118,10154,'145',4,'11916_LAYOUT_145',10162,0,1),
 (1119,10154,'87',4,'11916_LAYOUT_87',10163,0,15),
 (1120,10154,'87',4,'11916_LAYOUT_87',10170,0,1),
 (1121,10154,'87',4,'11916_LAYOUT_87',10162,0,1),
 (1201,10154,'cisiummobiletraffico_WAR_CisiumMobileTrafficoportlet',1,'10154',10161,0,2),
 (1202,10154,'cisiummobiletraffico_WAR_CisiumMobileTrafficoportlet',1,'10154',10162,0,2),
 (1203,10154,'cisiummobiletraffico_WAR_CisiumMobileTrafficoportlet',1,'10154',10164,0,2),
 (1204,10154,'cisiummobiletraffico_WAR_CisiumMobileTrafficoportlet',1,'10154',10165,0,2),
 (1501,10154,'15',4,'10175_LAYOUT_15',10163,0,31),
 (1502,10154,'15',4,'10175_LAYOUT_15',10170,0,1),
 (1503,10154,'15',4,'10175_LAYOUT_15',10162,0,1),
 (1504,10154,'com.liferay.portlet.journal',4,'10172',10163,0,126),
 (1601,10154,'86',4,'10175_LAYOUT_86',10163,0,15),
 (1602,10154,'86',4,'10175_LAYOUT_86',10170,0,1),
 (1603,10154,'86',4,'10175_LAYOUT_86',10162,0,1),
 (1604,10154,'146',4,'10175_LAYOUT_146',10163,0,15),
 (1605,10154,'146',4,'10175_LAYOUT_146',10170,0,1),
 (1606,10154,'146',4,'10175_LAYOUT_146',10162,0,1),
 (1607,10154,'com.liferay.portal.model.LayoutPrototype',4,'13506',10163,10196,15),
 (1608,10154,'com.liferay.portal.model.Layout',4,'13510',10163,10196,1023),
 (1609,10154,'com.liferay.portal.model.Layout',4,'13510',10170,0,3),
 (1610,10154,'103',4,'13510_LAYOUT_103',10163,0,15),
 (1611,10154,'103',4,'13510_LAYOUT_103',10170,0,1),
 (1612,10154,'103',4,'13510_LAYOUT_103',10162,0,1),
 (1613,10154,'1_WAR_chatportlet',4,'13510_LAYOUT_1_WAR_chatportlet',10163,0,15),
 (1614,10154,'1_WAR_chatportlet',4,'13510_LAYOUT_1_WAR_chatportlet',10170,0,1),
 (1615,10154,'1_WAR_chatportlet',4,'13510_LAYOUT_1_WAR_chatportlet',10162,0,1),
 (1616,10154,'145',4,'13510_LAYOUT_145',10163,0,15),
 (1617,10154,'145',4,'13510_LAYOUT_145',10170,0,1),
 (1618,10154,'145',4,'13510_LAYOUT_145',10162,0,1),
 (1619,10154,'87',4,'13510_LAYOUT_87',10163,0,15),
 (1620,10154,'87',4,'13510_LAYOUT_87',10170,0,1),
 (1621,10154,'87',4,'13510_LAYOUT_87',10162,0,1),
 (1622,10154,'71',4,'13510_LAYOUT_71_INSTANCE_RpI5ahAtmiBi',10163,0,15),
 (1623,10154,'71',4,'13510_LAYOUT_71_INSTANCE_RpI5ahAtmiBi',10170,0,1),
 (1624,10154,'71',4,'13510_LAYOUT_71_INSTANCE_RpI5ahAtmiBi',10162,0,1),
 (1625,10154,'86',4,'13510_LAYOUT_86',10163,0,15),
 (1626,10154,'86',4,'13510_LAYOUT_86',10170,0,1),
 (1627,10154,'86',4,'13510_LAYOUT_86',10162,0,1),
 (1803,10154,'49',4,'10183_LAYOUT_49',10163,0,15),
 (1804,10154,'49',4,'10183_LAYOUT_49',10170,0,1),
 (1805,10154,'49',4,'10183_LAYOUT_49',10162,0,1),
 (1901,10154,'cisiummobile_WAR_CisiumMobileAppportlet',1,'10154',10161,0,2),
 (1902,10154,'cisiummobile_WAR_CisiumMobileAppportlet',1,'10154',10162,0,2),
 (1903,10154,'cisiummobile_WAR_CisiumMobileAppportlet',1,'10154',10164,0,2),
 (1904,10154,'cisiummobile_WAR_CisiumMobileAppportlet',1,'10154',10165,0,2),
 (2001,10154,'traffico_WAR_SMARTiPTrafficoportlet',1,'10154',10161,0,2),
 (2002,10154,'traffico_WAR_SMARTiPTrafficoportlet',1,'10154',10162,0,2),
 (2003,10154,'traffico_WAR_SMARTiPTrafficoportlet',1,'10154',10164,0,2),
 (2004,10154,'traffico_WAR_SMARTiPTrafficoportlet',1,'10154',10165,0,2),
 (2307,10154,'145',4,'13909_LAYOUT_145',10163,0,15),
 (2308,10154,'145',4,'13909_LAYOUT_145',10170,0,1),
 (2309,10154,'145',4,'13909_LAYOUT_145',10162,0,1),
 (2504,10154,'parcheggio_WAR_SMARTiPParcheggioportlet',1,'10154',10161,0,2),
 (2505,10154,'parcheggio_WAR_SMARTiPParcheggioportlet',1,'10154',10162,0,2),
 (2506,10154,'parcheggio_WAR_SMARTiPParcheggioportlet',1,'10154',10164,0,2),
 (2507,10154,'parcheggio_WAR_SMARTiPParcheggioportlet',1,'10154',10165,0,2),
 (2701,10154,'prova_WAR_provaportlet',1,'10154',10161,0,2),
 (2702,10154,'prova_WAR_provaportlet',1,'10154',10162,0,2),
 (2703,10154,'prova_WAR_provaportlet',1,'10154',10164,0,2),
 (2704,10154,'prova_WAR_provaportlet',1,'10154',10165,0,2),
 (2801,10154,'136',4,'10175_LAYOUT_136',10163,0,15),
 (2802,10154,'136',4,'10175_LAYOUT_136',10170,0,1),
 (2803,10154,'136',4,'10175_LAYOUT_136',10162,0,1),
 (2804,10154,'132',4,'10175_LAYOUT_132',10163,0,15),
 (2805,10154,'132',4,'10175_LAYOUT_132',10170,0,1),
 (2806,10154,'132',4,'10175_LAYOUT_132',10162,0,1),
 (2807,10154,'104',4,'10175_LAYOUT_104',10163,0,31),
 (2808,10154,'104',4,'10175_LAYOUT_104',10170,0,1),
 (2809,10154,'104',4,'10175_LAYOUT_104',10162,0,1),
 (3101,10154,'137',4,'10175_LAYOUT_137',10163,0,15),
 (3102,10154,'137',4,'10175_LAYOUT_137',10170,0,1),
 (3103,10154,'137',4,'10175_LAYOUT_137',10162,0,1),
 (3201,10154,'174',4,'10175_LAYOUT_174',10163,0,31),
 (3202,10154,'174',4,'10175_LAYOUT_174',10170,0,1),
 (3203,10154,'174',4,'10175_LAYOUT_174',10162,0,1),
 (3204,10154,'125',4,'10175_LAYOUT_125',10163,0,31),
 (3205,10154,'125',4,'10175_LAYOUT_125',10170,0,1),
 (3206,10154,'125',4,'10175_LAYOUT_125',10162,0,1),
 (3207,10154,'com.liferay.portal.model.User',4,'19604',10163,10196,31),
 (3208,10154,'com.liferay.portal.model.User',4,'19613',10163,10196,31),
 (3209,10154,'128',4,'10175_LAYOUT_128',10163,0,15),
 (3210,10154,'128',4,'10175_LAYOUT_128',10170,0,1),
 (3211,10154,'128',4,'10175_LAYOUT_128',10162,0,1),
 (3212,10154,'134',4,'10175_LAYOUT_134',10163,0,15),
 (3213,10154,'134',4,'10175_LAYOUT_134',10170,0,1),
 (3214,10154,'134',4,'10175_LAYOUT_134',10162,0,1),
 (3301,10154,'traffico_WAR_SMARTiPCisiumTrafficoportlet',1,'10154',10161,0,2),
 (3302,10154,'traffico_WAR_SMARTiPCisiumTrafficoportlet',1,'10154',10162,0,2),
 (3303,10154,'traffico_WAR_SMARTiPCisiumTrafficoportlet',1,'10154',10164,0,2),
 (3304,10154,'traffico_WAR_SMARTiPCisiumTrafficoportlet',1,'10154',10165,0,2),
 (3401,10154,'eventi_WAR_SMARTiPCisiumEventiportlet',1,'10154',10161,0,2),
 (3402,10154,'eventi_WAR_SMARTiPCisiumEventiportlet',1,'10154',10162,0,2),
 (3403,10154,'eventi_WAR_SMARTiPCisiumEventiportlet',1,'10154',10164,0,2),
 (3404,10154,'eventi_WAR_SMARTiPCisiumEventiportlet',1,'10154',10165,0,2),
 (3501,10154,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet',1,'10154',10161,0,2),
 (3502,10154,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet',1,'10154',10162,0,2),
 (3503,10154,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet',1,'10154',10164,0,2),
 (3504,10154,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet',1,'10154',10165,0,2),
 (3601,10154,'mobile_WAR_SMARTiPCisiumMobileportlet',1,'10154',10161,0,2),
 (3602,10154,'mobile_WAR_SMARTiPCisiumMobileportlet',1,'10154',10162,0,2),
 (3603,10154,'mobile_WAR_SMARTiPCisiumMobileportlet',1,'10154',10164,0,2),
 (3604,10154,'mobile_WAR_SMARTiPCisiumMobileportlet',1,'10154',10165,0,2),
 (3608,10154,'140',4,'10175_LAYOUT_140',10163,0,31),
 (3609,10154,'140',4,'10175_LAYOUT_140',10170,0,1),
 (3610,10154,'140',4,'10175_LAYOUT_140',10162,0,1),
 (3611,10154,'mobile_WAR_SMARTiPCisiumMobileportlet',4,'11916_LAYOUT_mobile_WAR_SMARTiPCisiumMobileportlet',10163,0,15),
 (3612,10154,'mobile_WAR_SMARTiPCisiumMobileportlet',4,'11916_LAYOUT_mobile_WAR_SMARTiPCisiumMobileportlet',10170,0,1),
 (3613,10154,'mobile_WAR_SMARTiPCisiumMobileportlet',4,'11916_LAYOUT_mobile_WAR_SMARTiPCisiumMobileportlet',10162,0,1),
 (3701,10154,'58',4,'11916_LAYOUT_58',10163,0,15),
 (3702,10154,'58',4,'11916_LAYOUT_58',10170,0,1),
 (3703,10154,'58',4,'11916_LAYOUT_58',10162,0,1),
 (3801,10154,'SMARTiPDynamicData_WAR_SMARTiPDynamicData',1,'10154',10161,0,2),
 (3802,10154,'SMARTiPDynamicData_WAR_SMARTiPDynamicData',1,'10154',10162,0,2),
 (3803,10154,'SMARTiPDynamicData_WAR_SMARTiPDynamicData',1,'10154',10164,0,2),
 (3804,10154,'SMARTiPDynamicData_WAR_SMARTiPDynamicData',1,'10154',10165,0,2),
 (3901,10154,'2',4,'10175_LAYOUT_2',10163,0,31),
 (3902,10154,'2',4,'10175_LAYOUT_2',10163,0,31),
 (3903,10154,'2',4,'10175_LAYOUT_2',10170,0,1),
 (3904,10154,'2',4,'10175_LAYOUT_2',10170,0,1),
 (3905,10154,'2',4,'10175_LAYOUT_2',10162,0,1),
 (3906,10154,'2',4,'10175_LAYOUT_2',10162,0,1),
 (4001,10154,'173',4,'10175_LAYOUT_173',10163,0,31),
 (4002,10154,'173',4,'10175_LAYOUT_173',10170,0,1),
 (4003,10154,'173',4,'10175_LAYOUT_173',10162,0,1),
 (4004,10154,'com.liferay.portal.model.User',4,'21302',10163,10196,31),
 (4101,10154,'153',4,'10175_LAYOUT_153',10163,0,15),
 (4102,10154,'153',4,'10175_LAYOUT_153',10163,0,15),
 (4103,10154,'153',4,'10175_LAYOUT_153',10170,0,1),
 (4104,10154,'153',4,'10175_LAYOUT_153',10170,0,1),
 (4105,10154,'153',4,'10175_LAYOUT_153',10162,0,1),
 (4201,10154,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',1,'10154',10161,0,2),
 (4202,10154,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',1,'10154',10162,0,2),
 (4203,10154,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',1,'10154',10164,0,2),
 (4204,10154,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',1,'10154',10165,0,2),
 (4205,10154,'parcheggi_WAR_MobileSplitportlet',1,'10154',10161,0,2),
 (4206,10154,'parcheggi_WAR_MobileSplitportlet',1,'10154',10162,0,2),
 (4207,10154,'parcheggi_WAR_MobileSplitportlet',1,'10154',10164,0,2),
 (4208,10154,'parcheggi_WAR_MobileSplitportlet',1,'10154',10165,0,2),
 (4209,10154,'indicazioni_WAR_MobileSplitportlet',1,'10154',10161,0,2),
 (4210,10154,'indicazioni_WAR_MobileSplitportlet',1,'10154',10162,0,2),
 (4211,10154,'indicazioni_WAR_MobileSplitportlet',1,'10154',10164,0,2),
 (4212,10154,'indicazioni_WAR_MobileSplitportlet',1,'10154',10165,0,2),
 (4213,10154,'segnala_WAR_MobileSplitportlet',1,'10154',10161,0,2),
 (4214,10154,'segnala_WAR_MobileSplitportlet',1,'10154',10162,0,2),
 (4215,10154,'segnala_WAR_MobileSplitportlet',1,'10154',10164,0,2),
 (4216,10154,'segnala_WAR_MobileSplitportlet',1,'10154',10165,0,2),
 (4217,10154,'autenticazione_WAR_MobileSplitportlet',1,'10154',10161,0,2),
 (4218,10154,'autenticazione_WAR_MobileSplitportlet',1,'10154',10162,0,2),
 (4219,10154,'autenticazione_WAR_MobileSplitportlet',1,'10154',10164,0,2),
 (4220,10154,'autenticazione_WAR_MobileSplitportlet',1,'10154',10165,0,2),
 (4221,10154,'mobilesplit_WAR_MobileSplitportlet',1,'10154',10161,0,2),
 (4222,10154,'mobilesplit_WAR_MobileSplitportlet',1,'10154',10162,0,2),
 (4223,10154,'mobilesplit_WAR_MobileSplitportlet',1,'10154',10164,0,2),
 (4224,10154,'mobilesplit_WAR_MobileSplitportlet',1,'10154',10165,0,2),
 (4225,10154,'codicisms_WAR_MobileSplitportlet',1,'10154',10161,0,2),
 (4226,10154,'codicisms_WAR_MobileSplitportlet',1,'10154',10162,0,2),
 (4227,10154,'codicisms_WAR_MobileSplitportlet',1,'10154',10164,0,2),
 (4228,10154,'codicisms_WAR_MobileSplitportlet',1,'10154',10165,0,2),
 (4229,10154,'homeguest_WAR_MobileSplitportlet',1,'10154',10161,0,2),
 (4230,10154,'homeguest_WAR_MobileSplitportlet',1,'10154',10162,0,2),
 (4231,10154,'homeguest_WAR_MobileSplitportlet',1,'10154',10164,0,2),
 (4232,10154,'homeguest_WAR_MobileSplitportlet',1,'10154',10165,0,2),
 (4233,10154,'home_WAR_MobileSplitportlet',1,'10154',10161,0,2),
 (4234,10154,'home_WAR_MobileSplitportlet',1,'10154',10162,0,2),
 (4235,10154,'home_WAR_MobileSplitportlet',1,'10154',10164,0,2),
 (4236,10154,'home_WAR_MobileSplitportlet',1,'10154',10165,0,2),
 (4237,10154,'mappa_WAR_MobileSplitportlet',1,'10154',10161,0,2),
 (4238,10154,'mappa_WAR_MobileSplitportlet',1,'10154',10162,0,2),
 (4239,10154,'mappa_WAR_MobileSplitportlet',1,'10154',10164,0,2),
 (4240,10154,'mappa_WAR_MobileSplitportlet',1,'10154',10165,0,2),
 (4241,10154,'homevigile_WAR_MobileSplitportlet',1,'10154',10161,0,2),
 (4242,10154,'homevigile_WAR_MobileSplitportlet',1,'10154',10162,0,2),
 (4243,10154,'homevigile_WAR_MobileSplitportlet',1,'10154',10164,0,2),
 (4244,10154,'homevigile_WAR_MobileSplitportlet',1,'10154',10165,0,2),
 (4245,10154,'stradepulite_WAR_MobileSplitportlet',1,'10154',10161,0,2),
 (4246,10154,'stradepulite_WAR_MobileSplitportlet',1,'10154',10162,0,2),
 (4247,10154,'stradepulite_WAR_MobileSplitportlet',1,'10154',10164,0,2),
 (4248,10154,'stradepulite_WAR_MobileSplitportlet',1,'10154',10165,0,2),
 (4249,10154,'eventi_WAR_MobileSplitportlet',1,'10154',10161,0,2),
 (4250,10154,'eventi_WAR_MobileSplitportlet',1,'10154',10162,0,2),
 (4251,10154,'eventi_WAR_MobileSplitportlet',1,'10154',10164,0,2),
 (4252,10154,'eventi_WAR_MobileSplitportlet',1,'10154',10165,0,2),
 (4301,10154,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',1,'10154',10161,0,2),
 (4302,10154,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',1,'10154',10162,0,2),
 (4303,10154,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',1,'10154',10164,0,2),
 (4304,10154,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',1,'10154',10165,0,2),
 (4317,10154,'com.liferay.portal.model.Layout',4,'21718',10163,10196,1023),
 (4318,10154,'com.liferay.portal.model.Layout',4,'21718',10170,0,3),
 (4319,10154,'com.liferay.portal.model.Layout',4,'21718',10162,0,1),
 (4320,10154,'com.liferay.portal.model.Layout',4,'21723',10163,10196,1023),
 (4321,10154,'com.liferay.portal.model.Layout',4,'21723',10170,0,3),
 (4322,10154,'com.liferay.portal.model.Layout',4,'21723',10162,0,1),
 (4323,10154,'com.liferay.portal.model.Layout',4,'21728',10163,10196,1023),
 (4324,10154,'com.liferay.portal.model.Layout',4,'21728',10170,0,3),
 (4325,10154,'com.liferay.portal.model.Layout',4,'21728',10162,0,1),
 (4326,10154,'com.liferay.portal.model.Layout',4,'21733',10163,10196,1023),
 (4327,10154,'com.liferay.portal.model.Layout',4,'21733',10170,0,3),
 (4328,10154,'com.liferay.portal.model.Layout',4,'21733',10162,0,1),
 (4329,10154,'com.liferay.portal.model.Layout',4,'21738',10163,10196,1023),
 (4330,10154,'com.liferay.portal.model.Layout',4,'21738',10170,0,3),
 (4331,10154,'com.liferay.portal.model.Layout',4,'21738',10162,0,1),
 (4332,10154,'com.liferay.portal.model.Layout',4,'21743',10163,10196,1023),
 (4333,10154,'com.liferay.portal.model.Layout',4,'21743',10170,0,3),
 (4334,10154,'com.liferay.portal.model.Layout',4,'21743',10162,0,1),
 (4335,10154,'103',4,'21718_LAYOUT_103',10163,0,15),
 (4336,10154,'103',4,'21718_LAYOUT_103',10170,0,1),
 (4337,10154,'103',4,'21718_LAYOUT_103',10162,0,1),
 (4338,10154,'145',4,'21718_LAYOUT_145',10163,0,15),
 (4339,10154,'145',4,'21718_LAYOUT_145',10170,0,1),
 (4340,10154,'145',4,'21718_LAYOUT_145',10162,0,1),
 (4341,10154,'87',4,'21718_LAYOUT_87',10163,0,15),
 (4342,10154,'87',4,'21718_LAYOUT_87',10170,0,1),
 (4343,10154,'87',4,'21718_LAYOUT_87',10162,0,1),
 (4344,10154,'homeguest_WAR_MobileSplitportlet',4,'21718_LAYOUT_homeguest_WAR_MobileSplitportlet',10163,0,15),
 (4345,10154,'homeguest_WAR_MobileSplitportlet',4,'21718_LAYOUT_homeguest_WAR_MobileSplitportlet',10170,0,1),
 (4346,10154,'homeguest_WAR_MobileSplitportlet',4,'21718_LAYOUT_homeguest_WAR_MobileSplitportlet',10162,0,1),
 (4347,10154,'103',4,'21723_LAYOUT_103',10163,0,15),
 (4348,10154,'103',4,'21723_LAYOUT_103',10170,0,1),
 (4349,10154,'103',4,'21723_LAYOUT_103',10162,0,1),
 (4350,10154,'145',4,'21723_LAYOUT_145',10163,0,15),
 (4351,10154,'145',4,'21723_LAYOUT_145',10170,0,1),
 (4352,10154,'145',4,'21723_LAYOUT_145',10162,0,1),
 (4353,10154,'87',4,'21723_LAYOUT_87',10163,0,15),
 (4354,10154,'87',4,'21723_LAYOUT_87',10170,0,1),
 (4355,10154,'87',4,'21723_LAYOUT_87',10162,0,1),
 (4356,10154,'mappa_WAR_MobileSplitportlet',4,'21723_LAYOUT_mappa_WAR_MobileSplitportlet',10163,0,15),
 (4357,10154,'mappa_WAR_MobileSplitportlet',4,'21723_LAYOUT_mappa_WAR_MobileSplitportlet',10170,0,1),
 (4358,10154,'mappa_WAR_MobileSplitportlet',4,'21723_LAYOUT_mappa_WAR_MobileSplitportlet',10162,0,1),
 (4359,10154,'103',4,'21728_LAYOUT_103',10163,0,15),
 (4360,10154,'103',4,'21728_LAYOUT_103',10170,0,1),
 (4361,10154,'103',4,'21728_LAYOUT_103',10162,0,1),
 (4362,10154,'145',4,'21728_LAYOUT_145',10163,0,15),
 (4363,10154,'145',4,'21728_LAYOUT_145',10170,0,1),
 (4364,10154,'145',4,'21728_LAYOUT_145',10162,0,1),
 (4365,10154,'87',4,'21728_LAYOUT_87',10163,0,15),
 (4366,10154,'87',4,'21728_LAYOUT_87',10170,0,1),
 (4367,10154,'87',4,'21728_LAYOUT_87',10162,0,1),
 (4368,10154,'parcheggi_WAR_MobileSplitportlet',4,'21728_LAYOUT_parcheggi_WAR_MobileSplitportlet',10163,0,15),
 (4369,10154,'parcheggi_WAR_MobileSplitportlet',4,'21728_LAYOUT_parcheggi_WAR_MobileSplitportlet',10170,0,1),
 (4370,10154,'parcheggi_WAR_MobileSplitportlet',4,'21728_LAYOUT_parcheggi_WAR_MobileSplitportlet',10162,0,1),
 (4371,10154,'103',4,'21733_LAYOUT_103',10163,0,15),
 (4372,10154,'103',4,'21733_LAYOUT_103',10170,0,1),
 (4373,10154,'103',4,'21733_LAYOUT_103',10162,0,1),
 (4374,10154,'145',4,'21733_LAYOUT_145',10163,0,15),
 (4375,10154,'145',4,'21733_LAYOUT_145',10170,0,1),
 (4376,10154,'145',4,'21733_LAYOUT_145',10162,0,1),
 (4377,10154,'87',4,'21733_LAYOUT_87',10163,0,15),
 (4378,10154,'87',4,'21733_LAYOUT_87',10170,0,1),
 (4379,10154,'87',4,'21733_LAYOUT_87',10162,0,1),
 (4380,10154,'eventi_WAR_MobileSplitportlet',4,'21733_LAYOUT_eventi_WAR_MobileSplitportlet',10163,0,15),
 (4381,10154,'eventi_WAR_MobileSplitportlet',4,'21733_LAYOUT_eventi_WAR_MobileSplitportlet',10170,0,1),
 (4382,10154,'eventi_WAR_MobileSplitportlet',4,'21733_LAYOUT_eventi_WAR_MobileSplitportlet',10162,0,1),
 (4383,10154,'103',4,'21738_LAYOUT_103',10163,0,15),
 (4384,10154,'103',4,'21738_LAYOUT_103',10170,0,1),
 (4385,10154,'103',4,'21738_LAYOUT_103',10162,0,1),
 (4386,10154,'145',4,'21738_LAYOUT_145',10163,0,15),
 (4387,10154,'145',4,'21738_LAYOUT_145',10170,0,1),
 (4388,10154,'145',4,'21738_LAYOUT_145',10162,0,1),
 (4389,10154,'87',4,'21738_LAYOUT_87',10163,0,15),
 (4390,10154,'87',4,'21738_LAYOUT_87',10170,0,1),
 (4391,10154,'87',4,'21738_LAYOUT_87',10162,0,1),
 (4392,10154,'codicisms_WAR_MobileSplitportlet',4,'21738_LAYOUT_codicisms_WAR_MobileSplitportlet',10163,0,15),
 (4393,10154,'codicisms_WAR_MobileSplitportlet',4,'21738_LAYOUT_codicisms_WAR_MobileSplitportlet',10170,0,1),
 (4394,10154,'codicisms_WAR_MobileSplitportlet',4,'21738_LAYOUT_codicisms_WAR_MobileSplitportlet',10162,0,1),
 (4395,10154,'103',4,'21743_LAYOUT_103',10163,0,15),
 (4396,10154,'103',4,'21743_LAYOUT_103',10170,0,1),
 (4397,10154,'103',4,'21743_LAYOUT_103',10162,0,1),
 (4398,10154,'145',4,'21743_LAYOUT_145',10163,0,15),
 (4399,10154,'145',4,'21743_LAYOUT_145',10170,0,1),
 (4400,10154,'145',4,'21743_LAYOUT_145',10162,0,1),
 (4401,10154,'87',4,'21743_LAYOUT_87',10163,0,15),
 (4402,10154,'87',4,'21743_LAYOUT_87',10170,0,1),
 (4403,10154,'87',4,'21743_LAYOUT_87',10162,0,1),
 (4404,10154,'stradepulite_WAR_MobileSplitportlet',4,'21743_LAYOUT_stradepulite_WAR_MobileSplitportlet',10163,0,15),
 (4405,10154,'stradepulite_WAR_MobileSplitportlet',4,'21743_LAYOUT_stradepulite_WAR_MobileSplitportlet',10170,0,1),
 (4406,10154,'stradepulite_WAR_MobileSplitportlet',4,'21743_LAYOUT_stradepulite_WAR_MobileSplitportlet',10162,0,1),
 (4407,10154,'com.liferay.portal.model.Layout',4,'21774',10163,10196,1023),
 (4408,10154,'com.liferay.portal.model.Layout',4,'21774',10170,0,3),
 (4409,10154,'com.liferay.portal.model.Layout',4,'21774',10162,0,1),
 (4410,10154,'103',4,'21774_LAYOUT_103',10163,0,15),
 (4411,10154,'103',4,'21774_LAYOUT_103',10170,0,1),
 (4412,10154,'103',4,'21774_LAYOUT_103',10162,0,1),
 (4413,10154,'145',4,'21774_LAYOUT_145',10163,0,15),
 (4414,10154,'145',4,'21774_LAYOUT_145',10170,0,1),
 (4415,10154,'145',4,'21774_LAYOUT_145',10162,0,1),
 (4416,10154,'87',4,'21774_LAYOUT_87',10163,0,15),
 (4417,10154,'87',4,'21774_LAYOUT_87',10170,0,1),
 (4418,10154,'87',4,'21774_LAYOUT_87',10162,0,1),
 (4419,10154,'58',4,'21774_LAYOUT_58',10163,0,15),
 (4420,10154,'58',4,'21774_LAYOUT_58',10170,0,1),
 (4421,10154,'58',4,'21774_LAYOUT_58',10162,0,1),
 (4501,10154,'com.liferay.portal.model.User',4,'21801',10163,21801,31),
 (4601,10154,'com.liferay.portal.model.Layout',4,'21901',10163,10196,1023),
 (4602,10154,'com.liferay.portal.model.Layout',4,'21901',10170,0,3),
 (4603,10154,'com.liferay.portal.model.Layout',4,'21901',10162,0,1),
 (4604,10154,'103',4,'21901_LAYOUT_103',10163,0,15),
 (4605,10154,'103',4,'21901_LAYOUT_103',10170,0,1),
 (4606,10154,'103',4,'21901_LAYOUT_103',10162,0,1),
 (4607,10154,'145',4,'21901_LAYOUT_145',10163,0,15),
 (4608,10154,'145',4,'21901_LAYOUT_145',10170,0,1),
 (4609,10154,'145',4,'21901_LAYOUT_145',10162,0,1),
 (4610,10154,'87',4,'21901_LAYOUT_87',10163,0,15),
 (4611,10154,'87',4,'21901_LAYOUT_87',10170,0,1),
 (4612,10154,'87',4,'21901_LAYOUT_87',10162,0,1),
 (4613,10154,'traffico_WAR_SMARTiPCisiumTrafficoportlet',4,'21901_LAYOUT_traffico_WAR_SMARTiPCisiumTrafficoportlet',10163,0,15),
 (4614,10154,'traffico_WAR_SMARTiPCisiumTrafficoportlet',4,'21901_LAYOUT_traffico_WAR_SMARTiPCisiumTrafficoportlet',10170,0,1),
 (4615,10154,'traffico_WAR_SMARTiPCisiumTrafficoportlet',4,'21901_LAYOUT_traffico_WAR_SMARTiPCisiumTrafficoportlet',10162,0,1),
 (4616,10154,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet',4,'21901_LAYOUT_parcheggi_WAR_SMARTiPCisiumParcheggiportlet',10163,0,15),
 (4617,10154,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet',4,'21901_LAYOUT_parcheggi_WAR_SMARTiPCisiumParcheggiportlet',10170,0,1),
 (4618,10154,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet',4,'21901_LAYOUT_parcheggi_WAR_SMARTiPCisiumParcheggiportlet',10162,0,1),
 (4619,10154,'eventi_WAR_SMARTiPCisiumEventiportlet',4,'21901_LAYOUT_eventi_WAR_SMARTiPCisiumEventiportlet',10163,0,15),
 (4620,10154,'eventi_WAR_SMARTiPCisiumEventiportlet',4,'21901_LAYOUT_eventi_WAR_SMARTiPCisiumEventiportlet',10170,0,1),
 (4621,10154,'eventi_WAR_SMARTiPCisiumEventiportlet',4,'21901_LAYOUT_eventi_WAR_SMARTiPCisiumEventiportlet',10162,0,1),
 (4622,10154,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',4,'21901_LAYOUT_codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',10163,0,15),
 (4623,10154,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',4,'21901_LAYOUT_codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',10170,0,1),
 (4624,10154,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',4,'21901_LAYOUT_codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',10162,0,1),
 (4625,10154,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',4,'21901_LAYOUT_stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',10163,0,15),
 (4626,10154,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',4,'21901_LAYOUT_stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',10170,0,1),
 (4627,10154,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',4,'21901_LAYOUT_stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',10162,0,1),
 (4628,10154,'135',4,'10175_LAYOUT_135',10163,0,15),
 (4629,10154,'135',4,'10175_LAYOUT_135',10170,0,1),
 (4630,10154,'135',4,'10175_LAYOUT_135',10162,0,1),
 (4701,10154,'58',4,'21901_LAYOUT_58',10163,0,15),
 (4702,10154,'58',4,'21901_LAYOUT_58',10170,0,1),
 (4703,10154,'58',4,'21901_LAYOUT_58',10162,0,1),
 (4801,10154,'49',4,'21901_LAYOUT_49',10163,0,15),
 (4802,10154,'49',4,'21901_LAYOUT_49',10170,0,1),
 (4803,10154,'49',4,'21901_LAYOUT_49',10162,0,1),
 (4901,10154,'179',4,'10175_LAYOUT_179',10163,0,31),
 (4902,10154,'179',4,'10175_LAYOUT_179',10170,0,1),
 (4903,10154,'179',4,'10175_LAYOUT_179',10162,0,1),
 (4904,10154,'20',4,'10175_LAYOUT_20',10163,0,31),
 (4905,10154,'20',4,'10175_LAYOUT_20',10170,0,1),
 (4906,10154,'20',4,'10175_LAYOUT_20',10162,0,1),
 (4907,10154,'com.liferay.portlet.documentlibrary',4,'10172',10163,0,511),
 (4908,10154,'com.liferay.portlet.documentlibrary',4,'10172',10170,0,1),
 (4909,10154,'com.liferay.portlet.documentlibrary',4,'10172',10162,0,1),
 (5001,10154,'traffico_WAR_SMARTiPCisiumTrafficoportlet',4,'10183_LAYOUT_traffico_WAR_SMARTiPCisiumTrafficoportlet',10163,0,15),
 (5002,10154,'traffico_WAR_SMARTiPCisiumTrafficoportlet',4,'10183_LAYOUT_traffico_WAR_SMARTiPCisiumTrafficoportlet',10170,0,1),
 (5003,10154,'traffico_WAR_SMARTiPCisiumTrafficoportlet',4,'10183_LAYOUT_traffico_WAR_SMARTiPCisiumTrafficoportlet',10162,0,1),
 (5101,10154,'eventi_WAR_SMARTiPCisiumEventiportlet',4,'10183_LAYOUT_eventi_WAR_SMARTiPCisiumEventiportlet',10163,0,15),
 (5102,10154,'eventi_WAR_SMARTiPCisiumEventiportlet',4,'10183_LAYOUT_eventi_WAR_SMARTiPCisiumEventiportlet',10170,0,1),
 (5103,10154,'eventi_WAR_SMARTiPCisiumEventiportlet',4,'10183_LAYOUT_eventi_WAR_SMARTiPCisiumEventiportlet',10162,0,1),
 (5104,10154,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet',4,'10183_LAYOUT_parcheggi_WAR_SMARTiPCisiumParcheggiportlet',10163,0,15),
 (5105,10154,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet',4,'10183_LAYOUT_parcheggi_WAR_SMARTiPCisiumParcheggiportlet',10170,0,1),
 (5106,10154,'parcheggi_WAR_SMARTiPCisiumParcheggiportlet',4,'10183_LAYOUT_parcheggi_WAR_SMARTiPCisiumParcheggiportlet',10162,0,1),
 (5107,10154,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',4,'10183_LAYOUT_codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',10163,0,15),
 (5108,10154,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',4,'10183_LAYOUT_codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',10170,0,1),
 (5109,10154,'codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',4,'10183_LAYOUT_codicisms_WAR_SMARTiPCisiumCodiciSMSportlet',10162,0,1),
 (5110,10154,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',4,'10183_LAYOUT_stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',10163,0,15),
 (5111,10154,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',4,'10183_LAYOUT_stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',10170,0,1),
 (5112,10154,'stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',4,'10183_LAYOUT_stradepulite_WAR_SMARTiPCisiumStradePuliteportlet',10162,0,1),
 (5201,10154,'1_WAR_opensocialportlet',4,'10175_LAYOUT_1_WAR_opensocialportlet',10163,0,15),
 (5202,10154,'1_WAR_opensocialportlet',4,'10175_LAYOUT_1_WAR_opensocialportlet',10170,0,1),
 (5203,10154,'com.liferay.opensocial',4,'10172',10163,0,6),
 (5204,10154,'com.liferay.opensocial',4,'10172',10170,0,4),
 (5205,10154,'4_WAR_opensocialportlet',4,'10175_LAYOUT_4_WAR_opensocialportlet',10163,0,15),
 (5206,10154,'4_WAR_opensocialportlet',4,'10175_LAYOUT_4_WAR_opensocialportlet',10170,0,1),
 (5207,10154,'4_WAR_opensocialportlet',4,'10175_LAYOUT_4_WAR_opensocialportlet',10162,0,1),
 (5208,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'23303',10163,10196,255),
 (5209,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'23303',10170,0,29),
 (5210,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'23303',10162,0,1),
 (5211,10154,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681',1,'10154',10161,0,2),
 (5212,10154,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681',1,'10154',10162,0,2),
 (5213,10154,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681',1,'10154',10164,0,2),
 (5214,10154,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681',1,'10154',10165,0,2),
 (5215,10154,'com.liferay.portal.model.Layout',4,'23307',10163,10196,1023),
 (5216,10154,'com.liferay.portal.model.Layout',4,'23307',10170,0,3),
 (5217,10154,'com.liferay.portal.model.Layout',4,'23307',10162,0,1),
 (5218,10154,'103',4,'23307_LAYOUT_103',10163,0,15),
 (5219,10154,'103',4,'23307_LAYOUT_103',10170,0,1),
 (5220,10154,'103',4,'23307_LAYOUT_103',10162,0,1),
 (5221,10154,'145',4,'23307_LAYOUT_145',10163,0,15),
 (5222,10154,'145',4,'23307_LAYOUT_145',10170,0,1),
 (5223,10154,'145',4,'23307_LAYOUT_145',10162,0,1),
 (5224,10154,'87',4,'23307_LAYOUT_87',10163,0,15),
 (5225,10154,'87',4,'23307_LAYOUT_87',10170,0,1),
 (5226,10154,'87',4,'23307_LAYOUT_87',10162,0,1),
 (5227,10154,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681',4,'23307_LAYOUT_OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681',10163,0,15),
 (5228,10154,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681',4,'23307_LAYOUT_OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681',10170,0,1),
 (5229,10154,'OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681',4,'23307_LAYOUT_OPENSOCIAL_c292eb6c__8cf1__4271__a3ee__cdde1f9b2681',10162,0,1),
 (5230,10154,'com.liferay.portlet.expando.model.ExpandoColumn',4,'23316',10163,0,15),
 (5231,10154,'com.liferay.portlet.expando.model.ExpandoColumn',4,'23316',10165,0,9),
 (5401,10154,'fermatebus_WAR_SMARTiPCisiumFermateBusportlet',1,'10154',10161,0,2),
 (5402,10154,'fermatebus_WAR_SMARTiPCisiumFermateBusportlet',1,'10154',10162,0,2),
 (5403,10154,'fermatebus_WAR_SMARTiPCisiumFermateBusportlet',1,'10154',10164,0,2),
 (5404,10154,'fermatebus_WAR_SMARTiPCisiumFermateBusportlet',1,'10154',10165,0,2),
 (5501,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'24605',10163,10196,255),
 (5502,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'24605',10170,0,3),
 (5503,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'24605',10162,0,3),
 (5504,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'24622',10163,10196,255),
 (5505,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'24622',10170,0,3),
 (5506,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'24622',10162,0,3),
 (5507,10154,'56',4,'10183_LAYOUT_56_INSTANCE_FHwOq3nV1ZSQ',10163,0,15),
 (5508,10154,'56',4,'10183_LAYOUT_56_INSTANCE_FHwOq3nV1ZSQ',10170,0,1),
 (5509,10154,'56',4,'10183_LAYOUT_56_INSTANCE_FHwOq3nV1ZSQ',10162,0,1),
 (5510,10154,'56',4,'10183_LAYOUT_56_INSTANCE_8IS7T5JuDmhk',10163,0,15),
 (5511,10154,'56',4,'10183_LAYOUT_56_INSTANCE_8IS7T5JuDmhk',10170,0,1),
 (5512,10154,'56',4,'10183_LAYOUT_56_INSTANCE_8IS7T5JuDmhk',10162,0,1),
 (5513,10154,'113',4,'10183_LAYOUT_113',10163,0,15),
 (5514,10154,'113',4,'10183_LAYOUT_113',10170,0,1),
 (5515,10154,'113',4,'10183_LAYOUT_113',10162,0,1),
 (5604,10154,'56',4,'21901_LAYOUT_56_INSTANCE_6kcr8AK7zZ2z',10163,0,15),
 (5605,10154,'56',4,'21901_LAYOUT_56_INSTANCE_6kcr8AK7zZ2z',10170,0,1),
 (5606,10154,'56',4,'21901_LAYOUT_56_INSTANCE_6kcr8AK7zZ2z',10162,0,1),
 (5607,10154,'86',4,'21901_LAYOUT_86',10163,0,15),
 (5608,10154,'86',4,'21901_LAYOUT_86',10170,0,1),
 (5609,10154,'86',4,'21901_LAYOUT_86',10162,0,1),
 (5610,10154,'56',4,'21901_LAYOUT_56_INSTANCE_ATkxmlf9qHbG',10163,0,15),
 (5611,10154,'56',4,'21901_LAYOUT_56_INSTANCE_ATkxmlf9qHbG',10170,0,1),
 (5612,10154,'56',4,'21901_LAYOUT_56_INSTANCE_ATkxmlf9qHbG',10162,0,1),
 (5701,10154,'15',4,'10183_LAYOUT_15',10163,0,31),
 (5702,10154,'15',4,'10183_LAYOUT_15',10170,0,1),
 (5703,10154,'15',4,'10183_LAYOUT_15',10162,0,1),
 (5704,10154,'com.liferay.portlet.journal',4,'10180',10163,0,126);
/*!40000 ALTER TABLE `ResourcePermission` ENABLE KEYS */;


--
-- Definition of table `ResourceTypePermission`
--

DROP TABLE IF EXISTS `ResourceTypePermission`;
CREATE TABLE `ResourceTypePermission` (
  `resourceTypePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceTypePermissionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ResourceTypePermission`
--

/*!40000 ALTER TABLE `ResourceTypePermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceTypePermission` ENABLE KEYS */;


--
-- Definition of table `Resource_`
--

DROP TABLE IF EXISTS `Resource_`;
CREATE TABLE `Resource_` (
  `resourceId` bigint(20) NOT NULL,
  `codeId` bigint(20) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourceId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Resource_`
--

/*!40000 ALTER TABLE `Resource_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Resource_` ENABLE KEYS */;


--
-- Definition of table `Role_`
--

DROP TABLE IF EXISTS `Role_`;
CREATE TABLE `Role_` (
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Role_`
--

/*!40000 ALTER TABLE `Role_` DISABLE KEYS */;
INSERT INTO `Role_` (`roleId`,`companyId`,`classNameId`,`classPK`,`name`,`title`,`description`,`type_`,`subtype`) VALUES 
 (10161,10154,10004,10161,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),
 (10162,10154,10004,10162,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),
 (10163,10154,10004,10163,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),
 (10164,10154,10004,10164,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),
 (10165,10154,10004,10165,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),
 (10166,10154,10004,10166,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),
 (10167,10154,10004,10167,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),
 (10168,10154,10004,10168,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),
 (10169,10154,10004,10169,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),
 (10170,10154,10004,10170,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),
 (10171,10154,10004,10171,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,''),
 (10447,10154,10004,10447,'Organization Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',3,''),
 (10449,10154,10004,10449,'Site Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',2,''),
 (10451,10154,10004,10451,'Portal Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',1,'');
/*!40000 ALTER TABLE `Role_` ENABLE KEYS */;


--
-- Definition of table `Roles_Permissions`
--

DROP TABLE IF EXISTS `Roles_Permissions`;
CREATE TABLE `Roles_Permissions` (
  `roleId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`permissionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Roles_Permissions`
--

/*!40000 ALTER TABLE `Roles_Permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Roles_Permissions` ENABLE KEYS */;


--
-- Definition of table `SCFrameworkVersi_SCProductVers`
--

DROP TABLE IF EXISTS `SCFrameworkVersi_SCProductVers`;
CREATE TABLE `SCFrameworkVersi_SCProductVers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY (`frameworkVersionId`,`productVersionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SCFrameworkVersi_SCProductVers`
--

/*!40000 ALTER TABLE `SCFrameworkVersi_SCProductVers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCFrameworkVersi_SCProductVers` ENABLE KEYS */;


--
-- Definition of table `SCFrameworkVersion`
--

DROP TABLE IF EXISTS `SCFrameworkVersion`;
CREATE TABLE `SCFrameworkVersion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`frameworkVersionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SCFrameworkVersion`
--

/*!40000 ALTER TABLE `SCFrameworkVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCFrameworkVersion` ENABLE KEYS */;


--
-- Definition of table `SCLicense`
--

DROP TABLE IF EXISTS `SCLicense`;
CREATE TABLE `SCLicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`licenseId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SCLicense`
--

/*!40000 ALTER TABLE `SCLicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCLicense` ENABLE KEYS */;


--
-- Definition of table `SCLicenses_SCProductEntries`
--

DROP TABLE IF EXISTS `SCLicenses_SCProductEntries`;
CREATE TABLE `SCLicenses_SCProductEntries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY (`licenseId`,`productEntryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SCLicenses_SCProductEntries`
--

/*!40000 ALTER TABLE `SCLicenses_SCProductEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCLicenses_SCProductEntries` ENABLE KEYS */;


--
-- Definition of table `SCProductEntry`
--

DROP TABLE IF EXISTS `SCProductEntry`;
CREATE TABLE `SCProductEntry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) DEFAULT NULL,
  `repoGroupId` varchar(75) DEFAULT NULL,
  `repoArtifactId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`productEntryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SCProductEntry`
--

/*!40000 ALTER TABLE `SCProductEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductEntry` ENABLE KEYS */;


--
-- Definition of table `SCProductScreenshot`
--

DROP TABLE IF EXISTS `SCProductScreenshot`;
CREATE TABLE `SCProductScreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  `fullImageId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`productScreenshotId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SCProductScreenshot`
--

/*!40000 ALTER TABLE `SCProductScreenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductScreenshot` ENABLE KEYS */;


--
-- Definition of table `SCProductVersion`
--

DROP TABLE IF EXISTS `SCProductVersion`;
CREATE TABLE `SCProductVersion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) DEFAULT NULL,
  `repoStoreArtifact` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`productVersionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SCProductVersion`
--

/*!40000 ALTER TABLE `SCProductVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductVersion` ENABLE KEYS */;


--
-- Definition of table `SN_MeetupsEntry`
--

DROP TABLE IF EXISTS `SN_MeetupsEntry`;
CREATE TABLE `SN_MeetupsEntry` (
  `meetupsEntryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `totalAttendees` int(11) DEFAULT NULL,
  `maxAttendees` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`meetupsEntryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SN_MeetupsEntry`
--

/*!40000 ALTER TABLE `SN_MeetupsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `SN_MeetupsEntry` ENABLE KEYS */;


--
-- Definition of table `SN_MeetupsRegistration`
--

DROP TABLE IF EXISTS `SN_MeetupsRegistration`;
CREATE TABLE `SN_MeetupsRegistration` (
  `meetupsRegistrationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `meetupsEntryId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`meetupsRegistrationId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SN_MeetupsRegistration`
--

/*!40000 ALTER TABLE `SN_MeetupsRegistration` DISABLE KEYS */;
/*!40000 ALTER TABLE `SN_MeetupsRegistration` ENABLE KEYS */;


--
-- Definition of table `SN_WallEntry`
--

DROP TABLE IF EXISTS `SN_WallEntry`;
CREATE TABLE `SN_WallEntry` (
  `wallEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`wallEntryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SN_WallEntry`
--

/*!40000 ALTER TABLE `SN_WallEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `SN_WallEntry` ENABLE KEYS */;


--
-- Definition of table `ServiceComponent`
--

DROP TABLE IF EXISTS `ServiceComponent`;
CREATE TABLE `ServiceComponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`serviceComponentId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ServiceComponent`
--

/*!40000 ALTER TABLE `ServiceComponent` DISABLE KEYS */;
INSERT INTO `ServiceComponent` (`serviceComponentId`,`buildNamespace`,`buildNumber`,`buildDate`,`data_`) VALUES 
 (10411,'Chat',12,1241822823426,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Chat_Entry (\n	entryId LONG not null primary key,\n	createDate LONG,\n	fromUserId LONG,\n	toUserId LONG,\n	content VARCHAR(1000) null\n);\n\ncreate table Chat_Status (\n	statusId LONG not null primary key,\n	userId LONG,\n	modifiedDate LONG,\n	online_ BOOLEAN,\n	awake BOOLEAN,\n	activePanelId VARCHAR(75) null,\n	message STRING null,\n	playSound BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_DAEF230F on Chat_Entry (createDate);\ncreate index IX_AD559D93 on Chat_Entry (createDate, fromUserId);\ncreate index IX_D9E49928 on Chat_Entry (createDate, fromUserId, toUserId);\ncreate index IX_8BE273A4 on Chat_Entry (createDate, toUserId);\ncreate index IX_F9966D55 on Chat_Entry (fromUserId);\ncreate index IX_2A17A23F on Chat_Entry (fromUserId, toUserId, content);\ncreate index IX_16384BE6 on Chat_Entry (toUserId);\n\ncreate index IX_15BD544A on Chat_Status (modifiedDate);\ncreate index IX_B723B792 on Chat_Status (modifiedDate, online_);\ncreate index IX_32531B3D on Chat_Status (online_);\ncreate unique index IX_E17EBD79 on Chat_Status (userId);]]></indexes-sql>\n</data>'),
 (10430,'Kaleo',4,1285740392291,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table KaleoAction (\n	kaleoActionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null,\n	priority INTEGER\n);\n\ncreate table KaleoCondition (\n	kaleoConditionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null\n);\n\ncreate table KaleoDefinition (\n	kaleoDefinitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(200) null,\n	title STRING null,\n	description STRING null,\n	content TEXT null,\n	version INTEGER,\n	active_ BOOLEAN,\n	startKaleoNodeId LONG\n);\n\ncreate table KaleoInstance (\n	kaleoInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoDefinitionName VARCHAR(200) null,\n	kaleoDefinitionVersion INTEGER,\n	rootKaleoInstanceTokenId LONG,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoInstanceToken (\n	kaleoInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	parentKaleoInstanceTokenId LONG,\n	currentKaleoNodeId LONG,\n	currentKaleoNodeName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoLog (\n	kaleoLogId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	terminalKaleoNode BOOLEAN,\n	kaleoActionId LONG,\n	kaleoActionName VARCHAR(200) null,\n	kaleoActionDescription STRING null,\n	previousKaleoNodeId LONG,\n	previousKaleoNodeName VARCHAR(200) null,\n	previousAssigneeClassName VARCHAR(200) null,\n	previousAssigneeClassPK LONG,\n	currentAssigneeClassName VARCHAR(200) null,\n	currentAssigneeClassPK LONG,\n	type_ VARCHAR(50) null,\n	comment_ STRING null,\n	startDate DATE null,\n	endDate DATE null,\n	duration LONG,\n	workflowContext TEXT null\n);\n\ncreate table KaleoNode (\n	kaleoNodeId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	name VARCHAR(200) null,\n	metadata STRING null,\n	description STRING null,\n	type_ VARCHAR(20) null,\n	initial_ BOOLEAN,\n	terminal BOOLEAN\n);\n\ncreate table KaleoNotification (\n	kaleoNotificationId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	template TEXT null,\n	templateLanguage VARCHAR(75) null,\n	notificationTypes VARCHAR(25) null\n);\n\ncreate table KaleoNotificationRecipient (\n	kaleoNotificationRecipientId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNotificationId LONG,\n	recipientClassName VARCHAR(200) null,\n	recipientClassPK LONG,\n	recipientRoleType INTEGER,\n	address VARCHAR(255) null\n);\n\ncreate table KaleoTask (\n	kaleoTaskId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null\n);\n\ncreate table KaleoTaskAssignment (\n	kaleoTaskAssignmentId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	assigneeActionId VARCHAR(75) null,\n	assigneeScript TEXT null,\n	assigneeScriptLanguage VARCHAR(75) null\n);\n\ncreate table KaleoTaskAssignmentInstance (\n	kaleoTaskAssignmentInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoTaskInstanceToken (\n	kaleoTaskInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	dueDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTimer (\n	kaleoTimerId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	name VARCHAR(75) null,\n	blocking BOOLEAN,\n	description STRING null,\n	duration DOUBLE,\n	scale VARCHAR(75) null,\n	recurrenceDuration DOUBLE,\n	recurrenceScale VARCHAR(75) null\n);\n\ncreate table KaleoTimerInstanceToken (\n	kaleoTimerInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTimerId LONG,\n	kaleoTimerName VARCHAR(200) null,\n	blocking BOOLEAN,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTransition (\n	kaleoTransitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null,\n	sourceKaleoNodeId LONG,\n	sourceKaleoNodeName VARCHAR(200) null,\n	targetKaleoNodeId LONG,\n	targetKaleoNodeName VARCHAR(200) null,\n	defaultTransition BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_50E9112C on KaleoAction (companyId);\ncreate index IX_4B2545E8 on KaleoAction (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_F95A622 on KaleoAction (kaleoDefinitionId);\n\ncreate index IX_FEE46067 on KaleoCondition (companyId);\ncreate index IX_DC978A5D on KaleoCondition (kaleoDefinitionId);\ncreate index IX_86CBD4C on KaleoCondition (kaleoNodeId);\n\ncreate index IX_40B9112F on KaleoDefinition (companyId);\ncreate index IX_408542BA on KaleoDefinition (companyId, active_);\ncreate index IX_76C781AE on KaleoDefinition (companyId, name);\ncreate index IX_4C23F11B on KaleoDefinition (companyId, name, active_);\ncreate index IX_EC14F81A on KaleoDefinition (companyId, name, version);\n\ncreate index IX_5F2FCD2D on KaleoInstance (companyId);\ncreate index IX_BF5839F8 on KaleoInstance (companyId, kaleoDefinitionName, kaleoDefinitionVersion, completionDate);\ncreate index IX_4DA4D123 on KaleoInstance (kaleoDefinitionId);\ncreate index IX_ACF16238 on KaleoInstance (kaleoDefinitionId, completed);\n\ncreate index IX_153721BE on KaleoInstanceToken (companyId);\ncreate index IX_4A86923B on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId);\ncreate index IX_360D34D9 on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId, completionDate);\ncreate index IX_7BDB04B4 on KaleoInstanceToken (kaleoDefinitionId);\ncreate index IX_F42AAFF6 on KaleoInstanceToken (kaleoInstanceId);\n\ncreate index IX_73B5F4DE on KaleoLog (companyId);\ncreate index IX_E66A153A on KaleoLog (kaleoClassName, kaleoClassPK, kaleoInstanceTokenId, type_);\ncreate index IX_6C64B7D4 on KaleoLog (kaleoDefinitionId);\ncreate index IX_5BC6AB16 on KaleoLog (kaleoInstanceId);\ncreate index IX_470B9FF8 on KaleoLog (kaleoInstanceTokenId, type_);\ncreate index IX_B0CDCA38 on KaleoLog (kaleoTaskInstanceTokenId);\n\ncreate index IX_C4E9ACE0 on KaleoNode (companyId);\ncreate index IX_F28C443E on KaleoNode (companyId, kaleoDefinitionId);\ncreate index IX_32E94DD6 on KaleoNode (kaleoDefinitionId);\n\ncreate index IX_38829497 on KaleoNotification (companyId);\ncreate index IX_F3362E93 on KaleoNotification (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_4B968E8D on KaleoNotification (kaleoDefinitionId);\n\ncreate index IX_2C8C4AF4 on KaleoNotificationRecipient (companyId);\ncreate index IX_AA6697EA on KaleoNotificationRecipient (kaleoDefinitionId);\ncreate index IX_7F4FED02 on KaleoNotificationRecipient (kaleoNotificationId);\n\ncreate index IX_E1F8B23D on KaleoTask (companyId);\ncreate index IX_3FFA633 on KaleoTask (kaleoDefinitionId);\ncreate index IX_77B3F1A2 on KaleoTask (kaleoNodeId);\n\ncreate index IX_611732B0 on KaleoTaskAssignment (companyId);\ncreate index IX_D835C576 on KaleoTaskAssignment (kaleoClassName, kaleoClassPK);\ncreate index IX_1087068E on KaleoTaskAssignment (kaleoClassName, kaleoClassPK, assigneeClassName);\ncreate index IX_575C03A6 on KaleoTaskAssignment (kaleoDefinitionId);\n\ncreate index IX_6E3CDA1B on KaleoTaskAssignmentInstance (companyId);\ncreate index IX_C851011 on KaleoTaskAssignmentInstance (kaleoDefinitionId);\ncreate index IX_67A9EE93 on KaleoTaskAssignmentInstance (kaleoInstanceId);\ncreate index IX_D4C2235B on KaleoTaskAssignmentInstance (kaleoTaskInstanceTokenId);\n\ncreate index IX_997FE723 on KaleoTaskInstanceToken (companyId);\ncreate index IX_608E9519 on KaleoTaskInstanceToken (kaleoDefinitionId);\ncreate index IX_2CE1159B on KaleoTaskInstanceToken (kaleoInstanceId);\ncreate index IX_B857A115 on KaleoTaskInstanceToken (kaleoInstanceId, kaleoTaskId);\n\ncreate index IX_4DE6A889 on KaleoTimer (kaleoClassName, kaleoClassPK);\ncreate index IX_1A479F32 on KaleoTimer (kaleoClassName, kaleoClassPK, blocking);\n\ncreate index IX_DB96C55B on KaleoTimerInstanceToken (kaleoInstanceId);\ncreate index IX_DB279423 on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed);\ncreate index IX_9932524C on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed, blocking);\ncreate index IX_13A5BA2C on KaleoTimerInstanceToken (kaleoInstanceTokenId, kaleoTimerId);\n\ncreate index IX_41D6C6D on KaleoTransition (companyId);\ncreate index IX_479F3063 on KaleoTransition (kaleoDefinitionId);\ncreate index IX_A392DFD2 on KaleoTransition (kaleoNodeId);\ncreate index IX_A38E2194 on KaleoTransition (kaleoNodeId, defaultTransition);\ncreate index IX_85268A11 on KaleoTransition (kaleoNodeId, name);]]></indexes-sql>\n</data>'),
 (10463,'KB',5,1303226688571,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table KBArticle (\n	uuid_ VARCHAR(75) null,\n	kbArticleId LONG not null primary key,\n	resourcePrimKey LONG,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	rootResourcePrimKey LONG,\n	parentResourcePrimKey LONG,\n	version INTEGER,\n	title STRING null,\n	content TEXT null,\n	description STRING null,\n	priority DOUBLE,\n	sections STRING null,\n	viewCount INTEGER,\n	latest BOOLEAN,\n	main BOOLEAN,\n	status INTEGER,\n	statusByUserId LONG,\n	statusByUserName VARCHAR(75) null,\n	statusDate DATE null\n);\n\ncreate table KBComment (\n	uuid_ VARCHAR(75) null,\n	kbCommentId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	classNameId LONG,\n	classPK LONG,\n	content STRING null,\n	helpful BOOLEAN\n);\n\ncreate table KBTemplate (\n	uuid_ VARCHAR(75) null,\n	kbTemplateId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	title STRING null,\n	content TEXT null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_571C019E on KBArticle (companyId, latest);\ncreate index IX_5A381890 on KBArticle (companyId, main);\ncreate index IX_FBC2D349 on KBArticle (companyId, status);\ncreate index IX_694EA2E0 on KBArticle (groupId, latest);\ncreate index IX_97C62252 on KBArticle (groupId, main);\ncreate index IX_B0FCBB47 on KBArticle (groupId, parentResourcePrimKey, latest);\ncreate index IX_D91D2879 on KBArticle (groupId, parentResourcePrimKey, main);\ncreate index IX_55A38CF2 on KBArticle (groupId, parentResourcePrimKey, status);\ncreate index IX_DF5748B on KBArticle (groupId, status);\ncreate index IX_86BA3247 on KBArticle (parentResourcePrimKey, latest);\ncreate index IX_1DCC5F79 on KBArticle (parentResourcePrimKey, main);\ncreate index IX_2B6103F2 on KBArticle (parentResourcePrimKey, status);\ncreate index IX_11CD0F56 on KBArticle (resourcePrimKey);\ncreate index IX_A5A54614 on KBArticle (resourcePrimKey, groupId);\ncreate index IX_5FEF5F4F on KBArticle (resourcePrimKey, groupId, latest);\ncreate index IX_8EF92E81 on KBArticle (resourcePrimKey, groupId, main);\ncreate index IX_49630FA on KBArticle (resourcePrimKey, groupId, status);\ncreate index IX_A9E2C691 on KBArticle (resourcePrimKey, latest);\ncreate index IX_69C17E43 on KBArticle (resourcePrimKey, main);\ncreate index IX_4E89983C on KBArticle (resourcePrimKey, status);\ncreate unique index IX_AA304772 on KBArticle (resourcePrimKey, version);\ncreate index IX_C23FA26F on KBArticle (uuid_);\ncreate unique index IX_5C941F1B on KBArticle (uuid_, groupId);\n\ncreate index IX_9FE4C2A3 on KBComment (classNameId, classPK);\ncreate index IX_20A6BD9C on KBComment (groupId);\ncreate index IX_E8D43932 on KBComment (groupId, classNameId);\ncreate unique index IX_FD56A55D on KBComment (userId, classNameId, classPK);\ncreate index IX_8E470726 on KBComment (uuid_);\ncreate unique index IX_791D1844 on KBComment (uuid_, groupId);\n\ncreate index IX_83D9CC13 on KBTemplate (groupId);\ncreate index IX_9909475D on KBTemplate (uuid_);\ncreate unique index IX_40AA25ED on KBTemplate (uuid_, groupId);]]></indexes-sql>\n</data>'),
 (10475,'Mail',1,1270595745413,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Mail_Account (\n	accountId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	address VARCHAR(75) null,\n	personalName VARCHAR(75) null,\n	protocol VARCHAR(75) null,\n	incomingHostName VARCHAR(75) null,\n	incomingPort INTEGER,\n	incomingSecure BOOLEAN,\n	outgoingHostName VARCHAR(75) null,\n	outgoingPort INTEGER,\n	outgoingSecure BOOLEAN,\n	login VARCHAR(75) null,\n	password_ VARCHAR(75) null,\n	savePassword BOOLEAN,\n	signature VARCHAR(75) null,\n	useSignature BOOLEAN,\n	folderPrefix VARCHAR(75) null,\n	inboxFolderId LONG,\n	draftFolderId LONG,\n	sentFolderId LONG,\n	trashFolderId LONG,\n	defaultSender BOOLEAN\n);\n\ncreate table Mail_Attachment (\n	attachmentId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	accountId LONG,\n	folderId LONG,\n	messageId LONG,\n	contentPath VARCHAR(75) null,\n	fileName VARCHAR(75) null,\n	size_ LONG\n);\n\ncreate table Mail_Folder (\n	folderId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	accountId LONG,\n	fullName VARCHAR(75) null,\n	displayName VARCHAR(75) null,\n	remoteMessageCount INTEGER\n);\n\ncreate table Mail_Message (\n	messageId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	accountId LONG,\n	folderId LONG,\n	sender STRING null,\n	to_ TEXT null,\n	cc TEXT null,\n	bcc TEXT null,\n	sentDate DATE null,\n	subject STRING null,\n	preview VARCHAR(75) null,\n	body TEXT null,\n	flags VARCHAR(75) null,\n	size_ LONG,\n	remoteMessageId LONG\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_C4F22765 on Mail_Account (userId);\ncreate index IX_6B92F85F on Mail_Account (userId, address);\n\ncreate index IX_F661D061 on Mail_Attachment (messageId);\n\ncreate index IX_3841821C on Mail_Folder (accountId);\ncreate index IX_310E554A on Mail_Folder (accountId, fullName);\n\ncreate index IX_163EBD83 on Mail_Message (companyId);\ncreate index IX_64F72622 on Mail_Message (folderId);\ncreate index IX_200D262A on Mail_Message (folderId, remoteMessageId);]]></indexes-sql>\n</data>'),
 (10480,'OpenSocial',3,1292372319795,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table OpenSocial_Gadget (\n	uuid_ VARCHAR(75) null,\n	gadgetId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(75) null,\n	url STRING null,\n	portletCategoryNames STRING null\n);\n\ncreate table OpenSocial_OAuthConsumer (\n	oAuthConsumerId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	gadgetKey VARCHAR(75) null,\n	serviceName VARCHAR(75) null,\n	consumerKey VARCHAR(75) null,\n	consumerSecret TEXT null,\n	keyType VARCHAR(75) null\n);\n\ncreate table OpenSocial_OAuthToken (\n	oAuthTokenId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	gadgetKey VARCHAR(75) null,\n	serviceName VARCHAR(75) null,\n	moduleId LONG,\n	accessToken VARCHAR(75) null,\n	tokenName VARCHAR(75) null,\n	tokenSecret VARCHAR(75) null,\n	sessionHandle VARCHAR(75) null,\n	expiration LONG\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_729869EE on OpenSocial_Gadget (companyId);\ncreate unique index IX_A6A89EB1 on OpenSocial_Gadget (companyId, url);\ncreate index IX_E1F8627A on OpenSocial_Gadget (uuid_);\n\ncreate index IX_47206618 on OpenSocial_OAuthConsumer (gadgetKey);\ncreate index IX_8E715BF8 on OpenSocial_OAuthConsumer (gadgetKey, serviceName);\n\ncreate index IX_6C8CCC3D on OpenSocial_OAuthToken (gadgetKey, serviceName);\ncreate index IX_CDD35402 on OpenSocial_OAuthToken (userId, gadgetKey, serviceName, moduleId, tokenName);]]></indexes-sql>\n</data>'),
 (10489,'SN',1,1250629154126,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table SN_MeetupsEntry (\n	meetupsEntryId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	title VARCHAR(75) null,\n	description STRING null,\n	startDate DATE null,\n	endDate DATE null,\n	totalAttendees INTEGER,\n	maxAttendees INTEGER,\n	price DOUBLE,\n	thumbnailId LONG\n);\n\ncreate table SN_MeetupsRegistration (\n	meetupsRegistrationId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	meetupsEntryId LONG,\n	status INTEGER,\n	comments STRING null\n);\n\ncreate table SN_WallEntry (\n	wallEntryId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	comments STRING null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_A56E51DD on SN_MeetupsEntry (companyId);\ncreate index IX_6EA9EEA5 on SN_MeetupsEntry (userId);\n\ncreate index IX_A79293FC on SN_MeetupsRegistration (meetupsEntryId);\ncreate index IX_BCEB16E2 on SN_MeetupsRegistration (meetupsEntryId, status);\ncreate index IX_3CBE4C36 on SN_MeetupsRegistration (userId, meetupsEntryId);\n\ncreate index IX_5C68C960 on SN_WallEntry (groupId);\ncreate index IX_F2F6C19A on SN_WallEntry (groupId, userId);\ncreate index IX_C46194C4 on SN_WallEntry (userId);]]></indexes-sql>\n</data>'),
 (10505,'WSRP',4,1284584226643,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table WSRP_WSRPConsumer (\n	uuid_ VARCHAR(75) null,\n	wsrpConsumerId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(75) null,\n	url STRING null,\n	wsdl TEXT null,\n	registrationContextString TEXT null,\n	registrationPropertiesString STRING null,\n	forwardCookies VARCHAR(75) null\n);\n\ncreate table WSRP_WSRPConsumerPortlet (\n	uuid_ VARCHAR(75) null,\n	wsrpConsumerPortletId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	wsrpConsumerId LONG,\n	name VARCHAR(75) null,\n	portletHandle VARCHAR(255) null\n);\n\ncreate table WSRP_WSRPProducer (\n	uuid_ VARCHAR(75) null,\n	wsrpProducerId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(75) null,\n	version VARCHAR(75) null,\n	portletIds STRING null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_8F3348D on WSRP_WSRPConsumer (companyId);\ncreate index IX_8B675499 on WSRP_WSRPConsumer (uuid_);\n\ncreate index IX_82D5F2C9 on WSRP_WSRPConsumerPortlet (uuid_);\ncreate index IX_1CEEF2AA on WSRP_WSRPConsumerPortlet (wsrpConsumerId);\ncreate index IX_D5F95908 on WSRP_WSRPConsumerPortlet (wsrpConsumerId, portletHandle);\n\ncreate index IX_DD08A671 on WSRP_WSRPProducer (companyId);\ncreate index IX_19A9587D on WSRP_WSRPProducer (uuid_);\ncreate unique index IX_DDBB58CD on WSRP_WSRPProducer (uuid_, groupId);]]></indexes-sql>\n</data>');
/*!40000 ALTER TABLE `ServiceComponent` ENABLE KEYS */;


--
-- Definition of table `Shard`
--

DROP TABLE IF EXISTS `Shard`;
CREATE TABLE `Shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`shardId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Shard`
--

/*!40000 ALTER TABLE `Shard` DISABLE KEYS */;
INSERT INTO `Shard` (`shardId`,`classNameId`,`classPK`,`name`) VALUES 
 (10155,10021,10154,'default');
/*!40000 ALTER TABLE `Shard` ENABLE KEYS */;


--
-- Definition of table `ShoppingCart`
--

DROP TABLE IF EXISTS `ShoppingCart`;
CREATE TABLE `ShoppingCart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) DEFAULT NULL,
  `altShipping` int(11) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cartId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ShoppingCart`
--

/*!40000 ALTER TABLE `ShoppingCart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCart` ENABLE KEYS */;


--
-- Definition of table `ShoppingCategory`
--

DROP TABLE IF EXISTS `ShoppingCategory`;
CREATE TABLE `ShoppingCategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`categoryId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ShoppingCategory`
--

/*!40000 ALTER TABLE `ShoppingCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCategory` ENABLE KEYS */;


--
-- Definition of table `ShoppingCoupon`
--

DROP TABLE IF EXISTS `ShoppingCoupon`;
CREATE TABLE `ShoppingCoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discountType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`couponId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ShoppingCoupon`
--

/*!40000 ALTER TABLE `ShoppingCoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCoupon` ENABLE KEYS */;


--
-- Definition of table `ShoppingItem`
--

DROP TABLE IF EXISTS `ShoppingItem`;
CREATE TABLE `ShoppingItem` (
  `itemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) DEFAULT NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `featured_` tinyint(4) DEFAULT NULL,
  `sale_` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `mediumImage` tinyint(4) DEFAULT NULL,
  `mediumImageId` bigint(20) DEFAULT NULL,
  `mediumImageURL` longtext,
  `largeImage` tinyint(4) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `largeImageURL` longtext,
  PRIMARY KEY (`itemId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ShoppingItem`
--

/*!40000 ALTER TABLE `ShoppingItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItem` ENABLE KEYS */;


--
-- Definition of table `ShoppingItemField`
--

DROP TABLE IF EXISTS `ShoppingItemField`;
CREATE TABLE `ShoppingItemField` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY (`itemFieldId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ShoppingItemField`
--

/*!40000 ALTER TABLE `ShoppingItemField` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItemField` ENABLE KEYS */;


--
-- Definition of table `ShoppingItemPrice`
--

DROP TABLE IF EXISTS `ShoppingItemPrice`;
CREATE TABLE `ShoppingItemPrice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemPriceId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ShoppingItemPrice`
--

/*!40000 ALTER TABLE `ShoppingItemPrice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItemPrice` ENABLE KEYS */;


--
-- Definition of table `ShoppingOrder`
--

DROP TABLE IF EXISTS `ShoppingOrder`;
CREATE TABLE `ShoppingOrder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `altShipping` varchar(75) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `couponCodes` varchar(75) DEFAULT NULL,
  `couponDiscount` double DEFAULT NULL,
  `billingFirstName` varchar(75) DEFAULT NULL,
  `billingLastName` varchar(75) DEFAULT NULL,
  `billingEmailAddress` varchar(75) DEFAULT NULL,
  `billingCompany` varchar(75) DEFAULT NULL,
  `billingStreet` varchar(75) DEFAULT NULL,
  `billingCity` varchar(75) DEFAULT NULL,
  `billingState` varchar(75) DEFAULT NULL,
  `billingZip` varchar(75) DEFAULT NULL,
  `billingCountry` varchar(75) DEFAULT NULL,
  `billingPhone` varchar(75) DEFAULT NULL,
  `shipToBilling` tinyint(4) DEFAULT NULL,
  `shippingFirstName` varchar(75) DEFAULT NULL,
  `shippingLastName` varchar(75) DEFAULT NULL,
  `shippingEmailAddress` varchar(75) DEFAULT NULL,
  `shippingCompany` varchar(75) DEFAULT NULL,
  `shippingStreet` varchar(75) DEFAULT NULL,
  `shippingCity` varchar(75) DEFAULT NULL,
  `shippingState` varchar(75) DEFAULT NULL,
  `shippingZip` varchar(75) DEFAULT NULL,
  `shippingCountry` varchar(75) DEFAULT NULL,
  `shippingPhone` varchar(75) DEFAULT NULL,
  `ccName` varchar(75) DEFAULT NULL,
  `ccType` varchar(75) DEFAULT NULL,
  `ccNumber` varchar(75) DEFAULT NULL,
  `ccExpMonth` int(11) DEFAULT NULL,
  `ccExpYear` int(11) DEFAULT NULL,
  `ccVerNumber` varchar(75) DEFAULT NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) DEFAULT NULL,
  `ppPaymentStatus` varchar(75) DEFAULT NULL,
  `ppPaymentGross` double DEFAULT NULL,
  `ppReceiverEmail` varchar(75) DEFAULT NULL,
  `ppPayerEmail` varchar(75) DEFAULT NULL,
  `sendOrderEmail` tinyint(4) DEFAULT NULL,
  `sendShippingEmail` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ShoppingOrder`
--

/*!40000 ALTER TABLE `ShoppingOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingOrder` ENABLE KEYS */;


--
-- Definition of table `ShoppingOrderItem`
--

DROP TABLE IF EXISTS `ShoppingOrderItem`;
CREATE TABLE `ShoppingOrderItem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `itemId` varchar(75) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderItemId`)
) TYPE=InnoDB;

--
-- Dumping data for table `ShoppingOrderItem`
--

/*!40000 ALTER TABLE `ShoppingOrderItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingOrderItem` ENABLE KEYS */;


--
-- Definition of table `SocialActivity`
--

DROP TABLE IF EXISTS `SocialActivity`;
CREATE TABLE `SocialActivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SocialActivity`
--

/*!40000 ALTER TABLE `SocialActivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivity` ENABLE KEYS */;


--
-- Definition of table `SocialActivityAchievement`
--

DROP TABLE IF EXISTS `SocialActivityAchievement`;
CREATE TABLE `SocialActivityAchievement` (
  `activityAchievementId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `firstInGroup` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityAchievementId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SocialActivityAchievement`
--

/*!40000 ALTER TABLE `SocialActivityAchievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityAchievement` ENABLE KEYS */;


--
-- Definition of table `SocialActivityCounter`
--

DROP TABLE IF EXISTS `SocialActivityCounter`;
CREATE TABLE `SocialActivityCounter` (
  `activityCounterId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `currentValue` int(11) DEFAULT NULL,
  `totalValue` int(11) DEFAULT NULL,
  `graceValue` int(11) DEFAULT NULL,
  `startPeriod` int(11) DEFAULT NULL,
  `endPeriod` int(11) DEFAULT NULL,
  PRIMARY KEY (`activityCounterId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SocialActivityCounter`
--

/*!40000 ALTER TABLE `SocialActivityCounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityCounter` ENABLE KEYS */;


--
-- Definition of table `SocialActivityLimit`
--

DROP TABLE IF EXISTS `SocialActivityLimit`;
CREATE TABLE `SocialActivityLimit` (
  `activityLimitId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `activityCounterName` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`activityLimitId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SocialActivityLimit`
--

/*!40000 ALTER TABLE `SocialActivityLimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityLimit` ENABLE KEYS */;


--
-- Definition of table `SocialActivitySetting`
--

DROP TABLE IF EXISTS `SocialActivitySetting`;
CREATE TABLE `SocialActivitySetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activitySettingId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SocialActivitySetting`
--

/*!40000 ALTER TABLE `SocialActivitySetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivitySetting` ENABLE KEYS */;


--
-- Definition of table `SocialRelation`
--

DROP TABLE IF EXISTS `SocialRelation`;
CREATE TABLE `SocialRelation` (
  `uuid_` varchar(75) DEFAULT NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `userId1` bigint(20) DEFAULT NULL,
  `userId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`relationId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SocialRelation`
--

/*!40000 ALTER TABLE `SocialRelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialRelation` ENABLE KEYS */;


--
-- Definition of table `SocialRequest`
--

DROP TABLE IF EXISTS `SocialRequest`;
CREATE TABLE `SocialRequest` (
  `uuid_` varchar(75) DEFAULT NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`requestId`)
) TYPE=InnoDB;

--
-- Dumping data for table `SocialRequest`
--

/*!40000 ALTER TABLE `SocialRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialRequest` ENABLE KEYS */;


--
-- Definition of table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
CREATE TABLE `Subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `frequency` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Subscription`
--

/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;


--
-- Definition of table `Team`
--

DROP TABLE IF EXISTS `Team`;
CREATE TABLE `Team` (
  `teamId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`teamId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Team`
--

/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;


--
-- Definition of table `Ticket`
--

DROP TABLE IF EXISTS `Ticket`;
CREATE TABLE `Ticket` (
  `ticketId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraInfo` longtext,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ticketId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Ticket`
--

/*!40000 ALTER TABLE `Ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ticket` ENABLE KEYS */;


--
-- Definition of table `UserGroup`
--

DROP TABLE IF EXISTS `UserGroup`;
CREATE TABLE `UserGroup` (
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userGroupId`)
) TYPE=InnoDB;

--
-- Dumping data for table `UserGroup`
--

/*!40000 ALTER TABLE `UserGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroup` ENABLE KEYS */;


--
-- Definition of table `UserGroupGroupRole`
--

DROP TABLE IF EXISTS `UserGroupGroupRole`;
CREATE TABLE `UserGroupGroupRole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`groupId`,`roleId`)
) TYPE=InnoDB;

--
-- Dumping data for table `UserGroupGroupRole`
--

/*!40000 ALTER TABLE `UserGroupGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroupGroupRole` ENABLE KEYS */;


--
-- Definition of table `UserGroupRole`
--

DROP TABLE IF EXISTS `UserGroupRole`;
CREATE TABLE `UserGroupRole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`,`roleId`)
) TYPE=InnoDB;

--
-- Dumping data for table `UserGroupRole`
--

/*!40000 ALTER TABLE `UserGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroupRole` ENABLE KEYS */;


--
-- Definition of table `UserGroups_Teams`
--

DROP TABLE IF EXISTS `UserGroups_Teams`;
CREATE TABLE `UserGroups_Teams` (
  `userGroupId` bigint(20) NOT NULL,
  `teamId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`teamId`)
) TYPE=InnoDB;

--
-- Dumping data for table `UserGroups_Teams`
--

/*!40000 ALTER TABLE `UserGroups_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups_Teams` ENABLE KEYS */;


--
-- Definition of table `UserIdMapper`
--

DROP TABLE IF EXISTS `UserIdMapper`;
CREATE TABLE `UserIdMapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userIdMapperId`)
) TYPE=InnoDB;

--
-- Dumping data for table `UserIdMapper`
--

/*!40000 ALTER TABLE `UserIdMapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserIdMapper` ENABLE KEYS */;


--
-- Definition of table `UserNotificationEvent`
--

DROP TABLE IF EXISTS `UserNotificationEvent`;
CREATE TABLE `UserNotificationEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationEventId`)
) TYPE=InnoDB;

--
-- Dumping data for table `UserNotificationEvent`
--

/*!40000 ALTER TABLE `UserNotificationEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserNotificationEvent` ENABLE KEYS */;


--
-- Definition of table `UserTracker`
--

DROP TABLE IF EXISTS `UserTracker`;
CREATE TABLE `UserTracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sessionId` varchar(200) DEFAULT NULL,
  `remoteAddr` varchar(75) DEFAULT NULL,
  `remoteHost` varchar(75) DEFAULT NULL,
  `userAgent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userTrackerId`)
) TYPE=InnoDB;

--
-- Dumping data for table `UserTracker`
--

/*!40000 ALTER TABLE `UserTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTracker` ENABLE KEYS */;


--
-- Definition of table `UserTrackerPath`
--

DROP TABLE IF EXISTS `UserTrackerPath`;
CREATE TABLE `UserTrackerPath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userTrackerPathId`)
) TYPE=InnoDB;

--
-- Dumping data for table `UserTrackerPath`
--

/*!40000 ALTER TABLE `UserTrackerPath` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTrackerPath` ENABLE KEYS */;


--
-- Definition of table `User_`
--

DROP TABLE IF EXISTS `User_`;
CREATE TABLE `User_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultUser` tinyint(4) DEFAULT NULL,
  `contactId` bigint(20) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `passwordEncrypted` tinyint(4) DEFAULT NULL,
  `passwordReset` tinyint(4) DEFAULT NULL,
  `passwordModifiedDate` datetime DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `reminderQueryQuestion` varchar(75) DEFAULT NULL,
  `reminderQueryAnswer` varchar(75) DEFAULT NULL,
  `graceLoginCount` int(11) DEFAULT NULL,
  `screenName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `openId` varchar(1024) DEFAULT NULL,
  `portraitId` bigint(20) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `greeting` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginIP` varchar(75) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginIP` varchar(75) DEFAULT NULL,
  `lastFailedLoginDate` datetime DEFAULT NULL,
  `failedLoginAttempts` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `agreedToTermsOfUse` tinyint(4) DEFAULT NULL,
  `emailAddressVerified` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) TYPE=InnoDB;

--
-- Dumping data for table `User_`
--

/*!40000 ALTER TABLE `User_` DISABLE KEYS */;
INSERT INTO `User_` (`uuid_`,`userId`,`companyId`,`createDate`,`modifiedDate`,`defaultUser`,`contactId`,`password_`,`passwordEncrypted`,`passwordReset`,`passwordModifiedDate`,`digest`,`reminderQueryQuestion`,`reminderQueryAnswer`,`graceLoginCount`,`screenName`,`emailAddress`,`facebookId`,`openId`,`portraitId`,`languageId`,`timeZoneId`,`greeting`,`comments`,`firstName`,`middleName`,`lastName`,`jobTitle`,`loginDate`,`loginIP`,`lastLoginDate`,`lastLoginIP`,`lastFailedLoginDate`,`failedLoginAttempts`,`lockout`,`lockoutDate`,`agreedToTermsOfUse`,`emailAddressVerified`,`status`) VALUES 
 ('e66a524b-8ffc-4bad-86b9-a0c0076a8446',10158,10154,'2012-02-20 09:47:28','2012-02-20 09:47:28',1,10159,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,528f53719430814f22dbf509e0faa0c4,528f53719430814f22dbf509e0faa0c4','','',0,'10158','default@liferay.com',0,'',0,'it_IT','Europe/Paris','Welcome!','','','','','','2012-02-20 09:47:28','',NULL,'',NULL,0,0,NULL,1,0,0),
 ('9a334fae-f7db-4a6e-bfb1-04a39d461cc9',10196,10154,'2012-02-20 09:47:31','2013-04-11 16:02:07',0,10197,'bHpIn053xrA7NTjpzoZtmFkObyQ=',1,0,'2013-04-11 16:02:08','','what-is-your-father\'s-middle-name','Pina',0,'admin','admin@mimuovosmart.com',0,'',0,'it_IT','Europe/Paris','Welcome admin Minda!','','Admin','','Minda','','2013-04-11 15:54:08','89.97.237.254','2013-04-02 14:18:42','89.97.237.254',NULL,0,0,NULL,1,1,0),
 ('086851c9-e145-4180-a7d3-16205de7cec2',19604,10154,'2012-03-14 09:57:09','2012-03-19 17:04:26',0,19605,'vfF68WN7v1XHkOeuTCbT3Q8znvY=',1,1,NULL,'','','',0,'cittadino','cittadino@cisium.com',0,'',0,'en_US','Europe/Paris','Welcome Dino Citta!','','Dino','','Citta','',NULL,'',NULL,'',NULL,0,0,NULL,0,0,0),
 ('30bb4da5-dd2f-4dff-951a-d7ab037647fe',19613,10154,'2012-03-14 09:58:32','2012-03-19 17:04:46',0,19614,'5v6AOfkCzpXf5qbzlcvluHjsyJ8=',1,1,NULL,'','','',0,'vigile','vigile@cisium.com',0,'',0,'en_US','Europe/Paris','Welcome Ile Vig!','','Ile','','Vig','',NULL,'',NULL,'',NULL,0,0,NULL,0,0,0),
 ('fef5bac0-1802-4ef1-a5c9-e124aebbcc85',21302,10154,'2012-03-20 09:41:11','2012-03-20 09:44:41',0,21303,'C+XeUalEo7xAd+VMYdFtvai5jYY=',1,0,'2012-03-20 14:09:15','c8c198b0b0dd56d2b2aa0dcaaa6ca574,14c724c1e95e5c48ed56f6a4e975b3a9,5dbb8a2cea6e9a4f59438d4254aa445c','what-is-your-father\'s-middle-name','pippo',0,'chiara','cmancini@regione.emilia-romagna.it',0,'',0,'en_US','Europe/Paris','Welcome Chiara Mancini!','','Chiara','','Mancini','','2012-03-23 16:09:06','93.58.12.238','2012-03-20 14:08:38','93.58.12.238',NULL,0,0,NULL,1,0,0),
 ('9e3e8046-4e32-4858-81cf-2c2515310260',21801,10154,'2012-04-18 09:57:17','2012-04-18 09:57:17',0,21802,'atDt1t9i/i4MqNf6sPzfVRJqP5k=',1,0,'2012-04-18 10:01:37','','what-is-your-father\'s-middle-name','vito',0,'martino','martino.maggio@eng.it',0,'',0,'en_US','Europe/Paris','Welcome Martino Maggio!','','Martino','','Maggio','','2012-04-18 10:01:10','192.168.43.104','2012-04-18 10:01:10','192.168.43.104',NULL,0,0,NULL,1,0,0);
/*!40000 ALTER TABLE `User_` ENABLE KEYS */;


--
-- Definition of table `Users_Groups`
--

DROP TABLE IF EXISTS `Users_Groups`;
CREATE TABLE `Users_Groups` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Users_Groups`
--

/*!40000 ALTER TABLE `Users_Groups` DISABLE KEYS */;
INSERT INTO `Users_Groups` (`userId`,`groupId`) VALUES 
 (10196,10180),
 (19604,10180),
 (19613,10180);
/*!40000 ALTER TABLE `Users_Groups` ENABLE KEYS */;


--
-- Definition of table `Users_Orgs`
--

DROP TABLE IF EXISTS `Users_Orgs`;
CREATE TABLE `Users_Orgs` (
  `userId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`organizationId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Users_Orgs`
--

/*!40000 ALTER TABLE `Users_Orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Orgs` ENABLE KEYS */;


--
-- Definition of table `Users_Permissions`
--

DROP TABLE IF EXISTS `Users_Permissions`;
CREATE TABLE `Users_Permissions` (
  `userId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`permissionId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Users_Permissions`
--

/*!40000 ALTER TABLE `Users_Permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Permissions` ENABLE KEYS */;


--
-- Definition of table `Users_Roles`
--

DROP TABLE IF EXISTS `Users_Roles`;
CREATE TABLE `Users_Roles` (
  `userId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Users_Roles`
--

/*!40000 ALTER TABLE `Users_Roles` DISABLE KEYS */;
INSERT INTO `Users_Roles` (`userId`,`roleId`) VALUES 
 (10158,10162),
 (10196,10161),
 (10196,10164),
 (10196,10165),
 (19604,10164),
 (19604,10165),
 (19613,10164),
 (19613,10165),
 (19613,10451),
 (21302,10164),
 (21302,10165),
 (21801,10164),
 (21801,10165);
/*!40000 ALTER TABLE `Users_Roles` ENABLE KEYS */;


--
-- Definition of table `Users_Teams`
--

DROP TABLE IF EXISTS `Users_Teams`;
CREATE TABLE `Users_Teams` (
  `userId` bigint(20) NOT NULL,
  `teamId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`teamId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Users_Teams`
--

/*!40000 ALTER TABLE `Users_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Teams` ENABLE KEYS */;


--
-- Definition of table `Users_UserGroups`
--

DROP TABLE IF EXISTS `Users_UserGroups`;
CREATE TABLE `Users_UserGroups` (
  `userGroupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`userId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Users_UserGroups`
--

/*!40000 ALTER TABLE `Users_UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_UserGroups` ENABLE KEYS */;


--
-- Definition of table `VirtualHost`
--

DROP TABLE IF EXISTS `VirtualHost`;
CREATE TABLE `VirtualHost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`virtualHostId`)
) TYPE=InnoDB;

--
-- Dumping data for table `VirtualHost`
--

/*!40000 ALTER TABLE `VirtualHost` DISABLE KEYS */;
INSERT INTO `VirtualHost` (`virtualHostId`,`companyId`,`layoutSetId`,`hostname`) VALUES 
 (10157,10154,0,'localhost');
/*!40000 ALTER TABLE `VirtualHost` ENABLE KEYS */;


--
-- Definition of table `WSRP_WSRPConsumer`
--

DROP TABLE IF EXISTS `WSRP_WSRPConsumer`;
CREATE TABLE `WSRP_WSRPConsumer` (
  `uuid_` varchar(75) DEFAULT NULL,
  `wsrpConsumerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `wsdl` longtext,
  `registrationContextString` longtext,
  `registrationPropertiesString` longtext,
  `forwardCookies` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`wsrpConsumerId`)
) TYPE=InnoDB;

--
-- Dumping data for table `WSRP_WSRPConsumer`
--

/*!40000 ALTER TABLE `WSRP_WSRPConsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `WSRP_WSRPConsumer` ENABLE KEYS */;


--
-- Definition of table `WSRP_WSRPConsumerPortlet`
--

DROP TABLE IF EXISTS `WSRP_WSRPConsumerPortlet`;
CREATE TABLE `WSRP_WSRPConsumerPortlet` (
  `uuid_` varchar(75) DEFAULT NULL,
  `wsrpConsumerPortletId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `wsrpConsumerId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`wsrpConsumerPortletId`)
) TYPE=InnoDB;

--
-- Dumping data for table `WSRP_WSRPConsumerPortlet`
--

/*!40000 ALTER TABLE `WSRP_WSRPConsumerPortlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `WSRP_WSRPConsumerPortlet` ENABLE KEYS */;


--
-- Definition of table `WSRP_WSRPProducer`
--

DROP TABLE IF EXISTS `WSRP_WSRPProducer`;
CREATE TABLE `WSRP_WSRPProducer` (
  `uuid_` varchar(75) DEFAULT NULL,
  `wsrpProducerId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `portletIds` longtext,
  PRIMARY KEY (`wsrpProducerId`)
) TYPE=InnoDB;

--
-- Dumping data for table `WSRP_WSRPProducer`
--

/*!40000 ALTER TABLE `WSRP_WSRPProducer` DISABLE KEYS */;
/*!40000 ALTER TABLE `WSRP_WSRPProducer` ENABLE KEYS */;


--
-- Definition of table `WebDAVProps`
--

DROP TABLE IF EXISTS `WebDAVProps`;
CREATE TABLE `WebDAVProps` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext,
  PRIMARY KEY (`webDavPropsId`)
) TYPE=InnoDB;

--
-- Dumping data for table `WebDAVProps`
--

/*!40000 ALTER TABLE `WebDAVProps` DISABLE KEYS */;
/*!40000 ALTER TABLE `WebDAVProps` ENABLE KEYS */;


--
-- Definition of table `Website`
--

DROP TABLE IF EXISTS `Website`;
CREATE TABLE `Website` (
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`websiteId`)
) TYPE=InnoDB;

--
-- Dumping data for table `Website`
--

/*!40000 ALTER TABLE `Website` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website` ENABLE KEYS */;


--
-- Definition of table `WikiNode`
--

DROP TABLE IF EXISTS `WikiNode`;
CREATE TABLE `WikiNode` (
  `uuid_` varchar(75) DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`nodeId`)
) TYPE=InnoDB;

--
-- Dumping data for table `WikiNode`
--

/*!40000 ALTER TABLE `WikiNode` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiNode` ENABLE KEYS */;


--
-- Definition of table `WikiPage`
--

DROP TABLE IF EXISTS `WikiPage`;
CREATE TABLE `WikiPage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `minorEdit` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `parentTitle` varchar(255) DEFAULT NULL,
  `redirectTitle` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pageId`)
) TYPE=InnoDB;

--
-- Dumping data for table `WikiPage`
--

/*!40000 ALTER TABLE `WikiPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiPage` ENABLE KEYS */;


--
-- Definition of table `WikiPageResource`
--

DROP TABLE IF EXISTS `WikiPageResource`;
CREATE TABLE `WikiPageResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`)
) TYPE=InnoDB;

--
-- Dumping data for table `WikiPageResource`
--

/*!40000 ALTER TABLE `WikiPageResource` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiPageResource` ENABLE KEYS */;


--
-- Definition of table `WorkflowDefinitionLink`
--

DROP TABLE IF EXISTS `WorkflowDefinitionLink`;
CREATE TABLE `WorkflowDefinitionLink` (
  `workflowDefinitionLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`workflowDefinitionLinkId`)
) TYPE=InnoDB;

--
-- Dumping data for table `WorkflowDefinitionLink`
--

/*!40000 ALTER TABLE `WorkflowDefinitionLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowDefinitionLink` ENABLE KEYS */;


--
-- Definition of table `WorkflowInstanceLink`
--

DROP TABLE IF EXISTS `WorkflowInstanceLink`;
CREATE TABLE `WorkflowInstanceLink` (
  `workflowInstanceLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `workflowInstanceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`workflowInstanceLinkId`)
) TYPE=InnoDB;

--
-- Dumping data for table `WorkflowInstanceLink`
--

/*!40000 ALTER TABLE `WorkflowInstanceLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowInstanceLink` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
