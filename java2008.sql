/*
MySQL Backup
Source Server Version: 5.7.17
Source Database: java2008
Date: 2021/1/27 09:48:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `money` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2147483647 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图书id',
  `name` varchar(255) NOT NULL COMMENT '书名',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `price` double(10,2) DEFAULT NULL COMMENT '书价',
  `total` int(255) NOT NULL COMMENT '库存',
  `time` date DEFAULT NULL COMMENT '添加时间',
  `image` varchar(255) DEFAULT NULL COMMENT '图书图片',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `building`
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garden` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ceshi`
-- ----------------------------
DROP TABLE IF EXISTS `ceshi`;
CREATE TABLE `ceshi` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `deptno` int(11) NOT NULL,
  `dname` varchar(30) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `device`
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garden` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `emp`
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `empno` int(11) NOT NULL,
  `ename` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `mgr` int(11) DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `sal` double(7,2) DEFAULT NULL,
  `comm` double(7,2) DEFAULT NULL,
  `deptno` int(11) DEFAULT NULL,
  PRIMARY KEY (`empno`) USING BTREE,
  KEY `fk_emp_deptno` (`deptno`) USING BTREE,
  CONSTRAINT `fk_emp_deptno` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `free`
-- ----------------------------
DROP TABLE IF EXISTS `free`;
CREATE TABLE `free` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garden` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `free_detail`
-- ----------------------------
DROP TABLE IF EXISTS `free_detail`;
CREATE TABLE `free_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garden` varchar(50) DEFAULT NULL,
  `project` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `fromMoney` double(10,2) DEFAULT NULL,
  `actualMoney` double(10,2) DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL,
  `freeTime` date DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `garden`
-- ----------------------------
DROP TABLE IF EXISTS `garden`;
CREATE TABLE `garden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `area` double(10,2) DEFAULT NULL,
  `building` int(11) DEFAULT NULL,
  `green` varchar(30) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `house`
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garden` varchar(50) DEFAULT NULL,
  `buildingName` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `houseName` varchar(50) DEFAULT NULL,
  `householderName` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `houseNumber` int(11) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `husband`
-- ----------------------------
DROP TABLE IF EXISTS `husband`;
CREATE TABLE `husband` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `sal` double DEFAULT NULL,
  `wid` int(11) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garden` varchar(50) DEFAULT NULL,
  `house` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `identity` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `pet`
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(50) DEFAULT NULL,
  `person` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL,
  `adoptTime` date DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品的唯一主键',
  `t_id` int(11) DEFAULT NULL COMMENT '类别的主键id',
  `p_name` varchar(50) DEFAULT NULL COMMENT '商品的名称',
  `p_time` date DEFAULT NULL COMMENT '商品的上市时间',
  `p_image` varchar(100) DEFAULT NULL COMMENT '商品图片的路径',
  `p_price` decimal(12,2) DEFAULT NULL COMMENT '商品的价格',
  `p_state` int(11) DEFAULT NULL COMMENT '商品的热门指数',
  `p_info` varchar(200) DEFAULT NULL COMMENT '商品的描述',
  `isdel` int(1) DEFAULT NULL COMMENT '商品删除状态',
  PRIMARY KEY (`p_id`),
  KEY `FK_t_p_fk` (`t_id`),
  CONSTRAINT `FK_t_p_fk` FOREIGN KEY (`t_id`) REFERENCES `type` (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='商品模块的商品实体';

-- ----------------------------
--  Table structure for `st`
-- ----------------------------
DROP TABLE IF EXISTS `st`;
CREATE TABLE `st` (
  `sid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`sid`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(25) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(25) DEFAULT NULL,
  `job` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wife`
-- ----------------------------
DROP TABLE IF EXISTS `wife`;
CREATE TABLE `wife` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `pay` double DEFAULT NULL,
  `hid` int(11) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `account` VALUES ('1','jack','900'), ('2','rose','1100'), ('2147483646','aaa','2345'), ('2147483647','bbb',NULL);
INSERT INTO `book` VALUES ('2','三国演义','123','19.20','5','2020-12-24','\\upload1\\4b6caa6affd54670bada308e842a53e0.jfif','1'), ('5','武动乾坤','不知道','15.00','22','2020-12-01','\\upload1\\af126e9b7718417ba5029908f078a627.jfif','1'), ('6','武动乾坤1','13','5.00','13','2020-12-24','\\upload1\\f6dfc327b5eb473fa4254e6bb1a59649.jpg','0'), ('7','绝世唐门2','唐家三少1','512.00','22','2020-12-24',NULL,'1'), ('8','绝世唐门','唐家三少3','55.05','0','2020-12-24','\\upload1\\6f6e52b2db6946af89975bad965b181c.jfif','0'), ('9','JavaEE','威哥','520.00','123','2020-12-24',NULL,'0'), ('10','JavaScript','威嫂','100.00','10','2020-12-24',NULL,'0'), ('13','绝世唐门','六号','123.00','0','2020-12-17',NULL,'0'), ('17','手机鉴赏','柳','52.00','50','2020-12-12','','1'), ('18','会发生','阿达','50.00','50','2020-12-12','','1'), ('19','阿达萨达','阿萨德','20.00','30','2020-12-25','','1'), ('20','X就ZZ','查询','12.00','12','2020-12-24','\\upload1\\55a6c3c572484f838b06bb7e5c4ea6ea.png','1');
INSERT INTO `building` VALUES ('1','光谷小区','CJ20191210001','A栋','8','这是栋数表','2020-12-28'), ('2','光谷小区4','LH199901284','A栋4','2004','不知道写什么描述4','2020-12-29'), ('5','光谷小区2','LH199901282','A栋2','202','不知道写什么描述2','2020-12-29');
INSERT INTO `car` VALUES ('1','','许小嵩','黑色','鄂A8888','泡泡卡丁车','2020-12-28 00:00:00'), ('2','\\upload\\10\\9\\690997f914744e649fa4c7beeafaacf1.jpg','许小嵩2号','蓝色','鄂A8888','许小嵩的爱车','2020-12-29 23:47:35'), ('4','\\upload\\9\\4\\e2563dc8453e410a81b8b87c88d50c7c.jpg','吕小布','黑色','鄂A8886','泡泡卡丁车','2020-12-29 23:56:23');
INSERT INTO `ceshi` VALUES ('b7ca72b24f5611ebaeb2c85b76a5a328','不知道');
INSERT INTO `dept` VALUES ('10','ACCOUNTING','NEW YORK'), ('20','RESEARCH','DALLAS'), ('30','SALES','CHICAGO'), ('40','OPERATIONS','BOSTON'), ('50','人事部','WUHAN');
INSERT INTO `device` VALUES ('1','金华万府','CJ20200105002','健身器','小米','1000.00','2','2020-12-21','5','2020-12-29 00:00:00'), ('2','光谷小区0','LH199901280','篮球','乔丹','888.00','6','2020-12-30','5','2020-12-30 10:03:40');
INSERT INTO `emp` VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20'), ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30'), ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30'), ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20'), ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30'), ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30'), ('7777','CXK','SALESMAN','7839','1982-07-08','2300.00',NULL,NULL), ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10'), ('7788','SCOTT','ANALYST','7566','1987-04-19','3000.00',NULL,'20'), ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10'), ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30'), ('7876','ADAMS','CLERK','7788','1987-05-23','1100.00',NULL,'20'), ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30'), ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20'), ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');
INSERT INTO `free` VALUES ('1','东湖小区','	EP20200105002','电梯广告位','2020-12-29 00:00:00'), ('2','光谷小区0','LH199901280','停车位','2020-12-30 10:35:08');
INSERT INTO `free_detail` VALUES ('1','东湖小区','网球场','许小嵩','888.00','666.00','松鼠可以免费吆','2020-12-29','2020-12-15 00:00:00'), ('2','光谷小区1','停车位','许小嵩','888.00','666.00','这是收费明细的表','2020-12-30','2020-12-30 11:45:31');
INSERT INTO `garden` VALUES ('1','1001','金华小区111','金华1路','10000.00','6','10%','','2020-12-25'), ('3','1001','光谷小区','光谷智慧园','9999.00','9','66%','\\upload\\15\\2\\e723160cc3dd4ca5a1ca8205e57ad825.jpg','2020-12-28'), ('4','1002','光谷小区2','光谷智慧园2','9999.00','9','66%','\\upload\\4\\6\\a589816576674d29aabcab3eb65219dd.jpg','2020-12-29'), ('5','1001','光谷小区0','光谷智慧园0','8888.00','8','88%','\\upload\\0\\12\\b43b167dcecf4c16997cc18aecb052d9.jpg','2020-12-26'), ('7','LH199901284','A栋','爱仕达多','3242.00','23','34','\\upload\\9\\10\\85b25ba6d10748aa81d5fc710c2f72d0.jpg','2020-12-30'), ('8','1001','金华小区','金华1路','10000.00','6','10%','','2020-12-25'), ('9','1001','光谷小区','光谷智慧园','9999.00','9','66%','\\upload\\15\\2\\e723160cc3dd4ca5a1ca8205e57ad825.jpg','2020-12-28'), ('10','1002','光谷小区2','光谷智慧园2','9999.00','9','66%','\\upload\\4\\6\\a589816576674d29aabcab3eb65219dd.jpg','2020-12-29'), ('11','1001','光谷小区0','光谷智慧园0','8888.00','8','88%','\\upload\\0\\12\\b43b167dcecf4c16997cc18aecb052d9.jpg','2020-12-26'), ('36','LH199901280','A栋','流芳校区','3242.00','23','34','','2021-01-15'), ('37','LH199901280','A栋','流芳校区','3242.00','23','34','','2021-01-15'), ('38','LH199901280','A栋','流芳校区','3242.00','23','34','\\upload\\6c2ae68d98a04eb5931990fd76bb1c4b.jpg','2021-01-15'), ('39','LH199901280','A栋','流芳校区','3242.00','23','34','\\upload\\8544f286fe7e4f0e82a68186c50f2b9b.jpg','2021-01-15'), ('40','201710159223','鹏翔花园','流芳街道','3242.00','10','33%','\\upload\\7f5b7467242b49458f2d200ab44a5181.jpg','2021-01-15'), ('42','LH199901284','许小嵩123','流芳校区123','3243.00','23','33',NULL,NULL), ('44','LH199901280','A栋1','流芳校区1','3242.00','56','33%','\\upload\\f3df6d25e57948efacc9ff7e8f51aa2d.jpg','2021-01-15');
INSERT INTO `house` VALUES ('1','光谷小区','A栋','HM20191213002','星宇府邸','山炮','13026329760','6','1','2','还行','2020-12-28'), ('2','光谷小区1','B栋','LH19990128','爱情公寓','张伟','12026329870','6','2','3','不知道写什么描述','2020-12-28'), ('6','光谷小区4','A栋4444','LH199901282','爱情公寓2222','张小贤','12026329879','8','3','8','不知道写什么描述4','2020-12-28'), ('7','光谷小区3','C栋3','LH199901283','爱情公寓3','张小贤','12026329874','7','7','7','不知道写什么描述3','2020-12-28');
INSERT INTO `husband` VALUES ('1','jack','2500','1001');
INSERT INTO `person` VALUES ('1','光谷小区','光谷小区A栋','张三',NULL,'420682199901285012','13026329860','高级工程师','1999-01-28','男','1','好人','2020-12-28 00:00:00'), ('3','光谷小区2','光谷小区2','许小嵩2号','\\upload\\15\\7\\b7babe7e5a724b37bb289c208d62fafc.jpg','42082019901275067','12026329867','歌手','2020-12-29','男','2','这是人员管理的表','2020-12-29 20:12:55');
INSERT INTO `pet` VALUES ('1',NULL,'小嵩','松鼠','灰色','我们都是小松鼠鸭','2020-12-29','2020-12-29 00:00:00'), ('2','\\upload\\10\\10\\91ca043b560b41e1998aa35d147e6ad0.jpg','许小嵩','泰迪','黄色','这是一只像老虎的猫咪','2020-12-30','2020-12-30 00:43:28');
INSERT INTO `product` VALUES ('1','1','苹果12','2020-08-04','image/6e931fa1bdf644669ca1f27590ba8e80.jpg','8888.00','5','苹果机，就是牛!','1'), ('2','1','红米3','2021-01-06','image/liebiao_hongmin4.jpg','1999.00','4','红米4手机，主打性价比！吸引年轻','1'), ('3','1','红米4','2020-01-01','image/liebiao_hongmin4.jpg','1999.00','4','红米4手机，主打性价比！吸引年轻','1'), ('4','1','红米4','2020-01-01','image/liebiao_hongmin4.jpg','1999.00','4','红米4手机，主打性价比！吸引年轻','1'), ('5','1','小米5','2020-01-01','image/liebiao_hongmin4.jpg','2999.00','4','红米4手机，主打性价比！吸引年轻','1'), ('6','1','小米5','2020-01-01','image/liebiao_hongmin4.jpg','2999.00','4','红米4手机，主打性价比！吸引年轻','1'), ('7','1','小米5','2020-01-01','image/liebiao_hongmin4.jpg','2999.00','4','红米4手机，主打性价比！吸引年轻','1'), ('8','1','小米5','2020-01-01','image/liebiao_hongmin4.jpg','2999.00','4','红米4手机，主打性价比！吸引年轻','1'), ('9','1','小米5','2020-01-01','image/liebiao_hongmin4.jpg','2999.00','4','红米4手机，主打性价比！吸引年轻','1'), ('10','1','红米4','2020-01-01','image/liebiao_hongmin4.jpg','1999.00','4','红米4手机，主打性价比！吸引年轻','1'), ('11','1','红米4','2020-01-01','image/liebiao_hongmin4.jpg','1999.00','4','红米4手机，主打性价比！吸引年轻','1'), ('13','2','红米4手机壳','2020-01-01','image/peijian2.jpg','20.00','5','红米4手机壳，用心保护你的手机','1'), ('14','2','红米5手机壳','2020-01-01','image/peijian2.jpg','25.00','5','红米4手机壳，用心保护你的手机','1'), ('15','2','红米5手机壳','2020-01-01','image/peijian2.jpg','25.00','5','红米4手机壳，用心保护你的手机','1'), ('16','2','红米4手机壳','2020-01-01','image/peijian2.jpg','20.00','5','红米4手机壳，用心保护你的手机','1'), ('17','2','红米4手机壳','2020-01-01','image/peijian2.jpg','20.00','5','红米4手机壳，用心保护你的手机','1'), ('18','2','红米4手机壳','2020-01-01','image/peijian2.jpg','20.00','5','红米4手机壳，用心保护你的手机','1'), ('19','2','红米4手机壳','2020-01-01','image/peijian2.jpg','20.00','5','红米4手机壳，用心保护你的手机','1'), ('20','2','红米4手机壳','2020-01-01','image/peijian2.jpg','20.00','5','红米4手机壳，用心保护你的手机','1'), ('21','2','红米4手机壳','2020-01-01','image/peijian2.jpg','20.00','5','红米4手机壳，用心保护你的手机','1'), ('23','2','红米4手机壳','2020-01-01','image/peijian2.jpg','20.00','5','红米4手机壳，用心保护你的手机','1'), ('24','2','红米4手机壳','2020-01-01','image/peijian2.jpg','20.00','5','红米4手机壳，用心保护你的手机','1'), ('27','1','苹果','2020-08-04','image/ab2c6cc34b474631aaa5ff7a65338df7.jpg','9999.00','5','苹果机，就是牛！','1'), ('28','4','吃鸡神器','2020-08-04','image/ad9f2fd7e3ab463aa34a21e3f4a442c2.jpg','59.80','4',' 吃鸡神器一键连发连点游戏手柄自动压枪王者荣耀外设六指手机散热器外挂苹果安卓通用和平小精英 【电竞版-1200毫安-一秒12枪】六指散热手柄','1'), ('29','4','手机吃鸡神器辅助游戏手柄','2020-08-04','image/1bec2c6f7feb4b0582fd9534ff627e6a.jpg','119.00','5','指四指按键6压枪外设套装和平精英绝地求生王牌战士明日之后一体式 插电式六指制冷散热吃鸡神器','1'), ('30','2','手机挂绳','2020-08-04','image/980de2948fd04580ba2a65378d25a194.jpg','31.00','5','捣旦国度手机挂绳新款手机链中国风男挂件创意苹果指环扣情侣oppo吊绳vivo可拆卸 钛钢指环挂绳【道法自然】-黑色','1'), ('31','1','苹果','2020-08-06','image/7e9e76b45bae4259bc7696cc9b091e85.jpg','5999.00','5','苹果机，真垃圾！','1'), ('32','1','摩托罗拉','2020-08-07','image/da05174d08954841b526e04601491098.jpg','1000.00','5','好用','1');
INSERT INTO `st` VALUES ('1','1001'), ('1','1002'), ('2','1001'), ('2','1002');
INSERT INTO `student` VALUES ('1','zhangsan','99'), ('2','lisi','98');
INSERT INTO `teacher` VALUES ('1001','jack','java开发工程师'), ('1002','rose','python开发工程师');
INSERT INTO `user` VALUES ('1','admin','admin','男','13026329860',NULL,NULL), ('2','123','123',NULL,NULL,NULL,NULL);
INSERT INTO `wife` VALUES ('1001','rose','2000','1');
