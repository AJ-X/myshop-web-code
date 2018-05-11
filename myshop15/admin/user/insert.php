<?php 
include '../lock.php';
include '../../public/common/config.php';

$username=$_POST['username'];
$password=md5($_POST['password']);

$sql="insert into user(username,password) values('{$username}','{$password}')";

if(mysql_query($sql)){
	echo '<script>location="index.php"</script>';
}
?>
