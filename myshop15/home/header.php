<?php 
$path=$_SERVER['PHP_SELF'];
$arr=explode('/',$path);
$root='/'.$arr[1];
?>
<div class="header">
	<div class='headerLogo'>
		<a href="<?php echo $root?>/home/index.php">
			<img src="<?php echo $root ?>/home/public/img/logo.png" alt="">
		</a>
	</div>
	<div class="headerLeft">
		<span>Myshop15商场</span>
	</div>
	<div class='headerRight'>
		<a href="<?php echo $root?>/home/index.php">首页</a>	
		<?php 
		if(!$_SESSION['home_userid']){
			echo "<a href='{$root}/home/login.php'>登录</a>";
		}else{
			echo "<a href='{$root}/home/person/index.php'>欢迎{$_SESSION['home_username']}登录</a><a href='{$root}/home/logout.php'>退出</a>";
		}
		?>
		<a href="<?php echo $root?>/home/register.php">注册</a>	
		<a href="<?php echo $root?>/home/person/index.php">个人中心</a>	
		<a href="<?php echo $root?>/home/cart/index.php">购物车</a>	
	</div>
</div>