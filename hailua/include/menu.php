<div id="sidebar" class="span3">
	<div class="well well-small">
		<ul class="nav nav-list" style="font-size: 20px;">
			<li><h3>DANH MỤC</h3></li>
			<?php
										      $cats= $db->query("select * from loai");
							                    foreach ($cats as  $v) {
							                     ?>
							                    <li><a href="danhmuc.php?id=<?php echo $v['maloai'] ?>"><?php echo $v['tenloai'];?></a></li>
							                   <?php
							                    }
                  								 ?>
			
			
			
			
		</ul>
	</div>			
</div>	


		<div id="myCarousel" class="carousel slide homCar">
            <div class="carousel-inner">
			  	<div class="item active">
                	<img style="width:100%" src="assets/img/B.png" alt="bootstrap ecommerce templates">
                	<div class="carousel-caption">
                     
                	</div>
              	</div>
			  	<div class="item">
                	<img style="width:100%" src="assets/img/C.png" alt="bootstrap ecommerce templates">
                	<div class="carousel-caption">
                      
                	</div>
              	</div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div>
   