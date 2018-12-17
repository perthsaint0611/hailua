<?php
include "config.php";
include "./classes/Db.class.php";
include "include/functions.php";

if(!isset($_SESSION)) session_start();
if (!isset($_SESSION['khachhang']))
{

header("location:index.php");exit();

}


$db =new Db();
 
 $email = $_SESSION['khachhang']['Email'];
	$madon = time() ."_". $email;
 $ngaydathang = Date("Y-m-d");
 $tennguoinhan  = $_POST['tnn'];
 $diachinguoinhan = $_POST['dcnn'];
 $sdtnguoinhan = $_POST['sdt'];
 // $tenkh=$_POST['tkh'];
 // $tennv=$_POST['tnv'];


$sql="INSERT INTO `dondathang`(`madon`, `email`, `ngaydathang`, `tennguoinhan`, `sdtnguoinhan`, `diachinguoinhan`, `tenKH`, `tenNV`, `trangthai`) VALUES ('$madon','$email','$ngaydathang','$tennguoinhan','$sdtnguoinhan','$diachinguoinhan','null','null','0')";

$data=$db-> queryInsert($sql);


foreach ($_SESSION['giohang'] as $key => $value) {
		
		$ma = $key;
		$soluong = $value["sl"];
		$gia =["gia"];
		$tongtien = $value["tt"];
		$sql ="INSERT INTO `chitietdondathang`(`madon`, `ma`, `soluong`, `gia`) VALUES ('$madon','$ma','$soluong','$gia','$tongtien')";
		$data=$db-> queryInsert($sql);
	}
	unset($_SESSION['giohang']);


 ?>
 <h4 class="title"><span class="text"><strong>
 Bạn đã đặt hàng thành công!<br>
 Bạn sẽ thanh toán khi nhận được hàng.<br>
 Cảm ơn bạn đã mua hàng.<br>
 </strong></span></h4>
 