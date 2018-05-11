<?php 
session_start();

include '../public/common/config.php';
$password=md5($_POST['password']);

$sql="update user set password='{$password}' where username='admin'";

if(mysql_query($sql)){
	$_SESSION=array();
	session_destroy();
	setcookie('PHPSESSID','',time()-3600,'/');

	echo '<script>top.location="login.php"</script>';
}
?>