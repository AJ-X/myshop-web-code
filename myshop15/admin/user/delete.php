<?php 
include '../lock.php';
include '../../public/common/config.php';

$id=$_GET['id'];
$sql="delete from user where id={$id}";

if(mysql_query($sql)){
	echo '<script>location="index.php"</script>';
}
?>