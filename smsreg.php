<?php
//短信注册接口

error_reporting(0);
define('SMS_KEY',"123456"); //接口钥匙
$mod='blank';
include("./includes/common.php");
$smskey = isset($_REQUEST['smskey'])?$_REQUEST['smskey']:null;
$phone = isset($_REQUEST['phone'])?$_REQUEST['phone']:null;
$content = isset($_REQUEST['message'])?$_REQUEST['message']:null;
$smskey==SMS_KEY or die('2');
$pass=substr($phone,-6);
if(stripos($content,'#')){
$content = explode('#',$content);
$pass = $content[1];
}
$name = '新会员'.substr($phone,-4);
 
$row2=$DB->get_row("SELECT * FROM wjob_user WHERE user='$phone' limit 1"); 
if($row2['user']!=''){
$sql="UPDATE wjob_user SET pass='".$pass."' WHERE user='".$phone."'";
if($sds=$DB->query($sql)){
die("11");
}else{
die("22");
}}else{

$sql="insert into `wjob_user` (`pass`,`user`,`date`,`last`) values ('".$pass."','".$phone."','".$date."','".$date."')";
$sds=$DB->query($sql);
if($sds){
die("1");
}else{
die("22");
}}
?>