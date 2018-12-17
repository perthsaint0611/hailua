
<?php
if(!isset($_SESSION)) session_start();
include "config.php";
include "./classes/Db.class.php";
$db = new Db();
//$monan = isset($_GET['Ma'])?$_GET['Ma']:'';
$cats= $db->query("select * from loai");
// $sp = $db->query("select * from monan");
$sql ="select * from monan";
$arrMA = $db->query($sql);
?>
<?php include "include/header.php"; ?>
		
	<?php

	if (isset($_POST['sm']))
	{
	echo "ket qua tim kiem tai day!";
	$sql="select * from monan where Ten like '%".$_POST['sm']."%' ";
	echo $sql;
	$arr = $db->query($sql);
	?>

<ul class="thumbnails">
	<?php
	foreach ($arr as $key => $r) 
	{
		?>		
			<li class="span3">
			  <div class="thumbnail">
			  	
				<p><a href="chitiet.php?id=<?php echo $r['ma']?>"><img src="./images/<?php echo $r["img"]; ?>" alt="" /></a></p>
				<div class="caption cntr">
					<a href="chitiet.php?id=<?php echo $r['ma']?>" style="text-overflow: ellipsis; overflow:  hidden;" class="title"><?php echo $r["ten"]; ?></a><br/>
					<br class="clr">
				</div>
			  </div>
			</li>

		    <?php 
			} 

			?> 


</ul>

	
<?php 
}
include "include/footer.php"; ?>

