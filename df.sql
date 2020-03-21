/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50158
Source Host           : localhost:3306
Source Database       : df

Target Server Type    : MYSQL
Target Server Version : 50158
File Encoding         : 65001

Date: 2019-06-22 00:48:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `comment_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `rid` (`rid`),
  KEY `uid` (`uid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `reply` (`rid`) ON DELETE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('4', '降低哦是你的', '6', '38', '2019-6-17 15:06:06');

-- ----------------------------
-- Table structure for `image`
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=1314 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', 'http://static.yidianzixun.com/beauty/imgs/i_000cfwku.jpg');
INSERT INTO `image` VALUES ('2', 'http://static.yidianzixun.com/beauty/imgs/i_000cgKgr.jpg');
INSERT INTO `image` VALUES ('3', 'http://static.yidianzixun.com/beauty/imgs/i_000cgBkK.jpg');
INSERT INTO `image` VALUES ('4', 'http://static.yidianzixun.com/beauty/imgs/i_000cg7If.jpg');
INSERT INTO `image` VALUES ('5', 'http://static.yidianzixun.com/beauty/imgs/i_000cfrLH.jpg');
INSERT INTO `image` VALUES ('6', 'http://static.yidianzixun.com/beauty/imgs/i_000cg947.jpg');
INSERT INTO `image` VALUES ('7', 'http://static.yidianzixun.com/beauty/imgs/i_000cgEOV.jpg');
INSERT INTO `image` VALUES ('8', 'http://static.yidianzixun.com/beauty/imgs/i_000cgDVm.jpg');
INSERT INTO `image` VALUES ('9', 'http://static.yidianzixun.com/beauty/imgs/i_000cgArb.jpg');
INSERT INTO `image` VALUES ('10', 'http://static.yidianzixun.com/beauty/imgs/i_000cfsE0.jpg');
INSERT INTO `image` VALUES ('11', 'http://static.yidianzixun.com/beauty/imgs/i_000cfowK.jpg');
INSERT INTO `image` VALUES ('12', 'http://static.yidianzixun.com/beauty/imgs/i_000cg6Pw.jpg');
INSERT INTO `image` VALUES ('13', 'http://static.yidianzixun.com/beauty/imgs/i_000cg10J.jpg');
INSERT INTO `image` VALUES ('14', 'http://static.yidianzixun.com/beauty/imgs/i_000cg07a.jpg');
INSERT INTO `image` VALUES ('15', 'http://static.yidianzixun.com/beauty/imgs/i_000cft6j.jpg');
INSERT INTO `image` VALUES ('16', 'http://static.yidianzixun.com/beauty/imgs/i_000cfuzS.jpg');
INSERT INTO `image` VALUES ('17', 'http://static.yidianzixun.com/beauty/imgs/i_000cfvsB.jpg');
INSERT INTO `image` VALUES ('18', 'http://static.yidianzixun.com/beauty/imgs/i_000cfzP5.jpg');
INSERT INTO `image` VALUES ('19', 'http://static.yidianzixun.com/beauty/imgs/i_000cgZgW.jpg');
INSERT INTO `image` VALUES ('20', 'http://static.yidianzixun.com/beauty/imgs/i_000cgYnn.jpg');
INSERT INTO `image` VALUES ('21', 'http://static.yidianzixun.com/beauty/imgs/i_000cgXv4.jpg');
INSERT INTO `image` VALUES ('22', 'http://static.yidianzixun.com/beauty/imgs/i_000cgW2L.jpg');
INSERT INTO `image` VALUES ('23', 'http://static.yidianzixun.com/beauty/imgs/i_000cgV9c.jpg');
INSERT INTO `image` VALUES ('24', 'http://static.yidianzixun.com/beauty/imgs/i_000cgUGt.jpg');
INSERT INTO `image` VALUES ('25', 'http://static.yidianzixun.com/beauty/imgs/i_000cgTOA.jpg');
INSERT INTO `image` VALUES ('26', 'http://static.yidianzixun.com/beauty/imgs/i_000cgSVR.jpg');
INSERT INTO `image` VALUES ('27', 'http://static.yidianzixun.com/beauty/imgs/i_000cgQjz.jpg');
INSERT INTO `image` VALUES ('28', 'http://static.yidianzixun.com/beauty/imgs/i_000cgPrG.jpg');
INSERT INTO `image` VALUES ('29', 'http://static.yidianzixun.com/beauty/imgs/i_000cgODl.jpg');
INSERT INTO `image` VALUES ('30', 'http://static.yidianzixun.com/beauty/imgs/i_000cgNL2.jpg');
INSERT INTO `image` VALUES ('31', 'http://static.yidianzixun.com/beauty/imgs/i_000cgMSJ.jpg');
INSERT INTO `image` VALUES ('32', 'http://static.yidianzixun.com/beauty/imgs/i_000cgLZa.jpg');
INSERT INTO `image` VALUES ('33', 'http://static.yidianzixun.com/beauty/imgs/i_000cgJo8.jpg');
INSERT INTO `image` VALUES ('34', 'http://static.yidianzixun.com/beauty/imgs/i_000cgIvP.jpg');
INSERT INTO `image` VALUES ('35', 'http://static.yidianzixun.com/beauty/imgs/i_000cgH2g.jpg');
INSERT INTO `image` VALUES ('36', 'http://static.yidianzixun.com/beauty/imgs/i_000cgG9x.jpg');
INSERT INTO `image` VALUES ('37', 'http://static.yidianzixun.com/beauty/imgs/i_000cgFHE.jpg');
INSERT INTO `image` VALUES ('38', 'http://static.yidianzixun.com/beauty/imgs/i_000cgCd3.jpg');
INSERT INTO `image` VALUES ('39', 'http://static.yidianzixun.com/beauty/imgs/i_000cg8BO.jpg');
INSERT INTO `image` VALUES ('40', 'http://static.yidianzixun.com/beauty/imgs/i_000cfxdd.jpg');
INSERT INTO `image` VALUES ('41', 'http://static.yidianzixun.com/beauty/imgs/i_000cfyWM.jpg');
INSERT INTO `image` VALUES ('42', 'http://static.yidianzixun.com/beauty/imgs/i_000cg2t2.jpg');
INSERT INTO `image` VALUES ('43', 'http://static.yidianzixun.com/beauty/imgs/i_000cg3ll.jpg');
INSERT INTO `image` VALUES ('44', 'http://static.yidianzixun.com/beauty/imgs/i_000cg4eU.jpg');
INSERT INTO `image` VALUES ('45', 'http://static.yidianzixun.com/beauty/imgs/i_000cg5XD.jpg');
INSERT INTO `image` VALUES ('46', 'http://static.yidianzixun.com/beauty/imgs/i_000cfn3b.jpg');
INSERT INTO `image` VALUES ('47', 'http://static.yidianzixun.com/beauty/imgs/i_000cfmAs.jpg');
INSERT INTO `image` VALUES ('48', 'http://static.yidianzixun.com/beauty/imgs/i_000cfpZp.jpg');
INSERT INTO `image` VALUES ('49', 'http://static.yidianzixun.com/beauty/imgs/i_000cfqSY.jpg');
INSERT INTO `image` VALUES ('50', 'http://static.yidianzixun.com/beauty/imgs/i_000cgRci.jpg');
INSERT INTO `image` VALUES ('82', 'http://static.yidianzixun.com/beauty/imgs/i_000cf89B.jpg');
INSERT INTO `image` VALUES ('83', 'http://static.yidianzixun.com/beauty/imgs/i_000cfDTZ.jpg');
INSERT INTO `image` VALUES ('87', 'http://static.yidianzixun.com/beauty/imgs/i_000cf3jY.jpg');
INSERT INTO `image` VALUES ('88', 'http://static.yidianzixun.com/beauty/imgs/i_000cf1y6.jpg');
INSERT INTO `image` VALUES ('89', 'http://static.yidianzixun.com/beauty/imgs/i_000cfBi7.jpg');
INSERT INTO `image` VALUES ('91', 'http://static.yidianzixun.com/beauty/imgs/i_000caBX4.jpg');
INSERT INTO `image` VALUES ('92', 'http://static.yidianzixun.com/beauty/imgs/i_000cf4cH.jpg');
INSERT INTO `image` VALUES ('93', 'http://static.yidianzixun.com/beauty/imgs/i_000cf05N.jpg');
INSERT INTO `image` VALUES ('94', 'http://static.yidianzixun.com/beauty/imgs/i_000cfCaq.jpg');
INSERT INTO `image` VALUES ('96', 'http://static.yidianzixun.com/beauty/imgs/i_000cXb6f.jpg');
INSERT INTO `image` VALUES ('101', 'http://static.yidianzixun.com/beauty/imgs/i_000cevpy.jpg');
INSERT INTO `image` VALUES ('103', 'http://static.yidianzixun.com/beauty/imgs/i_000cdlDj.jpg');
INSERT INTO `image` VALUES ('105', 'http://static.yidianzixun.com/beauty/imgs/i_000ceou7.jpg');
INSERT INTO `image` VALUES ('107', 'http://static.yidianzixun.com/beauty/imgs/i_000ceZc6.jpg');
INSERT INTO `image` VALUES ('108', 'http://static.yidianzixun.com/beauty/imgs/i_000cem8f.jpg');
INSERT INTO `image` VALUES ('109', 'http://static.yidianzixun.com/beauty/imgs/i_000cf2qp.jpg');
INSERT INTO `image` VALUES ('113', 'http://static.yidianzixun.com/beauty/imgs/i_000cdNEP.jpg');
INSERT INTO `image` VALUES ('115', 'http://static.yidianzixun.com/beauty/imgs/i_000cde2e.jpg');
INSERT INTO `image` VALUES ('116', 'http://static.yidianzixun.com/beauty/imgs/i_000cbIkM.jpg');
INSERT INTO `image` VALUES ('117', 'http://static.yidianzixun.com/beauty/imgs/i_000cZqAk.jpg');
INSERT INTO `image` VALUES ('119', 'http://static.yidianzixun.com/beauty/imgs/i_000cdfvN.jpg');
INSERT INTO `image` VALUES ('120', 'http://static.yidianzixun.com/beauty/imgs/i_000ccYex.jpg');
INSERT INTO `image` VALUES ('121', 'http://static.yidianzixun.com/beauty/imgs/i_000cZuhe.jpg');
INSERT INTO `image` VALUES ('123', 'http://static.yidianzixun.com/beauty/imgs/i_000ccd7i.jpg');
INSERT INTO `image` VALUES ('124', 'http://static.yidianzixun.com/beauty/imgs/i_000cWiFX.jpg');
INSERT INTO `image` VALUES ('126', 'http://static.yidianzixun.com/beauty/imgs/i_000ca8y8.jpg');
INSERT INTO `image` VALUES ('127', 'http://static.yidianzixun.com/beauty/imgs/i_000cdWvi.jpg');
INSERT INTO `image` VALUES ('129', 'http://static.yidianzixun.com/beauty/imgs/i_000caF3y.jpg');
INSERT INTO `image` VALUES ('134', 'http://static.yidianzixun.com/beauty/imgs/i_000caJas.jpg');
INSERT INTO `image` VALUES ('135', 'http://static.yidianzixun.com/beauty/imgs/i_000caaP7.jpg');
INSERT INTO `image` VALUES ('136', 'http://static.yidianzixun.com/beauty/imgs/i_000cZQPy.jpg');
INSERT INTO `image` VALUES ('138', 'http://static.yidianzixun.com/beauty/imgs/i_000cdoru.jpg');
INSERT INTO `image` VALUES ('140', 'http://static.yidianzixun.com/beauty/imgs/i_000caMF3.jpg');
INSERT INTO `image` VALUES ('142', 'http://static.yidianzixun.com/beauty/imgs/i_000cbLOX.jpg');
INSERT INTO `image` VALUES ('143', 'http://static.yidianzixun.com/beauty/imgs/i_000cb2hz.jpg');
INSERT INTO `image` VALUES ('144', 'http://static.yidianzixun.com/beauty/imgs/i_000cepXc.jpg');
INSERT INTO `image` VALUES ('146', 'http://static.yidianzixun.com/beauty/imgs/i_000cacAZ.jpg');
INSERT INTO `image` VALUES ('147', 'http://static.yidianzixun.com/beauty/imgs/i_000caLMK.jpg');
INSERT INTO `image` VALUES ('148', 'http://static.yidianzixun.com/beauty/imgs/i_000ca4RE.jpg');
INSERT INTO `image` VALUES ('151', 'http://static.yidianzixun.com/beauty/imgs/i_000cfH0T.jpg');
INSERT INTO `image` VALUES ('152', 'http://static.yidianzixun.com/beauty/imgs/i_000cdwgU.jpg');
INSERT INTO `image` VALUES ('153', 'http://static.yidianzixun.com/beauty/imgs/i_000cfApO.jpg');
INSERT INTO `image` VALUES ('155', 'http://static.yidianzixun.com/beauty/imgs/i_000cezMs.jpg');
INSERT INTO `image` VALUES ('157', 'http://static.yidianzixun.com/beauty/imgs/i_000cawZr.jpg');
INSERT INTO `image` VALUES ('158', 'http://static.yidianzixun.com/beauty/imgs/i_000cckIn.jpg');
INSERT INTO `image` VALUES ('159', 'http://static.yidianzixun.com/beauty/imgs/i_000ce3hL.jpg');
INSERT INTO `image` VALUES ('161', 'http://static.yidianzixun.com/beauty/imgs/i_000cZXb3.jpg');
INSERT INTO `image` VALUES ('162', 'http://static.yidianzixun.com/beauty/imgs/i_000cerJ4.jpg');
INSERT INTO `image` VALUES ('165', 'http://static.yidianzixun.com/beauty/imgs/i_000ccvlY.jpg');
INSERT INTO `image` VALUES ('166', 'http://static.yidianzixun.com/beauty/imgs/i_000cf5V0.jpg');
INSERT INTO `image` VALUES ('168', 'http://static.yidianzixun.com/beauty/imgs/i_000ceqQL.jpg');
INSERT INTO `image` VALUES ('169', 'http://static.yidianzixun.com/beauty/imgs/i_000cen1O.jpg');
INSERT INTO `image` VALUES ('170', 'http://static.yidianzixun.com/beauty/imgs/i_000cdaVk.jpg');
INSERT INTO `image` VALUES ('171', 'http://static.yidianzixun.com/beauty/imgs/i_000cdXoR.jpg');
INSERT INTO `image` VALUES ('172', 'http://static.yidianzixun.com/beauty/imgs/i_000cf91u.jpg');
INSERT INTO `image` VALUES ('174', 'http://static.yidianzixun.com/beauty/imgs/i_000caIi9.jpg');
INSERT INTO `image` VALUES ('176', 'http://static.yidianzixun.com/beauty/imgs/i_000cdgo6.jpg');
INSERT INTO `image` VALUES ('177', 'http://static.yidianzixun.com/beauty/imgs/i_000cdMLg.jpg');
INSERT INTO `image` VALUES ('179', 'http://static.yidianzixun.com/beauty/imgs/i_000cZ9k6.jpg');
INSERT INTO `image` VALUES ('180', 'http://static.yidianzixun.com/beauty/imgs/i_000cZUws.jpg');
INSERT INTO `image` VALUES ('184', 'http://static.yidianzixun.com/beauty/imgs/i_000cUPMC.jpg');
INSERT INTO `image` VALUES ('186', 'http://static.yidianzixun.com/beauty/imgs/i_000cZGpw.jpg');
INSERT INTO `image` VALUES ('189', 'http://static.yidianzixun.com/beauty/imgs/i_000cdjSH.jpg');
INSERT INTO `image` VALUES ('190', 'http://static.yidianzixun.com/beauty/imgs/i_000ceibl.jpg');
INSERT INTO `image` VALUES ('191', 'http://static.yidianzixun.com/beauty/imgs/i_000cfEMI.jpg');
INSERT INTO `image` VALUES ('192', 'http://static.yidianzixun.com/beauty/imgs/i_000cdnzB.jpg');
INSERT INTO `image` VALUES ('193', 'http://static.yidianzixun.com/beauty/imgs/i_000ceuxF.jpg');
INSERT INTO `image` VALUES ('195', 'http://static.yidianzixun.com/beauty/imgs/i_000cZLFZ.jpg');
INSERT INTO `image` VALUES ('196', 'http://static.yidianzixun.com/beauty/imgs/i_000cVzyR.jpg');
INSERT INTO `image` VALUES ('197', 'http://static.yidianzixun.com/beauty/imgs/i_000cdZZt.jpg');
INSERT INTO `image` VALUES ('198', 'http://static.yidianzixun.com/beauty/imgs/i_000cecJP.jpg');
INSERT INTO `image` VALUES ('199', 'http://static.yidianzixun.com/beauty/imgs/i_000cds9a.jpg');
INSERT INTO `image` VALUES ('201', 'http://static.yidianzixun.com/beauty/imgs/i_000cWViy.jpg');
INSERT INTO `image` VALUES ('202', 'http://static.yidianzixun.com/beauty/imgs/i_000ce9zh.jpg');
INSERT INTO `image` VALUES ('203', 'http://static.yidianzixun.com/beauty/imgs/i_000ccV0m.jpg');
INSERT INTO `image` VALUES ('204', 'http://static.yidianzixun.com/beauty/imgs/i_000cZ4KT.jpg');
INSERT INTO `image` VALUES ('205', 'http://static.yidianzixun.com/beauty/imgs/i_000ce2oc.jpg');
INSERT INTO `image` VALUES ('206', 'http://static.yidianzixun.com/beauty/imgs/i_000cUoTT.jpg');
INSERT INTO `image` VALUES ('208', 'http://static.yidianzixun.com/beauty/imgs/i_000ca2fm.jpg');
INSERT INTO `image` VALUES ('209', 'http://static.yidianzixun.com/beauty/imgs/i_000cabHq.jpg');
INSERT INTO `image` VALUES ('211', 'http://static.yidianzixun.com/beauty/imgs/i_000cYvYA.jpg');
INSERT INTO `image` VALUES ('213', 'http://static.yidianzixun.com/beauty/imgs/i_000cWUqF.jpg');
INSERT INTO `image` VALUES ('214', 'http://static.yidianzixun.com/beauty/imgs/i_000cZFxD.jpg');
INSERT INTO `image` VALUES ('215', 'http://static.yidianzixun.com/beauty/imgs/i_000cfItC.jpg');
INSERT INTO `image` VALUES ('216', 'http://static.yidianzixun.com/beauty/imgs/i_000cdRW5.jpg');
INSERT INTO `image` VALUES ('217', 'http://static.yidianzixun.com/beauty/imgs/i_000cfG7k.jpg');
INSERT INTO `image` VALUES ('219', 'http://static.yidianzixun.com/beauty/imgs/i_000cZtov.jpg');
INSERT INTO `image` VALUES ('220', 'http://static.yidianzixun.com/beauty/imgs/i_000cdyRw.jpg');
INSERT INTO `image` VALUES ('221', 'http://static.yidianzixun.com/beauty/imgs/i_000cesBn.jpg');
INSERT INTO `image` VALUES ('222', 'http://static.yidianzixun.com/beauty/imgs/i_000cW2SO.jpg');
INSERT INTO `image` VALUES ('224', 'http://static.yidianzixun.com/beauty/imgs/i_000cWExr.jpg');
INSERT INTO `image` VALUES ('226', 'http://static.yidianzixun.com/beauty/imgs/i_000cWKGD.jpg');
INSERT INTO `image` VALUES ('227', 'http://static.yidianzixun.com/beauty/imgs/i_000cdO78.jpg');
INSERT INTO `image` VALUES ('228', 'http://static.yidianzixun.com/beauty/imgs/i_000cWdpu.jpg');
INSERT INTO `image` VALUES ('229', 'http://static.yidianzixun.com/beauty/imgs/i_000cZxLp.jpg');
INSERT INTO `image` VALUES ('230', 'http://static.yidianzixun.com/beauty/imgs/i_000cbjNr.jpg');
INSERT INTO `image` VALUES ('231', 'http://static.yidianzixun.com/beauty/imgs/i_000cZE4U.jpg');
INSERT INTO `image` VALUES ('232', 'http://static.yidianzixun.com/beauty/imgs/i_000cayLJ.jpg');
INSERT INTO `image` VALUES ('237', 'http://static.yidianzixun.com/beauty/imgs/i_000cXfdZ.jpg');
INSERT INTO `image` VALUES ('238', 'http://static.yidianzixun.com/beauty/imgs/i_000cb3ai.jpg');
INSERT INTO `image` VALUES ('240', 'http://static.yidianzixun.com/beauty/imgs/i_000cdUAG.jpg');
INSERT INTO `image` VALUES ('241', 'http://static.yidianzixun.com/beauty/imgs/i_000cb1pG.jpg');
INSERT INTO `image` VALUES ('242', 'http://static.yidianzixun.com/beauty/imgs/i_000cZKMq.jpg');
INSERT INTO `image` VALUES ('245', 'http://static.yidianzixun.com/beauty/imgs/i_000cXz2r.jpg');
INSERT INTO `image` VALUES ('247', 'http://static.yidianzixun.com/beauty/imgs/i_000cZHif.jpg');
INSERT INTO `image` VALUES ('249', 'http://static.yidianzixun.com/beauty/imgs/i_000ccU83.jpg');
INSERT INTO `image` VALUES ('253', 'http://static.yidianzixun.com/beauty/imgs/i_000cchec.jpg');
INSERT INTO `image` VALUES ('256', 'http://static.yidianzixun.com/beauty/imgs/i_000ccCUD.jpg');
INSERT INTO `image` VALUES ('258', 'http://static.yidianzixun.com/beauty/imgs/i_000cZYTm.jpg');
INSERT INTO `image` VALUES ('259', 'http://static.yidianzixun.com/beauty/imgs/i_000cW3L7.jpg');
INSERT INTO `image` VALUES ('260', 'http://static.yidianzixun.com/beauty/imgs/i_000ca3YV.jpg');
INSERT INTO `image` VALUES ('262', 'http://static.yidianzixun.com/beauty/imgs/i_000ccF8O.jpg');
INSERT INTO `image` VALUES ('263', 'http://static.yidianzixun.com/beauty/imgs/i_000cb77c.jpg');
INSERT INTO `image` VALUES ('265', 'http://static.yidianzixun.com/beauty/imgs/i_000cZJU7.jpg');
INSERT INTO `image` VALUES ('269', 'http://static.yidianzixun.com/beauty/imgs/i_000ccnwy.jpg');
INSERT INTO `image` VALUES ('272', 'http://static.yidianzixun.com/beauty/imgs/i_000cehj2.jpg');
INSERT INTO `image` VALUES ('273', 'http://static.yidianzixun.com/beauty/imgs/i_000cbYck.jpg');
INSERT INTO `image` VALUES ('275', 'http://static.yidianzixun.com/beauty/imgs/i_000cbRRf.jpg');
INSERT INTO `image` VALUES ('276', 'http://static.yidianzixun.com/beauty/imgs/i_000ccJfI.jpg');
INSERT INTO `image` VALUES ('277', 'http://static.yidianzixun.com/beauty/imgs/i_000cdSOo.jpg');
INSERT INTO `image` VALUES ('279', 'http://static.yidianzixun.com/beauty/imgs/i_000caGwh.jpg');
INSERT INTO `image` VALUES ('281', 'http://static.yidianzixun.com/beauty/imgs/i_000cYtmi.jpg');
INSERT INTO `image` VALUES ('282', 'http://static.yidianzixun.com/beauty/imgs/i_000ccHtq.jpg');
INSERT INTO `image` VALUES ('284', 'http://static.yidianzixun.com/beauty/imgs/i_000cWj8G.jpg');
INSERT INTO `image` VALUES ('285', 'http://static.yidianzixun.com/beauty/imgs/i_000cYz54.jpg');
INSERT INTO `image` VALUES ('286', 'http://static.yidianzixun.com/beauty/imgs/i_000cZyEY.jpg');
INSERT INTO `image` VALUES ('287', 'http://static.yidianzixun.com/beauty/imgs/i_000caAeL.jpg');
INSERT INTO `image` VALUES ('288', 'http://static.yidianzixun.com/beauty/imgs/i_000ccAil.jpg');
INSERT INTO `image` VALUES ('289', 'http://static.yidianzixun.com/beauty/imgs/i_000cXwOg.jpg');
INSERT INTO `image` VALUES ('291', 'http://static.yidianzixun.com/beauty/imgs/i_000cVPOP.jpg');
INSERT INTO `image` VALUES ('296', 'http://static.yidianzixun.com/beauty/imgs/i_000cXpDb.jpg');
INSERT INTO `image` VALUES ('297', 'http://static.yidianzixun.com/beauty/imgs/i_000cUUlp.jpg');
INSERT INTO `image` VALUES ('298', 'http://static.yidianzixun.com/beauty/imgs/i_000cewih.jpg');
INSERT INTO `image` VALUES ('300', 'http://static.yidianzixun.com/beauty/imgs/i_000cZDBl.jpg');
INSERT INTO `image` VALUES ('301', 'http://static.yidianzixun.com/beauty/imgs/i_000cZDBl.jpg');
INSERT INTO `image` VALUES ('303', 'http://static.yidianzixun.com/beauty/imgs/i_000ccbMG.jpg');
INSERT INTO `image` VALUES ('304', 'http://static.yidianzixun.com/beauty/imgs/i_000caEBF.jpg');
INSERT INTO `image` VALUES ('306', 'http://static.yidianzixun.com/beauty/imgs/i_000cfJlv.jpg');
INSERT INTO `image` VALUES ('308', 'http://static.yidianzixun.com/beauty/imgs/i_000ccMJT.jpg');
INSERT INTO `image` VALUES ('311', 'http://static.yidianzixun.com/beauty/imgs/i_000cbJd5.jpg');
INSERT INTO `image` VALUES ('312', 'http://static.yidianzixun.com/beauty/imgs/i_000cWGjJ.jpg');
INSERT INTO `image` VALUES ('313', 'http://static.yidianzixun.com/beauty/imgs/i_000cZRIh.jpg');
INSERT INTO `image` VALUES ('314', 'http://static.yidianzixun.com/beauty/imgs/i_000cewih.jpg');
INSERT INTO `image` VALUES ('318', 'http://static.yidianzixun.com/beauty/imgs/i_000cdhgp.jpg');
INSERT INTO `image` VALUES ('319', 'http://static.yidianzixun.com/beauty/imgs/i_000cW56Z.jpg');
INSERT INTO `image` VALUES ('320', 'http://static.yidianzixun.com/beauty/imgs/i_000ccTFK.jpg');
INSERT INTO `image` VALUES ('321', 'http://static.yidianzixun.com/beauty/imgs/i_000cf6Nj.jpg');
INSERT INTO `image` VALUES ('323', 'http://static.yidianzixun.com/beauty/imgs/i_000ca6Cg.jpg');
INSERT INTO `image` VALUES ('324', 'http://static.yidianzixun.com/beauty/imgs/i_000cZr3T.jpg');
INSERT INTO `image` VALUES ('325', 'http://static.yidianzixun.com/beauty/imgs/i_000cbF6B.jpg');
INSERT INTO `image` VALUES ('326', 'http://static.yidianzixun.com/beauty/imgs/i_000cXsrm.jpg');
INSERT INTO `image` VALUES ('328', 'http://static.yidianzixun.com/beauty/imgs/i_000ccEFf.jpg');
INSERT INTO `image` VALUES ('329', 'http://static.yidianzixun.com/beauty/imgs/i_000ca5Jx.jpg');
INSERT INTO `image` VALUES ('330', 'http://static.yidianzixun.com/beauty/imgs/i_000cXWdu.jpg');
INSERT INTO `image` VALUES ('332', 'http://static.yidianzixun.com/beauty/imgs/i_000ccQb9.jpg');
INSERT INTO `image` VALUES ('333', 'http://static.yidianzixun.com/beauty/imgs/i_000cWD58.jpg');
INSERT INTO `image` VALUES ('334', 'http://static.yidianzixun.com/beauty/imgs/i_000cXIWy.jpg');
INSERT INTO `image` VALUES ('336', 'http://static.yidianzixun.com/beauty/imgs/i_000ccjQ4.jpg');
INSERT INTO `image` VALUES ('340', 'http://static.yidianzixun.com/beauty/imgs/i_000cYufR.jpg');
INSERT INTO `image` VALUES ('342', 'http://static.yidianzixun.com/beauty/imgs/i_000cbO2i.jpg');
INSERT INTO `image` VALUES ('343', 'http://static.yidianzixun.com/beauty/imgs/i_000cc9vH.jpg');
INSERT INTO `image` VALUES ('344', 'http://static.yidianzixun.com/beauty/imgs/i_000cccEz.jpg');
INSERT INTO `image` VALUES ('346', 'http://static.yidianzixun.com/beauty/imgs/i_000cXk3C.jpg');
INSERT INTO `image` VALUES ('347', 'http://static.yidianzixun.com/beauty/imgs/i_000cZ7ye.jpg');
INSERT INTO `image` VALUES ('349', 'http://static.yidianzixun.com/beauty/imgs/i_000ce86y.jpg');
INSERT INTO `image` VALUES ('350', 'http://static.yidianzixun.com/beauty/imgs/i_000cUqzh.jpg');
INSERT INTO `image` VALUES ('352', 'http://static.yidianzixun.com/beauty/imgs/i_000cZIbO.jpg');
INSERT INTO `image` VALUES ('353', 'http://static.yidianzixun.com/beauty/imgs/i_000ccrEe.jpg');
INSERT INTO `image` VALUES ('355', 'http://static.yidianzixun.com/beauty/imgs/i_000ccKY1.jpg');
INSERT INTO `image` VALUES ('357', 'http://static.yidianzixun.com/beauty/imgs/i_000cUTt6.jpg');
INSERT INTO `image` VALUES ('358', 'http://static.yidianzixun.com/beauty/imgs/i_000cWAQx.jpg');
INSERT INTO `image` VALUES ('361', 'http://static.yidianzixun.com/beauty/imgs/i_000cUa7J.jpg');
INSERT INTO `image` VALUES ('362', 'http://static.yidianzixun.com/beauty/imgs/i_000ca0uK.jpg');
INSERT INTO `image` VALUES ('363', 'http://static.yidianzixun.com/beauty/imgs/i_000cZ8rN.jpg');
INSERT INTO `image` VALUES ('364', 'http://static.yidianzixun.com/beauty/imgs/i_000cWeid.jpg');
INSERT INTO `image` VALUES ('365', 'http://static.yidianzixun.com/beauty/imgs/i_000cUVeY.jpg');
INSERT INTO `image` VALUES ('368', 'http://static.yidianzixun.com/beauty/imgs/i_000cZswC.jpg');
INSERT INTO `image` VALUES ('369', 'http://static.yidianzixun.com/beauty/imgs/i_000cbGyu.jpg');
INSERT INTO `image` VALUES ('373', 'http://static.yidianzixun.com/beauty/imgs/i_000cXczO.jpg');
INSERT INTO `image` VALUES ('376', 'http://static.yidianzixun.com/beauty/imgs/i_000ccImZ.jpg');
INSERT INTO `image` VALUES ('377', 'http://static.yidianzixun.com/beauty/imgs/i_000cXE04.jpg');
INSERT INTO `image` VALUES ('378', 'http://static.yidianzixun.com/beauty/imgs/i_000cXXWd.jpg');
INSERT INTO `image` VALUES ('380', 'http://static.yidianzixun.com/beauty/imgs/i_000ccRTs.jpg');
INSERT INTO `image` VALUES ('381', 'http://static.yidianzixun.com/beauty/imgs/i_000cVdnh.jpg');
INSERT INTO `image` VALUES ('382', 'http://static.yidianzixun.com/beauty/imgs/i_000cdzKf.jpg');
INSERT INTO `image` VALUES ('383', 'http://static.yidianzixun.com/beauty/imgs/i_000ccDMw.jpg');
INSERT INTO `image` VALUES ('384', 'http://static.yidianzixun.com/beauty/imgs/i_000cW1Zf.jpg');
INSERT INTO `image` VALUES ('385', 'http://static.yidianzixun.com/beauty/imgs/i_000cXPSp.jpg');
INSERT INTO `image` VALUES ('387', 'http://static.yidianzixun.com/beauty/imgs/i_000cXiHk.jpg');
INSERT INTO `image` VALUES ('388', 'http://static.yidianzixun.com/beauty/imgs/i_000cWL8w.jpg');
INSERT INTO `image` VALUES ('390', 'http://static.yidianzixun.com/beauty/imgs/i_000caZTG.jpg');
INSERT INTO `image` VALUES ('391', 'http://static.yidianzixun.com/beauty/imgs/i_000cVEve.jpg');
INSERT INTO `image` VALUES ('393', 'http://static.yidianzixun.com/beauty/imgs/i_000caSIB.jpg');
INSERT INTO `image` VALUES ('394', 'http://static.yidianzixun.com/beauty/imgs/i_000cVgRs.jpg');
INSERT INTO `image` VALUES ('396', 'http://static.yidianzixun.com/beauty/imgs/i_000VuLw7.jpg');
INSERT INTO `image` VALUES ('397', 'http://static.yidianzixun.com/beauty/imgs/i_000ce7EF.jpg');
INSERT INTO `image` VALUES ('398', 'http://static.yidianzixun.com/beauty/imgs/i_000cUXQ0.jpg');
INSERT INTO `image` VALUES ('401', 'http://static.yidianzixun.com/beauty/imgs/i_000cejUU.jpg');
INSERT INTO `image` VALUES ('402', 'http://static.yidianzixun.com/beauty/imgs/i_000caU3d.jpg');
INSERT INTO `image` VALUES ('403', 'http://static.yidianzixun.com/beauty/imgs/i_000ce1vt.jpg');
INSERT INTO `image` VALUES ('404', 'http://static.yidianzixun.com/beauty/imgs/i_000cZCJ2.jpg');
INSERT INTO `image` VALUES ('406', 'http://static.yidianzixun.com/beauty/imgs/i_000ce6LW.jpg');
INSERT INTO `image` VALUES ('407', 'http://static.yidianzixun.com/beauty/imgs/i_000cebQg.jpg');
INSERT INTO `image` VALUES ('408', 'http://static.yidianzixun.com/beauty/imgs/i_000cUmi1.jpg');
INSERT INTO `image` VALUES ('409', 'http://static.yidianzixun.com/beauty/imgs/i_000caHpQ.jpg');
INSERT INTO `image` VALUES ('410', 'http://static.yidianzixun.com/beauty/imgs/i_000cet4W.jpg');
INSERT INTO `image` VALUES ('412', 'http://static.yidianzixun.com/beauty/imgs/i_000caPe0.jpg');
INSERT INTO `image` VALUES ('413', 'http://static.yidianzixun.com/beauty/imgs/i_000caVwM.jpg');
INSERT INTO `image` VALUES ('415', 'http://static.yidianzixun.com/beauty/imgs/i_000cbSKO.jpg');
INSERT INTO `image` VALUES ('416', 'http://static.yidianzixun.com/beauty/imgs/i_000cUhIO.jpg');
INSERT INTO `image` VALUES ('417', 'http://static.yidianzixun.com/beauty/imgs/i_000cdqO8.jpg');
INSERT INTO `image` VALUES ('419', 'http://static.yidianzixun.com/beauty/imgs/i_000cVoVg.jpg');
INSERT INTO `image` VALUES ('421', 'http://static.yidianzixun.com/beauty/imgs/i_000cf7GS.jpg');
INSERT INTO `image` VALUES ('422', 'http://static.yidianzixun.com/beauty/imgs/i_000cZ2Z1.jpg');
INSERT INTO `image` VALUES ('423', 'http://static.yidianzixun.com/beauty/imgs/i_000celFw.jpg');
INSERT INTO `image` VALUES ('424', 'http://static.yidianzixun.com/beauty/imgs/i_000cZT49.jpg');
INSERT INTO `image` VALUES ('426', 'http://static.yidianzixun.com/beauty/imgs/i_000cZbB5.jpg');
INSERT INTO `image` VALUES ('429', 'http://static.yidianzixun.com/beauty/imgs/i_000ca75P.jpg');
INSERT INTO `image` VALUES ('430', 'http://static.yidianzixun.com/beauty/imgs/i_000cdPkd.jpg');
INSERT INTO `image` VALUES ('431', 'http://static.yidianzixun.com/beauty/imgs/i_000cZwT6.jpg');
INSERT INTO `image` VALUES ('432', 'http://static.yidianzixun.com/beauty/imgs/i_000cWk0z.jpg');
INSERT INTO `image` VALUES ('433', 'http://static.yidianzixun.com/beauty/imgs/i_000cclBW.jpg');
INSERT INTO `image` VALUES ('436', 'http://static.yidianzixun.com/beauty/imgs/i_000cWhMo.jpg');
INSERT INTO `image` VALUES ('438', 'http://static.yidianzixun.com/beauty/imgs/i_000cdTHX.jpg');
INSERT INTO `image` VALUES ('440', 'http://static.yidianzixun.com/beauty/imgs/i_000cXUsS.jpg');
INSERT INTO `image` VALUES ('441', 'http://static.yidianzixun.com/beauty/imgs/i_000cViDK.jpg');
INSERT INTO `image` VALUES ('442', 'http://static.yidianzixun.com/beauty/imgs/i_000cb9t4.jpg');
INSERT INTO `image` VALUES ('443', 'http://static.yidianzixun.com/beauty/imgs/i_000cVYKw.jpg');
INSERT INTO `image` VALUES ('444', 'http://static.yidianzixun.com/beauty/imgs/i_000ccG17.jpg');
INSERT INTO `image` VALUES ('445', 'http://static.yidianzixun.com/beauty/imgs/i_000cZPXF.jpg');
INSERT INTO `image` VALUES ('446', 'http://static.yidianzixun.com/beauty/imgs/i_000cZVpb.jpg');
INSERT INTO `image` VALUES ('448', 'http://static.yidianzixun.com/beauty/imgs/i_000cZSBQ.jpg');
INSERT INTO `image` VALUES ('449', 'http://static.yidianzixun.com/beauty/imgs/i_000cVkym.jpg');
INSERT INTO `image` VALUES ('451', 'http://static.yidianzixun.com/beauty/imgs/i_000cbWrI.jpg');
INSERT INTO `image` VALUES ('452', 'http://static.yidianzixun.com/beauty/imgs/i_000cb80L.jpg');
INSERT INTO `image` VALUES ('453', 'http://static.yidianzixun.com/beauty/imgs/i_000ceyU9.jpg');
INSERT INTO `image` VALUES ('454', 'http://static.yidianzixun.com/beauty/imgs/i_000cXmoe.jpg');
INSERT INTO `image` VALUES ('456', 'http://static.yidianzixun.com/beauty/imgs/i_000cXZI5.jpg');
INSERT INTO `image` VALUES ('457', 'http://static.yidianzixun.com/beauty/imgs/i_000cWPQc.jpg');
INSERT INTO `image` VALUES ('458', 'http://static.yidianzixun.com/beauty/imgs/i_000cXFsn.jpg');
INSERT INTO `image` VALUES ('459', 'http://static.yidianzixun.com/beauty/imgs/i_000cXHeF.jpg');
INSERT INTO `image` VALUES ('460', 'http://static.yidianzixun.com/beauty/imgs/i_000cZdwX.jpg');
INSERT INTO `image` VALUES ('461', 'http://static.yidianzixun.com/beauty/imgs/i_000cVJLH.jpg');
INSERT INTO `image` VALUES ('462', 'http://static.yidianzixun.com/beauty/imgs/i_000cfKee.jpg');
INSERT INTO `image` VALUES ('463', 'http://static.yidianzixun.com/beauty/imgs/i_000cW9dT.jpg');
INSERT INTO `image` VALUES ('464', 'http://static.yidianzixun.com/beauty/imgs/i_000cV4Bd.jpg');
INSERT INTO `image` VALUES ('465', 'http://static.yidianzixun.com/beauty/imgs/i_000ccs7N.jpg');
INSERT INTO `image` VALUES ('467', 'http://static.yidianzixun.com/beauty/imgs/i_000cXCEc.jpg');
INSERT INTO `image` VALUES ('468', 'http://static.yidianzixun.com/beauty/imgs/i_000cVXSD.jpg');
INSERT INTO `image` VALUES ('469', 'http://static.yidianzixun.com/beauty/imgs/i_000cb6Et.jpg');
INSERT INTO `image` VALUES ('470', 'http://static.yidianzixun.com/beauty/imgs/i_000cdiZY.jpg');
INSERT INTO `image` VALUES ('471', 'http://static.yidianzixun.com/beauty/imgs/i_000cWS4n.jpg');
INSERT INTO `image` VALUES ('472', 'http://static.yidianzixun.com/beauty/imgs/i_000cWaBj.jpg');
INSERT INTO `image` VALUES ('475', 'http://static.yidianzixun.com/beauty/imgs/i_000ca1n3.jpg');
INSERT INTO `image` VALUES ('477', 'http://static.yidianzixun.com/beauty/imgs/i_000cUS0N.jpg');
INSERT INTO `image` VALUES ('478', 'http://static.yidianzixun.com/beauty/imgs/i_000cWTxW.jpg');
INSERT INTO `image` VALUES ('479', 'http://static.yidianzixun.com/beauty/imgs/i_000cUuWb.jpg');
INSERT INTO `image` VALUES ('480', 'http://static.yidianzixun.com/beauty/imgs/i_000ccXmE.jpg');
INSERT INTO `image` VALUES ('481', 'http://static.yidianzixun.com/beauty/imgs/i_000ce03A.jpg');
INSERT INTO `image` VALUES ('482', 'http://static.yidianzixun.com/beauty/imgs/i_000cUfWw.jpg');
INSERT INTO `image` VALUES ('483', 'http://static.yidianzixun.com/beauty/imgs/i_000cVy5i.jpg');
INSERT INTO `image` VALUES ('484', 'http://static.yidianzixun.com/beauty/imgs/i_000cXxHP.jpg');
INSERT INTO `image` VALUES ('485', 'http://static.yidianzixun.com/beauty/imgs/i_000cZ65v.jpg');
INSERT INTO `image` VALUES ('486', 'http://static.yidianzixun.com/beauty/imgs/i_000cZZMV.jpg');
INSERT INTO `image` VALUES ('487', 'http://static.yidianzixun.com/beauty/imgs/i_000cXjAT.jpg');
INSERT INTO `image` VALUES ('488', 'http://static.yidianzixun.com/beauty/imgs/i_000cegqJ.jpg');
INSERT INTO `image` VALUES ('490', 'http://static.yidianzixun.com/beauty/imgs/i_000cXKIQ.jpg');
INSERT INTO `image` VALUES ('491', 'http://static.yidianzixun.com/beauty/imgs/i_000cXLB9.jpg');
INSERT INTO `image` VALUES ('492', 'http://static.yidianzixun.com/beauty/imgs/i_000cZN11.jpg');
INSERT INTO `image` VALUES ('493', 'http://static.yidianzixun.com/beauty/imgs/i_000cWfbM.jpg');
INSERT INTO `image` VALUES ('494', 'http://static.yidianzixun.com/beauty/imgs/i_000cVMzS.jpg');
INSERT INTO `image` VALUES ('495', 'http://static.yidianzixun.com/beauty/imgs/i_000cUvPK.jpg');
INSERT INTO `image` VALUES ('496', 'http://static.yidianzixun.com/beauty/imgs/i_000cWgU5.jpg');
INSERT INTO `image` VALUES ('497', 'http://static.yidianzixun.com/beauty/imgs/i_000cdbOT.jpg');
INSERT INTO `image` VALUES ('500', 'http://static.yidianzixun.com/beauty/imgs/i_000cUeeD.jpg');
INSERT INTO `image` VALUES ('502', 'http://static.yidianzixun.com/beauty/imgs/i_000cXaDw.jpg');
INSERT INTO `image` VALUES ('505', 'http://static.yidianzixun.com/beauty/imgs/i_000cZAXa.jpg');
INSERT INTO `image` VALUES ('508', 'http://static.yidianzixun.com/beauty/imgs/i_000cVa9W.jpg');
INSERT INTO `image` VALUES ('509', 'http://static.yidianzixun.com/beauty/imgs/i_000cbMHG.jpg');
INSERT INTO `image` VALUES ('510', 'http://static.yidianzixun.com/beauty/imgs/i_000caKTb.jpg');
INSERT INTO `image` VALUES ('515', 'http://static.yidianzixun.com/beauty/imgs/i_000caXho.jpg');
INSERT INTO `image` VALUES ('516', 'http://static.yidianzixun.com/beauty/imgs/i_000cbQYw.jpg');
INSERT INTO `image` VALUES ('517', 'http://static.yidianzixun.com/beauty/imgs/i_000cWlti.jpg');
INSERT INTO `image` VALUES ('520', 'http://static.yidianzixun.com/beauty/imgs/i_000cdxZD.jpg');
INSERT INTO `image` VALUES ('521', 'http://static.yidianzixun.com/beauty/imgs/i_000cXds7.jpg');
INSERT INTO `image` VALUES ('522', 'http://static.yidianzixun.com/beauty/imgs/i_000cUZBS.jpg');
INSERT INTO `image` VALUES ('524', 'http://static.yidianzixun.com/beauty/imgs/i_000cXyA8.jpg');
INSERT INTO `image` VALUES ('525', 'http://static.yidianzixun.com/beauty/imgs/i_000cbCS0.jpg');
INSERT INTO `image` VALUES ('528', 'http://static.yidianzixun.com/beauty/imgs/i_000caWp5.jpg');
INSERT INTO `image` VALUES ('529', 'http://static.yidianzixun.com/beauty/imgs/i_000VuMoq.jpg');
INSERT INTO `image` VALUES ('530', 'http://static.yidianzixun.com/beauty/imgs/i_000cYwQt.jpg');
INSERT INTO `image` VALUES ('534', 'http://static.yidianzixun.com/beauty/imgs/i_000cZM8I.jpg');
INSERT INTO `image` VALUES ('535', 'http://static.yidianzixun.com/beauty/imgs/i_000ccaTX.jpg');
INSERT INTO `image` VALUES ('537', 'http://static.yidianzixun.com/beauty/imgs/i_000cWBJg.jpg');
INSERT INTO `image` VALUES ('538', 'http://static.yidianzixun.com/beauty/imgs/i_000cbeyE.jpg');
INSERT INTO `image` VALUES ('539', 'http://static.yidianzixun.com/beauty/imgs/i_000cdrGr.jpg');
INSERT INTO `image` VALUES ('540', 'http://static.yidianzixun.com/beauty/imgs/i_000cXTzj.jpg');
INSERT INTO `image` VALUES ('543', 'http://static.yidianzixun.com/beauty/imgs/i_000caCPn.jpg');
INSERT INTO `image` VALUES ('544', 'http://static.yidianzixun.com/beauty/imgs/i_000cad3I.jpg');
INSERT INTO `image` VALUES ('545', 'http://static.yidianzixun.com/beauty/imgs/i_000cbVyZ.jpg');
INSERT INTO `image` VALUES ('549', 'http://static.yidianzixun.com/beauty/imgs/i_000cVb2F.jpg');
INSERT INTO `image` VALUES ('551', 'http://static.yidianzixun.com/beauty/imgs/i_000cVncx.jpg');
INSERT INTO `image` VALUES ('552', 'http://static.yidianzixun.com/beauty/imgs/i_000cWZFs.jpg');
INSERT INTO `image` VALUES ('553', 'http://static.yidianzixun.com/beauty/imgs/i_000cZvaN.jpg');
INSERT INTO `image` VALUES ('555', 'http://static.yidianzixun.com/beauty/imgs/i_000cUy3V.jpg');
INSERT INTO `image` VALUES ('556', 'http://static.yidianzixun.com/beauty/imgs/i_000caRPS.jpg');
INSERT INTO `image` VALUES ('558', 'http://static.yidianzixun.com/beauty/imgs/i_000cVD2v.jpg');
INSERT INTO `image` VALUES ('559', 'http://static.yidianzixun.com/beauty/imgs/i_000cUp6y.jpg');
INSERT INTO `image` VALUES ('566', 'http://static.yidianzixun.com/beauty/imgs/i_000cVCAC.jpg');
INSERT INTO `image` VALUES ('567', 'http://static.yidianzixun.com/beauty/imgs/i_000cZ1gI.jpg');
INSERT INTO `image` VALUES ('569', 'http://static.yidianzixun.com/beauty/imgs/i_000cWNuO.jpg');
INSERT INTO `image` VALUES ('572', 'http://static.yidianzixun.com/beauty/imgs/i_000cZ0nZ.jpg');
INSERT INTO `image` VALUES ('573', 'http://static.yidianzixun.com/beauty/imgs/i_000cW6zI.jpg');
INSERT INTO `image` VALUES ('574', 'http://static.yidianzixun.com/beauty/imgs/i_000cbKVo.jpg');
INSERT INTO `image` VALUES ('578', 'http://static.yidianzixun.com/beauty/imgs/i_000caTAu.jpg');
INSERT INTO `image` VALUES ('579', 'http://static.yidianzixun.com/beauty/imgs/i_000cefxa.jpg');
INSERT INTO `image` VALUES ('580', 'http://static.yidianzixun.com/beauty/imgs/i_000cVfZ9.jpg');
INSERT INTO `image` VALUES ('582', 'http://static.yidianzixun.com/beauty/imgs/i_000ccZXg.jpg');
INSERT INTO `image` VALUES ('587', 'http://static.yidianzixun.com/beauty/imgs/i_000cZWiK.jpg');
INSERT INTO `image` VALUES ('598', 'http://static.yidianzixun.com/beauty/imgs/i_000cct06.jpg');
INSERT INTO `image` VALUES ('601', 'http://static.yidianzixun.com/beauty/imgs/i_000cVTvJ.jpg');
INSERT INTO `image` VALUES ('602', 'http://static.yidianzixun.com/beauty/imgs/i_000cVL6j.jpg');
INSERT INTO `image` VALUES ('606', 'http://static.yidianzixun.com/beauty/imgs/i_000cVlrV.jpg');
INSERT INTO `image` VALUES ('607', 'http://static.yidianzixun.com/beauty/imgs/i_000cfLXN.jpg');
INSERT INTO `image` VALUES ('611', 'http://static.yidianzixun.com/beauty/imgs/i_000cb5MA.jpg');
INSERT INTO `image` VALUES ('616', 'http://static.yidianzixun.com/beauty/imgs/i_000ccglt.jpg');
INSERT INTO `image` VALUES ('618', 'http://static.yidianzixun.com/beauty/imgs/i_000cVhKb.jpg');
INSERT INTO `image` VALUES ('623', 'http://static.yidianzixun.com/beauty/imgs/i_000ca9qr.jpg');
INSERT INTO `image` VALUES ('626', 'http://static.yidianzixun.com/beauty/imgs/i_000cbiV8.jpg');
INSERT INTO `image` VALUES ('628', 'http://static.yidianzixun.com/beauty/imgs/i_000ccLQk.jpg');
INSERT INTO `image` VALUES ('629', 'http://static.yidianzixun.com/beauty/imgs/i_000ccqLv.jpg');
INSERT INTO `image` VALUES ('631', 'http://static.yidianzixun.com/beauty/imgs/i_000ccweH.jpg');
INSERT INTO `image` VALUES ('632', 'http://static.yidianzixun.com/beauty/imgs/i_000cVR9r.jpg');
INSERT INTO `image` VALUES ('641', 'http://static.yidianzixun.com/beauty/imgs/i_000cVmkE.jpg');
INSERT INTO `image` VALUES ('642', 'http://static.yidianzixun.com/beauty/imgs/i_000cWIUl.jpg');
INSERT INTO `image` VALUES ('646', 'http://static.yidianzixun.com/beauty/imgs/i_000cdt2J.jpg');
INSERT INTO `image` VALUES ('652', 'http://static.yidianzixun.com/beauty/imgs/i_000cbDKj.jpg');
INSERT INTO `image` VALUES ('653', 'http://static.yidianzixun.com/beauty/imgs/i_000cVUo2.jpg');
INSERT INTO `image` VALUES ('657', 'http://static.yidianzixun.com/beauty/imgs/i_000cVxCz.jpg');
INSERT INTO `image` VALUES ('658', 'http://static.yidianzixun.com/beauty/imgs/i_000cUWXH.jpg');
INSERT INTO `image` VALUES ('661', 'http://static.yidianzixun.com/beauty/imgs/i_000cdm6S.jpg');
INSERT INTO `image` VALUES ('663', 'http://static.yidianzixun.com/beauty/imgs/i_000ccusp.jpg');
INSERT INTO `image` VALUES ('664', 'http://static.yidianzixun.com/beauty/imgs/i_000caQWj.jpg');
INSERT INTO `image` VALUES ('670', 'http://static.yidianzixun.com/beauty/imgs/i_000cZc3o.jpg');
INSERT INTO `image` VALUES ('673', 'http://static.yidianzixun.com/beauty/imgs/i_000cWcxB.jpg');
INSERT INTO `image` VALUES ('674', 'http://static.yidianzixun.com/beauty/imgs/i_000cVcuy.jpg');
INSERT INTO `image` VALUES ('675', 'http://static.yidianzixun.com/beauty/imgs/i_000cVwKG.jpg');
INSERT INTO `image` VALUES ('679', 'http://static.yidianzixun.com/beauty/imgs/i_000cZz7H.jpg');
INSERT INTO `image` VALUES ('685', 'http://static.yidianzixun.com/beauty/imgs/i_000cbcCm.jpg');
INSERT INTO `image` VALUES ('688', 'http://static.yidianzixun.com/beauty/imgs/i_000cUzwE.jpg');
INSERT INTO `image` VALUES ('691', 'http://static.yidianzixun.com/beauty/imgs/i_000cdkL0.jpg');
INSERT INTO `image` VALUES ('694', 'http://static.yidianzixun.com/beauty/imgs/i_000ccO4v.jpg');
INSERT INTO `image` VALUES ('700', 'http://static.yidianzixun.com/beauty/imgs/i_000cXrz3.jpg');
INSERT INTO `image` VALUES ('701', 'http://static.yidianzixun.com/beauty/imgs/i_000cUrsQ.jpg');
INSERT INTO `image` VALUES ('705', 'http://static.yidianzixun.com/beauty/imgs/i_000cVWZU.jpg');
INSERT INTO `image` VALUES ('706', 'http://static.yidianzixun.com/beauty/imgs/i_000cXgWI.jpg');
INSERT INTO `image` VALUES ('708', 'http://static.yidianzixun.com/beauty/imgs/i_000cUQEv.jpg');
INSERT INTO `image` VALUES ('710', 'http://static.yidianzixun.com/beauty/imgs/i_000cZBQJ.jpg');
INSERT INTO `image` VALUES ('711', 'http://static.yidianzixun.com/beauty/imgs/i_000cUOih.jpg');
INSERT INTO `image` VALUES ('714', 'http://static.yidianzixun.com/beauty/imgs/i_000cciXL.jpg');
INSERT INTO `image` VALUES ('716', 'http://static.yidianzixun.com/beauty/imgs/i_000cUb02.jpg');
INSERT INTO `image` VALUES ('719', 'http://static.yidianzixun.com/beauty/imgs/i_000cbbK3.jpg');
INSERT INTO `image` VALUES ('723', 'http://static.yidianzixun.com/beauty/imgs/i_000cW7s1.jpg');
INSERT INTO `image` VALUES ('734', 'http://static.yidianzixun.com/beauty/imgs/i_000cVQH8.jpg');
INSERT INTO `image` VALUES ('735', 'http://static.yidianzixun.com/beauty/imgs/i_000cdYhA.jpg');
INSERT INTO `image` VALUES ('741', 'http://static.yidianzixun.com/beauty/imgs/i_000cWFqa.jpg');
INSERT INTO `image` VALUES ('742', 'http://static.yidianzixun.com/beauty/imgs/i_000cUiB7.jpg');
INSERT INTO `image` VALUES ('751', 'http://static.yidianzixun.com/beauty/imgs/i_000cbXk1.jpg');
INSERT INTO `image` VALUES ('755', 'http://static.yidianzixun.com/beauty/imgs/i_000cWb4S.jpg');
INSERT INTO `image` VALUES ('759', 'http://static.yidianzixun.com/beauty/imgs/i_000cVOku.jpg');
INSERT INTO `image` VALUES ('760', 'http://static.yidianzixun.com/beauty/imgs/i_000cXQLY.jpg');
INSERT INTO `image` VALUES ('761', 'http://static.yidianzixun.com/beauty/imgs/i_000cUtds.jpg');
INSERT INTO `image` VALUES ('764', 'http://static.yidianzixun.com/beauty/imgs/i_000VrTe4.jpg');
INSERT INTO `image` VALUES ('767', 'http://static.yidianzixun.com/beauty/imgs/i_000cXGlW.jpg');
INSERT INTO `image` VALUES ('768', 'http://static.yidianzixun.com/beauty/imgs/i_000cXudE.jpg');
INSERT INTO `image` VALUES ('770', 'http://static.yidianzixun.com/beauty/imgs/i_000cVFoN.jpg');
INSERT INTO `image` VALUES ('777', 'http://static.yidianzixun.com/beauty/imgs/i_000cZaIM.jpg');
INSERT INTO `image` VALUES ('781', 'http://static.yidianzixun.com/beauty/imgs/i_000caO0V.jpg');
INSERT INTO `image` VALUES ('784', 'http://static.yidianzixun.com/beauty/imgs/i_000cVNsB.jpg');
INSERT INTO `image` VALUES ('786', 'http://static.yidianzixun.com/beauty/imgs/i_000cYyCL.jpg');
INSERT INTO `image` VALUES ('790', 'http://static.yidianzixun.com/beauty/imgs/i_000cW0gw.jpg');
INSERT INTO `image` VALUES ('791', 'http://static.yidianzixun.com/beauty/imgs/i_000cUdlU.jpg');
INSERT INTO `image` VALUES ('793', 'http://static.yidianzixun.com/beauty/imgs/i_000Vrqkf.jpg');
INSERT INTO `image` VALUES ('798', 'http://static.yidianzixun.com/beauty/imgs/i_000ccNCC.jpg');
INSERT INTO `image` VALUES ('799', 'http://static.yidianzixun.com/beauty/imgs/i_000cbTD7.jpg');
INSERT INTO `image` VALUES ('803', 'http://static.yidianzixun.com/beauty/imgs/i_000cfMQ6.jpg');
INSERT INTO `image` VALUES ('804', 'http://static.yidianzixun.com/beauty/imgs/i_000cdV2z.jpg');
INSERT INTO `image` VALUES ('810', 'http://static.yidianzixun.com/beauty/imgs/i_000cbd5V.jpg');
INSERT INTO `image` VALUES ('812', 'http://static.yidianzixun.com/beauty/imgs/i_000cZ3Rk.jpg');
INSERT INTO `image` VALUES ('815', 'http://static.yidianzixun.com/beauty/imgs/i_000cWWbh.jpg');
INSERT INTO `image` VALUES ('818', 'http://static.yidianzixun.com/beauty/imgs/i_000cWQJL.jpg');
INSERT INTO `image` VALUES ('820', 'http://static.yidianzixun.com/beauty/imgs/i_000cdQdM.jpg');
INSERT INTO `image` VALUES ('822', 'http://static.yidianzixun.com/beauty/imgs/i_000cdd9v.jpg');
INSERT INTO `image` VALUES ('823', 'http://static.yidianzixun.com/beauty/imgs/i_000caDIW.jpg');
INSERT INTO `image` VALUES ('826', 'http://static.yidianzixun.com/beauty/imgs/i_000cdvnl.jpg');
INSERT INTO `image` VALUES ('832', 'http://static.yidianzixun.com/beauty/imgs/i_000cexbQ.jpg');
INSERT INTO `image` VALUES ('839', 'http://static.yidianzixun.com/beauty/imgs/i_000cUlpI.jpg');
INSERT INTO `image` VALUES ('845', 'http://static.yidianzixun.com/beauty/imgs/i_000cXekq.jpg');
INSERT INTO `image` VALUES ('846', 'http://static.yidianzixun.com/beauty/imgs/i_000cUcsl.jpg');
INSERT INTO `image` VALUES ('851', 'http://static.yidianzixun.com/beauty/imgs/i_000cXYPM.jpg');
INSERT INTO `image` VALUES ('855', 'http://static.yidianzixun.com/beauty/imgs/i_000cdpVP.jpg');
INSERT INTO `image` VALUES ('859', 'http://static.yidianzixun.com/beauty/imgs/i_000cVj63.jpg');
INSERT INTO `image` VALUES ('870', 'http://static.yidianzixun.com/beauty/imgs/i_000cVsnM.jpg');
INSERT INTO `image` VALUES ('873', 'http://static.yidianzixun.com/beauty/imgs/i_000cbfqx.jpg');
INSERT INTO `image` VALUES ('889', 'http://static.yidianzixun.com/beauty/imgs/i_000cXlvv.jpg');
INSERT INTO `image` VALUES ('890', 'http://static.yidianzixun.com/beauty/imgs/i_000cVGh6.jpg');
INSERT INTO `image` VALUES ('893', 'http://static.yidianzixun.com/beauty/imgs/i_000cXJPh.jpg');
INSERT INTO `image` VALUES ('898', 'http://static.yidianzixun.com/beauty/imgs/i_000cZOtk.jpg');
INSERT INTO `image` VALUES ('899', 'http://static.yidianzixun.com/beauty/imgs/i_000cXnhN.jpg');
INSERT INTO `image` VALUES ('900', 'http://static.yidianzixun.com/beauty/imgs/i_000VuUdQ.jpg');
INSERT INTO `image` VALUES ('907', 'http://static.yidianzixun.com/beauty/imgs/i_000cXD7L.jpg');
INSERT INTO `image` VALUES ('909', 'http://static.yidianzixun.com/beauty/imgs/i_000cWYN9.jpg');
INSERT INTO `image` VALUES ('910', 'http://static.yidianzixun.com/beauty/imgs/i_000cbBZH.jpg');
INSERT INTO `image` VALUES ('911', 'http://static.yidianzixun.com/beauty/imgs/i_000cXNwb.jpg');
INSERT INTO `image` VALUES ('917', 'http://static.yidianzixun.com/beauty/imgs/i_000cXtkV.jpg');
INSERT INTO `image` VALUES ('921', 'http://static.yidianzixun.com/beauty/imgs/i_000cbEDS.jpg');
INSERT INTO `image` VALUES ('924', 'http://static.yidianzixun.com/beauty/imgs/i_000ccftA.jpg');
INSERT INTO `image` VALUES ('945', 'http://static.yidianzixun.com/beauty/imgs/i_000ce4a4.jpg');
INSERT INTO `image` VALUES ('946', 'http://static.yidianzixun.com/beauty/imgs/i_000ccSMb.jpg');
INSERT INTO `image` VALUES ('947', 'http://static.yidianzixun.com/beauty/imgs/i_000cVq1u.jpg');
INSERT INTO `image` VALUES ('948', 'http://static.yidianzixun.com/beauty/imgs/i_000cb0wX.jpg');
INSERT INTO `image` VALUES ('959', 'http://static.yidianzixun.com/beauty/imgs/i_000cWCCP.jpg');
INSERT INTO `image` VALUES ('960', 'http://static.yidianzixun.com/beauty/imgs/i_000cbaRK.jpg');
INSERT INTO `image` VALUES ('962', 'http://static.yidianzixun.com/beauty/imgs/i_000cVISY.jpg');
INSERT INTO `image` VALUES ('963', 'http://static.yidianzixun.com/beauty/imgs/i_000cXS70.jpg');
INSERT INTO `image` VALUES ('974', 'http://static.yidianzixun.com/beauty/imgs/i_000cUkwZ.jpg');
INSERT INTO `image` VALUES ('979', 'http://static.yidianzixun.com/beauty/imgs/i_000cedC8.jpg');
INSERT INTO `image` VALUES ('980', 'http://static.yidianzixun.com/beauty/imgs/i_000ccpTC.jpg');
INSERT INTO `image` VALUES ('990', 'http://static.yidianzixun.com/beauty/imgs/i_000cXVlB.jpg');
INSERT INTO `image` VALUES ('993', 'http://static.yidianzixun.com/beauty/imgs/i_000cbU5q.jpg');
INSERT INTO `image` VALUES ('994', 'http://static.yidianzixun.com/beauty/imgs/i_000cWM1f.jpg');
INSERT INTO `image` VALUES ('996', 'http://static.yidianzixun.com/beauty/imgs/i_000cbgjg.jpg');
INSERT INTO `image` VALUES ('997', 'http://static.yidianzixun.com/beauty/imgs/i_000cXq6K.jpg');
INSERT INTO `image` VALUES ('1002', 'http://static.yidianzixun.com/beauty/imgs/i_000ccm4F.jpg');
INSERT INTO `image` VALUES ('1004', 'http://static.yidianzixun.com/beauty/imgs/i_000cUj3q.jpg');
INSERT INTO `image` VALUES ('1006', 'http://static.yidianzixun.com/beauty/imgs/i_000cekND.jpg');
INSERT INTO `image` VALUES ('1008', 'http://static.yidianzixun.com/beauty/imgs/i_000ce5Sn.jpg');
INSERT INTO `image` VALUES ('1021', 'http://static.yidianzixun.com/beauty/imgs/i_000cbhcP.jpg');
INSERT INTO `image` VALUES ('1022', 'http://static.yidianzixun.com/beauty/imgs/i_000cdcHC.jpg');
INSERT INTO `image` VALUES ('1023', 'http://static.yidianzixun.com/beauty/imgs/i_000cduv2.jpg');
INSERT INTO `image` VALUES ('1025', 'http://static.yidianzixun.com/beauty/imgs/i_000cW8kk.jpg');
INSERT INTO `image` VALUES ('1027', 'http://static.yidianzixun.com/beauty/imgs/i_000cVuYo.jpg');
INSERT INTO `image` VALUES ('1035', 'http://static.yidianzixun.com/beauty/imgs/i_000cbPgD.jpg');
INSERT INTO `image` VALUES ('1036', 'http://static.yidianzixun.com/beauty/imgs/i_000cV0ej.jpg');
INSERT INTO `image` VALUES ('1043', 'http://static.yidianzixun.com/beauty/imgs/i_000cV8iX.jpg');
INSERT INTO `image` VALUES ('1047', 'http://static.yidianzixun.com/beauty/imgs/i_000ccoph.jpg');
INSERT INTO `image` VALUES ('1051', 'http://static.yidianzixun.com/beauty/imgs/i_000cee4r.jpg');
INSERT INTO `image` VALUES ('1054', 'http://static.yidianzixun.com/beauty/imgs/i_000cXoa6.jpg');
INSERT INTO `image` VALUES ('1058', 'http://static.yidianzixun.com/beauty/imgs/i_000cUR7e.jpg');
INSERT INTO `image` VALUES ('1059', 'http://static.yidianzixun.com/beauty/imgs/i_000cUgPf.jpg');
INSERT INTO `image` VALUES ('1062', 'http://static.yidianzixun.com/beauty/imgs/i_000cce0R.jpg');
INSERT INTO `image` VALUES ('1063', 'http://static.yidianzixun.com/beauty/imgs/i_000cVp9B.jpg');
INSERT INTO `image` VALUES ('1070', 'http://static.yidianzixun.com/beauty/imgs/i_000ccBbU.jpg');
INSERT INTO `image` VALUES ('1071', 'http://static.yidianzixun.com/beauty/imgs/i_000cbN9z.jpg');
INSERT INTO `image` VALUES ('1074', 'http://static.yidianzixun.com/beauty/imgs/i_000cXhP1.jpg');
INSERT INTO `image` VALUES ('1075', 'http://static.yidianzixun.com/beauty/imgs/i_000cUsl9.jpg');
INSERT INTO `image` VALUES ('1077', 'http://static.yidianzixun.com/beauty/imgs/i_000cVS2a.jpg');
INSERT INTO `image` VALUES ('1082', 'http://static.yidianzixun.com/beauty/imgs/i_000cXOpK.jpg');
INSERT INTO `image` VALUES ('1085', 'http://static.yidianzixun.com/beauty/imgs/i_000cbZVT.jpg');
INSERT INTO `image` VALUES ('1086', 'http://static.yidianzixun.com/beauty/imgs/i_000ccWtV.jpg');
INSERT INTO `image` VALUES ('1100', 'http://static.yidianzixun.com/beauty/imgs/i_000cXvVx.jpg');
INSERT INTO `image` VALUES ('1104', 'http://static.yidianzixun.com/beauty/imgs/i_000cYxJc.jpg');
INSERT INTO `image` VALUES ('1107', 'http://static.yidianzixun.com/beauty/imgs/i_000cW4Dq.jpg');
INSERT INTO `image` VALUES ('1108', 'http://static.yidianzixun.com/beauty/imgs/i_000VrY3h.jpg');
INSERT INTO `image` VALUES ('1112', 'http://static.yidianzixun.com/beauty/imgs/i_000cZ5DC.jpg');
INSERT INTO `image` VALUES ('1117', 'http://static.yidianzixun.com/beauty/imgs/i_000cVHZp.jpg');
INSERT INTO `image` VALUES ('1120', 'http://static.yidianzixun.com/beauty/imgs/i_000cWHc2.jpg');
INSERT INTO `image` VALUES ('1123', 'http://static.yidianzixun.com/beauty/imgs/i_000cWmmR.jpg');
INSERT INTO `image` VALUES ('1130', 'http://static.yidianzixun.com/beauty/imgs/i_000Vrprw.jpg');
INSERT INTO `image` VALUES ('1141', 'http://static.yidianzixun.com/beauty/imgs/i_000caYaX.jpg');
INSERT INTO `image` VALUES ('1142', 'http://static.yidianzixun.com/beauty/imgs/i_000cVvRX.jpg');
INSERT INTO `image` VALUES ('1156', 'http://static.yidianzixun.com/beauty/imgs/i_000cV9bG.jpg');
INSERT INTO `image` VALUES ('1157', 'http://static.yidianzixun.com/beauty/imgs/i_000cWJNU.jpg');
INSERT INTO `image` VALUES ('1161', 'http://static.yidianzixun.com/beauty/imgs/i_000cUNpy.jpg');
INSERT INTO `image` VALUES ('1162', 'http://static.yidianzixun.com/beauty/imgs/i_000caxSa.jpg');
INSERT INTO `image` VALUES ('1166', 'http://static.yidianzixun.com/beauty/imgs/i_000cVBHT.jpg');
INSERT INTO `image` VALUES ('1167', 'http://static.yidianzixun.com/beauty/imgs/i_000cVBHT.jpg');
INSERT INTO `image` VALUES ('1169', 'http://static.yidianzixun.com/beauty/imgs/i_000cVtg5.jpg');
INSERT INTO `image` VALUES ('1183', 'http://static.yidianzixun.com/beauty/imgs/i_000cWXUQ.jpg');
INSERT INTO `image` VALUES ('1185', 'http://static.yidianzixun.com/beauty/imgs/i_000cV3Iu.jpg');
INSERT INTO `image` VALUES ('1203', 'http://static.yidianzixun.com/beauty/imgs/i_000cUxAm.jpg');
INSERT INTO `image` VALUES ('1205', 'http://static.yidianzixun.com/beauty/imgs/i_000cVrud.jpg');
INSERT INTO `image` VALUES ('1207', 'http://static.yidianzixun.com/beauty/imgs/i_000cWOn7.jpg');
INSERT INTO `image` VALUES ('1208', 'http://static.yidianzixun.com/beauty/imgs/i_000ceaXx.jpg');
INSERT INTO `image` VALUES ('1209', 'http://static.yidianzixun.com/beauty/imgs/i_000cXM3s.jpg');
INSERT INTO `image` VALUES ('1213', 'http://static.yidianzixun.com/beauty/imgs/i_000cV6x5.jpg');
INSERT INTO `image` VALUES ('1214', 'http://static.yidianzixun.com/beauty/imgs/i_000cV7po.jpg');
INSERT INTO `image` VALUES ('1217', 'http://static.yidianzixun.com/beauty/imgs/i_000cbAgY.jpg');
INSERT INTO `image` VALUES ('1220', 'http://static.yidianzixun.com/beauty/imgs/i_000VrSlL.jpg');
INSERT INTO `image` VALUES ('1221', 'http://static.yidianzixun.com/beauty/imgs/i_000cUnak.jpg');
INSERT INTO `image` VALUES ('1222', 'http://static.yidianzixun.com/beauty/imgs/i_000cUwI3.jpg');
INSERT INTO `image` VALUES ('1223', 'http://static.yidianzixun.com/beauty/imgs/i_000cVegQ.jpg');
INSERT INTO `image` VALUES ('1229', 'http://static.yidianzixun.com/beauty/imgs/i_000cUYIj.jpg');
INSERT INTO `image` VALUES ('1230', 'http://static.yidianzixun.com/beauty/imgs/i_000cVVgl.jpg');
INSERT INTO `image` VALUES ('1232', 'http://static.yidianzixun.com/beauty/imgs/i_000cVKE0.jpg');
INSERT INTO `image` VALUES ('1234', 'http://static.yidianzixun.com/beauty/imgs/i_000cXREH.jpg');
INSERT INTO `image` VALUES ('1240', 'http://static.yidianzixun.com/beauty/imgs/i_000cV2QB.jpg');
INSERT INTO `image` VALUES ('1247', 'http://static.yidianzixun.com/beauty/imgs/i_000VuTkh.jpg');
INSERT INTO `image` VALUES ('1251', 'http://static.yidianzixun.com/beauty/imgs/i_000cVZDf.jpg');
INSERT INTO `image` VALUES ('1252', 'http://static.yidianzixun.com/beauty/imgs/i_000cV54M.jpg');
INSERT INTO `image` VALUES ('1298', 'http://static.yidianzixun.com/beauty/imgs/i_000cV1XS.jpg');
INSERT INTO `image` VALUES ('1300', 'http://static.yidianzixun.com/beauty/imgs/i_000cbHrd.jpg');
INSERT INTO `image` VALUES ('1313', 'http://static.yidianzixun.com/beauty/imgs/i_000ccPiQ.jpg');

-- ----------------------------
-- Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `request_url` varchar(300) DEFAULT NULL,
  `context_path` varchar(30) DEFAULT NULL,
  `remote_addr` varchar(30) DEFAULT NULL,
  `access_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=552 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('302', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 13:36:30');
INSERT INTO `info` VALUES ('303', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 13:37:29');
INSERT INTO `info` VALUES ('304', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 13:38:12');
INSERT INTO `info` VALUES ('305', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 13:38:58');
INSERT INTO `info` VALUES ('306', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 13:39:22');
INSERT INTO `info` VALUES ('307', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 13:39:23');
INSERT INTO `info` VALUES ('308', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 13:39:36');
INSERT INTO `info` VALUES ('309', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 13:39:58');
INSERT INTO `info` VALUES ('310', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 13:42:38');
INSERT INTO `info` VALUES ('311', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 13:45:48');
INSERT INTO `info` VALUES ('312', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 14:01:41');
INSERT INTO `info` VALUES ('313', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 14:24:21');
INSERT INTO `info` VALUES ('314', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 14:24:34');
INSERT INTO `info` VALUES ('315', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 14:31:33');
INSERT INTO `info` VALUES ('316', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 14:40:46');
INSERT INTO `info` VALUES ('317', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 15:04:12');
INSERT INTO `info` VALUES ('318', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 15:06:30');
INSERT INTO `info` VALUES ('319', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 15:08:57');
INSERT INTO `info` VALUES ('320', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 15:09:06');
INSERT INTO `info` VALUES ('321', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 15:32:17');
INSERT INTO `info` VALUES ('322', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 15:32:22');
INSERT INTO `info` VALUES ('323', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:15:39');
INSERT INTO `info` VALUES ('324', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:16:14');
INSERT INTO `info` VALUES ('325', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:16:28');
INSERT INTO `info` VALUES ('326', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:16:43');
INSERT INTO `info` VALUES ('327', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:35:52');
INSERT INTO `info` VALUES ('328', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:36:07');
INSERT INTO `info` VALUES ('329', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:41:48');
INSERT INTO `info` VALUES ('330', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:44:53');
INSERT INTO `info` VALUES ('331', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:45:25');
INSERT INTO `info` VALUES ('332', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:45:57');
INSERT INTO `info` VALUES ('333', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:46:10');
INSERT INTO `info` VALUES ('334', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:47:45');
INSERT INTO `info` VALUES ('335', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:48:36');
INSERT INTO `info` VALUES ('336', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:48:41');
INSERT INTO `info` VALUES ('337', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:48:54');
INSERT INTO `info` VALUES ('338', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:57:14');
INSERT INTO `info` VALUES ('339', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:57:20');
INSERT INTO `info` VALUES ('340', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:57:54');
INSERT INTO `info` VALUES ('341', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:57:56');
INSERT INTO `info` VALUES ('342', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:57:59');
INSERT INTO `info` VALUES ('343', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:58:01');
INSERT INTO `info` VALUES ('344', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:58:09');
INSERT INTO `info` VALUES ('345', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 16:58:12');
INSERT INTO `info` VALUES ('346', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 17:02:54');
INSERT INTO `info` VALUES ('347', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 19:05:22');
INSERT INTO `info` VALUES ('348', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 19:05:40');
INSERT INTO `info` VALUES ('349', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 19:05:48');
INSERT INTO `info` VALUES ('350', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 19:06:40');
INSERT INTO `info` VALUES ('351', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 19:08:42');
INSERT INTO `info` VALUES ('352', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 19:08:54');
INSERT INTO `info` VALUES ('353', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 19:08:59');
INSERT INTO `info` VALUES ('354', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 19:09:14');
INSERT INTO `info` VALUES ('355', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 19:09:37');
INSERT INTO `info` VALUES ('356', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 19:22:36');
INSERT INTO `info` VALUES ('357', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 19:39:53');
INSERT INTO `info` VALUES ('358', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 19:45:52');
INSERT INTO `info` VALUES ('359', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:22:04');
INSERT INTO `info` VALUES ('360', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:45:12');
INSERT INTO `info` VALUES ('361', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:45:30');
INSERT INTO `info` VALUES ('362', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:45:32');
INSERT INTO `info` VALUES ('363', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:47:35');
INSERT INTO `info` VALUES ('364', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:47:45');
INSERT INTO `info` VALUES ('365', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:48:03');
INSERT INTO `info` VALUES ('366', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:48:17');
INSERT INTO `info` VALUES ('367', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:48:20');
INSERT INTO `info` VALUES ('368', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:48:27');
INSERT INTO `info` VALUES ('369', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:49:07');
INSERT INTO `info` VALUES ('370', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:49:21');
INSERT INTO `info` VALUES ('371', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:50:37');
INSERT INTO `info` VALUES ('372', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:50:44');
INSERT INTO `info` VALUES ('373', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:51:06');
INSERT INTO `info` VALUES ('374', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:52:51');
INSERT INTO `info` VALUES ('375', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:53:48');
INSERT INTO `info` VALUES ('376', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:54:06');
INSERT INTO `info` VALUES ('377', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:54:38');
INSERT INTO `info` VALUES ('378', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:54:45');
INSERT INTO `info` VALUES ('379', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:54:52');
INSERT INTO `info` VALUES ('380', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:54:57');
INSERT INTO `info` VALUES ('381', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:55:19');
INSERT INTO `info` VALUES ('382', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:56:08');
INSERT INTO `info` VALUES ('383', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:56:15');
INSERT INTO `info` VALUES ('384', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:56:24');
INSERT INTO `info` VALUES ('385', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:56:29');
INSERT INTO `info` VALUES ('386', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:56:44');
INSERT INTO `info` VALUES ('387', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:56:48');
INSERT INTO `info` VALUES ('388', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:56:51');
INSERT INTO `info` VALUES ('389', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:58:09');
INSERT INTO `info` VALUES ('390', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:58:16');
INSERT INTO `info` VALUES ('391', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 20:59:43');
INSERT INTO `info` VALUES ('392', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:00:14');
INSERT INTO `info` VALUES ('393', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:01:50');
INSERT INTO `info` VALUES ('394', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:02:24');
INSERT INTO `info` VALUES ('395', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:07:21');
INSERT INTO `info` VALUES ('396', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:07:29');
INSERT INTO `info` VALUES ('397', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:07:38');
INSERT INTO `info` VALUES ('398', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:07:59');
INSERT INTO `info` VALUES ('399', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:08:19');
INSERT INTO `info` VALUES ('400', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:08:22');
INSERT INTO `info` VALUES ('401', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:08:24');
INSERT INTO `info` VALUES ('402', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:08:45');
INSERT INTO `info` VALUES ('403', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:09:26');
INSERT INTO `info` VALUES ('404', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:09:37');
INSERT INTO `info` VALUES ('405', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:09:45');
INSERT INTO `info` VALUES ('406', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:10:23');
INSERT INTO `info` VALUES ('407', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:10:31');
INSERT INTO `info` VALUES ('408', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:10:44');
INSERT INTO `info` VALUES ('409', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:10:52');
INSERT INTO `info` VALUES ('410', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:11:39');
INSERT INTO `info` VALUES ('411', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:11:51');
INSERT INTO `info` VALUES ('412', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:12:02');
INSERT INTO `info` VALUES ('413', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:12:15');
INSERT INTO `info` VALUES ('414', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:12:17');
INSERT INTO `info` VALUES ('415', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:12:20');
INSERT INTO `info` VALUES ('416', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:12:27');
INSERT INTO `info` VALUES ('417', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:12:33');
INSERT INTO `info` VALUES ('418', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:12:43');
INSERT INTO `info` VALUES ('419', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:12:45');
INSERT INTO `info` VALUES ('420', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:12:48');
INSERT INTO `info` VALUES ('421', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:12:59');
INSERT INTO `info` VALUES ('422', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:15:22');
INSERT INTO `info` VALUES ('423', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:15:33');
INSERT INTO `info` VALUES ('424', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 21:49:15');
INSERT INTO `info` VALUES ('425', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 22:28:51');
INSERT INTO `info` VALUES ('426', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 22:29:09');
INSERT INTO `info` VALUES ('427', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 23:05:27');
INSERT INTO `info` VALUES ('428', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 23:15:02');
INSERT INTO `info` VALUES ('429', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 23:27:46');
INSERT INTO `info` VALUES ('430', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 23:29:03');
INSERT INTO `info` VALUES ('431', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 23:29:48');
INSERT INTO `info` VALUES ('432', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 23:29:55');
INSERT INTO `info` VALUES ('433', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 23:30:04');
INSERT INTO `info` VALUES ('434', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 23:30:14');
INSERT INTO `info` VALUES ('435', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 23:30:38');
INSERT INTO `info` VALUES ('436', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 23:31:03');
INSERT INTO `info` VALUES ('437', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 23:31:16');
INSERT INTO `info` VALUES ('438', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-14 23:33:20');
INSERT INTO `info` VALUES ('439', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:01:28');
INSERT INTO `info` VALUES ('440', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:02:28');
INSERT INTO `info` VALUES ('441', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:03:15');
INSERT INTO `info` VALUES ('442', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:20:41');
INSERT INTO `info` VALUES ('443', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:20:48');
INSERT INTO `info` VALUES ('444', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:20:56');
INSERT INTO `info` VALUES ('445', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:21:09');
INSERT INTO `info` VALUES ('446', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:22:35');
INSERT INTO `info` VALUES ('447', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:22:41');
INSERT INTO `info` VALUES ('448', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:22:54');
INSERT INTO `info` VALUES ('449', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:23:02');
INSERT INTO `info` VALUES ('450', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:24:48');
INSERT INTO `info` VALUES ('451', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:24:59');
INSERT INTO `info` VALUES ('452', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:25:09');
INSERT INTO `info` VALUES ('453', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:25:15');
INSERT INTO `info` VALUES ('454', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:48:13');
INSERT INTO `info` VALUES ('455', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:48:25');
INSERT INTO `info` VALUES ('456', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-15 00:49:54');
INSERT INTO `info` VALUES ('457', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:12:11');
INSERT INTO `info` VALUES ('458', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:23:51');
INSERT INTO `info` VALUES ('459', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:27:19');
INSERT INTO `info` VALUES ('460', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:29:51');
INSERT INTO `info` VALUES ('461', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:31:17');
INSERT INTO `info` VALUES ('462', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:32:20');
INSERT INTO `info` VALUES ('463', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:32:28');
INSERT INTO `info` VALUES ('464', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:34:11');
INSERT INTO `info` VALUES ('465', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:35:41');
INSERT INTO `info` VALUES ('466', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:35:50');
INSERT INTO `info` VALUES ('467', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:38:26');
INSERT INTO `info` VALUES ('468', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:38:53');
INSERT INTO `info` VALUES ('469', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:39:11');
INSERT INTO `info` VALUES ('470', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:39:20');
INSERT INTO `info` VALUES ('471', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:39:26');
INSERT INTO `info` VALUES ('472', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:39:43');
INSERT INTO `info` VALUES ('473', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:39:50');
INSERT INTO `info` VALUES ('474', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:40:12');
INSERT INTO `info` VALUES ('475', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:40:20');
INSERT INTO `info` VALUES ('476', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:40:34');
INSERT INTO `info` VALUES ('477', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:40:46');
INSERT INTO `info` VALUES ('478', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:41:55');
INSERT INTO `info` VALUES ('479', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:42:03');
INSERT INTO `info` VALUES ('480', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:48:34');
INSERT INTO `info` VALUES ('481', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:48:42');
INSERT INTO `info` VALUES ('482', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:49:51');
INSERT INTO `info` VALUES ('483', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:53:27');
INSERT INTO `info` VALUES ('484', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 07:53:55');
INSERT INTO `info` VALUES ('485', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 08:55:23');
INSERT INTO `info` VALUES ('486', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:04:31');
INSERT INTO `info` VALUES ('487', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:04:34');
INSERT INTO `info` VALUES ('488', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:06:06');
INSERT INTO `info` VALUES ('489', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:06:16');
INSERT INTO `info` VALUES ('490', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:07:37');
INSERT INTO `info` VALUES ('491', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:08:37');
INSERT INTO `info` VALUES ('492', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:10:15');
INSERT INTO `info` VALUES ('493', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:13:47');
INSERT INTO `info` VALUES ('494', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:15:07');
INSERT INTO `info` VALUES ('495', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:17:16');
INSERT INTO `info` VALUES ('496', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:22:51');
INSERT INTO `info` VALUES ('497', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:22:53');
INSERT INTO `info` VALUES ('498', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:23:20');
INSERT INTO `info` VALUES ('499', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:33:14');
INSERT INTO `info` VALUES ('500', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:35:50');
INSERT INTO `info` VALUES ('501', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:40:43');
INSERT INTO `info` VALUES ('502', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 09:47:03');
INSERT INTO `info` VALUES ('503', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:24:49');
INSERT INTO `info` VALUES ('504', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:26:57');
INSERT INTO `info` VALUES ('505', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:27:17');
INSERT INTO `info` VALUES ('506', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:28:13');
INSERT INTO `info` VALUES ('507', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:29:19');
INSERT INTO `info` VALUES ('508', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:29:46');
INSERT INTO `info` VALUES ('509', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:31:07');
INSERT INTO `info` VALUES ('510', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:31:15');
INSERT INTO `info` VALUES ('511', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:31:34');
INSERT INTO `info` VALUES ('512', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:31:40');
INSERT INTO `info` VALUES ('513', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:31:47');
INSERT INTO `info` VALUES ('514', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:35:07');
INSERT INTO `info` VALUES ('515', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:35:10');
INSERT INTO `info` VALUES ('516', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:35:56');
INSERT INTO `info` VALUES ('517', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:36:09');
INSERT INTO `info` VALUES ('518', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:37:57');
INSERT INTO `info` VALUES ('519', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:38:02');
INSERT INTO `info` VALUES ('520', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:38:42');
INSERT INTO `info` VALUES ('521', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:38:56');
INSERT INTO `info` VALUES ('522', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:39:10');
INSERT INTO `info` VALUES ('523', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:39:21');
INSERT INTO `info` VALUES ('524', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:39:27');
INSERT INTO `info` VALUES ('525', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:39:59');
INSERT INTO `info` VALUES ('526', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:40:12');
INSERT INTO `info` VALUES ('527', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:40:30');
INSERT INTO `info` VALUES ('528', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:40:46');
INSERT INTO `info` VALUES ('529', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:41:26');
INSERT INTO `info` VALUES ('530', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 11:41:37');
INSERT INTO `info` VALUES ('531', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:41:14');
INSERT INTO `info` VALUES ('532', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:41:30');
INSERT INTO `info` VALUES ('533', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:42:49');
INSERT INTO `info` VALUES ('534', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:43:01');
INSERT INTO `info` VALUES ('535', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:43:18');
INSERT INTO `info` VALUES ('536', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:43:30');
INSERT INTO `info` VALUES ('537', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:43:38');
INSERT INTO `info` VALUES ('538', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:43:55');
INSERT INTO `info` VALUES ('539', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:47:48');
INSERT INTO `info` VALUES ('540', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:54:15');
INSERT INTO `info` VALUES ('541', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:57:06');
INSERT INTO `info` VALUES ('542', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:58:48');
INSERT INTO `info` VALUES ('543', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 14:58:54');
INSERT INTO `info` VALUES ('544', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 15:00:42');
INSERT INTO `info` VALUES ('545', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 15:00:42');
INSERT INTO `info` VALUES ('546', 'http://127.0.0.1:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 15:01:13');
INSERT INTO `info` VALUES ('547', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 15:01:41');
INSERT INTO `info` VALUES ('548', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 15:03:03');
INSERT INTO `info` VALUES ('549', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 15:04:18');
INSERT INTO `info` VALUES ('550', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 15:04:25');
INSERT INTO `info` VALUES ('551', 'http://localhost:9999/df/toIndex.do', '/df', '127.0.0.1', '2019-06-17 15:09:17');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `other_id` int(11) NOT NULL,
  `other_username` varchar(20) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `operation` varchar(20) NOT NULL,
  `displayed_content` varchar(100) DEFAULT NULL,
  `msg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mid`),
  KEY `uid` (`uid`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('128', '39', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-14 23:29:41');
INSERT INTO `message` VALUES ('129', '40', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-14 23:29:53');
INSERT INTO `message` VALUES ('130', '39', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-14 23:30:11');
INSERT INTO `message` VALUES ('131', '39', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-15 00:01:38');
INSERT INTO `message` VALUES ('132', '38', '39', '恐惧的很疯狂', null, '恐惧的很疯狂请求加您为好友:', null, '2019-06-15 00:20:54');
INSERT INTO `message` VALUES ('133', '39', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-15 00:22:31');
INSERT INTO `message` VALUES ('134', '41', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-15 00:22:39');
INSERT INTO `message` VALUES ('135', '39', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-15 00:24:46');
INSERT INTO `message` VALUES ('136', '40', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-17 07:38:12');
INSERT INTO `message` VALUES ('137', '39', '41', '假按揭吧', null, '假按揭吧请求加您为好友:', null, '2019-06-17 07:39:18');
INSERT INTO `message` VALUES ('138', '40', '41', '假按揭吧', null, '假按揭吧请求加您为好友:', null, '2019-06-17 07:39:24');
INSERT INTO `message` VALUES ('139', '41', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-17 11:25:29');
INSERT INTO `message` VALUES ('140', '39', '42', '按时间段', null, '按时间段请求加您为好友:', null, '2019-06-17 11:31:29');
INSERT INTO `message` VALUES ('141', '40', '42', '按时间段', null, '按时间段请求加您为好友:', null, '2019-06-17 11:31:38');
INSERT INTO `message` VALUES ('142', '38', '42', '按时间段', '42', '回复了您的帖子', '水水水水', '2019-06-17 11:35:42');
INSERT INTO `message` VALUES ('143', '38', '42', '按时间段', '42', '赞了您的帖子', '水水水水', '2019-06-17 11:36:03');
INSERT INTO `message` VALUES ('144', '42', '42', '按时间段', '43', '回复了您的帖子', '三十六看破', '2019-06-17 11:36:24');
INSERT INTO `message` VALUES ('145', '39', '39', '恐惧的很疯狂', null, '恐惧的很疯狂请求加您为好友:', null, '2019-06-17 11:38:06');
INSERT INTO `message` VALUES ('146', '39', '40', '秦少', null, '秦少请求加您为好友:', null, '2019-06-17 11:39:18');
INSERT INTO `message` VALUES ('147', '39', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-17 11:41:34');
INSERT INTO `message` VALUES ('148', '43', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-17 15:01:33');
INSERT INTO `message` VALUES ('149', '43', '43', '米兰', null, '米兰请求加您为好友:', null, '2019-06-17 15:01:54');
INSERT INTO `message` VALUES ('150', '43', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-17 15:03:10');
INSERT INTO `message` VALUES ('151', '38', '38', '秦绍恒', '51', '回复了您的帖子', 'ask大师们的', '2019-06-17 15:05:58');
INSERT INTO `message` VALUES ('152', '38', '38', '秦绍恒', '51', '评论了你帖子的回复', '是人类开始分裂', '2019-06-17 15:06:06');
INSERT INTO `message` VALUES ('153', '38', '38', '秦绍恒', '51', '赞了您的帖子', 'ask大师们的', '2019-06-17 15:06:32');
INSERT INTO `message` VALUES ('154', '38', '38', '秦绍恒', '51', '赞了您的帖子', 'ask大师们的', '2019-06-17 15:06:34');
INSERT INTO `message` VALUES ('155', '38', '38', '秦绍恒', '51', '赞了您的帖子', 'ask大师们的', '2019-06-17 15:06:35');
INSERT INTO `message` VALUES ('156', '38', '38', '秦绍恒', '51', '赞了您的帖子', 'ask大师们的', '2019-06-17 15:06:43');
INSERT INTO `message` VALUES ('157', '38', '38', '秦绍恒', '51', '赞了您的帖子', 'ask大师们的', '2019-06-17 15:06:45');
INSERT INTO `message` VALUES ('158', '43', '38', '秦绍恒', null, '秦绍恒请求加您为好友:', null, '2019-06-17 15:09:26');

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `content` text,
  `publish_time` varchar(30) NOT NULL,
  `reply_time` varchar(30) NOT NULL,
  `reply_count` int(11) DEFAULT '0',
  `like_count` int(11) DEFAULT '0',
  `scan_count` int(11) DEFAULT '0',
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `uid` (`uid`),
  KEY `tid` (`tid`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `topic` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('42', '水水水水', '<p>ask那是；离开的那salsa就到家<img src=\"http://pszoi7vyf.bkt.clouddn.com/48a24d33-85ab-4b77-a6b8-25b83344e021.jpg\" alt=\"a\" style=\"max-width: 100%;\"></p><p><br></p>', '2019-06-17 07:06:31', '2019-6-17 11:35:41', '1', '0', '5', '38', '4');
INSERT INTO `post` VALUES ('43', '三十六看破', '<table><tbody><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p>转身离开<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/ac/smilea_thumb.gif\"></p><p><br></p>', '2019-06-17 11:06:53', '2019-6-17 11:36:24', '1', '0', '4', '42', '3');
INSERT INTO `post` VALUES ('44', '烧开水', '<p>阿三老lascivious怕是u噶时光的iasdi皇帝弄撒</p>', '2019-06-17 11:06:34', '2019-06-17 11:06:34', '0', '0', '1', '39', '5');
INSERT INTO `post` VALUES ('45', '能解决的', '<p>是啦啦啦啦啦</p>', '2019-06-17 11:06:54', '2019-06-17 11:06:54', '0', '0', '1', '39', '1');
INSERT INTO `post` VALUES ('46', '急啊急啊急啊', '<p>急啊急啊急啊就</p>', '2019-06-17 11:06:08', '2019-06-17 11:06:08', '0', '0', '1', '39', '1');
INSERT INTO `post` VALUES ('47', '娜娜南岸南岸', '<p>嘛嘛嘛嘛嘛嘛</p>', '2019-06-17 11:06:58', '2019-06-17 11:06:58', '0', '0', '1', '40', '1');
INSERT INTO `post` VALUES ('48', '雷浩十多年', '<p>科斯克拉生的</p>', '2019-06-17 11:06:11', '2019-06-17 11:06:11', '0', '0', '1', '40', '1');
INSERT INTO `post` VALUES ('49', '啦啦啦啦啦啦啦', '<p>啦啦啦啦</p>', '2019-06-17 11:06:25', '2019-06-17 11:06:25', '0', '0', '1', '40', '3');
INSERT INTO `post` VALUES ('50', '啦啦啦啦啦饿了浪费v就', '<p>了了了渡长江瓷都v</p>', '2019-06-17 11:06:44', '2019-06-17 11:06:44', '0', '0', '1', '40', '6');
INSERT INTO `post` VALUES ('51', 'ask大师们的', '<p>将急啊急啊经济</p>', '2019-06-17 03:06:31', '2019-6-17 15:06:06', '1', '1', '3', '38', '6');

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `reply_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`),
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`) ON DELETE CASCADE,
  CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('4', '<p>年好好嗷嗷回复<img src=\"http://pszoi7vyf.bkt.clouddn.com/d3194d40-255e-4bc7-8132-1327a09619ab.jpg\" alt=\"b\" style=\"max-width: 100%;\"></p><p><br></p>', '42', '42', '2019-6-17 11:35:41');
INSERT INTO `reply` VALUES ('5', '<p>你好啊好好<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/0b/tootha_thumb.gif\"></p><p><br></p>', '43', '42', '2019-6-17 11:36:24');
INSERT INTO `reply` VALUES ('6', '<p>是人类开始分裂</p>', '51', '38', '2019-6-17 15:05:58');

-- ----------------------------
-- Table structure for `topic`
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` varchar(50) DEFAULT '',
  `image` varchar(100) DEFAULT '',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', 'Java', '暂无描述', 'http://pszoi7vyf.bkt.clouddn.com/java.png');
INSERT INTO `topic` VALUES ('2', 'Python', '暂无描述', 'http://pszoi7vyf.bkt.clouddn.com/python.png');
INSERT INTO `topic` VALUES ('3', '数据结构', '暂无描述', 'http://pszoi7vyf.bkt.clouddn.com/ds.png');
INSERT INTO `topic` VALUES ('4', '算法', '暂无描述', 'http://pszoi7vyf.bkt.clouddn.com/algorithm.jpg');
INSERT INTO `topic` VALUES ('5', '操作系统', '暂无描述', 'http://pszoi7vyf.bkt.clouddn.com/operatingS.jpg');
INSERT INTO `topic` VALUES ('6', '计算机网络', '暂无描述', 'http://pszoi7vyf.bkt.clouddn.com/net.png');
INSERT INTO `topic` VALUES ('7', '数据库', '暂无描述', 'http://pszoi7vyf.bkt.clouddn.com/db.jpg');
INSERT INTO `topic` VALUES ('8', '编译原理', '暂无描述', 'http://pszoi7vyf.bkt.clouddn.com/compiler.png');
INSERT INTO `topic` VALUES ('9', '软件工程', '暂无描述', 'http://pszoi7vyf.bkt.clouddn.com/soft.jpg');
INSERT INTO `topic` VALUES ('10', 'JavaWeb', '暂无描述', 'http://pszoi7vyf.bkt.clouddn.com/javaweb.jpg');
INSERT INTO `topic` VALUES ('11', 'C', '暂无描述', 'http://pszoi7vyf.bkt.clouddn.com/c.jpg');
INSERT INTO `topic` VALUES ('12', 'C++', '暂无描述', 'http://pszoi7vyf.bkt.clouddn.com/cpp.png');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `actived` int(11) NOT NULL,
  `activate_code` varchar(60) NOT NULL,
  `join_time` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `description` varchar(30) DEFAULT '',
  `head_url` varchar(100) NOT NULL,
  `position` varchar(20) DEFAULT '',
  `school` varchar(20) DEFAULT '',
  `job` varchar(20) DEFAULT '',
  `like_count` int(11) DEFAULT '0',
  `post_count` int(11) DEFAULT '0',
  `scan_count` int(11) DEFAULT '0',
  `follow_count` int(11) DEFAULT '0',
  `follower_count` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('38', '936771816@qq.com', '1e369195ff975998a34dc2ae4c7ebe99', '1', '1560525319606200a3b7f43dd4a7aaed20709864a54b9', '2019-06-14 11:06:19', '秦绍恒', '', 'http://pszoi7vyf.bkt.clouddn.com/1997758a-d330-4239-81c2-1fda8887fd14.jpg', '', '', '', '0', '2', '8', '0', '0');
INSERT INTO `user` VALUES ('39', '1@1.com', '5e7b3a9754c2777f96174d4ccb980d23', '1', '1560526034254f884e1c952044c458a9ccd1e08f849d6', '2019-06-14 11:06:14', '恐惧的很疯狂', '', 'http://pszoi7vyf.bkt.clouddn.com/head.png', '', '', '', '0', '3', '25', '0', '0');
INSERT INTO `user` VALUES ('40', '123@123.com', '5e7b3a9754c2777f96174d4ccb980d23', '1', '1560526094550819928161a244eef9935566012840e02', '2019-06-14 11:06:14', '秦少', '', 'http://pszoi7vyf.bkt.clouddn.com/head.png', '', '', '', '0', '4', '8', '0', '0');
INSERT INTO `user` VALUES ('41', '24610791910@qq.com', '5e7b3a9754c2777f96174d4ccb980d23', '1', '15605261310776ba90cf0f41f461fb6ee7687055ae151', '2019-06-14 11:06:51', '假按揭吧', '', 'http://pszoi7vyf.bkt.clouddn.com/head.png', '', '', '', '0', '0', '9', '0', '0');
INSERT INTO `user` VALUES ('42', 'alq08885@ozlaq.com', '5e7b3a9754c2777f96174d4ccb980d23', '1', '1560742217108cd01860c3c38443db07cc594debb58ee', '2019-06-17 11:06:17', '按时间段', '', 'http://pszoi7vyf.bkt.clouddn.com/head.png', '', '', '', '0', '1', '0', '0', '0');
INSERT INTO `user` VALUES ('43', 'mau2@sina.com', 'e5d22cfc746c7da8da84e0a996e0fffa', '1', '1560753969140fd0b95c9329c43c1a91bcd8c563d5421', '2019-06-17 02:06:09', '米兰', '', 'http://pszoi7vyf.bkt.clouddn.com/head.png', '', '', '', '0', '0', '4', '0', '0');
