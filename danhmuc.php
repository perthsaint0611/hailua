<?php
if(!isset($_SESSION)) session_start();
include "config.php";
include "./classes/Db.class.php";
include "./classes/Base.class.php";

$db = new Db();
$base = new Base();
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
										$url= $base->striptitle($v['ten']).'-' .$v["ma"] .".html";
										?> 
										 
			<li class="span3">
				<div class="thumbnail">
				  	
							<a href="chitiet.php" class="overlay"></a>
							
							<p><a href="chi-tiet-<?php echo $url;?>"><img src="./images/<?php echo $v["img"]; ?>" alt="" /></a></p>

						<div class="caption cntr">
								<a href="chi-tiet-<?php echo $url;?>" style="text-overflow: ellipsis; overflow:  hidden;" class="title"><?php echo $v["ten"]; ?></a> 

								<center><?php echo $v["diachi"]; ?></center>
						
						</div>
			  	</div>
			</li>
			
		    <?php 
			} 

			?> 
		</ul>

								
		<?php include "include/footer.php"; ?>