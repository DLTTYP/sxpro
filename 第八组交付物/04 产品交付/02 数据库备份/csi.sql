/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : csi

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-05-31 16:49:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for firstmenu
-- ----------------------------
DROP TABLE IF EXISTS `firstmenu`;
CREATE TABLE `firstmenu` (
  `menuid` int(11) NOT NULL,
  `menuname` char(255) NOT NULL,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of firstmenu
-- ----------------------------
INSERT INTO `firstmenu` VALUES ('1', '用户管理');
INSERT INTO `firstmenu` VALUES ('2', '部门管理');
INSERT INTO `firstmenu` VALUES ('3', '职位管理');
INSERT INTO `firstmenu` VALUES ('4', '员工管理');
INSERT INTO `firstmenu` VALUES ('5', '公告管理');

-- ----------------------------
-- Table structure for first_menu
-- ----------------------------
DROP TABLE IF EXISTS `first_menu`;
CREATE TABLE `first_menu` (
  `fid` int(10) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of first_menu
-- ----------------------------
INSERT INTO `first_menu` VALUES ('1', '用户管理');
INSERT INTO `first_menu` VALUES ('2', '部门管理');
INSERT INTO `first_menu` VALUES ('3', '职位管理');
INSERT INTO `first_menu` VALUES ('4', ' 员工管理');
INSERT INTO `first_menu` VALUES ('5', ' 公告管理');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `jid` int(2) NOT NULL,
  `jname` varchar(12) NOT NULL,
  `jtext` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`jid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('111', '职员', '职员');
INSERT INTO `job` VALUES ('112', 'Java开发工程师', 'Java开发工程师');
INSERT INTO `job` VALUES ('113', 'Java中级开发工程师', 'Java中级开发工程师');
INSERT INTO `job` VALUES ('114', 'Java高级开发工程师', 'Java高级开发工程师');

-- ----------------------------
-- Table structure for notion
-- ----------------------------
DROP TABLE IF EXISTS `notion`;
CREATE TABLE `notion` (
  `nid` int(11) NOT NULL,
  `nname` varchar(12) NOT NULL,
  `ntext` varchar(20) DEFAULT NULL,
  `ndata` varchar(20) DEFAULT NULL,
  `cer` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notion
-- ----------------------------
INSERT INTO `notion` VALUES ('1', '参加会议通知', '今天有技术部有会议', '2019年4月6日', 'songyq');

-- ----------------------------
-- Table structure for part
-- ----------------------------
DROP TABLE IF EXISTS `part`;
CREATE TABLE `part` (
  `pid` int(2) NOT NULL,
  `sname` varchar(12) NOT NULL,
  `text` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of part
-- ----------------------------
INSERT INTO `part` VALUES ('1', '技术部', '技术部');
INSERT INTO `part` VALUES ('2', '运营部', '运营部');
INSERT INTO `part` VALUES ('3', '财务部', '财务部');
INSERT INTO `part` VALUES ('4', '总公办', '总公办');

-- ----------------------------
-- Table structure for secondmenu
-- ----------------------------
DROP TABLE IF EXISTS `secondmenu`;
CREATE TABLE `secondmenu` (
  `smenuid` int(11) NOT NULL,
  `smenuname` char(255) NOT NULL,
  `menuid` int(11) NOT NULL,
  `spath` char(255) DEFAULT NULL,
  PRIMARY KEY (`smenuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of secondmenu
-- ----------------------------
INSERT INTO `secondmenu` VALUES ('1', '用户查询', '1', 'ygkq.jsp');
INSERT INTO `secondmenu` VALUES ('2', '添加用户', '1', 'ygkq.jsp');
INSERT INTO `secondmenu` VALUES ('3', '部门查询', '2', 'ygkq.jsp');
INSERT INTO `secondmenu` VALUES ('4', '添加部门', '2', 'ygkq.jsp');
INSERT INTO `secondmenu` VALUES ('5', '职位查询', '3', 'ygkq.jsp');
INSERT INTO `secondmenu` VALUES ('6', '添加职位', '3', 'ygkq.jsp');
INSERT INTO `secondmenu` VALUES ('7', '员工查询', '4', 'searchWorker.jsp');
INSERT INTO `secondmenu` VALUES ('8', '添加员工', '4', 'addWorker.jsp');
INSERT INTO `secondmenu` VALUES ('9', '公告查询', '5', 'ygkq.jsp');
INSERT INTO `secondmenu` VALUES ('10', '添加公告', '5', 'ygkq.jsp');
INSERT INTO `secondmenu` VALUES ('11', '文档查询', '6', 'ygkq.jsp');
INSERT INTO `secondmenu` VALUES ('12', '上传文档', '6', 'ygkq.jsp');

-- ----------------------------
-- Table structure for second_menu
-- ----------------------------
DROP TABLE IF EXISTS `second_menu`;
CREATE TABLE `second_menu` (
  `sid` int(20) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `spath` varchar(50) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of second_menu
-- ----------------------------
INSERT INTO `second_menu` VALUES ('1', '用户查询', ' search.jsp', '1');
INSERT INTO `second_menu` VALUES ('2', '添加用户', 'addyonghu.jsp', '1');
INSERT INTO `second_menu` VALUES ('3', '部门查询', 'searchDept.jsp', '2');
INSERT INTO `second_menu` VALUES ('4', ' 添加部门', 'addDept.jsp', '2');
INSERT INTO `second_menu` VALUES ('5', '职位查询', 'searchpost.jsp', '3');
INSERT INTO `second_menu` VALUES ('6', '添加职位', 'addpost.jsp', '3');
INSERT INTO `second_menu` VALUES ('7', '员工查询', 'searchWorker.jsp', '4');
INSERT INTO `second_menu` VALUES ('8', ' 添加员工', 'addWorker.jsp', '4');
INSERT INTO `second_menu` VALUES ('9', '公告查询', 'searchNotice.jsp', '5');
INSERT INTO `second_menu` VALUES ('10', '添加公告', 'addnotice.jsp', '5');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `sid` varchar(12) NOT NULL,
  `ssname` varchar(12) NOT NULL,
  `sex` char(1) NOT NULL,
  `pnumber` varchar(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `jname` varchar(12) DEFAULT NULL,
  `eb` varchar(12) DEFAULT NULL,
  `idc` varchar(20) NOT NULL,
  `sname` varchar(12) DEFAULT NULL,
  `address` varchar(12) DEFAULT NULL,
  `bdata` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('111111111', '爱丽丝', '女', '13902001111', '251425887@qq.com', '经理', '本科', '4328011988', '技术部', '广州天河', '2016年3月14日');
INSERT INTO `staff` VALUES ('111111112', '杰克', '女', '4247242', '251425887@qq.com', '职员', null, '22623', '运营部', '43234', '2016年3月14日');
INSERT INTO `staff` VALUES ('111111113', '邹格明', '男', '13122345567', '11@163.com', '职员', '大专', '210303198001010010', '技术部', '大连', '2019年4月11日');

-- ----------------------------
-- Table structure for tb_dept
-- ----------------------------
DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept` (
  `did` int(11) NOT NULL,
  `name` char(255) NOT NULL,
  `info` char(255) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_dept
-- ----------------------------
INSERT INTO `tb_dept` VALUES ('1', '技术部', '公司技术部');
INSERT INTO `tb_dept` VALUES ('2', '运营部', '公司运营部');
INSERT INTO `tb_dept` VALUES ('3', '财务部', '公司财务部');
INSERT INTO `tb_dept` VALUES ('4', '总务部', '公司总务部');

-- ----------------------------
-- Table structure for tb_notice
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice`;
CREATE TABLE `tb_notice` (
  `nid` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `uid` int(20) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_notice
-- ----------------------------
INSERT INTO `tb_notice` VALUES ('12', '12', '1221', '05/10/2019', '12');

-- ----------------------------
-- Table structure for tb_post
-- ----------------------------
DROP TABLE IF EXISTS `tb_post`;
CREATE TABLE `tb_post` (
  `pid` int(11) NOT NULL,
  `name` char(255) NOT NULL,
  `info` char(255) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_post
-- ----------------------------
INSERT INTO `tb_post` VALUES ('1', 'Java高级工程师', '高级工程师');
INSERT INTO `tb_post` VALUES ('2', '运营师', '高级运营师');
INSERT INTO `tb_post` VALUES ('3', '财务师', '高级财务师');
INSERT INTO `tb_post` VALUES ('4', '总务师', '高级总务师');
INSERT INTO `tb_post` VALUES ('5', 'JAVA架构师', 'JAVA架构师');

-- ----------------------------
-- Table structure for tb_workers
-- ----------------------------
DROP TABLE IF EXISTS `tb_workers`;
CREATE TABLE `tb_workers` (
  `wId` int(11) NOT NULL,
  `wName` char(255) NOT NULL,
  `sex` char(255) NOT NULL,
  `phone` char(255) DEFAULT NULL,
  `email` char(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `education` char(255) DEFAULT NULL,
  `idNumber` char(255) DEFAULT NULL,
  `address` char(255) DEFAULT NULL,
  `creatTime` char(255) DEFAULT NULL,
  `birthday` char(255) DEFAULT NULL,
  `interests` char(11) DEFAULT NULL,
  `qq` char(255) DEFAULT NULL,
  `political` char(255) DEFAULT NULL,
  `postcode` char(255) DEFAULT NULL,
  `family` char(255) DEFAULT NULL,
  `major` char(255) DEFAULT NULL,
  `remarks` char(255) DEFAULT NULL,
  `did` int(255) DEFAULT NULL,
  `dName` char(255) DEFAULT NULL,
  `pName` char(255) DEFAULT NULL,
  PRIMARY KEY (`wId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_workers
-- ----------------------------
INSERT INTO `tb_workers` VALUES ('2', '烈女', '女', '1241125125', 'lienv@gmail.com', '2', '研究生', '215125124124', '四川', '2016.07.05', '1998.07.05', '跳', '13276828682', '党员', '321772', '满族', '文秘', '俄罗斯友人', '2', null, null);
INSERT INTO `tb_workers` VALUES ('3', '茄子', '男', '18736278482', 'qiezi@sina.com', '3', '本科', '399029198973857632', '茂名', '2016.07.05', '1995.04.07', 'RAP', '1098738472', '党员', '588273', '汉族', '土木', '外号茂名公鸡', '3', null, null);
INSERT INTO `tb_workers` VALUES ('4', '椰汁糕', '男', '19084726212', 'yezhigao@gmail.com', '1', '本科', '500283188905832859', '兰州', '2016.07.05', '02/16/1995', '篮球', '1326728482', '团员', '302304', '回族', '计算机', '来自兰州', '1', null, null);
INSERT INTO `tb_workers` VALUES ('5', '仙织', '女', '165728272', 'xianzhi@gmail.com', '6', '研究生', '500212199803068374', '成都', '2016.07.05', '1999.07.08', '吃', '1828127162', '党员', '592722', '维吾尔族', '金融管理', '从天而降的', '4', null, null);

-- ----------------------------
-- Table structure for text
-- ----------------------------
DROP TABLE IF EXISTS `text`;
CREATE TABLE `text` (
  `tid` int(12) NOT NULL,
  `text` varchar(12) NOT NULL,
  `tdata` varchar(12) NOT NULL,
  `tsid` varchar(12) DEFAULT NULL,
  `ttext` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of text
-- ----------------------------
INSERT INTO `text` VALUES ('1', '文件哈', '2019年4月6日', 'songyq', '这是一个文件');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(12) NOT NULL,
  `name` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `status` int(2) DEFAULT NULL,
  `data` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('11', 'songyq', '123456', '2', '2016年3月12日');
INSERT INTO `user` VALUES ('12', 'wangxh', '234567', '1', '2019年4月6日');

-- ----------------------------
-- Table structure for user1
-- ----------------------------
DROP TABLE IF EXISTS `user1`;
CREATE TABLE `user1` (
  `uid` varchar(12) NOT NULL,
  `uname` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `power` varchar(12) DEFAULT NULL,
  `time` varchar(12) NOT NULL,
  `state` varchar(12) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user1
-- ----------------------------
INSERT INTO `user1` VALUES ('1', '1', '1', '普通用户', '2019/5/31', '1');
INSERT INTO `user1` VALUES ('111', '111', '11111', '管理员', '2019/5/28', '1');
INSERT INTO `user1` VALUES ('12', '梁旭', '123', '普通用户', '2019/5/28', '1');
INSERT INTO `user1` VALUES ('2', '五百', '123456', '管理员', '20190521', '1');
