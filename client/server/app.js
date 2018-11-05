//使用express构建web服务器 --11:25
const express = require('express');

//引入session模块 npm i -save session 下载session

const bodyParser = require('body-parser');
/*引入路由模块*/
const index = require("./routes/index.js");
const detail = require("./routes/detail.js");

var app = express();
var server = app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
//app.use(express.static('public'));
//配置session

/*使用路由器来管理路由*/
app.use("/index",index);
app.use("/detail",detail);

