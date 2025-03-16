/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : ssmag4lg

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2020-09-29 16:31:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chat`
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601365942399 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1601365279901', '2020-09-29 15:41:19', '1601362807115', null, '111', null, '0');
INSERT INTO `chat` VALUES ('1601365307755', '2020-09-29 15:41:46', '1601362807115', '1', null, '你好', '0');
INSERT INTO `chat` VALUES ('1601365313884', '2020-09-29 15:41:53', '1601362807115', null, '222', null, '1');
INSERT INTO `chat` VALUES ('1601365908156', '2020-09-29 15:51:47', '1601365844291', null, '1111', null, '0');
INSERT INTO `chat` VALUES ('1601365933594', '2020-09-29 15:52:13', '1601365844291', '1', null, '你好', '0');
INSERT INTO `chat` VALUES ('1601365942398', '2020-09-29 15:52:21', '1601365844291', null, '33333', null, '1');

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/ssmAg4LG/upload/1601365157102.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/ssmAg4LG/upload/1601365164767.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/ssmAg4LG/upload/1601365172472.jpg');
INSERT INTO `config` VALUES ('4', 'picture4', 'http://localhost:8080/ssmAg4LG/upload/1601365183049.jpg');
INSERT INTO `config` VALUES ('5', 'picture5', 'http://localhost:8080/ssmAg4LG/upload/1601365191340.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for `daoshixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `daoshixinxi`;
CREATE TABLE `daoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `daoshigonghao` varchar(200) NOT NULL COMMENT '导师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `daoshizhicheng` varchar(200) DEFAULT NULL COMMENT '导师职称',
  `suozaixuexiao` varchar(200) DEFAULT NULL COMMENT '所在学校',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `daoshijieshao` longtext COMMENT '导师介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `daoshigonghao` (`daoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1601362511435 DEFAULT CHARSET=utf8 COMMENT='导师信息';

-- ----------------------------
-- Records of daoshixinxi
-- ----------------------------
INSERT INTO `daoshixinxi` VALUES ('1601362249575', '2020-09-29 14:50:49', '001', '001', '景丽亚', 'http://localhost:8080/ssmAg4LG/upload/1601365608602.jpg', '13811111111', '教授', '武汉理工大学', '132@qq.com', '<p>熔盐堆物理、钍铀燃料循环物理、反应堆核数据。</p><p>基于固态、液态燃料熔盐堆开展钍铀燃料循环研究，主要集中在在不同类型熔盐堆（熔盐冷却球床高温堆、液态燃料增殖熔盐堆、液态燃料嬗变熔盐堆等）上的钍利用性能分析及优化。基于TMSR堆的不同发展阶段及设计目标，对其燃料循环性能进行总体评价和改进，使之满足四代堆标准，并实现燃料利用最大化和核废料排放最小化的目标。针对TMSR专项的钍铀核数据需求，建立了TMSR核数据研究平台，利用此平台主要开展钍铀循环关键核素及熔盐中子热散射数据的测量、加工和检验等。针对熔盐堆中燃料流动性，发展合适的物理分析工具，并对流动条件的裂变产物演化、反应性波动及在线后处理性能进行研究。</p>');
INSERT INTO `daoshixinxi` VALUES ('1601362445246', '2020-09-29 14:54:05', '002', '002', '李延林', 'http://localhost:8080/ssmAg4LG/upload/1601365618655.jpg', '13811111111', '教授', '北京科技大学', '132@qq.com', '<p>熔盐堆物理、钍铀燃料循环物理、反应堆核数据。</p><p>基于固态、液态燃料熔盐堆开展钍铀燃料循环研究，主要集中在在不同类型熔盐堆（熔盐冷却球床高温堆、液态燃料增殖熔盐堆、液态燃料嬗变熔盐堆等）上的钍利用性能分析及优化。基于TMSR堆的不同发展阶段及设计目标，对其燃料循环性能进行总体评价和改进，使之满足四代堆标准，并实现燃料利用最大化和核废料排放最小化的目标。针对TMSR专项的钍铀核数据需求，建立了TMSR核数据研究平台，利用此平台主要开展钍铀循环关键核素及熔盐中子热散射数据的测量、加工和检验等。针对熔盐堆中燃料流动性，发展合适的物理分析工具，并对流动条件的裂变产物演化、反应性波动及在线后处理性能进行研究。</p>');
INSERT INTO `daoshixinxi` VALUES ('1601362511434', '2020-09-29 14:55:11', '003', '003', '薛小英', 'http://localhost:8080/ssmAg4LG/upload/1601365628535.jpg', '13811111111', '教授', '深圳技术大学', '135@qq.com', '<p>熔盐堆物理、钍铀燃料循环物理、反应堆核数据。</p><p>基于固态、液态燃料熔盐堆开展钍铀燃料循环研究，主要集中在在不同类型熔盐堆（熔盐冷却球床高温堆、液态燃料增殖熔盐堆、液态燃料嬗变熔盐堆等）上的钍利用性能分析及优化。基于TMSR堆的不同发展阶段及设计目标，对其燃料循环性能进行总体评价和改进，使之满足四代堆标准，并实现燃料利用最大化和核废料排放最小化的目标。针对TMSR专项的钍铀核数据需求，建立了TMSR核数据研究平台，利用此平台主要开展钍铀循环关键核素及熔盐中子热散射数据的测量、加工和检验等。针对熔盐堆中燃料流动性，发展合适的物理分析工具，并对流动条件的裂变产物演化、反应性波动及在线后处理性能进行研究。</p>');

-- ----------------------------
-- Table structure for `forum`
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '是否关闭[关闭/开放]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601365896897 DEFAULT CHARSET=utf8 COMMENT='论坛表';

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('1601365880550', '2020-09-29 15:51:20', '关于xxx的交流', 'asdasdasdasdsa', '0', '1601365844291', '222', '开放');
INSERT INTO `forum` VALUES ('1601365890339', '2020-09-29 15:51:29', '', '·········', '1601365880550', '1601365844291', null, '开放');
INSERT INTO `forum` VALUES ('1601365896896', '2020-09-29 15:51:36', '', '~~~~~~', '1601365880550', '1601365844291', null, '开放');

-- ----------------------------
-- Table structure for `kaoshengxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `kaoshengxinxi`;
CREATE TABLE `kaoshengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kaoshengzhanghao` varchar(200) NOT NULL COMMENT '考生账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `kaoshengxingming` varchar(200) DEFAULT NULL COMMENT '考生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `kaoshengtouxiang` varchar(200) DEFAULT NULL COMMENT '考生头像',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kaoshengzhanghao` (`kaoshengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1601365844292 DEFAULT CHARSET=utf8 COMMENT='考生信息';

-- ----------------------------
-- Records of kaoshengxinxi
-- ----------------------------
INSERT INTO `kaoshengxinxi` VALUES ('1601362807115', '2020-09-29 15:00:07', '111', '111', 'aaa', '女', '13', null, '13811111111', '123@qq.com');
INSERT INTO `kaoshengxinxi` VALUES ('1601365844291', '2020-09-29 15:50:44', '222', '222', '阿达', '男', '13', null, '13811111111', '123@qq.com');

-- ----------------------------
-- Table structure for `kaoyanzixun`
-- ----------------------------
DROP TABLE IF EXISTS `kaoyanzixun`;
CREATE TABLE `kaoyanzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601365746678 DEFAULT CHARSET=utf8 COMMENT='考研资讯';

-- ----------------------------
-- Records of kaoyanzixun
-- ----------------------------
INSERT INTO `kaoyanzixun` VALUES ('1601351795514', '2020-09-29 11:56:34', '教育部关于印发《2021年全国硕士研究生招生工作管理规定》的通知', 'http://localhost:8080/ssmAg4LG/upload/1601365122992.jpg', '<p>各省、自治区、直辖市高等学校招生委员会、教育厅（教委）、教育招生考试机构，新疆生产建设兵团教育局，有关部门（单位）教育司（局），各硕士研究生招生单位：</p><p>为做好2021年全国硕士研究生招生工作，现将《2021年全国硕士研究生招生工作管理规定》印发给你们，请遵照执行。</p><p class=\"ql-align-right\">教育部</p><p class=\"ql-align-right\">2020年8月24日</p><p class=\"ql-align-center\"><strong>2021年全国硕士研究生招生工作管理规定</strong></p><p class=\"ql-align-center\"><strong>第一章 总则</strong></p><p>第一条 为加强对全国硕士研究生招生工作的管理，保证硕士研究生的入学质量和招生工作的顺利进行，根据《中华人民共和国教育法》《中华人民共和国高等教育法》等法律法规，制定本规定。</p><p>第二条 高等学校和科学研究机构（以下简称招生单位）招收硕士研究生，旨在培养热爱祖国，拥护中国共产党的领导，拥护社会主义制度，遵纪守法，品德良好，具有服务国家服务人民的社会责任感，掌握本学科坚实的基础理论和系统的专业知识，具有创新精神、创新能力和从事科学研究、教学、管理等工作能力的高层次学术型专门人才以及具有较强解决实际问题的能力、能够承担专业技术或管理工作、具有良好职业素养的高层次应用型专门人才。</p><p>第三条 硕士研究生招生应坚持按需招生、全面衡量、择优录取和宁缺毋滥的原则。</p><p>第四条 招生学科（类别）、专业（领域）必须经国务院学位委员会或其授权单位批准。</p><p>第五条 招生对象主要为国家承认学历的应届本科毕业、本科毕业以及具有与本科毕业同等学力的中国公民。</p><p>第六条 全国硕士研究生招生考试分初试和复试两个阶段进行。初试和复试都是硕士研究生招生考试的重要组成部分。初试由国家统一组织，复试由招生单位自行组织。</p><p>初试方式分为全国统一考试（含联合考试）、单独考试以及推荐免试。</p><p>全国统一考试的部分或全部考试科目由教育部考试中心负责统一命题，其他考试科目由招生单位自行命题。</p>', '2020-09-29 11:56:31');
INSERT INTO `kaoyanzixun` VALUES ('1601351895780', '2020-09-29 11:58:15', '研究生教育改革要聚焦“三个优化”', 'http://localhost:8080/ssmAg4LG/upload/1601365132981.jpg', '<p>近日，教育部、国家发改委、财政部联合印发《关于加快新时代研究生教育改革发展的意见》（以下简称《意见》），提出合理扩大人才培养规模，大力发展专业学位研究生教育，加快学科专业结构调整。到2035年，初步建成具有中国特色的研究生教育强国。今年在学研究生将达300万人，《意见》的印发标志着我国从研究生教育大国迈向教育强国的新时代。关于如何面对百年未有之大变局，将研究生层次的人口资源转变成人才资源，笔者认为，应从“三个优化”确保实现研究生质量型扩招、方向不变、质量不降、为国育才的改革方向与发展路径。</p><p>加强思想政治教育，实现培养目标的结构优化。研究生教育作为高层次人才培养的主要途径，担负着国家经济、科技、社会发展和民族复兴的重任，思想政治教育更是必不可少的重要组成部分。对于研究生培养目标的结构优化，一个层面意味着转变重视智育、知识与技能至上的传统认知，另一个层面意味着转变“思想政治不可教、不需育”的传统思维。特别是疫情下的全球格局变化，以及近年不断爆出的研究生道德与心理问题，都反映出研究生教育对于思想政治教育的需求。研究生教育不能让学生一味陷入绩点的竞争，更重要的伴随每个人一生的思想水平、政治觉悟、道德品质、文化素养。学校层面，注重培养目标与培养方案的调整，挖掘思想政治教育的内涵与意义，实现价值引领和课程自信；教师层面，注重提高自身思想政治教育的德行素养、理论水平和教学方法，改变“书本式、说教式”等单一机械的教学方式，探索有亲和力和实效性的思政教育方式，注重言传身教的显性作用和隐性影响，德才并育。</p><p>推进学科专业调整，助力教育质量的内涵优化。学科专业调整是社会知识结构变化的体现，新学科的诞生和传统学科的消退也是知识整合和社会需要变化的结果。自然科学的突破和创新、公共卫生问题、国际关系问题等，越来越依赖于交叉学科及其动态发展。因此，研究生教育继续深入推进学科专业调整。一是要求服务国家战略布局，及时回应社会与市场需求。转变研究生专业设置滞后于社会发展、研究生学校毕业无法快速适应工作的专业要求等问题。例如本次疫情暴发后，应急管理学科的建设，高层次应用型公共卫生人才培养成为一次有益的尝试。二是前瞻未来发展趋势，注重基础学科、应用学科与跨学科、新兴学科的发展，处理好文科与理科的关系。如“强基计划”中重点关注的数学、物理、化学、生物及历史、哲学等，以及“国产芯”自主研发、新能源、新材料、生物技术等。三是发挥学校学科积淀和优势，在专业设置、学科调整、体系规范等层面提供应有的智力贡献。同时，给予学校招生和培养的专业自主权空间，优化培养方案和课程内容。</p>', '2020-09-29 11:57:46');
INSERT INTO `kaoyanzixun` VALUES ('1601351924124', '2020-09-29 11:58:43', '2020届毕业生就业局势总体稳定', 'http://localhost:8080/ssmAg4LG/upload/1601364907590.jpg', '<p>新华网北京9月28日电 受新冠肺炎疫情等多重因素影响，874万2020届高校毕业生就业形势严峻复杂，就业工作面临前所未有的挑战，“稳就业”“保就业”的任务非常艰巨。</p><p>28日，教育部举办教育金秋系列第五场新闻发布会，介绍2020届高校毕业生就业工作有关情况。教育部高校学生司司长王辉表示，在中央各部门、地方党委政府、高校、用人单位以及全社会共同努力下，2020届毕业生就业局势总体稳定。</p><p>据王辉介绍，为健全完善促就业政策体系，教育部会同国家发改委、财政部、人社部等20多个部门出台了多项政策措施。针对增加升学机会，出台了硕士研究生、专升本、第二学士学位面向国家战略和民生发展急需专业扩招的政策。针对基层就业，出台了扩大“特岗计划”“三支一扶”招录规模、扩大城乡社区和基层医疗就业岗位、开发科研助理岗位吸纳就业等政策。针对扩大岗位供给，出台了加大公务员、事业单位、国有企业扩大毕业生招录规模和扶持新就业形态等政策。对企业稳岗扩就业，出台了减免和缓缴社保费、返还失业保险费、发放各类就业补贴等政策。针对参军入伍，出台了加大升学优惠力度、优化体检标准、直招士官入伍等政策。针对职业资格条件，出台了教师等职业资格“先上岗、再考证”等政策。各地各高校因地制宜，也出台了一系列政策措施，保障和促进毕业生就业。</p><p>与此同时，教育部通过积极开发政策性岗位、千方百计开拓市场性岗位、创新开展就业指导服务、全力帮扶贫困群体等多方面工作，助力高校毕业生就业。</p><p>数据显示，截至9月1日，今年政策性岗位大幅增加，已吸纳280多万毕业生就业，比去年同期增加70多万。据不完全统计，今年3月以来，各地和全国高校日均举办网络招聘活动2000场左右，总数超过20万场。</p><p>王辉表示，下一步，针对离校未就业毕业生，教育部将与人社部等有关部门密切配合，一方面指导地方和高校积极为毕业生提供不断线就业服务，另一方面确保有就业意愿的毕业生纳入公共就业服务体系，努力帮助未就业毕业生尽早实现就业。</p>', '2020-09-29 11:58:37');
INSERT INTO `kaoyanzixun` VALUES ('1601351925036', '2020-09-29 11:58:44', '2020届毕业生就业局势总体稳定', 'http://localhost:8080/ssmAg4LG/upload/1601364916893.jpg', '<p>新华网北京9月28日电 受新冠肺炎疫情等多重因素影响，874万2020届高校毕业生就业形势严峻复杂，就业工作面临前所未有的挑战，“稳就业”“保就业”的任务非常艰巨。</p><p>28日，教育部举办教育金秋系列第五场新闻发布会，介绍2020届高校毕业生就业工作有关情况。教育部高校学生司司长王辉表示，在中央各部门、地方党委政府、高校、用人单位以及全社会共同努力下，2020届毕业生就业局势总体稳定。</p><p>据王辉介绍，为健全完善促就业政策体系，教育部会同国家发改委、财政部、人社部等20多个部门出台了多项政策措施。针对增加升学机会，出台了硕士研究生、专升本、第二学士学位面向国家战略和民生发展急需专业扩招的政策。针对基层就业，出台了扩大“特岗计划”“三支一扶”招录规模、扩大城乡社区和基层医疗就业岗位、开发科研助理岗位吸纳就业等政策。针对扩大岗位供给，出台了加大公务员、事业单位、国有企业扩大毕业生招录规模和扶持新就业形态等政策。对企业稳岗扩就业，出台了减免和缓缴社保费、返还失业保险费、发放各类就业补贴等政策。针对参军入伍，出台了加大升学优惠力度、优化体检标准、直招士官入伍等政策。针对职业资格条件，出台了教师等职业资格“先上岗、再考证”等政策。各地各高校因地制宜，也出台了一系列政策措施，保障和促进毕业生就业。</p><p>与此同时，教育部通过积极开发政策性岗位、千方百计开拓市场性岗位、创新开展就业指导服务、全力帮扶贫困群体等多方面工作，助力高校毕业生就业。</p><p>数据显示，截至9月1日，今年政策性岗位大幅增加，已吸纳280多万毕业生就业，比去年同期增加70多万。据不完全统计，今年3月以来，各地和全国高校日均举办网络招聘活动2000场左右，总数超过20万场。</p><p>王辉表示，下一步，针对离校未就业毕业生，教育部将与人社部等有关部门密切配合，一方面指导地方和高校积极为毕业生提供不断线就业服务，另一方面确保有就业意愿的毕业生纳入公共就业服务体系，努力帮助未就业毕业生尽早实现就业。</p>', '2020-09-29 11:58:37');

-- ----------------------------
-- Table structure for `sheshishenqing`
-- ----------------------------
DROP TABLE IF EXISTS `sheshishenqing`;
CREATE TABLE `sheshishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sheshimingcheng` varchar(200) DEFAULT NULL COMMENT '设施名称',
  `shenqingliyou` longtext COMMENT '申请理由',
  `kaoshengzhanghao` varchar(200) DEFAULT NULL COMMENT '考生账号',
  `kaoshengxingming` varchar(200) DEFAULT NULL COMMENT '考生姓名',
  `daoshigonghao` varchar(200) DEFAULT NULL COMMENT '导师工号',
  `daoshixingming` varchar(200) DEFAULT NULL COMMENT '导师姓名',
  `shenqingriqi` datetime DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601365987961 DEFAULT CHARSET=utf8 COMMENT='设施申请';

-- ----------------------------
-- Records of sheshishenqing
-- ----------------------------
INSERT INTO `sheshishenqing` VALUES ('1601362853945', '2020-09-29 15:00:53', 'xxx设施', 'asdasdas', '111', 'aaa', '002', '李延林', '2020-09-29 15:01:33', '是', 'sad');
INSERT INTO `sheshishenqing` VALUES ('1601365987960', '2020-09-29 15:53:06', 'xxxx设施', 'xxxxxxxx', '222', '阿达', '001', '景丽亚', '2020-09-29 00:00:00', '是', '111111');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', '1qz2li1yfgcxhpgx14s4w169odpb7jfs', '2020-09-29 11:46:22', '2020-09-29 16:51:56');
INSERT INTO `token` VALUES ('2', '1601362249575', '001', 'daoshixinxi', '导师信息', 'z3o6m2b1iej1zr0ywcr88fuig9klqi96', '2020-09-29 14:57:26', '2020-09-29 16:53:16');
INSERT INTO `token` VALUES ('3', '1601362807115', '111', 'kaoshengxinxi', '考生信息', 'eoyfti1hzz1xuwa4yeusf4k8inqlcbh8', '2020-09-29 15:00:12', '2020-09-29 16:40:16');
INSERT INTO `token` VALUES ('4', '1601362445246', '002', 'daoshixinxi', '导师信息', 'kb0pbmby8uijgzq7sn35ynzrxom3m9ix', '2020-09-29 15:01:01', '2020-09-29 16:01:51');
INSERT INTO `token` VALUES ('5', '1601365844291', '222', 'kaoshengxinxi', '考生信息', 'u6mpcwojporjlhf7aiat9ayfah4fw0xj', '2020-09-29 15:50:51', '2020-09-29 16:52:42');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2020-09-29 11:33:16');

-- ----------------------------
-- Table structure for `xiangmuxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `xiangmuxinxi`;
CREATE TABLE `xiangmuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `xuexiaomingcheng` varchar(200) DEFAULT NULL COMMENT '学校名称',
  `zhuanyemingcheng` varchar(200) DEFAULT NULL COMMENT '专业名称',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangmuneirong` longtext COMMENT '项目内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601361893005 DEFAULT CHARSET=utf8 COMMENT='项目信息';

-- ----------------------------
-- Records of xiangmuxinxi
-- ----------------------------
INSERT INTO `xiangmuxinxi` VALUES ('1601361891507', '2020-09-29 14:44:51', '北京林业大学', '计算机科学与技术', '关于xxx的研究', '黄俊明', 'http://localhost:8080/ssmAg4LG/upload/1601365009161.png', '<p>项目区位于青海省境内黄河干流公伯峡水电站下游的两岸阶地上，隶属循化撒拉族自治县、化隆回族自治县等两个少数民族县。该地区降水量为259.4mm，蒸发量2206.4mm，沟河多为季节性河流，气候干旱，素有“干循化”之称。项目区现有人口8.3万人，7.03万头(只)牲畜，其中2.18万人贫困，人畜饮水困难。项目区由于缺水，经济发展缓慢，群众生活条件艰苦，水土流失严重，生态环境恶化。水利基础设施建设滞后是长期以来制约区内经济社会发展的主要因素。因此，兴建该工程，不仅是该地区群众改善生产生活条件、脱贫致富的前提，也是黄河河谷两岸生态环境建设的重要基础设施，是这一地区经济发展、社会稳定、环境改善的希望所在。</p>');
INSERT INTO `xiangmuxinxi` VALUES ('1601361892061', '2020-09-29 14:44:51', '武汉理工大学', '数学专业', '关于xxx的研究', '黄俊明', 'http://localhost:8080/ssmAg4LG/upload/1601365017750.png', '<p>项目区位于青海省境内黄河干流公伯峡水电站下游的两岸阶地上，隶属循化撒拉族自治县、化隆回族自治县等两个少数民族县。该地区降水量为259.4mm，蒸发量2206.4mm，沟河多为季节性河流，气候干旱，素有“干循化”之称。项目区现有人口8.3万人，7.03万头(只)牲畜，其中2.18万人贫困，人畜饮水困难。项目区由于缺水，经济发展缓慢，群众生活条件艰苦，水土流失严重，生态环境恶化。水利基础设施建设滞后是长期以来制约区内经济社会发展的主要因素。因此，兴建该工程，不仅是该地区群众改善生产生活条件、脱贫致富的前提，也是黄河河谷两岸生态环境建设的重要基础设施，是这一地区经济发展、社会稳定、环境改善的希望所在。</p>');
INSERT INTO `xiangmuxinxi` VALUES ('1601361892383', '2020-09-29 14:44:51', '北京科技大学', '金融学', '关于xxx的研究', '黄俊明', 'http://localhost:8080/ssmAg4LG/upload/1601365027061.png', '<p>项目区位于青海省境内黄河干流公伯峡水电站下游的两岸阶地上，隶属循化撒拉族自治县、化隆回族自治县等两个少数民族县。该地区降水量为259.4mm，蒸发量2206.4mm，沟河多为季节性河流，气候干旱，素有“干循化”之称。项目区现有人口8.3万人，7.03万头(只)牲畜，其中2.18万人贫困，人畜饮水困难。项目区由于缺水，经济发展缓慢，群众生活条件艰苦，水土流失严重，生态环境恶化。水利基础设施建设滞后是长期以来制约区内经济社会发展的主要因素。因此，兴建该工程，不仅是该地区群众改善生产生活条件、脱贫致富的前提，也是黄河河谷两岸生态环境建设的重要基础设施，是这一地区经济发展、社会稳定、环境改善的希望所在。</p>');
INSERT INTO `xiangmuxinxi` VALUES ('1601361893004', '2020-09-29 14:44:52', '武汉理工大学', '数学专业', '关于xxx的研究', '黄俊明', 'http://localhost:8080/ssmAg4LG/upload/1601365035342.png', '<p>项目区位于青海省境内黄河干流公伯峡水电站下游的两岸阶地上，隶属循化撒拉族自治县、化隆回族自治县等两个少数民族县。该地区降水量为259.4mm，蒸发量2206.4mm，沟河多为季节性河流，气候干旱，素有“干循化”之称。项目区现有人口8.3万人，7.03万头(只)牲畜，其中2.18万人贫困，人畜饮水困难。项目区由于缺水，经济发展缓慢，群众生活条件艰苦，水土流失严重，生态环境恶化。水利基础设施建设滞后是长期以来制约区内经济社会发展的主要因素。因此，兴建该工程，不仅是该地区群众改善生产生活条件、脱贫致富的前提，也是黄河河谷两岸生态环境建设的重要基础设施，是这一地区经济发展、社会稳定、环境改善的希望所在。</p>');

-- ----------------------------
-- Table structure for `xuexiaojieshao`
-- ----------------------------
DROP TABLE IF EXISTS `xuexiaojieshao`;
CREATE TABLE `xuexiaojieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `xuexiaomingcheng` varchar(200) NOT NULL COMMENT '学校名称',
  `xuexiaotupian` varchar(200) DEFAULT NULL COMMENT '学校图片',
  `xuexiaogaikuang` longtext COMMENT '学校概况',
  `xuexiaodiqu` varchar(200) DEFAULT NULL COMMENT '学校地区',
  `xuexiaojianjie` longtext COMMENT '学校简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601352179542 DEFAULT CHARSET=utf8 COMMENT='学校介绍';

-- ----------------------------
-- Records of xuexiaojieshao
-- ----------------------------
INSERT INTO `xuexiaojieshao` VALUES ('1601352179186', '2020-09-29 12:02:58', '深圳技术大学', 'http://localhost:8080/ssmAg4LG/upload/1601364936798.jpg', '学校充分借鉴和引进德国、瑞士等发达国家一流技术大学先进的办学经验，致力于培养本科及以上层次具有国际视野、工匠精神和创新创业能力的高水平工程师、设计师等高素质应用型人才，努力建成一流的应用型技术大学。', '广东', '<p><span style=\"color: rgb(88, 88, 88);\">深圳技术大学是广东省和深圳市高起点、高水平、高标准建设的本科层次公办普通高等学校。2015年，深圳市委市政府开始筹建深圳技术大学。2016年3月，深圳市人民政府办公厅发布关于设</span>	<span style=\"color: rgb(88, 88, 88);\">立深</span>	<span style=\"color: rgb(88, 88, 88);\">圳技术大学筹备办公室的通知。2017年7月，深圳市机构编制委员会发布关于设立深圳技术大学（筹）的通知。2017年9月、2018年9月深圳技术大学（筹）依托深圳大学分别招收了226人和807人。2018年11月30日，经教育部批准正式设立深圳技术大学，学校独立招生，标识码为4144014655，定位于应用型高等学校。</span>	<span style=\"color: rgb(88, 88, 88);\">2019</span>	<span style=\"color: rgb(88, 88, 88);\">年 9月，学校首年独立招生录取 807人，招生的六个省份均高于一本线（高优线 /自招线）录取；其中，广东省理科投档线进入前十。</span></p>');
INSERT INTO `xuexiaojieshao` VALUES ('1601352179256', '2020-09-29 12:02:58', '武汉理工大学', 'http://localhost:8080/ssmAg4LG/upload/1601364948628.jpg', '学校充分借鉴和引进德国、瑞士等发达国家一流技术大学先进的办学经验，致力于培养本科及以上层次具有国际视野、工匠精神和创新创业能力的高水平工程师、设计师等高素质应用型人才，努力建成一流的应用型技术大学。', '武汉', '<p><span style=\"color: rgb(88, 88, 88);\">深圳技术大学是广东省和深圳市高起点、高水平、高标准建设的本科层次公办普通高等学校。2015年，深圳市委市政府开始筹建深圳技术大学。2016年3月，深圳市人民政府办公厅发布关于设</span>	<span style=\"color: rgb(88, 88, 88);\">立深</span>	<span style=\"color: rgb(88, 88, 88);\">圳技术大学筹备办公室的通知。2017年7月，深圳市机构编制委员会发布关于设立深圳技术大学（筹）的通知。2017年9月、2018年9月深圳技术大学（筹）依托深圳大学分别招收了226人和807人。2018年11月30日，经教育部批准正式设立深圳技术大学，学校独立招生，标识码为4144014655，定位于应用型高等学校。</span>	<span style=\"color: rgb(88, 88, 88);\">2019</span>	<span style=\"color: rgb(88, 88, 88);\">年 9月，学校首年独立招生录取 807人，招生的六个省份均高于一本线（高优线 /自招线）录取；其中，广东省理科投档线进入前十。</span></p>');
INSERT INTO `xuexiaojieshao` VALUES ('1601352179381', '2020-09-29 12:02:58', '北京林业大学', 'http://localhost:8080/ssmAg4LG/upload/1601364959736.jpg', '学校充分借鉴和引进德国、瑞士等发达国家一流技术大学先进的办学经验，致力于培养本科及以上层次具有国际视野、工匠精神和创新创业能力的高水平工程师、设计师等高素质应用型人才，努力建成一流的应用型技术大学。', '北京', '<p><span style=\"color: rgb(88, 88, 88);\">深圳技术大学是广东省和深圳市高起点、高水平、高标准建设的本科层次公办普通高等学校。2015年，深圳市委市政府开始筹建深圳技术大学。2016年3月，深圳市人民政府办公厅发布关于设</span>	<span style=\"color: rgb(88, 88, 88);\">立深</span>	<span style=\"color: rgb(88, 88, 88);\">圳技术大学筹备办公室的通知。2017年7月，深圳市机构编制委员会发布关于设立深圳技术大学（筹）的通知。2017年9月、2018年9月深圳技术大学（筹）依托深圳大学分别招收了226人和807人。2018年11月30日，经教育部批准正式设立深圳技术大学，学校独立招生，标识码为4144014655，定位于应用型高等学校。</span>	<span style=\"color: rgb(88, 88, 88);\">2019</span>	<span style=\"color: rgb(88, 88, 88);\">年 9月，学校首年独立招生录取 807人，招生的六个省份均高于一本线（高优线 /自招线）录取；其中，广东省理科投档线进入前十。</span></p>');
INSERT INTO `xuexiaojieshao` VALUES ('1601352179541', '2020-09-29 12:02:59', '北京科技大学', 'http://localhost:8080/ssmAg4LG/upload/1601364969441.jpg', '学校充分借鉴和引进德国、瑞士等发达国家一流技术大学先进的办学经验，致力于培养本科及以上层次具有国际视野、工匠精神和创新创业能力的高水平工程师、设计师等高素质应用型人才，努力建成一流的应用型技术大学。', '北京', '<p><span style=\"color: rgb(88, 88, 88);\">深圳技术大学是广东省和深圳市高起点、高水平、高标准建设的本科层次公办普通高等学校。2015年，深圳市委市政府开始筹建深圳技术大学。2016年3月，深圳市人民政府办公厅发布关于设</span>	<span style=\"color: rgb(88, 88, 88);\">立深</span>	<span style=\"color: rgb(88, 88, 88);\">圳技术大学筹备办公室的通知。2017年7月，深圳市机构编制委员会发布关于设立深圳技术大学（筹）的通知。2017年9月、2018年9月深圳技术大学（筹）依托深圳大学分别招收了226人和807人。2018年11月30日，经教育部批准正式设立深圳技术大学，学校独立招生，标识码为4144014655，定位于应用型高等学校。</span>	<span style=\"color: rgb(88, 88, 88);\">2019</span>	<span style=\"color: rgb(88, 88, 88);\">年 9月，学校首年独立招生录取 807人，招生的六个省份均高于一本线（高优线 /自招线）录取；其中，广东省理科投档线进入前十。</span></p>');

-- ----------------------------
-- Table structure for `zhuanyexinxi`
-- ----------------------------
DROP TABLE IF EXISTS `zhuanyexinxi`;
CREATE TABLE `zhuanyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zhuanyebianhao` varchar(200) DEFAULT NULL COMMENT '专业编号',
  `zhuanyemingcheng` varchar(200) DEFAULT NULL COMMENT '专业名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhuanyejieshao` longtext COMMENT '专业介绍',
  `zhuanyezhuyishixiang` varchar(200) DEFAULT NULL COMMENT '专业注意事项',
  `zhuanyeleixing` varchar(200) DEFAULT NULL COMMENT '专业类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuanyebianhao` (`zhuanyebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1601361284649 DEFAULT CHARSET=utf8 COMMENT='专业信息';

-- ----------------------------
-- Records of zhuanyexinxi
-- ----------------------------
INSERT INTO `zhuanyexinxi` VALUES ('1601361048953', '2020-09-29 14:30:48', '1601360921736', '金融学', 'http://localhost:8080/ssmAg4LG/upload/1601365075298.jpg', '<p>金融学：以融通货币和货币资金的经济活动为研究对象，具体研究个人、机构、政府如何获取、支出以及管理资金以及其他金融资产的学科。</p><p>在如今的人才市场中，金融类机构对人才学历的要求可以说是最高的，特别是证券业、银行业，人才需求正逐步向“高、精、尖”方向倾斜。金融学考研竞争之激烈导致考试中不确定因素的增加，录取人数、报考人数、命题形式、阅卷尺度等因素也都与考研的成败息息相关。所以说，金融学考研就是一项风险很高的投资，但高风险往往伴随着高收益。</p>', '金融学本科毕业生报考金融学研究生是最合适的', '金融学');
INSERT INTO `zhuanyexinxi` VALUES ('1601361119170', '2020-09-29 14:31:58', '1601361059872', '数学专业', 'http://localhost:8080/ssmAg4LG/upload/1601365086488.jpg', '<p>数学专业，在大众化的眼光看来，毕业后的就业前景无非是当老师或者搞科研，似乎太古板且就业道路狭窄。然而，这些都是偏见，数学专业毕业的研究生早已是金融界、IT界、科研界的“香饽饽”，数学专业的就业前景有你看不见的“前途似锦”!</p><p>现代数学的分支超越了传统数学的范畴，延伸到了各个社会领域，以数学为工具探讨和解决非数学问题，为人类社会发展做出了巨大的贡献。当然，这些专业的学生也受到了各个相关领域的欢迎。</p>', '比如此专业的毕业生可以从事科研数据分析，统计，软件开发，三维动画制作等工作。', '数学');
INSERT INTO `zhuanyexinxi` VALUES ('1601361177905', '2020-09-29 14:32:57', '1601361141240', '计算机科学与技术', 'http://localhost:8080/ssmAg4LG/upload/1601365100285.jpg', '<p><span style=\"color: rgb(51, 51, 51);\">计算机科学与技术是一门应用广泛的学科，本专业的培养目标是培养和造就适应现代化建设需要。德智体全面发展、基础扎实、知识面宽、能力强、素质高具有创新精神，系统掌握计算机硬件、软件的基本理论与应用基本技能，具有较强的实践能力，能在企事业单位、政府机关、行政管理部门从事计算机技术研究和应用，硬件、软件和网络技术的开发，计算机管理和维护的应用型专门技术人才。</span></p>', '了解要报考院校计算机系的专业设置情况', '计算机');
INSERT INTO `zhuanyexinxi` VALUES ('1601361284648', '2020-09-29 14:34:44', '1601361217745', '教育学', 'http://localhost:8080/ssmAg4LG/upload/1601365110250.jpg', '<p><span style=\"color: rgb(51, 51, 51);\">我国研究生学科分类，从大到小按照门、一级学科、二级学科划分，“门”是学科的最高级别。教育学属于一门独立的学科，下设三个一级学科，即教育学、心理学、体育学。一级学科下设二级学科，如一级学科教育学下设教育学原理、课程与教学论、教育史等等二级学科。二级学科之下，还分为诸多教育学研究方向。</span></p>', '要求考生系统掌握上述教育学学科的基本理论、基本知识和基本方法，能够运用所学的基本理论、基本知识和基本方法分析、判断和解决有关理论问题和实际问题', '');
