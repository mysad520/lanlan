<?php
//注册文件
if(!defined('IN_CRONLITE'))exit();
$title="注册";
include_once(TEMPLATE_ROOT."head.php");
navi();

echo'
<div class="w h"><h3>免费注册</h3></div>';

if($verifyswich==1)
$displyver='<div class="form-group"><label>验证码: </label><img title="点击刷新" src="verifycode.php" onclick="this.src=\'verifycode.php?\'+Math.random();"><br>
<input type="text" class="form-control" name="verify" value="" autocomplete="off"></div>';
else $displyver='';
echo'<div class="box"><form action="index.php?mod=reg" method="post"><input type="hidden" name="my" value="reg">
<div class="form-group">
<label>用户名:</label><br><input type="text" class="form-control" name="user" value=""></div>
<div class="form-group">
<label>密码:</label><br><input type="password" class="form-control" name="pass" value=""></div>
'.$displyver.'
<input type="submit" class="btn btn-primary btn-block" value="确认注册"></form></div>';
echo'<div class="w h"><h3>最新注册用户:</h3></div>';
echo "<div class='panel-body'>";
$rsz = $DB->query("select * from wjob_user order by userid desc limit 0,5");
while ($rowz = $DB->fetch($rsz)) {
$len = strlen($rowz["user"])/2;
$len = ceil($len);
$str=substr_replace($rowz["user"],str_repeat('*',$len),$len);
echo $str . "<br>";
}
echo'</div>';


echo'<div class="copy">';
echo date("Y年m月d日 H:i:s");
include(ROOT.'includes/foot.php');
echo'</div>';
if($conf['sjyl']==1)
{$txt=file(ROOT.'includes/content/content.db');
shuffle($txt);
echo"$txt[0]";}
echo'</div></div></div></body></html>';
?>  �&'���