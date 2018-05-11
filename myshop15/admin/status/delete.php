<?php 
include '../../public/common/config.php';

$id=$_GET['id'];
$sql="delete from status where id={$id}";

if(mysql_query($sql)){
	echo '<script>location="index.php"</script>';
}
?>