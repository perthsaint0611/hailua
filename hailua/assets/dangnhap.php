<?php 
include "config.php";
include "./classes/Db.class.php";
$db =new Db();
$us =$db -> query ("select *from khachhang");
session_start();
 ?>

 <?php include "include/header.php"?>

 	<ul class="nav pull-right">
			<li class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="icon-lock"></span> Đăng nhập <b class="caret"></b></a>


<?php 
	if (isset($_POST['submit'])) 
	{
		$email =$_POST['email'];
		$password =$_POST['password'];
		if (empty($email)|| empty($password)) {
			$error = 'mời bạn nhập đầy đủ thông tin';
			# code...
		}
		else
		{
			$error = 'bạn đã đăng nhập thành công';
			$_SESSION['email'] = $email;
			$_SESSION['password'] = $password;

		}

	}
 ?>

				<div class="dropdown-menu">
				<form class="form-horizontal loginFrm">
				  <div class="control-group">
					<input type="text" class="span2" id="inputEmail" placeholder="Email">
				  </div>
				  <div class="control-group">
					<input type="password" class="span2" id="inputPassword" placeholder="Password">
				  </div>
				  <div class="control-group">
					<label class="checkbox">
					<input type="checkbox">Thành viên
					</label>
					<button type="submit" class="shopBtn btn-block">Đăng nhập</button>
				  </div>
				</form>
				</div>
			</li>
	</ul>


	<?php 
	include "include/footer.php";
	 ?>