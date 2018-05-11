<?php 
session_start();

//管理员审核
include '../public/common/config.php';

$username=$_POST['username'];
$password=md5($_POST['password']);

$sql="select * from user where username='{$username}' and password='{$password}' and isadmin=1";

$rst=mysql_query($sql);

$row=mysql_fetch_assoc($rst);

if($row){
	$_SESSION['admin_username']=$username;
	$_SESSION['admin_userid']=$row['id'];

	echo "<script>location='index.php'</script>";
}else{
	echo "<script>alert('用户名或密码有误!')</script>";
	echo "<script>location='login.php'</script>";
}
?>