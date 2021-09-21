/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.19 : Database - gujian_wiki
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gujian_wiki` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `gujian_wiki`;

/*Table structure for table `ol_category` */

DROP TABLE IF EXISTS `ol_category`;

CREATE TABLE `ol_category` (
  `id` int NOT NULL COMMENT '主键',
  `name` varchar(45) NOT NULL COMMENT '大类名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='古剑奇谭网络版-归属大类';

/*Data for the table `ol_category` */

insert  into `ol_category`(`id`,`name`) values (6,'PVE·历世狭名'),(7,'PVP·斗法勇站'),(8,'PVX·闲情逸致'),(3,'世界历史'),(2,'场景地图'),(1,'基础信息'),(5,'技能与装备'),(0,'新手知识'),(4,'角色与外观');

/*Table structure for table `ol_detail` */

DROP TABLE IF EXISTS `ol_detail`;

CREATE TABLE `ol_detail` (
  `id` int NOT NULL COMMENT '主键',
  `name` varchar(45) NOT NULL COMMENT '条目名称',
  `has_icon` tinyint DEFAULT '1' COMMENT '是否有图标',
  `path` varchar(200) DEFAULT 'null' COMMENT '图标路径',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='古剑奇谭网络版-大类条目';

/*Data for the table `ol_detail` */

insert  into `ol_detail`(`id`,`name`,`has_icon`,`path`) values (0,'萌新引导手册(施工中）',1,'../images/detail/01/ic_01.png'),(1,'游戏惯用语、图标',1,'../images/detail/01/ic_05.png'),(2,'剑心和剑技能',1,'../images/detail/01/ic_09.png'),(3,'版本/服务器',1,'../images/detail/01/ic_02.png'),(4,'背包扩容',1,'../images/detail/01/ic_06.png'),(5,'移动传送',1,'../images/detail/01/ic_10.png'),(6,'问道修行',1,'../images/detail/01/ic_03.png'),(7,'游戏配置',1,'../images/detail/01/ic_07.png'),(8,'日常周常列表',1,'../images/detail/01/ic_11.png'),(9,'常用设置',1,'../images/detail/01/ic_04.png'),(10,'战斗技巧',1,'../images/detail/01/ic_08.png'),(11,'龙星历(签到·主题节·冲销·节令卡)',1,'../images/detail/02/ic_01.png'),(12,'妙笔丹青(拍照',1,'../images/detail/02/ic_05.png'),(13,'团长助手',1,'../images/detail/02/ic_09.png'),(14,'古剑精灵',1,'../images/detail/02/ic_02.png'),(15,'官方配装器',1,'../images/detail/02/ic_06.png'),(16,'清正系统',1,'../images/detail/02/ic_10.png'),(17,'奇桩战影',1,'../images/detail/02/ic_03.png'),(18,'技能喊话',1,'../images/detail/02/ic_07.png'),(19,'邮件',0,'null'),(20,'龙星商会（拍卖行）',1,'../images/detail/02/ic_04.png'),(21,'福缘系统',1,'../images/detail/02/ic_08.png'),(22,'转服功能',0,'null'),(23,'补天岭·隘口',0,'null'),(24,'步云洲',0,'null'),(25,'终南山麓',0,'null'),(26,'渭川塬',0,'null'),(27,'怀秀村',0,'null'),(28,'上淮青野',0,'null'),(29,'拔仙台',0,'null'),(30,'江都城区',0,'null'),(31,'长安城区',0,'null'),(32,'流花宫',0,'null'),(33,'长合山',0,'null'),(34,'天幕台',0,'null'),(35,'长阜苑',0,'null'),(36,'琅泉界桥·阴空',0,'null'),(37,'光明野',0,'null'),(38,'荒狼原',0,'null'),(39,'双树宫',0,'null'),(40,'象趾林',0,'null'),(41,'*古网剧情(施工中)',1,'../images/detail/04/ic_01.png'),(42,'人物',1,'../images/detail/04/ic_03.png'),(43,'历史',1,'../images/detail/04/ic_07.png'),(44,'*剧情章节回顾',0,'null'),(45,'列传·双瑛斩魔录·以文入道',1,'../images/detail/04/ic_04.png'),(46,'势力',0,'null'),(47,'*博物系统',0,'null'),(48,'剑主奇谭',1,'../images/detail/04/ic_05.png'),(49,'杂学考据',0,'null'),(50,'影音欣赏',1,'../images/detail/04/ic_02.png'),(51,'地理',1,'../images/detail/04/ic_06.png'),(52,'幕后',1,'../images/detail/04/ic_08.png'),(53,'角色状态参数',1,'../images/detail/05/ic_01.png'),(54,'坐骑',1,'../images/detail/05/ic_05.png'),(55,'名帖',1,'../images/detail/05/ic_09.png'),(56,'头衔·头像',1,'../images/detail/05/ic_02.png'),(57,'动作',1,'../images/detail/05/ic_06.png'),(58,'声望',1,'../images/detail/05/ic_10.png'),(59,'表情',1,'../images/detail/05/ic_03.png'),(60,'游戏货币',1,'../images/detail/05/ic_07.png'),(61,'外观摄形·武器·挂饰',1,'../images/detail/05/ic_11.png'),(62,'*职业专精和攻略',1,'../images/detail/05/ic_04.png'),(63,'照影',1,'../images/detail/05/ic_08.png'),(64,'*战斗技能机制',0,'null'),(65,'装备系统引导',1,'../images/detail/06/ic_04.png'),(66,'丹枢',1,'../images/detail/06/ic_08.png'),(67,'装备强化',1,'../images/detail/06/ic_01.png'),(68,'秘文册、装备掉落、鉴定',1,'../images/detail/06/ic_05.png'),(69,'装备蕴灵',1,'../images/detail/06/ic_09.png'),(70,'装备符咒（附魔）',1,'../images/detail/06/ic_02.png'),(71,'星蕴',1,'../images/detail/06/ic_06.png'),(72,'技能、星蕴特技、残卷',1,'../images/detail/06/ic_03.png'),(73,'装备宝石',1,'../images/detail/06/ic_07.png'),(74,'历世引导（PVE）',1,'../images/detail/07/ic_01.png'),(75,'妖魔试炼（世界BOSS）',1,'../images/detail/07/ic_05.png'),(76,'灵关突破/记忆之匣',1,'../images/detail/07/ic_09.png'),(77,' *秘境（副本）',1,'../images/detail/07/ic_02.png'),(78,'历世万法·青灯行者（青灯）',1,'../images/detail/07/ic_06.png'),(79,'野外怪物和掉落',1,'../images/detail/07/ic_10.png'),(80,'秘境讨伐',1,'../images/detail/07/ic_03.png'),(81,'历世万法·吃赏人（赤羽）',1,'../images/detail/07/ic_07.png'),(82,'集仙谱',1,'../images/detail/07/ic_11.png'),(83,'荡尽修罗',1,'../images/detail/07/ic_04.png'),(84,'光明野侠义/隐藏BOSS',1,'../images/detail/07/ic_08.png'),(85,'*斗法指引（PVP）',1,'../images/detail/08/ic_01.png'),(86,'*铭锋论剑（竞技场3V3）',0,'null'),(87,'嘉禾争茂/白鹤争唳',1,'../images/detail/08/ic_06.png'),(88,'*斗战狂沙·角斗',0,'null'),(89,'*斗法和阵营系统',0,'null'),(90,'*青锋小试（竞技场5V5）',0,'null'),(91,'*锋震龙吟',0,'null'),(92,'青云啸野',0,'null'),(93,'龙吟剑鸣（大型战场30V30）',1,'../images/detail/08/ic_02.png'),(94,'步云擂台',1,'../images/detail/08/ic_04.png'),(95,'冰晶敛云',1,'../images/detail/08/ic_07.png'),(96,'十洲剑试（小型战场）',1,'../images/detail/08/ic_03.png'),(97,'赤影争锋',1,'../images/detail/08/ic_05.png'),(98,'*诛邪定楚洲（浮空岛）',0,'null'),(99,'休闲引导（PVX)',1,'../images/detail/09/ic_01.png'),(100,'成就系统',1,'../images/detail/09/ic_05.png'),(101,'藏品·书册·英韶集',1,'../images/detail/09/ic_09.png'),(102,'三世书',1,'../images/detail/09/ic_13.png'),(103,'秘椟蕴珍',0,'null'),(104,'闲境',1,'../images/detail/09/ic_02.png'),(105,'历世万法·嗅宝罗盘（挖宝）',1,'../images/detail/09/ic_06.png'),(106,'枕剑仙乡·纸艺（纸灵境）',1,'../images/detail/09/ic_10.png'),(107,'职业试炼',1,'../images/detail/09/ic_14.png'),(108,'浴日金笼',1,'../images/detail/09/ic_03.png'),(109,'历世万法·千秋客（千秋戏）',1,'../images/detail/09/ic_07.png'),(110,'琴言',1,'../images/detail/09/ic_11.png'),(111,'地图探索',1,'../images/detail/09/ic_15.png'),(112,'真实之境·灵境归影·巧食解灵·夺冰',1,'../images/detail/09/ic_04.png'),(113,'异世绘',1,'../images/detail/09/ic_08.png'),(114,'仙府（家园系统）',1,'../images/detail/09/ic_12.png'),(115,'步云万事阁',1,'../images/detail/09/ic_16.png');

/*Table structure for table `ol_mid_01` */

DROP TABLE IF EXISTS `ol_mid_01`;

CREATE TABLE `ol_mid_01` (
  `id` int NOT NULL COMMENT '主键',
  `father_id` int NOT NULL COMMENT '外键（归属大类）',
  `child_id` int NOT NULL COMMENT '外键（大类条目）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `child_id_UNIQUE` (`child_id`),
  KEY `father_id_idx` (`father_id`),
  CONSTRAINT `child_id` FOREIGN KEY (`child_id`) REFERENCES `ol_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='古剑奇谭网络版-归属大类与大类条目中间表';

/*Data for the table `ol_mid_01` */

insert  into `ol_mid_01`(`id`,`father_id`,`child_id`) values (0,0,0),(1,0,1),(2,0,2),(3,0,3),(4,0,4),(5,0,5),(6,0,6),(7,0,7),(8,0,8),(9,0,9),(10,0,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,2,23),(24,2,24),(25,2,25),(26,2,26),(27,2,27),(28,2,28),(29,2,29),(30,2,30),(31,2,31),(32,2,32),(33,2,33),(34,2,34),(35,2,35),(36,2,36),(37,2,37),(38,2,38),(39,2,39),(40,2,40),(41,3,41),(42,3,42),(43,3,43),(44,3,44),(45,3,45),(46,3,46),(47,3,47),(48,3,48),(49,3,49),(50,3,50),(51,3,51),(52,3,52),(53,4,53),(54,4,54),(55,4,55),(56,4,56),(57,4,57),(58,4,58),(59,4,59),(60,4,60),(61,4,61),(62,4,62),(63,4,63),(64,5,64),(65,5,65),(66,5,66),(67,5,67),(68,5,68),(69,5,69),(70,5,70),(71,5,71),(72,5,72),(73,5,73),(74,6,74),(75,6,75),(76,6,76),(77,6,77),(78,6,78),(79,6,79),(80,6,80),(81,6,81),(82,6,82),(83,6,83),(84,6,84),(85,7,85),(86,7,86),(87,7,87),(88,7,88),(89,7,89),(90,7,90),(91,7,91),(92,7,92),(93,7,93),(94,7,94),(95,7,95),(96,7,96),(97,7,97),(98,7,98),(99,8,99),(100,8,100),(101,8,101),(102,8,102),(103,8,103),(104,8,104),(105,8,105),(106,8,106),(107,8,107),(108,8,108),(109,8,109),(110,8,110),(111,8,111),(112,8,112),(113,8,113),(114,8,114),(115,8,115);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
