<?php
if(!isset($_SESSION)) session_start();
include "config.php";
include "./classes/Db.class.php";
$db = new Db();


$id=$_GET["id"];
// $sp = $db->query("select * from monan where Ma='".$id."'");
$sp = $db->query("SELECT monan.MaNCC, ma,ten,gia,Noidung,nhacungcap.TenNCC,nhacungcap.Diachi,nhacungcap.Sodienthoai,img FROM `monan` JOIN nhacungcap WHERE monan.MaNCC=nhacungcap.MaNCC AND monan.Ma LIKE '".$id."'");
$MaNCC = $sp[0]['MaNCC'];

// echo "Ma nhacc = $MaNCC === ";


$sql2 = "SELECT monan.MaNCC, ma,ten,gia,Noidung,nhacungcap.TenNCC,nhacungcap.Diachi,nhacungcap.Sodienthoai,img 
		 FROM monan JOIN nhacungcap 
		 WHERE monan.MaNCC=nhacungcap.MaNCC AND monan.Ma <> '".$id."'  AND monan.MaNCC='$MaNCC' 
		  ";
$spcungloai = $db->query($sql2);

//echo $sql2;



?>

		
			<?php include "include/header.php"; ?>

		

			<div class="well well-small">
	        	<div class="row-fluid">
					<div class="span5">
						<div id="myCarousel" class="carousel slide cntr">
			                <div class="carousel-inner">
			                  	<div class="item active">
			                  	  <?php
											
							        foreach ($sp as $key => $v) 
							        {
							            ?>
							            <p><img src="./images/<?php echo $v['img'] ?>" alt="" /></p>

				                </div>
				            </div>
						</div>
					</div>
					<div class="span7">
						<h3>Tên</h3><span><h4> <?php echo $v['ten'] ?></td></h4></span>
						<hr class="soft"/>
						
						<!-- them thong tin nha cung cap lấy thuộc tinh select bỏ vào $v[' Ten nha cung cap'] -->
						  <div class="control-group">
						  		<h4><strong>Địa chỉ :<br></strong><td>
						  			<?php echo $v['Diachi'] ?></td></h4>
						  </div>
						  <div class="row">
							<div class="span9">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home">Nội dung</a></li><br><br>

									<?php echo $v['Noidung'] ?>


								</ul>


								
						</div>
						<div class="tab-pane active" id="home">
							
										  <!-- <button type="submit" class="shopBtn"><span class=" icon-shopping-cart"></span> Thêm vào</button>  -->
						</div>
								  <?php
								    }
								    ?>	

					</div>
				<span >Menu</span>		
<?php
												
										        foreach ($spcungloai as $key => $v) 
										        {
										            ?>

					<div class="deli-box-menu-detail clearfix ng-scope" >
						
			            <div class="img-food-detail pull-left">
			                <a href="#cb_2384628" class="inline cboxElement">
			                	 
										            <p><img src="./images/<?php echo $v['img'] ?>" alt="" /></p>
										   
			                  
			                       
			                </a>
			            </div>
				            <div class="deli-name-food-detail pull-left " style="width: 380px;float: left;">
								
				                <a class="deli-title-name-food" ng-show="item.is_available" href="javascript:void(0);" ng-click="addToCartFromMenu(item.id, item.price.value, item.price.value, 1, $event)">
				                    <h3 style="font-size: 16px; margin: 0px; padding: 0px; line-height: 1.3em; font-weight: bold;" class="ng-binding"><?php echo $v['ten'] ?>   </h3>    
				                </a>
				               
				                
				                <p style="margin: 0; color: #a1a1a1; font-size: 11px;">
				                    Đã được đặt&nbsp;<span style="color: #464646; font-weight: bold;" class="ng-binding">34</span>&nbsp;lần
				                </p>
				                <td><input value="1" type="text" id="<?php echo $v['ma'] ?>"></td>

				                <div class="deli-more-info">
				                <div class="adding-food-cart" ng-show="!IsClosed">

				                    <!-- <a class="btn-adding" href="update_giohang.php?id=<?php echo $v['ma']?>">+</a> -->
				                    <a class="btn-adding" href='' onclick="this.href='update_giohang.php?id=<?php echo $v['ma'] ?>&sl='+document.getElementById('<?php echo $v['ma'] ?>').value">+</a>

				                    <!-- <span class="btn-adding" ng-show="item.is_available" ng-click="addToCartFromMenu(item.id, item.price.value, item.price.value, 1, $event)">+</span> -->
				                    
				                </div>
				                <div class="product-price">
				                    <p class="current-price" ng-hide="item.discount_price">
				                        <span class="txt-blue font16 bold ng-binding">
				                           <?php echo $v['gia']; ?>
				                        </span>
				                        <span class="unit ng-binding">VND</span>
				                        
				                    </p>
				                   
				                        <a href="javascript:void(0);" ng-click="addToCartFromMenu(item.id, item.price.value, item.price.value, 1, $event)">
				                            <p class="current-price">
				                                <span class="txt-blue font16 bold ng-binding"></span>
				                                <span class="unit ng-binding"></span>
				                            </p>
				                        </a>
				                </div>
				            </div>
				        </div>
				            </div>
				            <?php
									    }
									    ?>
				        </div>
			        </div>
			    </div>
	        
    <div>
<?php include "include/footer.php"; ?>
	</div>


   
			