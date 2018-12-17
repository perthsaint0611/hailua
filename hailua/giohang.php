<?php

if(!isset($_SESSION)) session_start();
include "config.php";
include "./classes/Db.class.php";
$db =new Db();

$tt="index.php";
if(isset($_SESSION['khachhang']))
$tt="thanhtoan.php";
?>

<?php include "include/header.php"; ?>

<div class="row">
	<div class="span12">
    <ul class="breadcrumb">
		<li><a href="index.php">Home</a> <span class="divider">/</span></li>
		<li class="active">Giỏ hàng</li>
    </ul>
		

	<table class="table table-bordered table-condensed">
              <thead>
                <tr>
                  <th>Hình</th>
                  <th>Tên</th>
				  <th>Mã</th>
                  <th>Giá</th>
                  <th>Số lượng</th>
                  <th>Tổng tiền</th>
                  <th>Thao tác</th>
				</tr>
              </thead>

              <tbody>
              	 <?php
              	 if(isset($_SESSION['giohang'])!="")
              	 {
					foreach ($_SESSION['giohang'] as $key => $v) 
					{ 
						$sql ="select * from monan where ma = '$key' ";
						$data =$db->query($sql);
						$r = $data["0"];
						$tongtien = $r['gia']*$v['sl'];
						echo $tongtien;
				   ?>
                <tr>
                  <td><img src="images/<?php echo $r['img']; ?>" width="100" ></td>
                  <td><input type="text" name="ten" value="<?php echo $r['ten']; ?>" readonly></td>
                  <td><input type="text" name="ma" value="<?php echo $r['ma']; ?>" readonly></td>
                  
                  <td><input type="text" name="gia" value="<?php echo $r['gia']; ?>" readonly></td>
                  <td><input type="text" name="sl" value="<?php echo $v['sl'];?>" readonly></td>
				  <td><input type="text" name="tt" value="<?php echo number_format($r['gia']*$v); ?>"
				  	readonly></td>
				  	<td>
					<a href="xoagiohang.php?id=<?php echo $key; ?>">Xóa</a>
				  </td>
                </tr>
			
                <?php
		            }
		        }
		        ?>
				</tbody>
            </table><br/>
		
		
            <table class="table table-bordered">
			<tbody>
				 <tr>
                  <td> 
				<form class="form-inline">
				  <label style="min-width:159px"> Mã khuyến mãi: </label> 
				<input type="text" class="input-medium" placeholder="CODE">
				<button type="submit" class="shopBtn"> Thêm </button>
				</form>
				</td>
                </tr>
				
            </tbody>
        </table>
					
	<a href="index.php" class="shopBtn btn-large"><span class="icon-arrow-left"></span> Tiếp tục mua  </a>
	<a href="thanhtoan.php" class="shopBtn btn-large pull-right">Thanh toán<span class="icon-arrow-right"></span></a>

	</div>
	</div>

<?php include "include/footer.php"; ?>
</div>
