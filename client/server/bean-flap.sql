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