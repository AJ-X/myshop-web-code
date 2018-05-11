<?php 
include '../../public/common/config.php';

$sql="select * from advert";
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
				<th>图片</th>
				<th>位置</th>
				<th>URL</th>
				<th>修改</th>
				<th>删除</th>
			</tr>	
			<?php 
				while($row=mysql_fetch_assoc($rst)){
					echo "<tr>";
					echo "<td>{$row['id']}</td>";
					echo "<td><img src='../../public/uploads/{$row['img']}' width='200px'></td>";
					echo "<td>{$row['pos']}</td>";
					echo "<td>{$row['url']}</td>";
					echo "<td><a href='edit.php?id={$row['id']}'>修改</a></td>";
					echo "<td><a href='delete.php?id={$row['id']}&img={$row['img']}'>删除</a></td>";
					echo "</tr>";
				}
			?>
		</table>
	</div>
	
</body>
</html>