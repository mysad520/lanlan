<?php
//送礼物

header("content-Type: text/html; charset=utf-8");

require_once 'cron.inc.php';
require_once 'shuo.func.php';
require_once "qzone.class.php";

$qq=isset($_POST['qq']) ? $_POST['qq'] : $_GET['qq'];

if($qq){}else{echo"<font color='red'>输入不完整!<a href='javascript:history.back();'>返回重新填写</a></font>";exit;}

if($_GET['syskey']!=md5(SYS_KEY)) {
	if($islogin!=1)exit('未登录！');
	if(in_array('9',$vip_func) && $isvip==0 && $isadmin==0)exit('您不是VIP，无法使用！');
}

/*每次运行QQ数量配置*/
$size=3;

$result=$DB->query("select * from `wjob_qq` where status='1' order by rand() limit {$size}");

while($row=$DB->fetch($result)){
	$content=randstr();
	$qzone=new qzone($row['qq'],$row['sid'],$row['skey']);
	$qzone->gift($qq,$content);
	echo $qzone->msg[0].'<br/>';
	if($qzone->sidzt){
		$DB->query("UPDATE wjob_qq SET status='0' WHERE qq='".$row['qq']."'");
	}
}

?>