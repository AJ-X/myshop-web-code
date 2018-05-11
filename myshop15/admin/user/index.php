<?php 
include '../lock.php';

include '../../public/common/config.php';

$sql="select * from user where isadmin=0";
$rst=mysql_query($sql);
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>index</title>
	<link rel="stylesheet" href="../public/css/index.css">
</head>
<body>
	<div class="main">
		<table>
			<tr>
				<th>编号</th>
				<th>用户名</th>
				<th>修改</th>
				<th>删除</th>
			</tr>	
			<?php 
				while($row=mysql_fetch_assoc($rst)){
					echo "<tr>";
					echo "<td>{$row['id']}</td>";
					echo "<td>{$row['username']}</td>";
					echo "<td><a href='edit.php?id={$row['id']}'>修改</a></td>";
					echo "<td><a href='delete.php?id={$row['id']}'>删除</a></td>";
					echo "</tr>";
				}
			?>
		</table>
	</div>
	
</body>
</html>