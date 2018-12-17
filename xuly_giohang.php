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
 $thanhtoan = $_POST['thanhtoan'];


$sql="INSERT INTO `dondathang`(`madon`, `email`, `ngaydathang`, `tennguoinhan`, `sdtnguoinhan`, `diachinguoinhan`, `tenKH`, `tenNV`, `trangthai`) VALUES ('$madon','$email','$ngaydathang','$tennguoinhan','$sdtnguoinhan','$diachinguoinhan','null','null','0')";

$db-> queryInsert($sql);


foreach ($_SESSION['giohang'] as $key => $value) {
		
		$ma = $key;
		$soluong = $value;
		$gia =1;
		$sql ="INSERT INTO `chitietdondathang`(`madon`, `ma`, `soluong`, `gia`) VALUES ('$madon','$ma','$soluong','$gia')";
		$db-> queryInsert($sql);
	}
	unset($_SESSION['giohang']);
	header('location:thongbao.php');


 ?>

