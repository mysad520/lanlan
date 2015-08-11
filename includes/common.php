<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//发现了time,请自行验证这套程序是否有时间限制.
//VIP会员:cq214520 您好,破解:phpjm加密,本次扣金币:5个,金币余额:0个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
error_reporting(0);
define('IN_CRONLITE', true);
define('VERSION', '6180');
define('SYSTEM_ROOT', dirname(__FILE__).'/');
define('ROOT', dirname(SYSTEM_ROOT).'/');
define('TIMESTAMP', time());

session_start();

date_default_timezone_set("PRC");
$date = date("Y-m-d H:i:s");

$scriptpath=str_replace('\\','/',$_SERVER['SCRIPT_NAME']);
$sitepath = substr($scriptpath, 0, strrpos($scriptpath, '/'));
$siteurl = ($_SERVER['SERVER_PORT'] == '443' ? 'https://' : 'http://').$_SERVER['HTTP_HOST'].$sitepath.'/';
$appid=base64_decode('aHR0cDovL2Nyb24uYWxpYXBwLmNvbS9hdXRoL2NoZWNrLnBocA==');


if(is_file(ROOT.'includes/360safe/360webscan.php')){//360网站卫士
	require_once(ROOT.'includes/360safe/360webscan.php');
}

if(defined("SAE_ACCESSKEY"))
include_once ROOT.'includes/sae.php';
else
include_once ROOT.'config.php';

if(!defined('SQLITE') && (!$user||!$pwd||!$dbname))//检测安装
{
header('Content-type:text/html;charset=utf-8');
echo '你还没安装！<a href="install/">点此安装</a>';
exit();
}

define('CACHE_FILE', $cache);
if(isset($db_qz))define('DBQZ', $db_qz);
else define('DBQZ', 'wjob');
if(!isset($port))$port='3306';
//连接数据库
include_once(ROOT."includes/db.class.php");
if(defined('SQLITE'))$DB=new DB($db_file);
else $DB=new DB($host,$user,$pwd,$dbname,$port);

if($DB->query("select * from ".DBQZ."_config where 1")==FALSE)//检测安装2
{
header('Content-type:text/html;charset=utf-8');
echo '<div class="row">你还没安装！<a href="install/">点此安装</a></div>';
exit();
}

include_once(ROOT."includes/cache.class.php");
$CACHE=new CACHE();
$conf=$CACHE->pre_fetch();//获取系统配置

define('SYS_KEY',$conf['syskey']);

include_once(ROOT."includes/authcode.php");
include_once(ROOT."includes/signapi.php");
include_once(ROOT."includes/function.php");
include_once(ROOT."includes/qq.func.php");

//界面样式
if((!checkpc() || !file_exists(ROOT.'template/index.html')) && $mod=='home')$mod='index';

if(checkmobile()==true)
$theme=isset($_COOKIE["uachar"])?$_COOKIE["uachar"]:'mobile';

if(!isset($theme))
$theme=isset($_COOKIE["uachar"])?$_COOKIE["uachar"]:'default';
if($mod=='head')$theme='mobile';
if($conf['css2']==0)$theme='mobile';

define('TEMPLATE_ROOT', ROOT.'/template/'.$theme.'/');
define('PUBLIC_ROOT', ROOT.'/template/public/');

if($conf['version']<='6140')//检测更新
{
header('Content-type:text/html;charset=utf-8');
echo '<div class="row">新版本已准备就绪！<a href="install/update3.php">点此更新</a></div>';
exit();
}

$info=$DB->get_row("SELECT * FROM ".DBQZ."_info WHERE sysid='0' limit 1");//获取任务运行信息
$rules=explode("|",$conf['rules']);
$daili_rules=explode("|",$conf['daili_rules']);
$vip_func=explode("|",$conf['vip_func']);
$vip_sys=explode("|",$conf['vip_sys']);

$sysname=array("0","①","②","③","④","⑤","⑥","⑦","⑧","⑨","⑩","⑪","⑫","⑬","⑭","⑮","⑯","⑰","⑱","⑲","⑳");

include_once(TEMPLATE_ROOT.'main.php');
include_once(ROOT."includes/member.php");



if(!isset($_SESSION['authcode'])) {
	$query=file_get_contents($appid.'?url='.$_SERVER['HTTP_HOST'].'&authcode='.$authcode);
	if($query=json_decode($query,true)) {
		if($query['code']==-1)$_SESSION['authcode']=$authcode;
		else exit($query['msg']);
	}
}

if($mod=='blank'){}
elseif($mod=='head')
	include ROOT.'/template/mobile/head.php';
elseif(file_exists(TEMPLATE_ROOT.$mod.'.php'))
	include TEMPLATE_ROOT.$mod.'.php';
elseif(file_exists(PUBLIC_ROOT.$mod.'.php'))
	include PUBLIC_ROOT.$mod.'.php';
else
	die('Template file not found');
?>