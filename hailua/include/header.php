	

	



	<!DOCTYPE html>
<html lang="en">
  <head>
   
     <meta charset="utf-8">
    <title>Twitter Bootstrap shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="css/style.css" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
		<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

	<!-- Favicons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
  
<!-- 
	Upper Header Section 
-->
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="topNav">
		<div class="container">
			<div class="alignR">
				<div class="pull-left socialNw">
					<a href="#"><span class="icon-twitter"></span></a>
					<a href="https://www.facebook.com/chahailua.vn/"><span class="icon-facebook"></span></a>
					<a href="#"><span class="icon-youtube"></span></a>
					<a href="#"><span class="icon-tumblr"></span></a>
				</div>
				<a href="index.php"> <span class="icon-home"></span> Trang chủ</a> 
				<a href="dangki.php"><span class="icon-edit"></span> Đăng kí </a> 
				<a href="lienhe.php"><span class="icon-envelope"></span> Liên hệ</a>
				<a href="giohang.php"><span class="icon-shopping-cart"></span> Giỏ hàng</a>
			</div>
		</div>
	</div>
</div>

<!--
Lower Header Section 
-->
<div class="container">
<div id="gototop"> </div>
<header id="header">
<div class="row">
	<div class="span4">
	<h1>
	
	</h1>
	</div>
	
	
</div>

	

</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	  <div class="navbar-inner">
		<div class="container">
		  <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
		  <div class="nav-collapse">
			<ul class="nav">
			  <li class=""><a href="index.php">HAI LÚA	</a></li>
			  <li class=""><a href="list-view.html">Công thức</a></li>
			  <li class=""><a href="three-col.html">Ăn uống</a></li>
			  <li class=""><a href="four-col.html">Địa điểm</a></li>
			  <li class=""><a href="gioithieu.php">Giới thiệu</a></li>
			</ul>


			<form action="timkiem.php" class="navbar-search pull-left" method="post">
			  <input type="text" placeholder="Tìm kiếm" name="sm" class="search-query span2" value="">
			</form>


			<ul class="nav pull-right">
			<li class="dropdown">
			<?php
			if (!isset($_SESSION['khachhang']))
			{ ?>
				<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="icon-lock"></span> Đăng nhập <b class="caret"></b></a>
				<div class="dropdown-menu">
				<form action="index.php" class="form-horizontal loginFrm" method="post">
				  <div class="control-group">
					<input type="text" class="span2" id="inputEmail" placeholder="Email" name="email">
				  </div>
				  <div class="control-group">
					<input type="password" class="span2" id="inputPassword" placeholder="Password" name="mk">
				  </div>
				  <div class="control-group">
					<label class="checkbox">
					<input type="checkbox">Lưu mật khẩu
					</label>
					<button type="submit" name="sm" value="DN" class="shopBtn btn-block">Đăng nhập</button>
				  </div>
				</form>
				</div>

		<?php
			}
		else
{
	?>

				<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="icon-lock"></span> Chao: <?php echo ($_SESSION['khachhang']['TenKH']);

					
				 ?> <b class="caret"></b></a>
				<div class="dropdown-menu">
				  <div class="control-group">
					<a href="thoat.php">Thoat</a>
					<button type="submit" name="sm" value="Thoat" class="shopBtn btn-block">Thoat</button>
				  </div>

				</div>
		<?php
}
?>

			</li>
			</ul>
		  </div>
		</div>
	  </div>
	</div>





<!-- 
Body Section 
-->    

  </head>