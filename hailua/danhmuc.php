<?php
if(!isset($_SESSION)) session_start();
include "config.php";
include "./classes/Db.class.php";

$db = new Db();
$cats= $db->query("select * from loai");
$sp = $db->query("select * from monan");

?>
<?php include "include/header.php"; ?>
 			<h3>Món ăn </h3>
		<ul class="thumbnails">
			<?php 
									$id1 = $_GET['id'];
									$db= new Db();

									$sql= $db->query("select ma,ten,diachi,img from monan JOIN nhacungcap on monan.MaNCC=nhacungcap.MaNCC where maloai = '$id1'");
																			
								foreach($sql as $v)
									{
										?> 
			<li class="span3">
			  <div class="thumbnail">
			  	
				<a href="chitiet.php" class="overlay"></a>
				
				<p><a href="chitiet.php?id=<?php echo $v['ma']?>"><img src="./images/<?php echo $v["img"]; ?>" alt="" /></a></p>
				<div class="caption cntr">
					<a href="chitiet.php?id=<?php echo $v['ma']?>" style="text-overflow: ellipsis; overflow:  hidden;" class="title"><?php echo $v["ten"]; ?></a><br/>

					<center><?php echo $v["diachi"]; ?></center>
					
					<br class="clr">
				</div>
			  </div>
			</li>
			
		    <?php 
			} 

			?> 
		  </ul>

								
		<?php include "include/footer.php"; ?>