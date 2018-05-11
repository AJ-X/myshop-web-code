<?php 

include '../../public/common/config.php';

$id=$_GET['id'];

$sql="delete from touch where id={$id}";

if(mysql_query($sql)){
	echo "<script>location='userlist.php'</script>";
}

?>