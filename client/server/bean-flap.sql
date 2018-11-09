#设置客户端语言
SET NAMES UTF8;
#放弃数据库(如果存在)豆瓣
DROP DATABASE IF EXISTS bean;
#创建数据库 bean  豆瓣
CREATE DATABASE bean charset=utf8;
USE bean;

#第一列 最新上映  recent

CREATE TABLE bean_recent(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(128),
    title VARCHAR(64),
    score FLOAT
);

#插入数据

INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2537399580.jpg",
     "铁血战士",5.1
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2537214991.jpg",
     "胡桃夹子和四个王国",6.1
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2538070121.jpg",
     "八仙",NULL
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2538555285.jpg",
     "滴答屋",5.5
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2535524955.jpg",
     "流浪猫鲍勃",8.0
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2537133715.jpg",
     "冰封侠：时空行者",5.1
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2535096871.jpg",
     "无双",8.1
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img1.doubanio.com/view/photo/m_ratio_poster/public/p2535550507.jpg",
     "雪怪大冒险",7.6
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2535365481.jpg",
     "嗝嗝老师",7.5
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2533173724.jpg",
     "昨日青空",6.1
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img1.doubanio.com/view/photo/m_ratio_poster/public/p2534471408.jpg",
     "找到你",7.4
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2537871355.jpg",
     "黑暗迷宫",NULL
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2530513100.jpg",
     "影",7.4
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2537392122.jpg",
     "你美丽了我的人生",NULL
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2535257594.jpg",
     "阿拉姜色",7.6
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2538058163.jpg",
     "阴阳眼之瞳灵公馆",NULL
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2533384240.jpg",
     "李茶的姑妈",5.0
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2533822396.jpg",
     "我的间谍前男友",6.3
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img1.doubanio.com/view/photo/m_ratio_poster/public/p2536748718.jpg",
     "帝企鹅日记2：召唤",7.2
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2537061691.jpg",
     "功夫联盟",3.6
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2537238752.jpg",
     "追鹰日记",7.3
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2537032871.jpg",
     "无敌原始人",6.3
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2535445813.jpg",
     "玛雅蜜蜂历险记",6.6
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img1.doubanio.com/view/photo/m_ratio_poster/public/p2538072547.jpg",
     "台仙魔咒",NULL
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img1.doubanio.com/view/photo/m_ratio_poster/public/p2529701498.jpg",
     "悲伤逆流成河",5.9
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2535297332.jpg",
     "新灰姑娘",4.2
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2535476911.jpg",
     "滴答屋",5.5
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2535524955.jpg",
     "暮光•巴黎",NULL
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2536679956.jpg",
     "红高粱",8.3
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2533283770.jpg",
     "江湖儿女",7.7
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img1.doubanio.com/view/photo/m_ratio_poster/public/p2534554319.jpg",
     "雪怪大冒险",7.6
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2535365481.jpg",
     "灵魂契约",NULL
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2537681630.jpg",
     "为你写诗",4.1
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2534091010.jpg",
     "找到你",7.4
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2537871355.jpg",
     "阿凡提之奇缘历险",5.2
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2538045543.jpg",
     "产科男生",NULL
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2536466873.jpg",
     "跨越8年的新娘",7.0
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img1.doubanio.com/view/photo/m_ratio_poster/public/p2506351287.jpg",
     "养猪场的奇迹",6.6
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2531326284.jpg",
     "宝贝儿",5.5
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2508608826.jpg",
     "重金属囧途",8.1
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2534537200.jpg",
     "我要去远方",NULL
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2508033801.jpg",
     "黑色1847",7.1
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2520978483.jpg",
     "麦昆",8.8
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img1.doubanio.com/view/photo/m_ratio_poster/public/p2537054509.jpg",
     "我的冤家是条狗",NULL
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img3.doubanio.com/view/photo/m_ratio_poster/public/p2521821456.jpg",
     "迪亚曼帝诺",5.6
);
INSERT INTO bean_recent VALUES(
     NULL,"https://img1.doubanio.com/view/photo/m_ratio_poster/public/p2524209517.jpg",
     "盛夏",7.7
);

#第一列 热门电影  movie

CREATE TABLE bean_movie(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(128),
    title VARCHAR(64),
    score FLOAT
);

#第一列 电视剧  teleplay

CREATE TABLE bean_teleplay(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(128),
    title VARCHAR(64),
    score FLOAT
);

#第一列 综艺  variety

CREATE TABLE bean_variety(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(128),
    title VARCHAR(64),
    score FLOAT
);

#用户表
CREATE TABLE bean_user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    headportrait VARCHAR(128),
    phone VARCHAR(24),
    uname VARCHAR(64),
    upwd VARCHAR(24)
);
INSERT INTO bean_user VALUES(
	NULL,"https://img3.doubanio.com/icon/up52057602-1.jpg",10759387580,"星夜流云","123456"
);
INSERT INTO bean_user VALUES(
	NULL,"https://img3.doubanio.com/icon/up147712190-14.jpg",107593875801,"张小四","123456"
);
INSERT INTO bean_user VALUES(
	NULL,"https://img3.doubanio.com/icon/up37507203-106.jpg",107593875802,"有心打扰","123456"
);
INSERT INTO bean_user VALUES(
	NULL,"https://img3.doubanio.com/icon/up37507203-106.jpg",107593875803,"大聪看电影","123456"
);
INSERT INTO bean_user VALUES(
	NULL,"https://img3.doubanio.com/icon/up37507203-106.jpg",107593875804,"海月夜","123456"
);
INSERT INTO bean_user VALUES(
	NULL,"https://img3.doubanio.com/icon/up1402913-10.jpg",107593875805,"SELVEN","123456"
);
INSERT INTO bean_user VALUES(
	NULL,"https://img1.doubanio.com/icon/up50048249-47.jpg",107593875806,"Vi","123456"
);
INSERT INTO bean_user VALUES(
	NULL,"https://img3.doubanio.com/icon/up1666383-355.jpg",107593875807,"发条橙","123456"
);

#评论

CREATE TABLE bean_comment(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    id INT,
    headportrait VARCHAR(128),
    uname VARCHAR(64),
    comments VARCHAR(256),
    commenttime VARCHAR(128),
    commentscore INT,
    
);
INSERT INTO bean_comment VALUES(
	NULL,1,"https://img3.doubanio.com/icon/up52057602-1.jpg","星夜流云","50/100 这部电影浪费了麦肯吉的纯真，特效设计想象力贫乏、美术指导有型无神，可能唯一优点是催眠效果一流，害得打算在过道狂奔的同场小朋友们集体安静如鸡。女主走入白雪世界的一瞬间让人想起了《纳尼亚传奇》，如果制作者们看过那部还觉得自己的拿得出手，那脸皮也真够厚的。","2018-11-3 10:12:30",6
);
INSERT INTO bean_comment VALUES(
	NULL,1,"https://img3.doubanio.com/icon/up147712190-14.jpg","你好啊","空洞平淡，开头飞越伦敦的那个镜头惊艳，已经想好可以用在迪士尼乐园的游乐项目里了","2018-11-3 01:12:30",4
);
INSERT INTO bean_comment VALUES(
	NULL,1,"https://img3.doubanio.com/icon/up52057602-1.jpg","张大大","除了场面大，女主美之外，没啥好说的。美国佬为了政治正确，动不动就在传统的欧洲童话里硬塞黑人角色，也是醉了。3颗星送给场景、服装和女主。","2018-11-3 10:12:30",6
);
INSERT INTO bean_comment VALUES(
	NULL,1,"https://img3.doubanio.com/icon/up37507203-106.jpg","发条橙","华美精致的服装并无法赋予人物以深度，艳丽唯美的基色也并不能构建剧情的惊艳，根据经典改变的《胡桃夹子和四个王国》虽有着一副好看的皮囊，但这一次的迪士尼却没能在故事上给人带来多少新意，剧情的羸弱老套使电影最终显得既空洞又无趣。","2018-11-1 06:12:30",6
);
INSERT INTO bean_comment VALUES(
	NULL,1,"https://img3.doubanio.com/icon/up37507203-106.jpg","梦里诗书","片尾的芭蕾舞很好看，男舞者的非常大哈哈哈哈","2018-11-1 06:12:30",4
);
INSERT INTO bean_comment VALUES(
	NULL,1,"https://img3.doubanio.com/icon/up1402913-10.jpg","流星陨落","很古典的迪士尼电影，《欢乐满人间》的一次变奏。真正需要被拯救的其实是失去妻子的父亲，克拉拉找到的钥匙打开的也是父亲的心锁。","2018-11-5 10:12:30",8
);
INSERT INTO bean_comment VALUES(
	NULL,1,"https://img1.doubanio.com/icon/up50048249-47.jpg","风花雪夜","2.5 美术上华丽如旧。其实只是毫无野心的乖乖产品，被差评成如此地步也是我见犹怜。","2018-11-3 03:12:30",4
);
INSERT INTO bean_comment VALUES(
	NULL,1,"https://img3.doubanio.com/icon/up1666383-355.jpg","走马观花","两星半。特意找了一场国配，从小看译制片留下的情结，国配的胡桃夹子对我来说是个加分项，加了起码一颗星。其实也不是一无是处，踩在大齿轮上看现实中放慢的世界，这点子不错啊，可惜走马观花了。接着是整整一小时走马观花的生理隐喻：撸着脐带进入最初的生命国度，两个男国王要么是冻体（性冷淡）要么是同性恋，进入巨型女玩偶裙子底下看到了六个震动幅度不等的跳蛋，老鼠大军SM贯穿全片（它们的女主人爱抽鞭子），以及回到现实后赤果果的恋父……被迪士尼关键时刻借着摩根·弗里曼性丑闻事件当成了鸡肋项目也算很鸡贼了。","2018-11-4 10:12:30",6
);



















