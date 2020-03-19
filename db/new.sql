/*
SQLyog v10.2 
MySQL - 5.5.5-10.2.14-MariaDB-log : Database - ym_new
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ym_new` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ym_new`;

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `pid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '上级菜单，0为顶级菜单',
  `mc` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '图标url',
  `px` int(11) unsigned NOT NULL DEFAULT 100 COMMENT '排序,小靠前',
  `zt` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT '菜单状态：0代表删除，1代表正常，2代表停用',
  `cjsj` datetime DEFAULT NULL COMMENT '创建时间',
  `gxsj` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='菜单表';

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mc` varchar(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `sm` varchar(20) NOT NULL DEFAULT '' COMMENT '角色说明',
  `bz` varchar(300) NOT NULL DEFAULT '' COMMENT '备注',
  `zt` tinyint(4) DEFAULT 1 COMMENT '角色状态：0代表删除，1代表正常，2代表停用',
  `cjsj` datetime DEFAULT NULL COMMENT '创建时间',
  `gxsj` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色表';

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '角色id',
  `menuid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色-菜单-权限关联表';

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `nc` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `xb` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT '性别',
  `dh` varchar(30) NOT NULL DEFAULT '' COMMENT '电话',
  `dzyx` varchar(50) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `zhyxq` datetime DEFAULT NULL COMMENT '账户有效期',
  `mmyxq` datetime DEFAULT NULL COMMENT '密码有效期',
  `zt` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT '用户状态：0代表删除，1代表正常，2代表锁定（停用）',
  `zjdlip` varchar(20) NOT NULL DEFAULT '' COMMENT '最近登陆ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '用户id',
  `roleid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与角色关联表';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
