<?php
if(!isset($_SESSION)) session_start();
if (!isset($_SESSION['khachhang']))
{
header("location:index.php");exit;

}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form action="xuly_giohang.php" method="post">
		<h4><span>Hãy nhập thông tin</span></h4>
		<table>
			<tr>
				<td>Tên người nhận</td>
				<td>
					<input type="text" name="tnn">
				</td>
			</tr>
			<tr>
				<td>Địa chỉ người nhận</td>
				<td>
					<input type="text" name="dcnn">
				</td>
			</tr>
			<tr>
				<td>Số điện thoại</td>
				<td>
					<input type="text" name="sdt">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" name="thanhtoan" value="Thanh toan">
				</td>
				
			</tr>
		</table>
	</form>
</body>
</html>