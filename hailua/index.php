<?php
include "config.php";
if(!isset($_SESSION)) session_start();
include "./classes/Db.class.php";
include "./include/functions.php";
$db = new Db();
$cats= $db->query("select * from loai");
$sp = $db->query("select * from monan");


// print_r($_POST);
if (isset($_POST['sm']) && $_POST['sm']=='DN')
{
$e = $_POST['email']; $p= $_POST['mk'];
	$sql="select * from khachhang where email='$e' and password='$p' ";
$kq = $db->query($sql);
if (Count($kq)>0)
{		
	$_SESSION['khachhang']= $kq[0];
	
}	
}







?>
<?php
 include "include/header.php";

?>
<body>
	

<!-- 
	Upper Header Section 
-->


<!--
Lower Header Section 
-->

<!-- 
Body Section 
-->

<?php

include "include/menu.php";

?>

	<div class="container">



	<div class="row">
		<div class="span12">

			<div class="well well-small">
		  <h3><a class="btn btn-mini pull-right" href="danhmuc.php?id=h" title="View more">Xem thêm <span class="icon-plus"></span></a>Sản phẩm hot</h3>
		  <?php	include  "monhot.php";?>  
		
	</div>
		</div>
	</div>



	<!-- SAN PHAM KHUYEN MAI -->
	<div class="row">
		<div class="span12">

			<div class="well well-small">
		  <h3><a class="btn btn-mini pull-right" href="danhmuc.php?id=km" title="View more">Xem thêm <span class="icon-plus"></span></a> Sản phẩm khuyến mãi  </h3>
		  <?php	include  "monkm.php";?>  
		
	</div>
		</div>
	</div>


	<!-- MON AN MOI -->
	<div class="row">
		<div class="span12">
			<div class="well well-small">
		  <h3><a class="btn btn-mini pull-right" href="danhmuc.php?id=m" title="View more">Xem thêm <span class="icon-plus"></span></a> Món ăn Mới </h3>
		 <?php	include  "monmoi.php";?>  
			
	
	</div>
		</div>
	</div>

	


	<!--
	Featured Products
	-->
		
		<?php

include "include/footer.php";

?>
	
	
	</div>



	


  </body>
</html>