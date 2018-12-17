<?php
include "config.php";
if(!isset($_SESSION)) session_start();
include "./classes/Db.class.php";
include "include/functions.php";

// $db = new Db();
// print_r($_POST);
// if (isset($_POST['sm']) && $_POST['sm']=='DN')
// {
// $e = $_POST['email']; $p= $_POST['mk'];
// 	$sql="select * from khachhang where email='$e' and password='$p' ";
// $kq = $db->query($sql);
// if (Count($kq)>0)
// {		
// 	$_SESSION['khachhang']= $kq[0];
	
// }	
// }

$db =new Db();
$email      = postIndex("email");
$tenkh 	    = postIndex("ho") ." " . postIndex('ten');
$password1	= postIndex("mk1");
$password2	= postIndex("mk2");
// $fullname	= postIndex("fullname");
$address	= postIndex("dc");
$phone		= postIndex("dt");
$sm 		= postIndex("submitAccount");


$mkh = time();
// if ($sm !=''){

// //print_r($_POST);//exit;

// echo $sql;
// //exit;
// }
?>
<?php

 include "include/header.php";


 ?>

	 
	 
<div class="well">
	<form class="form-horizontal" method="post" action="dangki.php">
						<h3>Thông tin cá nhân</h3>
		


			<div class="control-group">
					<label class="control-label" for="inputFullname">Họ<sup>*</sup></label>
				<div class="controls">
				  	<input type="text" id="inputFullname" placeholder="username" name="ho">
				</div>
			 </div>
			 

			 <div class="control-group">
					<label class="control-label" for="inputUsername">Tên<sup>*</sup></label>
				<div class="controls">
			  		<input type="text" placeholder="Username" name="ten">
				</div>
		 	 </div>	
			 

			 <div class="control-group">
			 <label class="control-label" >Giới tính<sup>*</sup></label>	
						
			<div class="controls">
			<select class="span1" name="gtinh">
				
				<option value="">-</option>
				<option value="1">Nam</option>
				<option value="2">Nữ</option>
				
			</select>
			</div>
		</div>

			<div class="control-group">
					<label class="control-label" for="inputEmail">Email<sup>*</sup></label>
				<div class="controls">
			  		<input type="text" placeholder="Email" name="email">
				</div>
		  </div>
		  


		  <div class="control-group">
					<label class="control-label" for="inputAddress">Địa chỉ <sup>*</sup></label>
				<div class="controls">
			  		<input type="text" placeholder="address " name="dc">
				</div>
		  </div>	


		   <div class="control-group">
					<label class="control-label" for="inputPhone">SĐT <sup>*</sup></label>
				<div class="controls">
			  		<input type="text" placeholder="phone" name="dt">
				</div>
		  </div>	


		




			<div class="control-group">
						<label class="control-label">Mật khẩu <sup>*</sup></label>
					<div class="controls">
			  			<input type="password" placeholder="Password1" name="mk1">
					</div>
		  </div>


		  <div class="control-group">
						<label class="control-label">Xác nhận mật khẩu <sup>*</sup></label>
					<div class="controls">
			  			<input type="password" placeholder="Password2" name="mk2">
					</div>
		  </div>

		

			
		<div class="control-group">
					<div class="controls">
			 			<input type="submit" name="submitAccount" value="Đăng kí" class="exclusive shopBtn">
					</div>
		</div>

	</form>
</div>





<?php 
	if ($sm !="")
{
	$err= "";
	if (strlen($email)<6 ) 		    $err .=" email ít nhất phải 6 ký tự!<br>";
	if (strlen($tenkh)<3 ) 		$err .=" Username ít nhất phải 3 ký tự!<br>";
	if ($password1!= $password2) 	$err .="Mật khẩu và mật khẩu nhập lại không khớp. <br>";
	// if(strlen($password1)<8) 		$err .="Mật khẩu phải ít nhất 8 ký tự.<br>";
	// if(str_word_count($fullname)<1) $err .="Họ tên phải chứa ít nhất 1 từ ";
	if(str_word_count($address)<2)  $err .="Địa điểm, phải chứa ít nhất 2 từ ";
	if (strlen($phone)<6 ) 		    $err .=" số điện thoại chứa ít nhất phải 6 ký tự!<br>";
	
 ?>


    <div class="info">
    	<?php 
			if ($err !="") echo $err;
			else
			  {
				//echo "Username: $username <br>";
				//echo "Mật khẩu đã mã hóa Md5:".md5($password1) ."<br>";
				//echo "Họ tên: ". ucwords($name);
			
				$sql = "INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Diachi`, `Sodienthoai`, `Password`, `Email`) VALUES ('$mkh', '$tenkh', '$address', '$phone', '$password1', '$email')";

				$db-> queryInsert($sql);  
				 Echo "Chuc mung ban da dang ky thanh cong!!!<3"; 
			}
		?>
    </div>
    <?php

}
?>

<?php 
include "include/footer.php";
 ?> 