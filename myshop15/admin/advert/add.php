<?php 
include '../../public/common/config.php';

$sql="select * from class";
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
		<form action="insert.php" method='post' enctype='multipart/form-data'>
			<p>位置:</p>
			<p>
				<select name="pos">
					<option value="0">0</option>
					<option value="1">1</option>
				</select>
			</p>

			<p>图片:</p>
			<p><input type="file" name="img"></p>

			<p>URL:</p>
			<p><input type="text" name='url'></p>

			<p><input type="submit" value="添加"></p>
		</form>		
	</div>
	
</body>
</html>