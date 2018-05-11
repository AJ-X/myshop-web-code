<?php 
include '../../public/common/config.php';

$id=$_GET['id'];
$sql="delete from class where id={$id}";

if(mysql_query($sql)){
	echo '<script>location="index.php"</script>';
}
?>