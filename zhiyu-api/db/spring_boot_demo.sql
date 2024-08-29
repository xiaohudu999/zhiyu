/*
 Navicat Premium Data Transfer

 Source Server         : xiaohudu
 Source Server Type    : MySQL
 Source Server Version : 50736 (5.7.36)
 Source Host           : 101.34.24.183:3306
 Source Schema         : spring_boot_demo

 Target Server Type    : MySQL
 Target Server Version : 50736 (5.7.36)
 File Encoding         : 65001

 Date: 24/12/2023 14:40:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `summary` mediumtext COMMENT '概要',
  `content` mediumtext COMMENT '正文内容',
  `thumbnail_id` varchar(20) DEFAULT NULL COMMENT '缩略图(文件ID)',
  `views` bigint(20) DEFAULT '0' COMMENT '阅读数',
  `is_top` tinyint(1) DEFAULT '0' COMMENT '是否置顶(0-否,1-是)',
  `is_comment` tinyint(1) DEFAULT '0' COMMENT '是否可评论(0-否,1-是)',
  `state` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
  `publish_time` datetime DEFAULT NULL COMMENT '发布时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章表';

-- ----------------------------
-- Records of cms_article
-- ----------------------------
BEGIN;
INSERT INTO `cms_article` (`id`, `title`, `summary`, `content`, `thumbnail_id`, `views`, `is_top`, `is_comment`, `state`, `publish_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1668192825285603330', '刚刚！西安市2023年义务教育招生入学政策公布', '', '<p><span style=\"color: rgba(0, 0, 0, 0.9); background-color: rgb(255, 255, 255); font-size: 16px;\">6月12日，西安市教育局发布</span><span style=\"color: rgb(0, 122, 170); background-color: rgb(255, 255, 255); font-size: 16px;\"><strong>《关于做好2023年义务教育招生入学工作的通知》</strong></span><span style=\"color: rgba(0, 0, 0, 0.9); background-color: rgb(255, 255, 255); font-size: 16px;\">，具体内容如下↓↓↓</span></p><p><img src=\"http://www.xiaohudu.com/demo/api/springBootDemo/comm/download/local/public/2023-10-13/a4774ffeed084142acb98279be181592.png\" alt=\"640.png\" data-href=\"\" style=\"\"/></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">各区县教育局，西咸新区教育体育局，各开发区教育局，各直属中小学：</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">为深入贯彻落实党的二十大精神，按照《教育部办公厅关于做好2023年普通中小学招生入学工作的通知》（教基厅〔2023〕1号）和《陕西省教育厅办公室关于做好2023年普通中小学招生入学工作的通知》（陕教基一办〔2023〕14号）要求，进一步规范义务教育招生行为，切实保障适龄儿童少年接受义务教育的权利，促进教育公平，现就做好我市2023年义务教育招生入学工作有关事项通知如下。</span></p><p><strong>一、总体要求</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（一）坚持区县、开发区为主。义务教育学校招生入学实行“市级统筹、区县为主、属地管理”的工作机制，落实区县、开发区（含西咸新区，下同）主体责任。省属、市属、高校附属义务教育学校和义务教育阶段青少年体育学校、艺术学校招生工作纳入所在区县、开发区统一管理，严格按照全市招生统一时间节点执行。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（二）</span><strong>坚持免试就近入学</strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">。严格遵守义务教育适龄儿童少年免试入学规定，严禁以各类考试、竞赛、培训成绩或证书、证明等作为招生依据，不得以面试、面谈、评测等名义选拔学生。</span><strong>公办学校按照学区划分就近入学。义务教育学校不得组织特长生招生</strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（三）坚持公民同招。市级建立义务教育招生入学管理平台，符合本区县、开发区入学条件的学生，实行公办民办学校同步登记报名、同步招生录取、同步注册学籍。对报名人数超过招生计划的民办学校，实行电脑随机录取。</span><strong>任何公办民办学校不得提前选拔生源。民办学校不得以公办学校或公办学校校区、分校的名义招生</strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（四）坚持控辍保学。切实履行义务教育控辍保学法定职责，落实控辍保学“七长责任制”，确保适龄儿童少年应入尽入。严禁以“国学班”“读经班”“私塾”等形式替代义务教育。</span><strong>加强外籍人员子女学校招生管理，不得假借民办学校等各种名义招收中国籍学生，不得通过借读、挂靠、转学等变通方式安排中国籍学生就读</strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（五）坚持计划管理。按照国家班额标准和学校办学规模、办学条件，科学核定义务教育学校招生计划。</span><strong>起始年级不得产生“大班额”，全面消除56人（含）以上“大班额”</strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">。按照义务教育优质均衡发展要求，将班额逐步控制在标准班额以内，逐步消除“大校额”。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（六）坚持公平公开公正。通过多种形式向社会公开招生方案、招生计划、招生范围、招生程序、报名条件、录取结果等，充分接受社会监督，实行阳光招生，确保招生入学机会公平、程序公开、结果公正。</span></p><p><strong>二、公办学校招生入学</strong></p><p><strong>（一）招生对象</strong></p><p><strong>小学：2017年8月31日（含8月31日）以前出生的西安市户籍适龄儿童、随迁子女、外地户籍符合政策规定准入类学生</strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">。</span></p><p><strong>初中：具有西安市户籍或学籍的小学应届毕业生，随迁子女、外地户籍符合政策规定准入类学生</strong><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">适龄儿童少年因身体状况需要延缓入学的，其父母或者其他法定监护人应当提出书面申请，由当地镇人民政府（街道办事处）或区县、开发区教育局批准。</span></p><p><strong>（二）学区划分</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">各区县、开发区要根据学龄儿童少年数量变化趋势，健全常住人口学龄儿童摸底调查制度，加强生源分布情况分析，按照“学校划片招生、生源就近入学”的目标要求，实施单校划片，根据适龄学生人数、学校分布和规模、行政区划、交通状况等因素，为每所公办义务教育学校科学合理划定学区范围，确保义务教育免试就近入学政策全覆盖。教育资源不够均衡的区域，慎重稳妥实行多校划片。</span><strong>行政区移交开发区的公办学校学区划分原则上保持稳定，确保学区划分无盲区。</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">学区划定后应保持相对稳定，对出现学校布局调整、学龄人口变化较大等情况，应在广泛征求意见、综合研判分析、科学评估的基础上适当调整学区范围，并做好宣传解读工作，合理引导家长预期。鼓励各区县、开发区结合本区域实际，探索多孩子女同校就读具体实施办法，帮助解决家长接送不便问题。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">各区县、开发区义务教育招生入学工作实施方案和学区划分方案经区县政府、开发区管委会批准，报市教育局备案后，统一在区县政府、开发区管委会门户网站及其教育部门微信公众号向社会公布。</span></p><p><strong>（三）信息审核</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">适龄儿童少年入学登记前须接受信息审核。信息审核按照“谁审核、谁签字、谁负责”的原则，由各区县、开发区教育局制定实施细则并组织实施。学生及其家长登录本区县政府、开发区管委会门户网站，或西安市教育局门户网站、西安市义务教育招生入学管理平台（网址：http:// www.xaywjy.com）（以下简称“招生平台”）及其微信公众号（xaywjy）自行下载并填写《西安市义务教育招生入学信息审核登记表》，按照所在区县、开发区教育局工作安排，到学区对应公办小学、公办初中或审核点进行入学信息审核，填报意愿学校。入学信息审核通过后，取得《西安市2023年义务教育招生入学登记报名告知书及报名条》（以下简称《报名条》）。确定在公办学校就读的，不再进行网上报名。</span></p><p><strong>（四）招生入学</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">各区县、开发区要明确新生入学程序，先安排辖区内户籍与实际居住地一致的适龄儿童少年入学，再根据登记入学人数和学校分布、学位供给等情况，按照“提前摸底、公布学位、公开规则、参考意愿、相对就近、统筹兜底”的原则安排辖区其他适龄儿童少年入学。区县、开发区可探索在热点区域学校试行分类登记、积分制入学。</span></p><p><strong>（五）规范信息采集</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">各区县、开发区教育局要规范入学证明材料，按照义务教育招生入学有关法律法规政策规定，对提供的入学证明材料要列出清单，并提前告知家长。不得要求提供学前教育经历、计划生育证明、超过正常入学年龄证明、随迁子女在户籍地无人监护等无谓证明材料；预防接种证明不作为入学报名前置条件，可在开学后及时要求学生提供。严禁采集学生家长职务和收入信息。</span></p><p><strong>三、民办学校招生入学</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">坚持民办义务教育学校纳入审批地统一管理，与公办学校同步报名、同步招生；对报名人数超过招生计划的，实行电脑随机录取。</span></p><p><strong>（一）招生对象</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">入学信息审核通过后取得《报名条》，愿意选择民办学校就读的适龄儿童少年。</span></p><p><strong>（二）招生范围</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">民办小学原则上在属地区县、开发区范围内招生。开发区管理的民办小学，可在本开发区和原管辖行政区范围内招生；行政区之间移交的民办小学，可在现管辖行政区和原管辖行政区范围内招生。民办小学招生计划和招生范围由属地区县、开发区教育局审核后报市教育局核准。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">民办初中纳入审批地统一管理，优先满足学校所在区县、开发区学生入学需求，按照教育行政部门核定的招生计划和招生范围招生，不得跨市域招生。</span></p><p><strong>（三）公布计划</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">各区县、开发区教育局在区县政府、开发区管委会门户网站及其微信公众号公布各民办小学招生计划和招生范围。市教育局在门户网站及其微信公众号公布各民办初中招生计划和招生范围。</span></p><p><strong>（四）网上报名</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">选择民办学校的，须进行网上报名。学生及家长根据《报名条》所载信息登录招生平台或其微信公众号，修改初始密码，按照流程填报信息，并对报名信息的真实性、准确性负责。每名学生选报一所民办学校，报名信息确认后不能更改，招生平台通过其微信公众号或手机短信反馈学生家长报名结果。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">报名结束后，各区县、开发区公布各民办小学报名人数，市教育局公布各民办初中报名人数。</span></p><p><strong>（五）招生录取</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">1.电脑随机录取。各区县、开发区使用全市统一的电脑随机录取系统，组织实施民办义务教育学校电脑随机录取工作。电脑随机录取工作要做到全程录像，应邀请纪检监察人员、人大代表、政协委员、新闻媒体和学生家长代表全程监督并委托公证机构现场公证。报名人数小于或等于招生计划的，直接全部录取；报名人数超过招生计划的，实行电脑随机录取。电脑随机录取结果现场上传至招生平台。录取结束后，招生平台通过其微信公众号或手机短信告知学生家长录取结果。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">各区县、开发区公布各民办小学电脑随机录取人数和剩余计划数，市教育局公布各民办初中电脑随机录取人数和剩余计划数。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">2.民办学校补录。招不满有剩余招生计划的民办学校可申请补录。民办小学补录仍为学校所在区县、开发区范围。市级审批的民办一贯制学校小学部补录可适当扩大招生范围。民办初中补录为全市范围。民办学校补录经所在区县、开发区教育局审核同意报市教育局核准后，相关区县、开发区公布辖区民办学校补录计划和补录范围。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">补录对象为已报名民办学校且未被电脑随机录取的学生。补录报名时，学生凭报名号和密码登录招生平台或其微信公众号进行补录报名，每名学生只能选择一所民办学校报名。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">补录报名工作截止后，相关区县、开发区公布补录报名学生人数，在规定时间组织实施电脑随机录取，录取结束后现场将录取结果上传至招生平台，招生平台通过其微信公众号或手机短信告知学生家长录取结果。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">通过补录仍未完成招生计划的民办学校，由学校在招生计划内按照政策规定免试招生，招生结果由民办学校通过网站公布并报区县、开发区教育局备案。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">通过电脑随机录取完成招生计划的民办学校，不得因学生放弃民办学校学位再进行任何形式的补录。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">未被民办学校录取的学生，由各区县、开发区教育局安排到对应学区公办学校，若无空余学位，统筹安排到其他公办学校。</span></p><p><strong>四、保障特殊群体入学</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（一）随迁子女入学。符合条件的随迁子女可以申请在我市接受义务教育，按照“以流入地政府为主，以公办学校为主”的原则，实施以居住证为主要依据的随迁子女入学政策。非我市户籍随迁子女由其父母或者其他法定监护人持“居住、务工、户籍、流出”等证明材料，按居住证所在区县、开发区要求登记，由区县、开发区教育局审核后统筹安排入学。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">我市鄠邑区、周至县、蓝田县户籍随迁子女由其父母或者其他法定监护人持户籍证明及能表明在我市城区有合法稳定居住、务工和流出等证明材料，按居住所在区县、开发区教育局要求登记，由区县、开发区教育局审核后统筹安排入学。我市其他区县、开发区户籍的交叉务工人员，其子女在户籍所在地按学区登记入学。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（二）西安市外地户籍符合政策规定准入类学生入学。由学生父母或者其他法定监护人，按规定时间和要求到居住地区县、开发区教育局指定地点办理入学事宜。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（三）残疾儿童少年入学。保障适龄残疾儿童少年接受义务教育的权利，并纳入中小学生学籍管理。根据区县级残疾人教育专家委员会评估意见，对具备学习能力能够到普通学校就读的，优先安排到普通学校随班就读。对残疾程度较重，不能接受普通教育的，安排到特殊教育学校就读。对残疾程度严重，不能到校就读的，就近安排学校进行送教上门或通过远程教育的方式，切实保障其接受义务教育的权利。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（四）优抚对象子女入学。对烈士子女、符合条件的现役军人子女、综合性消防救援队伍人员子女、公安英模和因公牺牲伤残警察子女、引进高层次人才子女及其他各类优抚对象，落实义务教育优待政策。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（五）其他群体入学。一是集体户落户人员适龄子女，由户籍所在地区县、开发区教育局根据学位情况，统筹安排入学。二是陕西省人才交流服务中心、西安市人才服务中心集体户落户人员适龄子女入学，由居住地区县、开发区教育局统筹安排。三是廉租房（合同期内）承租人适龄子女入学，由居住地区县、开发区教育局统筹安排。四是公共租赁住房（合同期内）承租人适龄子女入学，由居住地区县、开发区教育局按政策分类统筹安排。五是切实保障孤儿、留守儿童、事实无人抚养儿童、家庭经济困难学生等群体入学，寄宿制学校要优先安排留守儿童住宿。</span></p><p><strong>五、有关要求</strong></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（一）加强组织领导。各区县、开发区教育局要在同级党（工）委和政府（管委会）的领导下，切实履行义务教育区县、开发区为主管理责任。要成立招生工作领导小组，制定义务教育学校招生入学实施方案及工作细则，负责辖区内义务教育招生入学工作的组织实施、信息公开、学籍管理和督查落实，及时研究并妥善处理义务教育招生入学热点难点问题。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（二）严格工作要求。各区县、开发区教育局和学校要落实在招生入学工作中的组织责任、管理责任和主体责任，认真贯彻落实中央、我省和我市有关要求，充分依靠同级党委、政府的统一领导、统筹协调、调度指挥作用。要设立招生入学接待协调中心，公布咨询电话和办公地址，认真解答政策、协调问题和回应群众诉求。交叉区域存在学区划分、区域间学位供给不平衡的，要服从市级统筹安排，确保招生入学工作平稳有序。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（三）建立预警制度。各区县、开发区教育局要建立健全招生入学工作预警机制，主动加强与户籍管理部门沟通协调，建立常住人口和户籍人口数据信息共享机制，加强对学龄人口、随迁子女变化趋势的预测分析，建立完善学位预警机制。对部分区域或学校出现学龄儿童入学需求持续增长、学位供给紧张的情况，要提前采取应对措施，科学制定学位分配办法及学生分流安排方案，及时向社会发布预警提示，合理引导家长预期。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（四）严肃招生纪律。规范集团化、联合体等办学模式学校招生秩序，严禁以集团化、联合体等名义进行招生，集团化、联合体内各学校招生后学生不得跨校流动。严格落实教育部“十项严禁”纪律要求、省教育厅和市教育局有关规定，严禁提前组织招生，变相“掐尖”选生源；严禁任何学校收取或变相收取与入学挂钩的各种费用；严禁公办学校与民办学校混合招生、混合编班；严禁义务教育阶段学校设立任何名义的重点班、快慢班；不得以“国际部”“国际课程班”等名义招生。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（五）严格执纪问责。严格执行招生范围、招生计划和招生结果公示制度，健全违规招生查处和责任追究机制，畅通举报和申诉受理渠道，主动接受纪委监委及人大代表、政协委员等多方面全程监督。各区县、开发区教育局和政府教育督导部门要通过明察暗访、专项督查、随机抽查等方式进行督查，对顶风违纪的学校及责任人从严查处，对监管不力、失职失责的主管部门追究相应责任，情节特别严重的按干部隶属关系移交纪检监察部门查处。对顶风违纪的民办义务教育学校依法依规给予减少下一年度招生计划、停止当年招生直至吊销办学许可证等处罚。继续实行全市教育系统教职员工不打招呼、不说情、不干预招生入学工作承诺制。配合纪委监委，严肃追究违规违纪相关人员责任。联合公安部门，严厉打击“学托”和“教育掮客”。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（六）严格学籍管理。各区县、开发区教育局和学校要按照“人籍一致、籍随人走”的要求，对义务教育阶段学校学生学籍全面实施信息化管理。学生办理入学注册手续后，学校要及时为其建立学籍档案。民办义务教育学校录取名单，经各区县、开发区教育局审核，学校为新生建立学籍，严禁以转学名义变相招生。严禁出现人籍分离、空挂学籍、学籍造假等现象，不得为违规跨区域招收的学生和违规转学学生办理学籍转接。</span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">（七）加强政策宣传。各区县、开发区教育局要通过多种方式，加强对义务教育学校招生入学政策解读和宣传。各幼儿园、小学以班级为单位召开毕业年级学生家长会精准宣传招生入学政策。初中学校向学生及家长宣传普通高中定向生有关政策规定。公办义务教育学校要通过线上或线下“校园开放日”活动，向学区内学生和家长展示学校“三个课堂”成果及办学理念、师资水平、办学特色。要大力宣传我市义务教育优质均衡发展成效和群众身边的新优质学校，积极引导全社会形成科学的教育观、价值观，共同营造良好教育生态。</span></p>', '1712722260472893442', 221, 1, 1, 'published', NULL, '1655738390099988482', '2023-06-12 17:45:38', '1655738390099988482', '2023-12-23 17:58:37');
INSERT INTO `cms_article` (`id`, `title`, `summary`, `content`, `thumbnail_id`, `views`, `is_top`, `is_comment`, `state`, `publish_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1668196660016115713', '一家五口确诊，母亲抢救无效离世！近期高发，西安已有人中招', '', '<p style=\"text-align: center;\"><span style=\"color: rgb(0, 122, 170); font-size: 14px;\"><strong>一家五口全部确诊</strong></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 122, 170); font-size: 14px;\"><strong>母亲抢救无效离世！</strong></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: 14px;\">近日</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: 14px;\">家住浙江绍兴的王大姐</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: 14px;\">与七旬母亲上山采茶后</span></p><p style=\"text-align: center;\"><span style=\"font-size: 14px;\"><strong>母亲开始出现</strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 14px;\"><strong>发烧、腹泻的症状</strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 14px;\"><strong>送到当地医院抢救无效离世</strong></span></p><p style=\"text-align: center;\"><img src=\"http://www.xiaohudu.com/demo/api/springBootDemo/comm/download/local/public/2023-10-13/ae8703dafb614b2da3b2746459c64879.png\" alt=\"640.png\" data-href=\"\" style=\"\"></p><p style=\"text-align: center;\"><span style=\"color: rgba(0, 0, 0, 0.9); background-color: rgb(255, 255, 255); font-size: 14px;\">被蜱虫咬伤的患者</span></p><h2 style=\"text-align: justify;\"><span style=\"font-size: 14px;\">之后，王大姐一家4人也相继出现发烧、腹泻等症状，被医生诊断为病毒性脑膜炎，4人的新型布尼亚病毒核酸均为阳性。这是一种以蜱虫为主要传播媒介的病毒感染。医生推测，老太可能在采茶时被蜱虫叮咬，出现症状后未及时就医，又将病毒传染给其他人。蜱虫其实离我们很近，据了解，多数蜱虫在春、夏、秋季活动，一般从四月持续至九、十月间。它的活动有两个高峰，主峰常在6-7月，次峰在8-9月间，多生活在森林、灌木丛、开阔的牧场、草原、山地的泥土中等，因此大家外出要避免被蜱虫咬。医生提醒，千万别小看蜱虫的危害。蜱虫会产生神经毒素，最严重的情况是——出现血小板减少综合征，这种情况十分凶险，一般会有1到2周的潜伏期，发病后会使得全身凝血功能及多脏器官功能损害，甚至会造成死亡。因此，被蜱虫附着后必须完整取出，还有很多寄生虫、致病菌“藏匿”于蜱虫体内，一旦入侵到人的体内后果还是相当严重的。</span></h2>', '1712722323978850306', 387, 1, 1, 'published', NULL, '1655738390099988482', '2023-06-12 18:00:52', '1655738390099988482', '2023-12-24 13:48:48');
COMMIT;

-- ----------------------------
-- Table structure for cms_article_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_category`;
CREATE TABLE `cms_article_category` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `article_id` varchar(20) DEFAULT NULL COMMENT '文章id',
  `category_id` varchar(20) DEFAULT NULL COMMENT '分类id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章分类关联表';

-- ----------------------------
-- Records of cms_article_category
-- ----------------------------
BEGIN;
INSERT INTO `cms_article_category` (`id`, `article_id`, `category_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1738499341951197185', '1668192825285603330', '1661557950132809729', '1655738390099988482', '2023-12-23 17:58:38', '1655738390099988482', '2023-12-23 17:58:38');
INSERT INTO `cms_article_category` (`id`, `article_id`, `category_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1738798861675171841', '1668196660016115713', '1658481270820352001', '1655738390099988482', '2023-12-24 13:48:49', '1655738390099988482', '2023-12-24 13:48:49');
COMMIT;

-- ----------------------------
-- Table structure for cms_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_tag`;
CREATE TABLE `cms_article_tag` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `article_id` varchar(20) DEFAULT NULL COMMENT '文章id',
  `tag_id` varchar(20) DEFAULT NULL COMMENT '标签id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章、文章标签关联表';

-- ----------------------------
-- Records of cms_article_tag
-- ----------------------------
BEGIN;
INSERT INTO `cms_article_tag` (`id`, `article_id`, `tag_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1661558885286440961', '1658818942411624450', '1661558815958790145', '1655738390099988482', '2023-05-25 10:24:43', '1655738390099988482', '2023-05-25 10:24:43');
INSERT INTO `cms_article_tag` (`id`, `article_id`, `tag_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1738499342622285825', '1668192825285603330', '1661558546168573953', '1655738390099988482', '2023-12-23 17:58:38', '1655738390099988482', '2023-12-23 17:58:38');
INSERT INTO `cms_article_tag` (`id`, `article_id`, `tag_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1738499342626480130', '1668192825285603330', '1661558580473786370', '1655738390099988482', '2023-12-23 17:58:38', '1655738390099988482', '2023-12-23 17:58:38');
INSERT INTO `cms_article_tag` (`id`, `article_id`, `tag_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1738499342626480131', '1668192825285603330', '1661558815958790145', '1655738390099988482', '2023-12-23 17:58:38', '1655738390099988482', '2023-12-23 17:58:38');
COMMIT;

-- ----------------------------
-- Table structure for cms_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `code` varchar(100) DEFAULT NULL COMMENT '编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_no` int(10) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_cms_category_code` (`code`) USING BTREE,
  UNIQUE KEY `uk_cms_category_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章分类表';

-- ----------------------------
-- Records of cms_category
-- ----------------------------
BEGIN;
INSERT INTO `cms_category` (`id`, `name`, `code`, `description`, `sort_no`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1658481270820352001', '健康', 'health', '健康养生、医疗健康、心理健康、运动健身等', 2, '1655738390099988482', '2023-05-16 22:35:23', '1655738390099988482', '2023-05-25 10:21:50');
INSERT INTO `cms_category` (`id`, `name`, `code`, `description`, `sort_no`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1661557950132809729', '教育', 'education', '学术研究、教育政策、职业教育、留学考试等', 3, '1655738390099988482', '2023-05-25 10:21:00', '1655738390099988482', '2023-05-25 10:21:57');
INSERT INTO `cms_category` (`id`, `name`, `code`, `description`, `sort_no`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1661558042503966721', '经济', 'economy', '宏观经济、产业发展、市场趋势、投资理财等', 4, '1655738390099988482', '2023-05-25 10:21:22', '1655738390099988482', '2023-05-25 10:21:22');
INSERT INTO `cms_category` (`id`, `name`, `code`, `description`, `sort_no`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1661558277112360962', '计算机', 'computer', '编程技术、软件开发、网络安全、前端开发等', 5, '1655738390099988482', '2023-05-25 10:22:18', '1655738390099988482', '2023-05-25 10:22:24');
INSERT INTO `cms_category` (`id`, `name`, `code`, `description`, `sort_no`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1674026124973219841', '科技', 'technology', '科学技术、互联网、人工智能、区块链、数据科学等', 1, '1655738390099988482', '2023-07-04 08:49:18', '1655738390099988482', '2023-07-04 10:24:59');
COMMIT;

-- ----------------------------
-- Table structure for cms_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `user_id` varchar(20) DEFAULT NULL COMMENT '用户id',
  `content` mediumtext COMMENT '内容',
  `state` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
  `target_id` varchar(20) DEFAULT NULL COMMENT '目标id(被评论文章)',
  `main_id` varchar(20) DEFAULT NULL COMMENT '主id(第一级)',
  `parent_id` varchar(20) DEFAULT NULL COMMENT '父id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章评论表';

-- ----------------------------
-- Records of cms_comment
-- ----------------------------
BEGIN;
INSERT INTO `cms_comment` (`id`, `user_id`, `content`, `state`, `target_id`, `main_id`, `parent_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1729335061853270018', '1655738390099988482', '不错哦~', 'published', '1668192825285603330', NULL, NULL, '1655738390099988482', '2023-11-28 11:03:03', '1655738390099988482', '2023-11-28 11:03:03');
INSERT INTO `cms_comment` (`id`, `user_id`, `content`, `state`, `target_id`, `main_id`, `parent_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1729335213502525441', '1655738390099988482', '大家伙需要加强防护~', 'published', '1668196660016115713', NULL, NULL, '1655738390099988482', '2023-11-28 11:03:39', '1655738390099988482', '2023-11-28 11:03:39');
INSERT INTO `cms_comment` (`id`, `user_id`, `content`, `state`, `target_id`, `main_id`, `parent_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1731321515472908289', '1655738677825048577', '必须注意！', 'published', '1668196660016115713', '1729335213502525441', '1729335213502525441', '1655738677825048577', '2023-12-03 22:36:30', '1655738677825048577', '2023-12-03 22:36:30');
INSERT INTO `cms_comment` (`id`, `user_id`, `content`, `state`, `target_id`, `main_id`, `parent_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1738801108572225537', '1672932597564461058', '😌，确实需要注意啊！', 'pending_approval', '1668196660016115713', NULL, NULL, '1672932597564461058', '2023-12-24 13:57:44', '1672932597564461058', '2023-12-24 13:57:44');
COMMIT;

-- ----------------------------
-- Table structure for cms_message
-- ----------------------------
DROP TABLE IF EXISTS `cms_message`;
CREATE TABLE `cms_message` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `user_id` varchar(20) DEFAULT NULL COMMENT '用户id',
  `content` mediumtext COMMENT '内容',
  `state` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
  `main_id` varchar(20) DEFAULT NULL COMMENT '主id(第一级)',
  `parent_id` varchar(20) DEFAULT NULL COMMENT '父id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='留言表';

-- ----------------------------
-- Records of cms_message
-- ----------------------------
BEGIN;
INSERT INTO `cms_message` (`id`, `user_id`, `content`, `state`, `main_id`, `parent_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1731275087774019585', '1655738390099988482', '继续努力哦～', 'published', NULL, NULL, '1655738390099988482', '2023-12-03 19:32:01', '1655738390099988482', '2023-12-03 19:32:01');
INSERT INTO `cms_message` (`id`, `user_id`, `content`, `state`, `main_id`, `parent_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1731321146386739202', '1655738677825048577', '不错不错，系统做的挺好！', 'published', '1731275087774019585', '1731275087774019585', '1655738677825048577', '2023-12-03 22:35:02', '1655738677825048577', '2023-12-03 22:35:02');
COMMIT;

-- ----------------------------
-- Table structure for cms_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_tag`;
CREATE TABLE `cms_tag` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章标签表';

-- ----------------------------
-- Records of cms_tag
-- ----------------------------
BEGIN;
INSERT INTO `cms_tag` (`id`, `name`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1658482562259136514', 'Java', 'Java', '1655738390099988482', '2023-05-16 22:40:31', '1655738390099988482', '2023-05-16 22:40:31');
INSERT INTO `cms_tag` (`id`, `name`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1658482642735247362', 'Mysql', 'Mysql', '1655738390099988482', '2023-05-16 22:40:50', '1655738390099988482', '2023-05-16 22:40:50');
INSERT INTO `cms_tag` (`id`, `name`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1658482787870748673', 'Redis', 'Redis', '1655738390099988482', '2023-05-16 22:41:24', '1655738390099988482', '2023-05-16 22:41:24');
INSERT INTO `cms_tag` (`id`, `name`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1661558546168573953', '国家', '国家', '1655738390099988482', '2023-05-25 10:23:22', '1655738390099988482', '2023-05-25 10:23:22');
INSERT INTO `cms_tag` (`id`, `name`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1661558580473786370', '美食', '美食', '1655738390099988482', '2023-05-25 10:23:31', '1655738390099988482', '2023-05-25 10:23:31');
INSERT INTO `cms_tag` (`id`, `name`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1661558815958790145', '新闻', '新闻', '1655738390099988482', '2023-07-04 10:20:52', '1655738390099988482', '2023-07-04 10:24:53');
COMMIT;

-- ----------------------------
-- Table structure for comm_file
-- ----------------------------
DROP TABLE IF EXISTS `comm_file`;
CREATE TABLE `comm_file` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `content_type` varchar(100) DEFAULT NULL COMMENT '文件类型',
  `size` bigint(20) DEFAULT NULL COMMENT '大小',
  `storage_type` varchar(20) DEFAULT NULL COMMENT '存储类型',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `url` varchar(255) DEFAULT NULL COMMENT '访问URL',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文件表';

-- ----------------------------
-- Records of comm_file
-- ----------------------------
BEGIN;
INSERT INTO `comm_file` (`id`, `name`, `content_type`, `size`, `storage_type`, `path`, `url`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1712654759978405889', '超级管理员头像.jpg', 'image/jpeg', 59819, 'local', 'public/2023-10-13/f42d411bdad9450a93e557e29b87376d.jpg', 'http://www.xiaohudu.com/demo/api/springBootDemo/comm/download/local/public/2023-10-13/f42d411bdad9450a93e557e29b87376d.jpg', '1655738390099988482', '2023-10-13 10:21:29', '1655738390099988482', '2023-10-13 10:21:29');
INSERT INTO `comm_file` (`id`, `name`, `content_type`, `size`, `storage_type`, `path`, `url`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1712655101570912258', '文章管理员头像.jpg', 'image/jpeg', 106566, 'local', 'public/2023-10-13/4a09034a20314b45b5577d0278461825.jpg', 'http://www.xiaohudu.com/demo/api/springBootDemo/comm/download/local/public/2023-10-13/4a09034a20314b45b5577d0278461825.jpg', '1655738390099988482', '2023-10-13 10:22:50', '1655738390099988482', '2023-10-13 10:22:50');
INSERT INTO `comm_file` (`id`, `name`, `content_type`, `size`, `storage_type`, `path`, `url`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1712722260472893442', '西安市2023年义务教育.png', 'image/png', 172077, 'local', 'public/2023-10-13/a4774ffeed084142acb98279be181592.png', 'http://www.xiaohudu.com/demo/api/springBootDemo/comm/download/local/public/2023-10-13/a4774ffeed084142acb98279be181592.png', '1655738390099988482', '2023-10-13 14:49:42', '1655738390099988482', '2023-10-13 14:49:42');
INSERT INTO `comm_file` (`id`, `name`, `content_type`, `size`, `storage_type`, `path`, `url`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1712722323978850306', '一家五口确诊.png', 'image/png', 292370, 'local', 'public/2023-10-13/ae8703dafb614b2da3b2746459c64879.png', 'http://www.xiaohudu.com/demo/api/springBootDemo/comm/download/local/public/2023-10-13/ae8703dafb614b2da3b2746459c64879.png', '1655738390099988482', '2023-10-13 14:49:58', '1655738390099988482', '2023-10-13 14:49:58');
COMMIT;

-- ----------------------------
-- Table structure for mon_api_log
-- ----------------------------
DROP TABLE IF EXISTS `mon_api_log`;
CREATE TABLE `mon_api_log` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `title` varchar(255) DEFAULT NULL COMMENT 'API名称',
  `path` varchar(255) DEFAULT NULL COMMENT '请求路径',
  `http_method` varchar(10) DEFAULT NULL COMMENT '请求方法',
  `class_method` varchar(255) DEFAULT NULL COMMENT '类方法',
  `code` int(6) DEFAULT NULL COMMENT '响应码',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `duration` bigint(10) DEFAULT NULL COMMENT '耗时',
  `ip` varchar(15) DEFAULT NULL COMMENT 'ip地址',
  `user_agent` mediumtext COMMENT 'user-agent',
  `client_id` varchar(36) DEFAULT NULL COMMENT '客户端唯一标识(客户端生成并存在浏览器storage)',
  `request_body` mediumtext COMMENT '请求body',
  `request_query` mediumtext COMMENT '请求query',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_monitor_log_status` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='api日志表';

-- ----------------------------
-- Records of mon_api_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for mon_uv
-- ----------------------------
DROP TABLE IF EXISTS `mon_uv`;
CREATE TABLE `mon_uv` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `count` bigint(20) DEFAULT NULL COMMENT '访问数量',
  `date` date DEFAULT NULL COMMENT '日期',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_monitor_log_status` (`count`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='uv表';

-- ----------------------------
-- Records of mon_uv
-- ----------------------------
BEGIN;
INSERT INTO `mon_uv` (`id`, `count`, `date`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1737140733569241089', 3, '2023-12-19', NULL, '2023-12-20 00:00:00', NULL, '2023-12-20 00:00:00');
INSERT INTO `mon_uv` (`id`, `count`, `date`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1737503121262874626', 2, '2023-12-20', NULL, '2023-12-21 00:00:00', NULL, '2023-12-21 00:00:00');
INSERT INTO `mon_uv` (`id`, `count`, `date`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1737865509170417665', 0, '2023-12-21', NULL, '2023-12-22 00:00:00', NULL, '2023-12-22 00:00:00');
INSERT INTO `mon_uv` (`id`, `count`, `date`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1738227897031823361', 0, '2023-12-22', NULL, '2023-12-23 00:00:00', NULL, '2023-12-23 00:00:00');
INSERT INTO `mon_uv` (`id`, `count`, `date`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1738590284859674625', 2, '2023-12-23', NULL, '2023-12-24 00:00:00', NULL, '2023-12-24 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for sys_api_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_api_permission`;
CREATE TABLE `sys_api_permission` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `name` varchar(255) DEFAULT NULL COMMENT '接口名称',
  `path` varchar(255) DEFAULT NULL COMMENT '接口地址',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sys_api_permission_name` (`name`) USING BTREE,
  UNIQUE KEY `uk_sys_api_permission_path` (`path`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='接口权限表';

-- ----------------------------
-- Records of sys_api_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069634', '接口权限编辑', '/sys/apiPermission/edit', '', '1655738390099988482', '2022-06-08 16:59:41', '1655738390099988482', '2023-06-09 17:24:25');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069635', '接口权限详情查询', '/sys/apiPermission/detail', '', '1655738390099988482', '2022-06-08 16:59:41', '1655738390099988482', '2023-06-09 17:25:45');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069636', '用户编辑', '/sys/user/edit', '', '1655738390099988482', '2022-06-08 16:59:41', '1655738390099988482', '2022-06-08 16:59:41');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069637', '字典详情查询', '/sys/dict/detail', '', '1655738390099988482', '2022-07-20 10:12:50', '1655738390099988482', '2022-07-20 10:12:50');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069638', '用户详情查询', '/sys/user/detail', '', '1655738390099988482', '2022-06-08 16:59:26', '1655738390099988482', '2022-06-08 16:59:26');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069639', '角色详情查询', '/sys/role/detail', '', '1655738390099988482', '2022-06-08 17:02:13', '1655738390099988482', '2022-06-08 17:02:13');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069640', '在线用户列表查询', '/monitor/online/list', '', '1655738390099988482', '2023-02-14 14:19:19', '1655738390099988482', '2023-02-14 14:19:19');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069641', '角色删除', '/sys/role/delete', '', '1655738390099988482', '2022-06-08 17:04:04', '1655738390099988482', '2022-06-08 17:04:04');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069642', '模块编辑', '/sys/module/edit', '', '1655738390099988482', '2022-06-08 17:08:56', '1655738390099988482', '2022-06-08 17:08:56');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069644', '角色模块批量更新', '/sys/roleModule/updateBatch', '', '1655738390099988482', '2023-03-08 17:59:16', '1655738390099988482', '2023-03-08 17:59:16');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069645', '字典删除', '/sys/dict/delete', '', '1655738390099988482', '2022-07-20 10:14:17', '1655738390099988482', '2022-07-20 10:14:17');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069647', '用户删除', '/sys/user/delete', '', '1655738390099988482', '2022-06-08 17:01:05', '1655738390099988482', '2022-06-08 17:01:05');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069648', '接口权限批量删除', '/sys/apiPermission/removeByIds', '', '1655738390099988482', '2022-06-08 16:59:41', '1655738390099988482', '2023-06-09 17:25:57');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069649', '用户角色批量保存', '/sys/userRole/saveBatch', '', '1655738390099988482', '2023-03-08 17:53:15', '1655738390099988482', '2023-03-08 17:53:15');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069650', '字典项编辑', '/sys/dictItem/edit', '', '1655738390099988482', '2022-07-20 10:16:47', '1655738390099988482', '2022-07-20 10:16:47');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069651', '字典项列表查询', '/sys/dictItem/list', '', '1655738390099988482', '2022-07-20 10:16:19', '1655738390099988482', '2022-07-20 10:16:19');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069652', '角色分页查询', '/sys/role/page', '', '1655738390099988482', '2022-06-08 17:01:40', '1655738390099988482', '2022-06-08 17:01:40');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069653', '角色接口权限批量删除', '/sys/roleApiPermission/removeByIds', '', '1655738390099988482', '2023-03-08 17:53:47', '1655738390099988482', '2023-06-09 17:24:11');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069654', '模块树查询', '/sys/module/tree', '', '1655738390099988482', '2022-06-08 17:08:19', '1655738390099988482', '2022-06-08 17:08:19');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069655', '系统日志详情查询', '/monitor/log/detail', '', '1655738390099988482', '2023-02-14 14:18:35', '1655738390099988482', '2023-02-14 14:18:35');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069656', '字典项删除', '/sys/dictItem/delete', '', '1655738390099988482', '2022-07-20 10:16:35', '1655738390099988482', '2022-07-20 10:16:35');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069657', '字典分页查询', '/sys/dict/page', '', '1655738390099988482', '2022-07-20 10:12:25', '1655738390099988482', '2022-07-20 10:12:25');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069658', '模块详情查询', '/sys/module/detail', '', '1655738390099988482', '2022-06-08 17:08:41', '1655738390099988482', '2022-06-08 17:08:41');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069659', '系统日志分页查询', '/monitor/log/page', '', '1655738390099988482', '2023-02-14 14:17:57', '1655738390099988482', '2023-02-14 14:17:57');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069660', '角色接口权限批量保存', '/sys/roleApiPermission/saveBatch', '', '1655738390099988482', '2023-03-08 17:54:07', '1655738390099988482', '2023-06-09 17:23:54');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069661', '字典编辑', '/sys/dict/edit', '', '1655738390099988482', '2022-07-20 10:14:43', '1655738390099988482', '2022-07-20 10:14:43');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069662', '通过用户查询角色分页', '/sys/userRole/pageByUser', '', '1655738390099988482', '2023-03-08 17:53:31', '1655738390099988482', '2023-03-08 17:53:31');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069663', '用户分页查询', '/sys/user/page', '', '1655738390099988482', '2022-06-08 16:59:41', '1655738390099988482', '2022-06-08 16:59:41');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069664', '模块删除', '/sys/module/delete', '', '1655738390099988482', '2022-06-08 17:09:05', '1655738390099988482', '2022-06-08 17:09:05');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069665', '用户角色批量删除', '/sys/userRole/removeByIds', '', '1655738390099988482', '2023-03-08 17:53:00', '1655738390099988482', '2023-03-08 17:53:00');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069666', '通过角色查询接口权限分页', '/sys/roleApiPermission/pageByRole', '', '1655738390099988482', '2023-03-08 17:54:22', '1655738390099988482', '2023-06-09 17:22:30');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069667', '重置密码', '/sys/user/resetPassword', '', '1655738390099988482', '2023-02-17 14:59:53', '1655738390099988482', '2023-02-17 14:59:53');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069668', '通过角色查询模块ID列表', '/sys/roleModule/moduleIdListByRole', '', '1655738390099988482', '2023-03-08 17:59:32', '1655738390099988482', '2023-03-08 17:59:32');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069669', '接口权限分页查询', '/sys/apiPermission/page', '', '1655738390099988482', '2022-06-08 16:59:41', '1655738390099988482', '2023-06-09 17:26:47');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069670', '字典项详情查询', '/sys/dictItem/detail', '', '1655738390099988482', '2022-07-20 10:16:59', '1655738390099988482', '2022-07-20 10:16:59');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655741595840069671', '角色编辑', '/sys/role/edit', '', '1655738390099988482', '2022-06-08 17:02:49', '1655738390099988482', '2022-06-08 17:02:49');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1661637582238281729', '文章标签编辑', '/cms/tag/edit', '', '1655738390099988482', '2023-05-25 15:37:26', '1655738390099988482', '2023-12-17 23:02:45');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1661637623547981825', '文章标签删除', '/cms/tag/delete', '', '1655738390099988482', '2023-05-25 15:37:36', '1655738390099988482', '2023-12-17 23:02:57');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1661637679349002241', '文章分类编辑', '/cms/category/edit', '', '1655738390099988482', '2023-05-25 15:37:49', '1655738390099988482', '2023-12-17 23:02:49');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1661637722000879617', '文章分类删除', '/cms/category/delete', '', '1655738390099988482', '2023-05-25 15:37:59', '1655738390099988482', '2023-12-17 23:02:53');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673934944914755586', '数据权限列表查询', '/sys/dataPermission/list', '', '1655738390099988482', '2023-06-28 14:02:46', '1655738390099988482', '2023-06-28 14:02:46');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673935797633536002', '数据权限编辑', '/sys/dataPermission/edit', '', '1655738390099988482', '2023-06-28 14:06:09', '1655738390099988482', '2023-06-28 14:06:09');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673938536535019521', '数据权限删除', '/sys/dataPermission/delete', '', '1655738390099988482', '2023-06-28 14:17:02', '1655738390099988482', '2023-06-28 14:17:02');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673938588510834690', '通过角色查询数据权限列表', '/sys/roleDataPermission/listByRole', '', '1655738390099988482', '2023-06-28 14:17:14', '1655738390099988482', '2023-06-28 14:17:14');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673938648250306562', '角色数据权限编辑', '/sys/roleDataPermission/edit', '', '1655738390099988482', '2023-06-28 14:17:29', '1655738390099988482', '2023-06-28 14:17:29');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1676919202562220033', '用户踢出', '/auth/kickOut', '', '1655738390099988482', '2023-07-06 19:41:08', '1655738390099988482', '2023-07-06 19:41:08');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1695724235019931650', '用户excel上传', '/sys/user/excel/upload', '', '1655738390099988482', '2023-08-27 17:05:37', '1655738390099988482', '2023-08-27 17:05:37');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736398148819062786', '组织树查询', '/sys/organization/tree', '', '1655738390099988482', '2023-12-17 22:49:14', '1655738390099988482', '2023-12-17 22:49:14');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736398294294302721', '组织列表查询', '/sys/organization/list', '', '1655738390099988482', '2023-12-17 22:49:49', '1655738390099988482', '2023-12-17 22:49:49');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736398384828354561', '组织详情查询', '/sys/organization/detail', '', '1655738390099988482', '2023-12-17 22:50:10', '1655738390099988482', '2023-12-17 22:50:10');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736398488784179202', '组织编辑', '/sys/organization/edit', '', '1655738390099988482', '2023-12-17 22:50:35', '1655738390099988482', '2023-12-17 22:50:35');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736398602810527745', '组织批量删除', '/sys/organization/removeByIds', '', '1655738390099988482', '2023-12-17 22:51:02', '1655738390099988482', '2023-12-17 22:51:02');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736401203882987521', '文件删除', '/comm/file/delete', '', '1655738390099988482', '2023-12-17 23:01:22', '1655738390099988482', '2023-12-17 23:01:22');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736402058455650305', '文章评论回复', '/cms/comment/reply', '', '1655738390099988482', '2023-12-17 23:04:46', '1655738390099988482', '2023-12-17 23:04:46');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736402184666451969', '文章评论批量审核', '/cms/comment/reviewByIds', '', '1655738390099988482', '2023-12-17 23:05:16', '1655738390099988482', '2023-12-17 23:05:16');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736402229428064257', '文章评论批量删除', '/cms/comment/removeByIds', '', '1655738390099988482', '2023-12-17 23:05:27', '1655738390099988482', '2023-12-17 23:05:27');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736402416619851777', '留言回复', '/cms/message/reply', '', '1655738390099988482', '2023-12-17 23:06:12', '1655738390099988482', '2023-12-17 23:06:12');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736402536090406914', '留言批量审核', '/cms/message/reviewByIds', '', '1655738390099988482', '2023-12-17 23:06:40', '1655738390099988482', '2023-12-17 23:06:40');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736402627392016385', '留言批量删除', '/cms/message/removeByIds', '', '1655738390099988482', '2023-12-17 23:07:02', '1655738390099988482', '2023-12-17 23:07:02');
INSERT INTO `sys_api_permission` (`id`, `name`, `path`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736404817657565186', '文章删除', '/cms/article/delete', '', '1655738390099988482', '2023-12-17 23:15:44', '1655738390099988482', '2023-12-17 23:15:44');
COMMIT;

-- ----------------------------
-- Table structure for sys_client_whitelist
-- ----------------------------
DROP TABLE IF EXISTS `sys_client_whitelist`;
CREATE TABLE `sys_client_whitelist` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `client_id` varchar(36) DEFAULT NULL COMMENT '客户端唯一标识(客户端生成并存在浏览器storage)',
  `state` tinyint(1) DEFAULT NULL COMMENT '状态(0-禁用,1-启用)',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='客户端白名单表';

-- ----------------------------
-- Records of sys_client_whitelist
-- ----------------------------
BEGIN;
INSERT INTO `sys_client_whitelist` (`id`, `client_id`, `state`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1668192716233699329', '0caf4341-4547-7c56-c1d6-2cc5cc69ef39', 1, '自用mac电脑（生产）', '1655738390099988482', '2023-06-12 17:45:12', '1655738390099988482', '2023-06-12 17:45:12');
INSERT INTO `sys_client_whitelist` (`id`, `client_id`, `state`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1668192716233699333', 'b78ec16b-1b9c-f013-066f-8a800e944f81', 1, '公司联想电脑（生产）', '1655738390099988482', '2023-06-12 17:45:12', '1655738390099988482', '2023-06-12 17:45:12');
INSERT INTO `sys_client_whitelist` (`id`, `client_id`, `state`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1668192716233699344', 'e00197d2-e209-c897-f4c8-031bd999106f', 1, '公司联想电脑（本地）', '1655738390099988482', '2023-06-12 17:45:12', '1655738390099988482', '2023-06-12 17:45:12');
COMMIT;

-- ----------------------------
-- Table structure for sys_data_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_permission`;
CREATE TABLE `sys_data_permission` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `name` varchar(100) DEFAULT NULL COMMENT '数据名称',
  `code` varchar(100) DEFAULT NULL COMMENT '数据编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sys_data_permission_code` (`code`) USING BTREE,
  UNIQUE KEY `uk_sys_data_permission_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='数据权限表';

-- ----------------------------
-- Records of sys_data_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_data_permission` (`id`, `name`, `code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1666705889318694914', '文章管理', 'article', '', '1655738390099988482', '2023-06-08 15:17:05', '1655738390099988482', '2023-06-11 15:13:40');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `dict_name` varchar(100) NOT NULL COMMENT '字典名称',
  `dict_code` varchar(100) NOT NULL COMMENT '字典编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sys_dict_dict_code` (`dict_code`) USING BTREE,
  UNIQUE KEY `uk_sys_dict_dict_name` (`dict_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` (`id`, `dict_name`, `dict_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655590268019322882', '模块授权类型（按钮）', 'module_permission_type', '', '1655738390099988482', '2023-05-08 23:07:34', '1655738390099988482', '2023-05-08 23:07:34');
INSERT INTO `sys_dict` (`id`, `dict_name`, `dict_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655590456557481986', '字典项状态', 'dict_item_state', '', '1655738390099988482', '2023-05-08 23:08:19', '1655738390099988482', '2023-05-08 23:08:19');
INSERT INTO `sys_dict` (`id`, `dict_name`, `dict_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655590491730915330', '用户状态', 'user_state', '', '1655738390099988482', '2023-05-08 23:08:27', '1655738390099988482', '2023-05-08 23:08:27');
INSERT INTO `sys_dict` (`id`, `dict_name`, `dict_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655590529521594369', '模块类型', 'module_type', '', '1655738390099988482', '2023-05-08 23:08:36', '1655738390099988482', '2023-05-08 23:08:36');
INSERT INTO `sys_dict` (`id`, `dict_name`, `dict_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1658627582589054977', '文章状态', 'article_state', '', '1655738390099988482', '2023-05-17 08:16:46', '1655738390099988482', '2023-06-08 16:00:02');
INSERT INTO `sys_dict` (`id`, `dict_name`, `dict_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1666282659579760641', '通用数据权限的权限类型', 'data_permission_common_model_type', '全部、仅自己创建的', '1655738390099988482', '2023-06-07 11:15:19', '1655738390099988482', '2023-06-08 15:51:58');
INSERT INTO `sys_dict` (`id`, `dict_name`, `dict_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1666701646109110273', '数据权限模型', 'data_permission_model', '', '1655738390099988482', '2023-06-08 15:00:13', '1655738390099988482', '2023-06-08 15:00:13');
INSERT INTO `sys_dict` (`id`, `dict_name`, `dict_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1682373277607137282', '文件存储类型', 'file_storage_type', '', '1655738390099988482', '2023-07-21 20:53:41', '1655738390099988482', '2023-07-21 20:53:41');
INSERT INTO `sys_dict` (`id`, `dict_name`, `dict_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1688439061286780930', '性别', 'gender', '', '1655738390099988482', '2023-08-07 14:36:57', '1655738390099988482', '2023-08-07 14:36:57');
INSERT INTO `sys_dict` (`id`, `dict_name`, `dict_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1695793704400453634', '留言状态', 'message_state', '', '1655738390099988482', '2023-08-27 21:41:40', '1655738390099988482', '2023-08-27 21:41:40');
INSERT INTO `sys_dict` (`id`, `dict_name`, `dict_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1696401757340733442', '评论状态', 'comment_state', '', '1655738390099988482', '2023-08-29 13:57:51', '1655738390099988482', '2023-11-28 10:13:04');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `dict_id` varchar(20) NOT NULL COMMENT '字典id',
  `item_text` varchar(100) NOT NULL COMMENT '字典项文本',
  `item_value` varchar(100) NOT NULL COMMENT '字典项值',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_no` int(10) DEFAULT NULL COMMENT '排序',
  `state` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sys_dict_item_dict_id_item_text` (`dict_id`,`item_text`) USING BTREE,
  UNIQUE KEY `uk_sys_dict_item_dict_id_item_value` (`dict_id`,`item_value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典项表';

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655729642337873922', '1655590268019322882', '可操作', 'operable', '', 1, 'enable', '1655738390099988482', '2023-05-09 08:21:23', '1655738390099988482', '2023-05-09 08:21:23');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655732459358269442', '1655590268019322882', '可见', 'iewable', '', 2, 'enable', '1655738390099988482', '2023-05-09 08:32:35', '1655738390099988482', '2023-05-09 08:32:35');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655732514509172738', '1655590456557481986', '启用', 'enable', '', 1, 'enable', '1655738390099988482', '2023-05-09 08:32:48', '1655738390099988482', '2023-05-09 08:32:48');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655732564975038466', '1655590456557481986', '禁用', 'disable', '', 2, 'enable', '1655738390099988482', '2023-05-09 08:33:00', '1655738390099988482', '2023-05-09 08:33:00');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655732619958169602', '1655590491730915330', '启用', 'enable', '', 1, 'enable', '1655738390099988482', '2023-05-09 08:33:13', '1655738390099988482', '2023-05-09 08:33:13');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655732650593366017', '1655590491730915330', '禁用', 'disable', '', 2, 'enable', '1655738390099988482', '2023-05-09 08:33:21', '1655738390099988482', '2023-05-09 08:33:21');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655732704259485697', '1655590529521594369', '菜单', 'menu', '', 1, 'enable', '1655738390099988482', '2023-05-09 08:33:33', '1655738390099988482', '2023-05-09 08:33:33');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655732735452524546', '1655590529521594369', '按钮', 'btn', '', 2, 'enable', '1655738390099988482', '2023-05-09 08:33:41', '1655738390099988482', '2023-05-09 08:33:41');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1658634993609650178', '1658627582589054977', '草稿', 'draft', '', 1, 'enable', '1655738390099988482', '2023-05-17 08:46:13', '1655738390099988482', '2023-05-17 08:46:13');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1658635093778018306', '1658627582589054977', '已发布', 'published', '', 2, 'enable', '1655738390099988482', '2023-05-17 08:46:37', '1655738390099988482', '2023-05-17 08:46:37');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1658635191253643265', '1658627582589054977', '已下架', 'un_published', '', 3, 'enable', '1655738390099988482', '2023-05-17 08:47:00', '1655738390099988482', '2023-07-21 13:14:05');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1666282890497167361', '1666282659579760641', '全部', 'all', '', 2, 'enable', '1655738390099988482', '2023-06-07 11:16:14', '1655738390099988482', '2023-06-07 11:17:24');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1666283141513678850', '1666282659579760641', '仅自己创建的', 'own_create', '', 1, 'enable', '1655738390099988482', '2023-06-07 11:17:14', '1655738390099988482', '2023-06-07 11:17:20');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1666708112836775938', '1666701646109110273', '通用数据权限', 'common_model', '', 1, 'enable', '1655738390099988482', '2023-06-08 15:25:55', '1655738390099988482', '2023-06-08 15:49:19');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1682373380430499842', '1682373277607137282', '本地服务', 'local', '', 1, 'enable', '1655738390099988482', '2023-07-21 20:54:06', '1655738390099988482', '2023-10-07 15:30:17');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1682622520326615041', '1682373277607137282', '阿里OSS', 'aliyun', '', 2, 'enable', '1655738390099988482', '2023-07-22 13:24:05', '1655738390099988482', '2023-10-07 15:00:32');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1682622621270929410', '1682373277607137282', '腾讯OSS', 'tencent', '', 3, 'enable', '1655738390099988482', '2023-07-22 13:24:29', '1655738390099988482', '2023-10-07 15:01:39');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1682622826586304513', '1682373277607137282', 'MinIO', 'minio', '', 4, 'enable', '1655738390099988482', '2023-07-22 13:25:18', '1655738390099988482', '2023-07-22 13:25:18');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1688439358444830722', '1688439061286780930', '男', 'men', '', 1, 'enable', '1655738390099988482', '2023-08-07 14:38:07', '1655738390099988482', '2023-08-27 16:31:42');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1688439469577109505', '1688439061286780930', '女', 'women', '', 2, 'enable', '1655738390099988482', '2023-08-07 14:38:34', '1655738390099988482', '2023-08-27 16:31:48');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1695794797335412738', '1695793704400453634', '待审核', 'pending_approval', '', 1, 'enable', '1655738390099988482', '2023-08-27 21:46:01', '1655738390099988482', '2023-08-27 21:46:01');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1695795977599975425', '1695793704400453634', '已发布', 'published', '', 2, 'enable', '1655738390099988482', '2023-08-27 21:50:42', '1655738390099988482', '2023-08-27 21:50:42');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1696401834784362498', '1696401757340733442', '待审核', 'pending_approval', '', 1, 'enable', '1655738390099988482', '2023-08-29 13:58:10', '1655738390099988482', '2023-08-29 13:58:10');
INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_no`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1696401886055534594', '1696401757340733442', '已发布', 'published', '', 2, 'enable', '1655738390099988482', '2023-08-29 13:58:22', '1655738390099988482', '2023-08-29 13:58:22');
COMMIT;

-- ----------------------------
-- Table structure for sys_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `parent_id` varchar(20) DEFAULT NULL COMMENT '父id',
  `id_path` mediumtext COMMENT 'id路径',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `path` varchar(255) DEFAULT NULL COMMENT '菜单路径',
  `module_type` varchar(100) NOT NULL COMMENT '模块类型(字典值)',
  `sort_no` int(10) DEFAULT NULL COMMENT '排序',
  `icon` varchar(100) DEFAULT NULL COMMENT '菜单图标',
  `hide_in_menu` tinyint(1) DEFAULT '0' COMMENT '是否隐藏菜单(0-否,1-是)',
  `code` varchar(255) DEFAULT NULL COMMENT '按钮标识',
  `permission_type` varchar(100) DEFAULT NULL COMMENT '授权类型',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sys_module_sort_no` (`sort_no`) USING BTREE,
  KEY `idx_sys_module_parent_id` (`parent_id`) USING BTREE,
  KEY `idx_sys_module_module_type` (`module_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='模块表';

-- ----------------------------
-- Records of sys_module
-- ----------------------------
BEGIN;
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655733488825020417', NULL, '1655733488825020417', '系统管理', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'menu', 99, 'icon-operate', 0, NULL, NULL, '1655738390099988482', '2023-06-29 14:46:06', '1655738390099988482', '2023-08-27 13:21:11');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655733587391164417', '1655733488825020417', '1655733488825020417,1655733587391164417', '用户管理', '/system/user-management', 'menu', 1, '', 0, NULL, NULL, '1655738390099988482', '2023-05-09 08:37:04', '1655738390099988482', '2023-05-09 08:37:04');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655733660799873026', '1655733488825020417', '1655733488825020417,1655733660799873026', '角色管理', '/system/role-management', 'menu', 2, '', 0, NULL, NULL, '1655738390099988482', '2023-05-09 08:37:21', '1655738390099988482', '2023-05-09 08:37:21');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655733727602552834', '1655733488825020417', '1655733488825020417,1655733727602552834', '模块管理', '/system/module-management', 'menu', 3, '', 0, NULL, NULL, '1655738390099988482', '2023-05-09 08:37:37', '1655738390099988482', '2023-05-09 08:37:37');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655733851506487297', '1655733488825020417', '1655733488825020417,1655733851506487297', '字典管理', '/system/dict-management', 'menu', 5, '', 0, NULL, NULL, '1655738390099988482', '2023-05-09 08:38:07', '1655738390099988482', '2023-07-28 15:36:54');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655733946616524802', '1655733488825020417', '1655733488825020417,1655733946616524802', '接口管理', '/system/api-permission-management', 'menu', 6, '', 0, NULL, NULL, '1655738390099988482', '2023-05-09 08:38:30', '1655738390099988482', '2023-07-28 15:12:32');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655734024563470337', NULL, '1655734024563470337', '系统监控', '', 'menu', 100, 'icon-channel', 0, NULL, NULL, '1655738390099988482', '2023-06-29 14:45:55', '1655738390099988482', '2023-08-27 13:21:20');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655734096407703553', '1655734024563470337', '1655734024563470337,1655734096407703553', '在线用户', '/monitor/online-monitor', 'menu', 1, '', 0, NULL, NULL, '1655738390099988482', '2023-05-09 08:39:05', '1655738390099988482', '2023-05-09 08:39:05');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655734170655272961', '1655734024563470337', '1655734024563470337,1655734170655272961', '系统日志', '/monitor/log-monitor', 'menu', 2, '', 0, NULL, NULL, '1655738390099988482', '2023-05-09 08:39:23', '1655738390099988482', '2023-05-09 08:39:23');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1658473215214923777', NULL, '1658473215214923777', '内容管理', '', 'menu', 2, 'icon-app', 0, NULL, NULL, '1655738390099988482', '2023-06-29 14:46:01', '1655738390099988482', '2023-08-27 13:19:00');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1658473494442323969', '1658473215214923777', '1658473215214923777,1658473494442323969', '文章管理', '/cms/article-management', 'menu', 1, '', 0, NULL, NULL, '1655738390099988482', '2023-05-16 22:04:29', '1655738390099988482', '2023-08-27 13:19:10');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1658473880620281857', '1658473215214923777', '1658473215214923777,1658473880620281857', '分类管理', '/cms/category-management', 'menu', 2, '', 0, NULL, NULL, '1655738390099988482', '2023-05-16 22:06:01', '1655738390099988482', '2023-08-27 13:19:15');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1658473943077662722', '1658473215214923777', '1658473215214923777,1658473943077662722', '标签管理', '/cms/tag-management', 'menu', 3, '', 0, NULL, NULL, '1655738390099988482', '2023-05-16 22:06:16', '1655738390099988482', '2023-08-27 13:20:01');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1666266070071447553', '1655733488825020417', '1655733488825020417,1666266070071447553', '数据管理', '/system/data-permission-management', 'menu', 7, '', 0, NULL, NULL, '1655738390099988482', '2023-06-07 10:09:23', '1655738390099988482', '2023-07-28 15:12:29');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1674308089456955393', NULL, '1674308089456955393', '首页', '/home', 'menu', 1, 'icon-pushTask', 0, NULL, NULL, '1655738390099988482', '2023-06-29 14:48:39', '1655738390099988482', '2023-07-04 10:55:01');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1682404032215511041', NULL, '1682404032215511041', '通用功能', '', 'menu', 3, 'icon-myapply', 0, NULL, NULL, '1655738390099988482', '2023-07-21 22:55:53', '1655738390099988482', '2023-08-27 13:21:29');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1682404341952278529', '1682404032215511041', '1682404032215511041,1682404341952278529', '文件管理', '/common/file-management', 'menu', 1, '', 0, NULL, NULL, '1655738390099988482', '2023-07-21 22:57:07', '1655738390099988482', '2023-07-21 22:57:44');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1684824085708005377', '1655733488825020417', '1655733488825020417,1684824085708005377', '组织管理', '/system/organization-management', 'menu', 4, '', 0, NULL, NULL, '1655738390099988482', '2023-07-28 15:12:19', '1655738390099988482', '2023-07-28 15:36:47');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192225623564289', NULL, '1689192225623564289', '账户设置', '/other/userSetting', 'menu', 89, '', 1, NULL, NULL, '1655738390099988482', '2023-08-09 16:29:45', '1655738390099988482', '2023-08-27 13:21:50');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1695739796076535809', '1658473215214923777', '1658473215214923777,1695739796076535809', '评论管理', '/cms/comment-management', 'menu', 4, '', 0, NULL, NULL, '1655738390099988482', '2023-08-27 18:07:27', '1655738390099988482', '2023-08-27 18:07:27');
INSERT INTO `sys_module` (`id`, `parent_id`, `id_path`, `name`, `path`, `module_type`, `sort_no`, `icon`, `hide_in_menu`, `code`, `permission_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1695739923038117890', '1658473215214923777', '1658473215214923777,1695739923038117890', '留言管理', '/cms/message-management', 'menu', 5, '', 0, NULL, NULL, '1655738390099988482', '2023-08-27 18:07:58', '1655738390099988482', '2023-08-27 18:07:58');
COMMIT;

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `parent_id` varchar(20) DEFAULT NULL COMMENT '父id',
  `id_path` mediumtext COMMENT 'id路径',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_no` int(10) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sys_organization_sort_no` (`sort_no`) USING BTREE,
  KEY `idx_sys_organization_parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='组织表';

-- ----------------------------
-- Records of sys_organization
-- ----------------------------
BEGIN;
INSERT INTO `sys_organization` (`id`, `parent_id`, `id_path`, `name`, `description`, `sort_no`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689171000079745026', NULL, '1689171000079745026', '财务管理中心', '', 1, '1655738390099988482', '2023-08-09 15:05:24', '1655738390099988482', '2023-08-09 15:05:24');
INSERT INTO `sys_organization` (`id`, `parent_id`, `id_path`, `name`, `description`, `sort_no`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689171156107853826', NULL, '1689171156107853826', '工会', '', 2, '1655738390099988482', '2023-08-09 15:06:02', '1655738390099988482', '2023-08-09 15:06:02');
INSERT INTO `sys_organization` (`id`, `parent_id`, `id_path`, `name`, `description`, `sort_no`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689171245844987906', NULL, '1689171245844987906', '智能技术中心', '', 3, '1655738390099988482', '2023-08-09 15:06:23', '1655738390099988482', '2023-08-09 15:06:40');
INSERT INTO `sys_organization` (`id`, `parent_id`, `id_path`, `name`, `description`, `sort_no`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689171420474834946', '1689171245844987906', '1689171245844987906,1689171420474834946', '大数据及AI系统部', '', 1, '1655738390099988482', '2023-08-09 15:07:05', '1655738390099988482', '2023-08-09 15:07:05');
INSERT INTO `sys_organization` (`id`, `parent_id`, `id_path`, `name`, `description`, `sort_no`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689171470236057602', '1689171245844987906', '1689171245844987906,1689171470236057602', 'IT运营管理部', '', 2, '1655738390099988482', '2023-08-09 15:07:16', '1655738390099988482', '2023-08-09 15:07:16');
INSERT INTO `sys_organization` (`id`, `parent_id`, `id_path`, `name`, `description`, `sort_no`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689171545783861250', '1689171470236057602', '1689171245844987906,1689171470236057602,1689171545783861250', '管理系统组', '', 1, '1655738390099988482', '2023-08-09 15:07:34', '1655738390099988482', '2023-08-09 15:07:34');
COMMIT;

-- ----------------------------
-- Table structure for sys_organization_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization_admin`;
CREATE TABLE `sys_organization_admin` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `user_id` varchar(20) DEFAULT NULL COMMENT '用户id',
  `organization_id` varchar(20) DEFAULT NULL COMMENT '组织id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sys_organization_admin_user_organization_id` (`user_id`,`organization_id`) USING BTREE,
  KEY `idx_sys_organization_admin_user_id` (`user_id`) USING BTREE,
  KEY `idx_sys_organization_admin_organization_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='组织管理员关联表';

-- ----------------------------
-- Records of sys_organization_admin
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `role_name` varchar(100) NOT NULL COMMENT '角色名称',
  `role_code` varchar(100) NOT NULL COMMENT '角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sys_role_role_code` (`role_code`) USING BTREE,
  UNIQUE KEY `uk_sys_role_role_name` (`role_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`id`, `role_name`, `role_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655735039777976322', '演示管理员角色', 'admin_role', '', '1655738390099988482', '2023-05-09 08:42:50', '1655738390099988482', '2023-05-09 08:46:26');
INSERT INTO `sys_role` (`id`, `role_name`, `role_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655735070530613249', '超级管理员角色', 'super_admin_role', '', '1655738390099988482', '2023-05-09 08:42:58', '1655738390099988482', '2023-05-09 08:46:22');
INSERT INTO `sys_role` (`id`, `role_name`, `role_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1672932737910067201', '文章管理员角色', 'article_admin_role', '', '1655738390099988482', '2023-05-09 08:42:58', '1655738390099988482', '2023-06-25 19:40:34');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_api_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_api_permission`;
CREATE TABLE `sys_role_api_permission` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `role_id` varchar(20) DEFAULT NULL COMMENT '角色id',
  `api_permission_id` varchar(20) DEFAULT NULL COMMENT '接口接口权限id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sys_role_api_permission_role_api_permission_id` (`role_id`,`api_permission_id`) USING BTREE,
  KEY `idx_sys_role_api_permission_role_id` (`role_id`) USING BTREE,
  KEY `idx_sys_role_api_permission_api_permission_id` (`api_permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色接口权限关联表';

-- ----------------------------
-- Records of sys_role_api_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726146', '1655735070530613249', '1655741595840069657', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726147', '1655735070530613249', '1655741595840069655', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726148', '1655735070530613249', '1655741595840069659', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726149', '1655735070530613249', '1655741595840069640', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726151', '1655735070530613249', '1655741595840069650', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726152', '1655735070530613249', '1655741595840069656', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726153', '1655735070530613249', '1655741595840069645', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726154', '1655735070530613249', '1655741595840069671', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726155', '1655735070530613249', '1655741595840069654', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726156', '1655735070530613249', '1655741595840069642', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726157', '1655735070530613249', '1655741595840069637', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726158', '1655735070530613249', '1655741595840069670', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726159', '1655735070530613249', '1655741595840069651', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726160', '1655735070530613249', '1655741595840069661', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726161', '1655735070530613249', '1655741595840069664', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726162', '1655735070530613249', '1655741595840069658', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726163', '1655735070530613249', '1655741595840069641', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726164', '1655735070530613249', '1655741595840069639', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726165', '1655735070530613249', '1655741595840069652', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726166', '1655735070530613249', '1655741595840069647', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726167', '1655735070530613249', '1655741595840069634', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726168', '1655735070530613249', '1655741595840069635', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726169', '1655735070530613249', '1655741595840069648', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726170', '1655735070530613249', '1655741595840069669', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726171', '1655735070530613249', '1655741595840069636', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726172', '1655735070530613249', '1655741595840069663', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726173', '1655735070530613249', '1655741595840069638', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726174', '1655735070530613249', '1655741595840069667', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726176', '1655735070530613249', '1655741595840069668', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726177', '1655735070530613249', '1655741595840069644', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726178', '1655735070530613249', '1655741595840069666', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726179', '1655735070530613249', '1655741595840069660', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726180', '1655735070530613249', '1655741595840069653', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726181', '1655735070530613249', '1655741595840069662', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726182', '1655735070530613249', '1655741595840069649', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742268094726183', '1655735070530613249', '1655741595840069665', '1655738390099988482', '2023-05-09 09:11:34', '1655738390099988482', '2023-05-09 09:11:34');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739585', '1655735039777976322', '1655741595840069657', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739586', '1655735039777976322', '1655741595840069655', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739587', '1655735039777976322', '1655741595840069659', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739588', '1655735039777976322', '1655741595840069640', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739589', '1655735039777976322', '1655741595840069654', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739590', '1655735039777976322', '1655741595840069637', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739591', '1655735039777976322', '1655741595840069670', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739592', '1655735039777976322', '1655741595840069651', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739593', '1655735039777976322', '1655741595840069658', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739594', '1655735039777976322', '1655741595840069639', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739595', '1655735039777976322', '1655741595840069652', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739596', '1655735039777976322', '1655741595840069635', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739597', '1655735039777976322', '1655741595840069669', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739598', '1655735039777976322', '1655741595840069663', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739599', '1655735039777976322', '1655741595840069638', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739601', '1655735039777976322', '1655741595840069668', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739602', '1655735039777976322', '1655741595840069666', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655742874108739603', '1655735039777976322', '1655741595840069662', '1655738390099988482', '2023-05-09 09:13:58', '1655738390099988482', '2023-05-09 09:13:58');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673894290029400065', '1655735070530613249', '1661637722000879617', '1655738390099988482', '2023-06-28 11:21:13', '1655738390099988482', '2023-06-28 11:21:13');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673894290029400066', '1655735070530613249', '1661637679349002241', '1655738390099988482', '2023-06-28 11:21:13', '1655738390099988482', '2023-06-28 11:21:13');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673894290029400067', '1655735070530613249', '1661637623547981825', '1655738390099988482', '2023-06-28 11:21:13', '1655738390099988482', '2023-06-28 11:21:13');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673894290029400068', '1655735070530613249', '1661637582238281729', '1655738390099988482', '2023-06-28 11:21:13', '1655738390099988482', '2023-06-28 11:21:13');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673939052719624193', '1655735070530613249', '1673938648250306562', '1655738390099988482', '2023-06-28 14:19:05', '1655738390099988482', '2023-06-28 14:19:05');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673939052719624194', '1655735070530613249', '1673938588510834690', '1655738390099988482', '2023-06-28 14:19:05', '1655738390099988482', '2023-06-28 14:19:05');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673939052719624195', '1655735070530613249', '1673938536535019521', '1655738390099988482', '2023-06-28 14:19:05', '1655738390099988482', '2023-06-28 14:19:05');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673939052719624196', '1655735070530613249', '1673935797633536002', '1655738390099988482', '2023-06-28 14:19:05', '1655738390099988482', '2023-06-28 14:19:05');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673939052719624197', '1655735070530613249', '1673934944914755586', '1655738390099988482', '2023-06-28 14:19:05', '1655738390099988482', '2023-06-28 14:19:05');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673939131627065345', '1655735039777976322', '1673938588510834690', '1655738390099988482', '2023-06-28 14:19:24', '1655738390099988482', '2023-06-28 14:19:24');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1673939131627065346', '1655735039777976322', '1673934944914755586', '1655738390099988482', '2023-06-28 14:19:24', '1655738390099988482', '2023-06-28 14:19:24');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1676922006680936450', '1655735070530613249', '1676919202562220033', '1655738390099988482', '2023-07-06 19:52:17', '1655738390099988482', '2023-07-06 19:52:17');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1695724554877554691', '1655735070530613249', '1695724235019931650', '1655738390099988482', '2023-08-27 17:06:54', '1655738390099988482', '2023-08-27 17:06:54');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853697', '1655735070530613249', '1736398148819062786', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853698', '1655735070530613249', '1736398294294302721', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853699', '1655735070530613249', '1736398384828354561', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853700', '1655735070530613249', '1736398488784179202', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853701', '1655735070530613249', '1736398602810527745', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853702', '1655735070530613249', '1736401203882987521', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853707', '1655735070530613249', '1736402058455650305', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853708', '1655735070530613249', '1736402184666451969', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853709', '1655735070530613249', '1736402229428064257', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853710', '1655735070530613249', '1736402416619851777', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853711', '1655735070530613249', '1736402536090406914', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853712', '1655735070530613249', '1736402627392016385', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405339965853713', '1655735070530613249', '1736404817657565186', '1655738390099988482', '2023-12-17 23:17:49', '1655738390099988482', '2023-12-17 23:17:49');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405639309135874', '1655735039777976322', '1736398148819062786', '1655738390099988482', '2023-12-17 23:19:00', '1655738390099988482', '2023-12-17 23:19:00');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405639309135875', '1655735039777976322', '1736398294294302721', '1655738390099988482', '2023-12-17 23:19:00', '1655738390099988482', '2023-12-17 23:19:00');
INSERT INTO `sys_role_api_permission` (`id`, `role_id`, `api_permission_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1736405639309135876', '1655735039777976322', '1736398384828354561', '1655738390099988482', '2023-12-17 23:19:00', '1655738390099988482', '2023-12-17 23:19:00');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_data_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_data_permission`;
CREATE TABLE `sys_role_data_permission` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `role_id` varchar(20) DEFAULT NULL COMMENT '角色id',
  `data_permission_id` varchar(20) DEFAULT NULL COMMENT '数据权限id',
  `data_permission_model` mediumtext COMMENT '数据权限模型',
  `data_permission_data` mediumtext COMMENT '数据权限数据',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sys_role_data_permission_role_data_permission_id` (`role_id`,`data_permission_id`) USING BTREE,
  KEY `idx_sys_role_data_permission_role_id` (`role_id`) USING BTREE,
  KEY `idx_sys_role_data_permission_data_permission_id` (`data_permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色数据权限关联表';

-- ----------------------------
-- Records of sys_role_data_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_data_permission` (`id`, `role_id`, `data_permission_id`, `data_permission_model`, `data_permission_data`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1666745776210235394', '1655735070530613249', '1666705889318694914', 'common_model', 'all', '1655738390099988482', '2023-06-08 17:55:34', '1655738390099988482', '2023-06-09 10:13:36');
INSERT INTO `sys_role_data_permission` (`id`, `role_id`, `data_permission_id`, `data_permission_model`, `data_permission_data`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1666998087478222850', '1655735039777976322', '1666705889318694914', 'common_model', 'all', '1655738390099988482', '2023-06-09 10:38:10', '1655738390099988482', '2023-06-09 17:15:47');
INSERT INTO `sys_role_data_permission` (`id`, `role_id`, `data_permission_id`, `data_permission_model`, `data_permission_data`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1667787223344533505', '1667772009525993473', '1666705889318694914', 'common_model', 'own', '1655738390099988482', '2023-06-11 14:53:55', '1655738390099988482', '2023-06-11 14:53:55');
INSERT INTO `sys_role_data_permission` (`id`, `role_id`, `data_permission_id`, `data_permission_model`, `data_permission_data`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1672932865718898690', '1672932737910067201', '1666705889318694914', 'common_model', 'own_create', '1655738390099988482', '2023-06-25 19:40:51', '1655738390099988482', '2023-06-25 19:40:51');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_module`;
CREATE TABLE `sys_role_module` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `role_id` varchar(20) DEFAULT NULL COMMENT '角色id',
  `module_id` varchar(20) DEFAULT NULL COMMENT '模块id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sys_role_module_role_module_id` (`role_id`,`module_id`) USING BTREE,
  KEY `idx_sys_role_module_role_id` (`role_id`) USING BTREE,
  KEY `idx_sys_role_module_module_id` (`module_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色模块关联表';

-- ----------------------------
-- Records of sys_role_module
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192368385089537', '1655735039777976322', '1655733488825020417', '1655738390099988482', '2023-08-09 16:30:19', '1655738390099988482', '2023-08-09 16:30:19');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192368385089538', '1655735039777976322', '1655734024563470337', '1655738390099988482', '2023-08-09 16:30:19', '1655738390099988482', '2023-08-09 16:30:19');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192368452198401', '1655735039777976322', '1658473215214923777', '1655738390099988482', '2023-08-09 16:30:19', '1655738390099988482', '2023-08-09 16:30:19');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192368452198402', '1655735039777976322', '1674308089456955393', '1655738390099988482', '2023-08-09 16:30:19', '1655738390099988482', '2023-08-09 16:30:19');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192368452198403', '1655735039777976322', '1682404032215511041', '1655738390099988482', '2023-08-09 16:30:19', '1655738390099988482', '2023-08-09 16:30:19');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192368452198404', '1655735039777976322', '1689192225623564289', '1655738390099988482', '2023-08-09 16:30:19', '1655738390099988482', '2023-08-09 16:30:19');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192385158111234', '1655735070530613249', '1655733488825020417', '1655738390099988482', '2023-08-09 16:30:23', '1655738390099988482', '2023-08-09 16:30:23');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192385158111235', '1655735070530613249', '1655734024563470337', '1655738390099988482', '2023-08-09 16:30:23', '1655738390099988482', '2023-08-09 16:30:23');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192385158111236', '1655735070530613249', '1658473215214923777', '1655738390099988482', '2023-08-09 16:30:23', '1655738390099988482', '2023-08-09 16:30:23');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192385158111237', '1655735070530613249', '1674308089456955393', '1655738390099988482', '2023-08-09 16:30:23', '1655738390099988482', '2023-08-09 16:30:23');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192385158111238', '1655735070530613249', '1682404032215511041', '1655738390099988482', '2023-08-09 16:30:23', '1655738390099988482', '2023-08-09 16:30:23');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1689192385158111239', '1655735070530613249', '1689192225623564289', '1655738390099988482', '2023-08-09 16:30:23', '1655738390099988482', '2023-08-09 16:30:23');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1695742564187152385', '1672932737910067201', '1658473494442323969', '1655738390099988482', '2023-08-27 18:18:27', '1655738390099988482', '2023-08-27 18:18:27');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1695742564195540994', '1672932737910067201', '1674308089456955393', '1655738390099988482', '2023-08-27 18:18:27', '1655738390099988482', '2023-08-27 18:18:27');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1695742564195540995', '1672932737910067201', '1689192225623564289', '1655738390099988482', '2023-08-27 18:18:27', '1655738390099988482', '2023-08-27 18:18:27');
INSERT INTO `sys_role_module` (`id`, `role_id`, `module_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1695742564195540996', '1672932737910067201', '1695739796076535809', '1655738390099988482', '2023-08-27 18:18:27', '1655738390099988482', '2023-08-27 18:18:27');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `username` varchar(100) DEFAULT NULL COMMENT '账号',
  `realname` varchar(100) DEFAULT NULL COMMENT '名称',
  `nickname` varchar(100) DEFAULT NULL COMMENT '昵称',
  `avatar_id` varchar(20) DEFAULT NULL COMMENT '头像(文件ID)',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `gender` varchar(100) DEFAULT NULL COMMENT '性别(字典值)',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(255) DEFAULT NULL COMMENT '密码(规则：前端先md5再大写，后端+salt再md5然后大写)',
  `salt` varchar(45) DEFAULT NULL COMMENT '盐值',
  `state` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sys_role_username` (`username`) USING BTREE,
  KEY `idx_sys_role_state` (`state`) USING BTREE,
  KEY `idx_sys_role_realname` (`realname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`id`, `username`, `realname`, `nickname`, `avatar_id`, `birthday`, `gender`, `phone`, `email`, `password`, `salt`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655738390099988482', 'super_admin', '超级管理员', '超级管理员', NULL, '2023-08-16 00:00:00', 'women', '13233333333', 'cccc@qq.com', 'F1D25E3F9BD0578F5C7A8AF030CFF3B8', 'wEO38K', 'enable', '1655738390099988482', '2022-07-25 10:06:59', '1655738390099988482', '2023-12-23 17:53:14');
INSERT INTO `sys_user` (`id`, `username`, `realname`, `nickname`, `avatar_id`, `birthday`, `gender`, `phone`, `email`, `password`, `salt`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655738677825048577', 'admin', '演示管理员', '演示管理员', '1712654759978405889', '2023-08-16 00:00:00', 'men', '13222222222', 'c@qq.com', 'ABBAADE6930786925226146951C3A79E', 'OiTd3S', 'enable', '1655738390099988482', '2022-07-25 10:06:59', '1655738677825048577', '2023-12-23 17:54:52');
INSERT INTO `sys_user` (`id`, `username`, `realname`, `nickname`, `avatar_id`, `birthday`, `gender`, `phone`, `email`, `password`, `salt`, `state`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1672932597564461058', 'article_admin', '文章管理员', '文章管理员', '1712655101570912258', '2023-08-10 00:00:00', 'women', '13111111111', 'm@qq.com', 'ACD98836ECC899F771EA7D782B2F9F7F', 's50iUN', 'enable', '1655738390099988482', '2022-07-25 10:06:59', '1672932597564461058', '2023-12-23 17:55:40');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_organization`;
CREATE TABLE `sys_user_organization` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `user_id` varchar(20) DEFAULT NULL COMMENT '用户id',
  `organization_id` varchar(20) DEFAULT NULL COMMENT '组织id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sys_user_organization_user_organization_id` (`user_id`,`organization_id`) USING BTREE,
  KEY `idx_sys_user_organization_user_id` (`user_id`) USING BTREE,
  KEY `idx_sys_user_organization_organization_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户组织关联表';

-- ----------------------------
-- Records of sys_user_organization
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_organization` (`id`, `user_id`, `organization_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1735196566744010753', '1655738390099988482', '1689171000079745026', '1655738390099988482', '2023-12-14 15:14:35', '1655738390099988482', '2023-12-14 15:14:35');
INSERT INTO `sys_user_organization` (`id`, `user_id`, `organization_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1735196566752399361', '1655738390099988482', '1689171156107853826', '1655738390099988482', '2023-12-14 15:14:35', '1655738390099988482', '2023-12-14 15:14:35');
INSERT INTO `sys_user_organization` (`id`, `user_id`, `organization_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1735196581373743106', '1655738677825048577', '1689171000079745026', '1655738390099988482', '2023-12-14 15:14:38', '1655738390099988482', '2023-12-14 15:14:38');
INSERT INTO `sys_user_organization` (`id`, `user_id`, `organization_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1735196601787420673', '1672932597564461058', '1689171545783861250', '1655738390099988482', '2023-12-14 15:14:43', '1655738390099988482', '2023-12-14 15:14:43');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(20) NOT NULL COMMENT '主键id',
  `user_id` varchar(20) DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(20) DEFAULT NULL COMMENT '角色id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sys_user_role_user_role_id` (`user_id`,`role_id`) USING BTREE,
  KEY `idx_sys_user_role_user_id` (`user_id`) USING BTREE,
  KEY `idx_sys_user_role_role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` (`id`, `user_id`, `role_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655736696536444929', '1655738677825048577', '1655735039777976322', '1655738390099988482', '2023-05-09 08:49:25', '1655738390099988482', '2023-05-09 08:49:25');
INSERT INTO `sys_user_role` (`id`, `user_id`, `role_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1655736719076634626', '1655738390099988482', '1655735070530613249', '1655738390099988482', '2023-05-09 08:49:31', '1655738390099988482', '2023-05-09 08:49:31');
INSERT INTO `sys_user_role` (`id`, `user_id`, `role_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES ('1672932917044596738', '1672932597564461058', '1672932737910067201', '1655738390099988482', '2023-06-25 19:41:04', '1655738390099988482', '2023-05-09 08:49:31');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
