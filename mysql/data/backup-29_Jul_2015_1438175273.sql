DROP TABLE `kxwr`;

CREATE TABLE `kxwr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mc` varchar(150) DEFAULT NULL,
  `wz` varchar(350) DEFAULT NULL,
  `cw` varchar(350) DEFAULT NULL,
  `cz` varchar(350) DEFAULT NULL,
  `po` varchar(350) DEFAULT NULL,
  `co` varchar(350) DEFAULT NULL,
  `ip` varchar(150) DEFAULT NULL,
  `ll` varchar(350) DEFAULT NULL,
  `cs` varchar(150) DEFAULT '0',
  `zx` varchar(150) DEFAULT '未执行过',
  `tj` varchar(150) DEFAULT NULL,
  `ly` varchar(350) DEFAULT NULL,
  `pl` varchar(150) DEFAULT NULL,
  `zd` varchar(150) DEFAULT NULL,
  `ks` varchar(150) DEFAULT NULL,
  `js` varchar(150) DEFAULT NULL,
  `yx` varchar(150) DEFAULT '0',
  `sj` varchar(150) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE `wjob_chat`;

CREATE TABLE `wjob_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(150) DEFAULT NULL,
  `sj` varchar(150) DEFAULT NULL,
  `nr` varchar(500) DEFAULT NULL,
  `to` varchar(150) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE `wjob_config`;

CREATE TABLE `wjob_config` (
  `k` varchar(32) NOT NULL,
  `v` text,
  PRIMARY KEY (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `wjob_config` VALUES("zc","1");
INSERT INTO `wjob_config` VALUES("max","120");
INSERT INTO `wjob_config` VALUES("sjyl","0");
INSERT INTO `wjob_config` VALUES("pagesize","30");
INSERT INTO `wjob_config` VALUES("sitename","彩虹分布式云任务");
INSERT INTO `wjob_config` VALUES("sitetitle","-分布式秒赞秒评挂机平台");
INSERT INTO `wjob_config` VALUES("gg","<p class=\"bg-danger\" style=\"padding: 10px; font-size: 90%;\">彩虹云任务VIP开放购买，VIP会员可免扣快乐币，并能使用更多功能！<br/>VIP5元/月。1年50元！<br/><a class=\"btn btn-success btn-block\" href=\"http://cron.917ka.com/\" target=\"_blank\">立即购买VIP会员获尊贵身份</a></p><p class=\"bg-success\" style=\"padding: 10px; font-size: 90%;\"><font color=red>★本站正式开启快乐币服务，所有用户全部赠送100快乐币。任务运行会消耗快乐币，当币不足时会自动暂停任务。</font></p>\n<p class=\"bg-danger\" style=\"padding: 10px; font-size: 90%;\">★彩虹网络任务安卓客户端全新发布！2.3更新：<a href=\"/download.php?client=true&rand=100429\">点击下载(apk)</a></p><font color=green>提示：添加QQ获取sid失败的可以使用客户端添加，而且不会异地登录。</font><br/>★<a href=\"http://blog.cccyun.cn/m/?post=150\">定制我的站点安卓客户端</a><br/></font>注册支持中文用户名啦！<br/>任务上限提升至350任务/系统。请大家添加挂机任务时留意系统的运行频率。<br/><font color=green>☆本站新增6个系统，频率最低1分钟，同样是分布式运行</font></font>");
INSERT INTO `wjob_config` VALUES("guang","<a href=http://vip1.xydmz.cn>彩虹商业源码破解版演示站点</a>");
INSERT INTO `wjob_config` VALUES("bottom","※<a href=\"http://tieba.baidu.com/f?ie=utf-8&kw=快乐秒赞&fr=search">本站源码下载</a>※<br/>域名:<a href=\"/\">www.xydmz.cn</a><br/>[官方QQ群]145777658<a href=\"<a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=e2749401eb521e939ad52abe76b43c3bfb5f108fae7240a21d16681e87ba7f47"><img border="0" src="http://pub.idqqimg.com/wpa/images/group.png" alt="快乐秒赞吧" title="快乐秒赞吧"></a>">[加入]</a>");
INSERT INTO `wjob_config` VALUES("times","1");
INSERT INTO `wjob_config` VALUES("interval","50");
INSERT INTO `wjob_config` VALUES("version","6150");
INSERT INTO `wjob_config` VALUES("switch","1");
INSERT INTO `wjob_config` VALUES("css","5");
INSERT INTO `wjob_config` VALUES("css2","2");
INSERT INTO `wjob_config` VALUES("sysnum","8");
INSERT INTO `wjob_config` VALUES("bulk","10");
INSERT INTO `wjob_config` VALUES("adminid","1");
INSERT INTO `wjob_config` VALUES("seconds","0-0-0-0-0-0-0-0");
INSERT INTO `wjob_config` VALUES("show","1分钟|1分钟|1分钟|1分钟|1分钟|5分钟|5分钟|6小时");
INSERT INTO `wjob_config` VALUES("block","");
INSERT INTO `wjob_config` VALUES("banned","");
INSERT INTO `wjob_config` VALUES("apiserver","2");
INSERT INTO `wjob_config` VALUES("multi","0-0-0-0-0-0-0-0");
INSERT INTO `wjob_config` VALUES("loop","0-0-0-0-0-0-0-0");
INSERT INTO `wjob_config` VALUES("cronkey","");
INSERT INTO `wjob_config` VALUES("jifen","1");
INSERT INTO `wjob_config` VALUES("rules","100|100|1|2|3|3|10|5");
INSERT INTO `wjob_config` VALUES("qqapiid","0");
INSERT INTO `wjob_config` VALUES("qqloginid","1");
INSERT INTO `wjob_config` VALUES("mail_name","net909@163.com");
INSERT INTO `wjob_config` VALUES("mail_pwd","123456");
INSERT INTO `wjob_config` VALUES("mail_stmp","smtp.163.com");
INSERT INTO `wjob_config` VALUES("mail_port","25");
INSERT INTO `wjob_config` VALUES("siteurl","");
INSERT INTO `wjob_config` VALUES("cache","a:49:{s:2:\"zc\";s:1:\"1\";s:3:\"max\";s:3:\"120\";s:4:\"sjyl\";s:1:\"0\";s:8:\"pagesize\";s:2:\"30\";s:8:\"sitename\";s:24:\"彩虹分布式云任务\";s:9:\"sitetitle\";s:34:\"-分布式秒赞秒评挂机平台\";s:2:\"gg\";s:1216:\"<p class=\"bg-danger\" style=\"padding: 10px; font-size: 90%;\">彩虹云任务VIP开放购买，VIP会员可免扣彩虹币，并能使用更多功能！<br/>VIP5元/月。1年50元！<br/><a class=\"btn btn-success btn-block\" href=\"http://cron.917ka.com/\" target=\"_blank\">立即购买VIP会员获尊贵身份</a></p><p class=\"bg-success\" style=\"padding: 10px; font-size: 90%;\"><font color=red>★本站正式开启彩虹币服务，所有用户全部赠送100彩虹币。任务运行会消耗彩虹币，当币不足时会自动暂停任务。</font></p>\n<p class=\"bg-danger\" style=\"padding: 10px; font-size: 90%;\">★彩虹网络任务安卓客户端全新发布！2.3更新：<a href=\"/download.php?client=true&rand=100429\">点击下载(apk)</a></p><font color=green>提示：添加QQ获取sid失败的可以使用客户端添加，而且不会异地登录。</font><br/>★<a href=\"http://vip1.xydmz.cn/">彩虹商业源码破解版演示站点/a>\";s:6:\"bottom\";s:840:\"※<a href=\"http://tieba.baidu.com/f?ie=utf-8&kw=快乐秒赞&fr=search">本站源码下载</a>※<br/>域名:<a href=\"/\">cron.aliapp.com</a><br/>备用域名:<a href=\"http://cronx.sgwap.net\">cronx.sgwap.net</a><br/>[QQ群]326026548<a href=\"<a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=e2749401eb521e939ad52abe76b43c3bfb5f108fae7240a21d16681e87ba7f47"><img border="0" src="http://pub.idqqimg.com/wpa/images/group.png" alt="快乐秒赞吧" title="快乐秒赞吧">">[加入]</a><br/><a href=\"http://www.xydmz.cn\" target=\"_blank\"><img src=\"http://www.mz66.cn/rz.png\" border=0 /></a>\";s:5:\"times\";s:1:\"1\";s:8:\"interval\";s:2:\"50\";s:7:\"version\";s:4:\"6150\";s:6:\"switch\";s:1:\"1\";s:3:\"css\";s:1:\"5\";s:4:\"css2\";s:1:\"2\";s:6:\"sysnum\";s:1:\"8\";s:4:\"bulk\";s:2:\"10\";s:7:\"adminid\";s:1:\"1\";s:7:\"seconds\";s:15:\"0-0-0-0-0-0-0-0\";s:4:\"show\";s:63:\"1分钟|1分钟|1分钟|1分钟|1分钟|5分钟|5分钟|6小时\";s:5:\"block\";s:0:\"\";s:6:\"banned\";s:0:\"\";s:9:\"apiserver\";s:1:\"2\";s:5:\"multi\";s:15:\"0-0-0-0-0-0-0-0\";s:4:\"loop\";s:15:\"0-0-0-0-0-0-0-0\";s:7:\"cronkey\";s:0:\"\";s:5:\"jifen\";s:1:\"1\";s:5:\"rules\";s:20:\"100|100|1|2|3|3|10|5\";s:7:\"qqapiid\";s:1:\"0\";s:9:\"qqloginid\";s:1:\"1\";s:9:\"mail_name\";s:14:\"net909@163.com\";s:8:\"mail_pwd\";s:6:\"123456\";s:9:\"mail_stmp\";s:12:\"smtp.163.com\";s:9:\"mail_port\";s:2:\"25\";s:7:\"siteurl\";s:0:\"\";s:8:\"vip_coin\";s:1:\"1\";s:9:\"coin_name\";s:9:\"彩虹币\";s:8:\"vip_func\";s:0:\"\";s:4:\"shop\";s:1516:\"<a href=http://online.aliapp.com>彩虹挂Ｑ</a>|<a href=http://www.cccyun.cn>网址导航</a>|<a href=http://blog.cccyun.cn>彩虹博客</a><br/><a href=http://job.cccyun.cn/>彩虹网络任务二号</a>（签到专用）<br/><a href=http://crons.aliapp.com/>冰封网络任务</a>|<a href=http://zzcron.aliapp.com/>站长监控网</a><br/><a href=http://wdjk.aliapp.com/>无道网络任务</a>|<a href=http://www.00meng.com/>QQ爱挂Q网</a><br/><a href=http://nnwlrw.aliapp.com/>妞妞云任务</a></div></div><div class=\"panel panel-primary\"><div class=\"panel-body\" style=\"text-align: center;\">界面切换:触屏/电脑版.<a href=\"index.php?v=1\">手机炫彩版</a><br>※<a href=\"http://blog.cccyun.cn/m/?post=143\">本站源码下载</a>※<br/>域名:<a href=\"/\">cron.aliapp.com</a><br/>备用域名:<a href=\"http://cronx.sgwap.net\">cronx.sgwap.net</a><br/>[QQ群]326026548<a href=\"http://pt.3g.qq.com/s?aid=nLogin&sid=AQIYFX5k6Be1G0icdnJb5btM&KqqWap_Act=3&go_url=http%3a%2f%2fkiss.3g.qq.com%2factiveQQ%2fmqq%2fqqGroup%2fjoinGroup.jsp%3fg_key%3d%26pageType%3d1%26uid%3d0%26verifyInfo%3dcron2%26groupID%3d326026548\">[加入]</a><br/>[QQ分群]458057804<a href=\"http://pt.3g.qq.com/s?aid=nLogin&sid=AQIYFX5k6Be1G0icdnJb5btM&KqqWap_Act=3&go_url=http%3a%2f%2fkiss.3g.qq.com%2factiveQQ%2fmqq%2fqqGroup%2fjoinGroup.jsp%3fg_key%3d%26pageType%3d1%26uid%3d0%26verifyInfo%3dcron2%26groupID%3d458057804\">[加入]</a><br/><a href=\"http://www.mz66.cn\" target=\"_blank\"><img src=\"http://www.mz66.cn/rz.png\" border=0 /></a>\";s:6:\"footer\";s:132:\"<br>Powered by <a href=\"http://www.cccyun.cn\">彩虹</a>! V6.7 模板设计:<a href=\"http://zhizhe8.net/\" target=\"_blank\">Kenvix</a>\";s:7:\"qqlimit\";s:2:\"10\";s:8:\"qqlimit2\";s:1:\"0\";s:11:\"app_version\";s:3:\"1.0\";s:7:\"app_log\";s:0:\"\";s:12:\"app_start_is\";s:1:\"0\";s:9:\"app_start\";s:0:\"\";s:5:\"build\";s:20:\"2015-07-29 19:44:17 \";s:6:\"syskey\";s:32:\"2lQLd6alknaN8NFf2AizYDLSlq2ZyA2q\";s:4:\"kfqq\";s:0:\"\";}");
INSERT INTO `wjob_config` VALUES("vip_coin","1");
INSERT INTO `wjob_config` VALUES("coin_name","快乐币");
INSERT INTO `wjob_config` VALUES("vip_func","");
INSERT INTO `wjob_config` VALUES("shop","<a href=http://tieba.baidu.com/f?ie=utf-8&kw=快乐秒赞&fr=search>快乐秒赞吧</a>|<a href=http://tieba.baidu.com/f?ie=utf-8&kw=快乐秒赞&fr=search>快乐秒赞吧</a>|<a href=http://www.xydmz.cn>小雨滴秒赞</a><br/><a href=http://vip1.xydmz.cn/>彩虹商业源码破解版演示站点</a>（测试专用）<br/></div></div><div class=\"panel panel-primary\"><div class=\"panel-body\" style=\"text-align: center;\">界面切换:触屏/电脑版.<a href=\"index.php?v=1\">手机炫彩版</a><br>※<a href=\"http://tieba.baidu.com/f?ie=utf-8&kw=%E5%BF%AB%E4%B9%90%E7%A7%92%E8%B5%9E&fr=search">本站源码下载</a>※<br/>域名:<a href=\"/\">www.xydmz.cn</a><br/>[QQ群]145777658<a href=\"<a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=e2749401eb521e939ad52abe76b43c3bfb5f108fae7240a21d16681e87ba7f47"><img border="0" src="http://pub.idqqimg.com/wpa/images/group.png" alt="快乐秒赞吧" title="快乐秒赞吧">">[加入]</a>");
INSERT INTO `wjob_config` VALUES("footer","<br>Powered by <a href=\"http://tieba.baidu.com/f?ie=utf-8&kw=快乐秒赞&fr=search">快乐秒赞吧</a>! V6.9 模板设计:<a href=\"http://vip1.xydmz.cn\" target=\"_blank\">Kenvix</a>");
INSERT INTO `wjob_config` VALUES("qqlimit","10");
INSERT INTO `wjob_config` VALUES("qqlimit2","0");
INSERT INTO `wjob_config` VALUES("app_version","1.0");
INSERT INTO `wjob_config` VALUES("app_log","");
INSERT INTO `wjob_config` VALUES("app_start_is","0");
INSERT INTO `wjob_config` VALUES("app_start","");
INSERT INTO `wjob_config` VALUES("build","2015-07-29 19:44:17 ");
INSERT INTO `wjob_config` VALUES("syskey","2lQLd6alknaN8NFf2AizYDLSlq2ZyA2q");
INSERT INTO `wjob_config` VALUES("kfqq","");



DROP TABLE `wjob_info`;

CREATE TABLE `wjob_info` (
  `sysid` int(11) NOT NULL,
  `last` datetime DEFAULT NULL,
  `times` int(150) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sysid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `wjob_info` VALUES("0","","0");
INSERT INTO `wjob_info` VALUES("1","","0");
INSERT INTO `wjob_info` VALUES("2","","0");
INSERT INTO `wjob_info` VALUES("3","","0");
INSERT INTO `wjob_info` VALUES("4","","0");
INSERT INTO `wjob_info` VALUES("5","","0");
INSERT INTO `wjob_info` VALUES("6","","0");
INSERT INTO `wjob_info` VALUES("7","","0");
INSERT INTO `wjob_info` VALUES("8","","0");
INSERT INTO `wjob_info` VALUES("9","","0");
INSERT INTO `wjob_info` VALUES("10","","0");
INSERT INTO `wjob_info` VALUES("11","","0");
INSERT INTO `wjob_info` VALUES("12","","0");
INSERT INTO `wjob_info` VALUES("13","","0");
INSERT INTO `wjob_info` VALUES("14","","0");
INSERT INTO `wjob_info` VALUES("15","","0");
INSERT INTO `wjob_info` VALUES("16","","0");
INSERT INTO `wjob_info` VALUES("3001","","0");



DROP TABLE `wjob_job`;

CREATE TABLE `wjob_job` (
  `jobid` int(11) NOT NULL AUTO_INCREMENT,
  `sysid` int(150) NOT NULL,
  `type` int(4) NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  `lx` varchar(150) NOT NULL DEFAULT '0',
  `mc` varchar(255) NOT NULL DEFAULT '网址挂刷任务',
  `usep` int(1) DEFAULT NULL,
  `proxy` varchar(30) DEFAULT NULL,
  `referer` varchar(250) DEFAULT NULL,
  `useragent` varchar(250) DEFAULT NULL,
  `start` int(2) DEFAULT NULL,
  `stop` int(2) DEFAULT NULL,
  `zt` int(1) NOT NULL DEFAULT '0',
  `post` int(1) DEFAULT NULL,
  `postfields` text,
  `cookie` text,
  `timea` datetime NOT NULL,
  `timeb` datetime NOT NULL,
  `times` varchar(250) NOT NULL DEFAULT '0',
  `server` varchar(250) NOT NULL DEFAULT '1',
  `pl` int(150) NOT NULL DEFAULT '0',
  `time` int(150) NOT NULL DEFAULT '0',
  `day` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE `wjob_kms`;

CREATE TABLE `wjob_kms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind` tinyint(1) NOT NULL DEFAULT '1',
  `daili` int(11) NOT NULL DEFAULT '0',
  `km` varchar(50) DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `isuse` tinyint(1) DEFAULT '0',
  `user` varchar(50) DEFAULT NULL,
  `usetime` datetime DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE `wjob_qq`;

CREATE TABLE `wjob_qq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lx` varchar(150) NOT NULL DEFAULT '0',
  `qq` varchar(20) NOT NULL,
  `pw` varchar(250) DEFAULT NULL,
  `sid` varchar(150) DEFAULT NULL,
  `skey` varchar(150) DEFAULT NULL,
  `apiid` int(4) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `status2` int(4) NOT NULL DEFAULT '0',
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE `wjob_user`;

CREATE TABLE `wjob_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `pass` varchar(150) NOT NULL,
  `user` varchar(150) NOT NULL,
  `num` varchar(100) NOT NULL DEFAULT '0',
  `qqnum` int(150) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `last` datetime NOT NULL,
  `zcip` varchar(15) DEFAULT NULL,
  `dlip` varchar(15) DEFAULT NULL,
  `vip` int(1) NOT NULL DEFAULT '0',
  `coin` int(150) NOT NULL DEFAULT '0',
  `email` varchar(150) DEFAULT NULL,
  `vipdate` date DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `daili` int(1) NOT NULL DEFAULT '0',
  `daili_rmb` varchar(100) NOT NULL DEFAULT '0',
  `daili_qq` varchar(20) NOT NULL DEFAULT '0',
  `mail_on` int(1) NOT NULL DEFAULT '1',
  `vipsign` int(11) NOT NULL DEFAULT '0',
  `vipjf` int(11) NOT NULL DEFAULT '0',
  `vipsigntime` date DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `wjob_user` VALUES("1","123","123","0","0","2015-07-29 19:44:17","2015-07-29 21:07:01","","127.0.0.1","0","10000","","","","","0","0","0","1","0","0","");



