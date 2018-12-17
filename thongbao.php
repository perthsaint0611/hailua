 <?php
include "config.php";
if(!isset($_SESSION)) session_start();
include "./classes/Db.class.php";
include "./include/functions.php";
$db = new Db();
?>

<?php include "include/header.php"; ?>

<?php include "include/menu.php"; ?>

<div class="container">
	<div class="row">
		<div class="span12">

			<div class="well well-small">
				<h4 class="title"><span class="text"><strong>
				 Bạn đã đặt hàng thành công!<br>
				 Bạn sẽ thanh toán khi nhận được hàng.<br>
				 Cảm ơn bạn đã mua hàng.<br>
				 </strong></span></h4>

				 <a href="index.php"><input type="submit" name="" value="Quay lại"></a>
						 
		
			</div>
		</div>
	</div>
</div>



 
 	<?php include "include/footer.php";?>