#About

Tornado 是一个开发网站的Python框架，nano是基于tornado的一个blog系统，仅做业余时间消遣学习，db使用的是wordpress博客系统

##结构


按照下面的结构部署网站结构（这个结构也可以根据具体情况进行修改）

|项目|名称|说明|
|----|----|----|
|文件|server.py|执行`python server.py`,启动tornado服务。|
|文件|application.py|完成`tornado.web.Application()`|
|文件|url.py|目录结构|
|目录|handler|各种请求处理类文件|
|目录|static|静态文件，可以进一步划分为js,css,img等目录|
|目录|optsql|与数据库读写有关的文件|
|目录|template|前端模板文件|

##依赖环境

已经安装了tornado框架

如果用mysql数据库，需要安装mysql数据库以及相关python模块

##提供者


以表格形式展现搜索结果，并且每一页有一个连接，能够以json形式表现。

