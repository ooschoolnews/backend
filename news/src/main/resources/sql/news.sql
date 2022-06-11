/*
 Navicat Premium Data Transfer

 Source Server         : myrds
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : rm-2ze625v62jfr42lrbao.mysql.rds.aliyuncs.com:3306
 Source Schema         : news

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 05/04/2021 21:45:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(50) DEFAULT NULL COMMENT '新闻标题',
  `url` varchar(200) DEFAULT NULL COMMENT '文件url',
  `content` longtext COMMENT '新闻内容',
  `type` int(2) DEFAULT NULL COMMENT '类型1:推荐、2:要闻、3:视频、4:娱乐、5：体育、6:财经、7:科技、8:军事、9、游戏、10:学校公告、11:校园新闻、12:党政新闻、13:高校教育新闻、14:关于考研',
  `create_at` bigint(13) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
INSERT INTO `news` VALUES (1, '习近平：祭英烈 家国永念', '', '据不完全统计\n\n　　我国有烈士2000万\n\n　　其中登记在册的烈士196万\n\n　　更多的是无名烈士\n\n　　……\n\n　　新中国是无数革命先烈用鲜血和生命铸就的\n\n　　习近平总书记每次到革命老区考察调研\n\n　　都去瞻仰革命历史纪念场所\n\n　　就是要告诫全党同志\n\n　　不能忘记红色政权是怎么来的\n\n　　新中国是怎么来的\n\n　　今天的幸福生活是怎么来的\n\n　　一代代中华儿女将永远铭记你们的功勋\n\n　　祭·英烈\n\n　　家国永念！\n\n　　总监制丨骆红秉 王姗姗\n\n　　监制丨耿志民 马丽君 陈永庆 胡啸\n\n　　编导丨李金凤 单泽\n\n　　记者丨周长琴 张明 范存宝 杜曦晨\n\n　　摄像丨龚迁 赵凯 霍锡鹏 旷志鹏\n\n　　剪辑丨李金凤\n\n　　音编丨马思遥\n\n　　责编丨刘雪锋\n\n　　素材支持丨张鹏军\n\n　　统筹丨杨波\n\n　　协拍单位丨河南广播电视台 信阳广播电视台 吉安广播电视台\n\n责任编辑：刘德宾', 1, 1617526785000);
INSERT INTO `news` VALUES (2, '今日清明，思念永恒', 'http://i2.chinanews.com/simg/hnhd/2021/04/04/0/8541014455740092028.jpg', '清明，不仅是二十四节气中的第五个节气，也是中华民族的传统节日。清明或许是最适合思念的日子，春风细雨中出行，目之所及皆是回忆，心之所向俱是过往……这个清明节，你将出行去何方？心里最怀念的又是谁？P.S。画中风景藏着哪些食物你发现了吗？\n\n　　摄影：翟璐\n\n　　绘图：张舰元', 1, 1617526785000);
INSERT INTO `news` VALUES (3, '南非新冠肺炎治愈率达95%', 'http://i2.chinanews.com/simg/hnhd/2021/04/04/0/8541014455740092028.jpg', '(抗击新冠肺炎)南非新冠肺炎治愈率达95%\n\n　　中新社约翰内斯堡4月4日电 (记者 王曦)截至南非当地时间4月4日，南非新冠肺炎治愈病例已达1476605例，使得南非新冠肺炎治愈率达到95%。\n\n　　目前，南非正值复活节假期，且疫情形势相对平稳。据南非政府公布的数据显示，4月3日新冠肺炎单日死亡病例仅上涨8例，是今年以来南非单日新增死亡病例数字最低的一天。\n\n　　4月2日，南非比勒陀利亚大学暴发了一起校园聚集性传播事件，共有55人感染新冠肺炎病毒。\n\n　　为防止新一波新冠肺炎疫情传播高峰，南非政府日前公布了假期防疫规定，例如禁止携带酒精类制品、严控宵禁时间、不鼓励跨省旅行等措施。\n\n　　据南非卫生部长穆凯兹透露，目前南非已有269102名医护工作者接种新冠肺炎疫苗。穆凯兹承诺，南非将在5月中旬前如期完成针对医护工作者的第一阶段疫苗接种工作。(完)\n\n【编辑:董寒阳】', 2, 1617526785000);
INSERT INTO `news` VALUES (4, '31省份新增确诊病例21例 其中本土病例10例均在云南', '', '中新网4月4日电 据国家卫健委网站消息，4月3日0—24时，31个省(自治区、直辖市)和新疆生产建设兵团报告新增确诊病例21例，其中境外输入病例11例(上海6例，广东2例，北京1例，天津1例，福建1例)，本土病例10例(均在云南)；无新增死亡病例；新增疑似病例2例，均为境外输入病例(均在上海)。\n\n　　当日新增治愈出院病例9例，解除医学观察的密切接触者417人，重症病例与前一日持平。\n\n　　境外输入现有确诊病例181例(其中重症病例2例)，现有疑似病例3例。累计确诊病例5335例，累计治愈出院病例5154例，无死亡病例。\n\n　　截至4月3日24时，据31个省(自治区、直辖市)和新疆生产建设兵团报告，现有确诊病例215例(其中重症病例2例)，累计治愈出院病例85422例，累计死亡病例4636例，累计报告确诊病例90273例，现有疑似病例3例。累计追踪到密切接触者992439人，尚在医学观察的密切接触者6749人。\n\n　　31个省(自治区、直辖市)和新疆生产建设兵团报告新增无症状感染者18例，其中境外输入17例，本土1例(在云南)；当日转为确诊病例4例(境外输入1例)；当日解除医学观察15例(均为境外输入)；尚在医学观察无症状感染者299例(境外输入267例)。\n\n　　累计收到港澳台地区通报确诊病例12594例。其中，香港特别行政区11501例(出院11133例，死亡205例)，澳门特别行政区48例(出院48例)，台湾地区1045例(出院992例，死亡10例)。', 2, 1617526785000);
INSERT INTO `news` VALUES (5, '南非新冠肺炎治愈率达95%', 'http://video.chinanews.com/flv/2021/0403/taitie.mp4', '　中新网4月4日电 综合台湾媒体报道，台铁“太鲁阁号”2日在花莲清水隧道疑遭工程车砸中发生出轨事故，台湾花莲检方4日将罹难人数调整为48人、受伤人数为198人、住院者为45人。\n\n　　台湾交通主管部门负责人表示，列车的行车纪录器影像已带回进行分析，包含关键的驾驶室往外拍的影像等，最晚6日会有初步分析结果。\n\n　　针对本次死伤惨重的出轨事故，台湾多家寿险业者陆续确认保户状况。国泰人寿、全球人寿与富邦人寿三家公司截至目前统计，事故罹难保户共37人，身故者理赔金额逾新台币8100万元。', 2, 1617526785000);
INSERT INTO `news` VALUES (6, '看见中国系列：巴铁厨梦', 'https://poss-videocloud.cns.com.cn/oss/2021/03/31/chinanews/MEIZI_YUNSHI/onair/92A0B02B867A487E9C3D510702F622AD.mp4', '　巴基斯坦小伙阿牙子是北京一家餐厅的合伙人和厨师，他制作的正宗家乡菜征服了许多中外食客的胃。阿牙子精心制作了60多种菜品，让餐厅的生意越来越红火。在中国的几年中，他不仅事业有了进步，成为了餐厅合作人，还收获了珍贵的友谊。如今，阿牙子正计划着把家人带到中国来。\n\n编导：孙恒业 摄像：王潮', 3, 1617526785000);
INSERT INTO `news` VALUES (7, '增重17公斤，白敬亭在新戏里过了一把“体育瘾”', 'http://i2.chinanews.com/simg/cmshd/2021/03/17/5310002976e64483b4a7729a7f76f31c.jpg', '中新网客户端北京3月18日电(记者 任思雨)“我叫徐坦，坦然自若的坦。”最近，由白敬亭、许魏洲主演的《荣耀乒乓》正在热播。剧中，由白敬亭饰演的“成长型”运动员徐坦克服重重困难，最终成长为国乒主力。\n\n　　演绎过程中，白敬亭也与角色“一起成长”，前不久一段视频登上热搜，为贴近运动员形象，他从入组时的58公斤增重到75公斤，并将运动健身的习惯保持至今。\n\n　　如何演好乒乓球运动员？拍体育类电视剧都有哪些挑战？近日，白敬亭接受中新网记者专访，聊了聊电视剧拍摄的幕后故事。', 4, 1617526785000);
INSERT INTO `news` VALUES (8, '实至名归！中国女篮传奇郑海霞入选国际篮联名人堂', 'http://i2.chinanews.com/simg/cmshd/2021/04/02/f328a2e70509457b9d18210f2d09428b.jpg', '　中新网4月2日电 北京时间1日晚，国际篮联公布了2021年国际篮联篮球名人堂12人入选名单，中国女篮传奇郑海霞位列其中。', 5, 1617526785000);
INSERT INTO `news` VALUES (9, '中国“花节”遍地开 如何盘活“花经济”？', 'https://poss-videocloud.cns.com.cn/oss/2021/03/28/chinanews/MEIZI_YUNSHI/onair/C6E447BDBBA44046AD2B3BEBB29369B4.mp4', '中新社郑州4月2日电 (记者 李贵刚)“最美人间四月天”，樱花、杏花、桃花、梨花等渐次绽放。中国各地开启“赏花模式”，各种桃花节、樱花节、梨花节等“花节”遍地开花。\n\n　　近年来，随着城乡发展，中国多地“花节”“花会”层出不穷。以中部省份河南为例，清明前后，有数种“花节”在10余地上演。\n\n　　每年4月，享誉海内外的洛阳牡丹进入赏花季，吸引成千上万的游客纷至沓来。今年的洛阳牡丹花会还在日本、法国设立了分会场。记者梳理发现，不仅仅是河南，河北威县梨花节、江苏时集镇桃花节、山西杏花村杏花节等“花节”也纷纷开启。风景变“钱景”，“花经济”随之兴起。\n\n　　据悉，大别山区河南商城县汪桥镇的“樱花节”，“吸金”逾百万元人民币。该镇党委书记冯海国介绍说，“不仅无数游客前来赏花、踏春，还带动了农特产品销售，增加了村民的收入。”\n\n　　在河南省社科院城市与环境研究所所长王建国看来，遍地开花的“花节”是顺应时代进步和城乡经济发展出现的新业态，实现了从“卖景物”到“卖景色”的转变，有助于乡村振兴和美丽乡村建设。', 6, 1617526785000);
INSERT INTO `news` VALUES (10, '新技术助推行业节能减排 绿色交通驶入“快车道”', '', '绿色交通驶入“快车道”\n\n　　本报记者 齐 慧\n\n　　交通运输领域是碳排放“大户”，占全国终端碳排放约15%。要实现“碳达峰、碳中和”的目标，交通运输行业承担着重要的任务。\n\n　　如何做好两者的衔接，在服务经济社会发展的同时推动低碳高效，是当前和今后一段时期交通运输行业必须面对并重点解决的问题。\n\n　　碳排放总量仍在增长期\n\n　　截至2020年，全国机动车保有量达3.72亿辆，其中汽车2.81亿辆。据测算，一辆汽车每燃烧一升燃料大约排放2.5千克二氧化碳。再加上航空、铁路、水运等，交通领域碳排放量非常大，减排的空间也很大。\n\n　　从近年来的情况看，交通行业碳排放单位强度虽然有所下降，但总量仍然处在增长阶段。据统计，过去9年，我国交通运输领域碳排放年均增速保持在5%以上，已成为温室气体排放增长最快的领域之一。如何在不影响经济运行的情况下制定行之有效的减排方案尤为重要。\n\n　　专家表示，交通运输点多、线长、面广，推动减排必须上下游联动。\n\n　　“汽车、交通、能源行业构成了紧密且完整的‘碳链条’。”中国电动汽车百人会副理事长兼秘书长张永伟认为，三者相互关联、相互支撑、相互约束，各行业的“双碳”目标和策略的制定必须要实现全方位协同，才能保证每个领域的目标都能落地。\n\n　　交通运输部科学研究院副院长兼总工程师王先进对此表示认同。他说，降低交通领域碳排放不仅在于交通领域本身，而是涉及交通行业的全产业链条，包括载运工具自身的能源经济性和能耗强度、运输能耗、能源供给等。\n\n　　那么，应该如何制定交通“双碳”目标的发展路径？同济大学中国交通研究院院长李兴华认为，做好交通规划是首要环节，要重点考虑交通布局与国土空间利用、城镇化模式的关系，以及交通供给与社会生产生活的关系，加强电力、能源与交通等领域之间的联动。\n\n　　今年，交通运输部推出了绿色出行“续航工程”，推动在重要城市群、都市圈重点区域高速公路服务区、客运枢纽等交通运输服务场站建设充电桩、充电站，为群众较长距离绿色出行提供便利，体现了对上下游协同减碳的重视。', 7, 1617526785000);
INSERT INTO `news` VALUES (11, '武警云南总队机动某支队春季大练兵：实战练兵只为战场打赢', 'http://i2.chinanews.com/simg/hd/2021/04/01/wc930*592_316de3e5956e4043ad0aa4c9f02209cd.jpg', '春回大地暖，练兵战意浓。三月以来武警云南总队机动某支队开展春季大练兵，进一步提高官兵实战化训练水平，磨练致胜打赢本领。该支队自三月大练兵以来，本着“补齐短板、挑战极限、紧贴实战”的理念，全面开展了88式狙击步枪精度射击、手枪限时快速射击、野外生存、楼房攀登、战场救护等4类137个科目的训练。图为喷火枪实喷训练。赵彦宝 摄', 8, 1617526785000);
INSERT INTO `news` VALUES (12, '《王者荣耀》绿色度测评报告', 'http://youxi.youth.cn/syexj/201812/W020181214323594506349.png', '绿色游戏测评报告：《王者荣耀》绿色度18+，2.5D竞技类手机网络游戏。游戏存在涉嫌开宝箱、抽奖、几率性质的游戏设置与道具；提升玩家能力的道具，以及VIP系统。 \n\n　　该报告从2016-3-18至今已进行三次测试。  \n\n　　本次测试从2018-12-12开始，到2018-12-13结束。对游戏进行全面测试。  \n\n　　本次测试游戏版本号v1.42.1.6。 \n\n', 9, 1617526785000);
INSERT INTO `news` VALUES (13, '《王者荣耀》绿色度测评报告', 'http://youxi.youth.cn/syexj/201812/W020181214323594506349.png', '绿色游戏测评报告：《王者荣耀》绿色度18+，2.5D竞技类手机网络游戏。游戏存在涉嫌开宝箱、抽奖、几率性质的游戏设置与道具；提升玩家能力的道具，以及VIP系统。 \n\n　　该报告从2016-3-18至今已进行三次测试。  \n\n　　本次测试从2018-12-12开始，到2018-12-13结束。对游戏进行全面测试。  \n\n　　本次测试游戏版本号v1.42.1.6。 \n\n', 9, 1617526785000);
INSERT INTO `news` VALUES (14, '关于加强清明节期间廉洁纪律的通知', '', '2021年清明节将至，为深入贯彻落实中央八项规定精神，防止“四风”问题反弹回潮，杜绝节日腐败，增强广大教职工廉洁自律意识，营造风清气正的校园环境，现就有关廉洁纪律重申如下：\n\n一、加强教育引导。各二级单位要组织广大教职工深入学习贯彻《中华人民共和国监察法》、《中国共产党纪律处分条例》、《中国共产党问责条例》、《中国共产党廉洁自律准则》、《中共中央关于加强党的政治建设的意见》等党纪法规，重点对党员干部和所有行使公权力教职工加强教育引导，将纪律规矩立起来，增强廉洁自律的自觉，筑牢不想腐的思想堤坝。\n\n二、加强廉洁纪律。严禁借祭扫之机收受与行使职权有关系的单位、个人的款物；严禁在祭扫中讲排场、比阔气，铺张浪费；严禁组织和参与各种封建迷信活动。\n\n三、公车使用和停放要求。严禁违规使用公车进行私人扫墓、祭祀、游玩、探亲访友等活动；严禁利用职务之便向下属和其他单位借用公车进行上述活动；严格执行公车封存停用制度。\n\n清明节期间，有公务标识的车、医院车辆（除救护车外）集中停放在后勤集团交通服务中心，救护车辆停放在医院，法人实体（法商学院、亿优公司、书刊发行站）的公车一律封存停放在行政楼前停车场，待报废车辆如不能按要求停放，以及确因工作需要用车的，应提前向纪委监专办综合室书面报备。\n\n四、加强监督检查。校纪委监专办将加强对清明节期间廉洁纪律情况的监督检查，开展明察暗访、随机抽查，综合运用信息化手段,精准查找“四风”问题，对各类隐形变异问题深入探查，对节日期间顶风违纪的，将进行公开曝光和严肃查处。', 10, 1617526786000);
INSERT INTO `news` VALUES (15, '国交处：关于开展2021年英国伯明翰大学学院“3+1本科双学位”项目的通知', '', '为进一步开拓我校学生国际化视野，提高人才培养国际化水平，根据双方签署的协议，现面向全校学生开展与英国伯明翰大学学院合作的“3+1本科双学位”项目。现将有关事项通知如下：一、合作学校简介\n\n伯明翰大学学院（原伯明翰旅游酒店管理学院），创建于1916年，至今已有100多年的历史。学院高质量教学设施及广泛的课程专业设置吸引了大量海外学生前来就读该校的预科课程、高级文凭、学士学位和研究生课程；并且部分专业由伯明翰大学（University of Birmingham，QS排名65）授课及颁发学位，该学位由中国教育部学历认证为伯明翰大学本科学士学位。二、合作项目介绍\n\n本项目经由双方正式签署、互认课程，学生于大四赴英国入读本科最后一年，完成学业并获得相应学分即可获得伯明翰大学本科学士学位（Bachelor’s Degree of University of Birmingham）和湖北经济学院本科学士学位。本科阶段完成后学生可继续申请伯明翰大学学院或其他英国大学的硕士项目。三、选拔对象\n\n湖北经济学院本科18级在校生（2021年9月英国入学）且专业符合报名条件要求。四、报名条件\n\n1. 在校平均成绩75%及以上；\n\n2. 英语良好，大学英语四级不低于440分；或具备雅思、PTE等;\n\n3. 本科专业为以下专业之一：\n\n（1）旅游酒店管理专业\n\n（2）市场营销专业\n\n（3）金融会计专业\n\n（4）商业企业管理专业', 11, 1617526786000);
INSERT INTO `news` VALUES (16, '国交处：关于开展2021年英国伯明翰大学学院“3+1本科双学位”项目的通知', '', '为进一步开拓我校学生国际化视野，提高人才培养国际化水平，根据双方签署的协议，现面向全校学生开展与英国伯明翰大学学院合作的“3+1本科双学位”项目。现将有关事项通知如下：一、合作学校简介\n\n伯明翰大学学院（原伯明翰旅游酒店管理学院），创建于1916年，至今已有100多年的历史。学院高质量教学设施及广泛的课程专业设置吸引了大量海外学生前来就读该校的预科课程、高级文凭、学士学位和研究生课程；并且部分专业由伯明翰大学（University of Birmingham，QS排名65）授课及颁发学位，该学位由中国教育部学历认证为伯明翰大学本科学士学位。二、合作项目介绍\n\n本项目经由双方正式签署、互认课程，学生于大四赴英国入读本科最后一年，完成学业并获得相应学分即可获得伯明翰大学本科学士学位（Bachelor’s Degree of University of Birmingham）和湖北经济学院本科学士学位。本科阶段完成后学生可继续申请伯明翰大学学院或其他英国大学的硕士项目。三、选拔对象\n\n湖北经济学院本科18级在校生（2021年9月英国入学）且专业符合报名条件要求。四、报名条件\n\n1. 在校平均成绩75%及以上；\n\n2. 英语良好，大学英语四级不低于440分；或具备雅思、PTE等;\n\n3. 本科专业为以下专业之一：\n\n（1）旅游酒店管理专业\n\n（2）市场营销专业\n\n（3）金融会计专业\n\n（4）商业企业管理专业', 13, 1617526786000);
INSERT INTO `news` VALUES (17, '种下春天的希望 习近平今年又做了这件事', 'http://cpc.people.com.cn/NMediaFile/2021/0403/MAIN202104030844000057143355106.jpg', '', 12, 1617526786000);
INSERT INTO `news` VALUES (18, '2021年全国硕士研究生招生考试国家分数线公布\n', '', '3月12日，教育部公布《2021年全国硕士研究生招生考试考生进入复试的初试成绩基本要求》（国家分数线）。根据《2021年全国硕士研究生招生工作管理规定》，招生单位要在国家分数线基础上，自主确定并公布本单位各专业考生进入复试的要求。近日，教育部召开会议，对做好2021年全国硕士研究生复试录取工作进行了部署。\n\n会议要求，各招生单位要在省级高校招生委员会的统一领导下，统筹考虑当地疫情防控要求和学校实际情况，因地因校制宜，自主确定复试时间、复试方式和复试办法，确保复试工作安全、科学、公平。\n\n会议强调，各地各招生单位要加强复试组织管理，确保复试公平公正。复试前，要采取“两识别”（人脸识别、人证识别）“四比对”（报考库、学籍学历库、人口信息库、诚信档案库数据比对）等措施，加强考生身份审核，严防“替考”。复试中，要采取“一平台”（进行远程复试的招生单位原则上应统一复试平台）“三随机”（随机选定考生次序、随机确定导师组组成人员、随机抽取复试试题）等方式，加强过程监管，严防“作弊”。对已录取的新生，招生单位要在新生入学后3个月内，按照《普通高等学校学生管理规定》有关要求，进行全面复查。复查不合格的，取消学籍。对于考试招生中的违规违纪行为，不论何时，一经发现即按《国家教育考试违规处理办法》《普通高等学校招生违规行为处理暂行办法》等规定严肃处理。情节严重的，移交有关部门调查处理。\n\n会议指出，各地各招生单位要进一步规范调剂录取工作。招生单位应严格按照教育部有关政策，制定本单位调剂工作办法。要坚持以质量为核心，择优遴选进入调剂复试的考生。招生单位（含所属院、系、所）相关调剂工作办法及调剂录取名单须报招生单位招生工作领导小组审定，并报省级教育招生考试机构审核。\n\n会议要求，各地各招生单位要进一步优化考生服务。各招生单位要提前在“全国硕士生招生调剂服务系统”和本单位网站公布接收考生调剂的时间、基本要求、工作程序、调剂复试办法、联系咨询电话等信息。要及时、准确解读招生政策规定和本单位相关工作办法和要求，让考生充分知晓。要畅通考生咨询通道，安排专人受理考生咨询，及时为考生答疑解惑。\n\n“全国硕士研究生招生调剂服务系统”将于3月20日左右开通。有调剂意愿的考生，可及时登录调剂系统和招生单位网站，查询招生单位调剂相关信息，按要求填报调剂志愿。', 13, 1617526786000);
COMMIT;

-- ----------------------------
-- Table structure for news_collection
-- ----------------------------
DROP TABLE IF EXISTS `news_collection`;
CREATE TABLE `news_collection` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `news_id` bigint(10) DEFAULT NULL COMMENT '新闻id',
  `user_id` bigint(10) DEFAULT NULL COMMENT '用户id',
  `create_at` bigint(13) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='新闻收藏';

-- ----------------------------
-- Table structure for news_comment
-- ----------------------------
DROP TABLE IF EXISTS `news_comment`;
CREATE TABLE `news_comment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `news_id` bigint(10) DEFAULT NULL COMMENT '新闻id',
  `user_id` bigint(10) DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `content` varchar(200) DEFAULT NULL COMMENT '评论内容',
  `create_at` bigint(13) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='新闻评论';

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `password` varchar(30) DEFAULT NULL COMMENT '用户密码',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `head_img` varchar(200) DEFAULT NULL COMMENT '头像',
  `create_at` bigint(13) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1378681230920278018 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
