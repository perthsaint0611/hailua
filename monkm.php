								
							
	<hr class="soften"/>
	<div class="row-fluid">
		<ul class="thumbnails">
			<?php
				$db=new Db();

				$sql=$db->query("select ma,ten,diachi,img from monan JOIN nhacungcap on monan.MaNCC=nhacungcap.MaNCC where maloai='km'limit 4");	

				foreach($sql as $v)
				{
					$url= $base->striptitle($v['ten']).'-' .$v["ma"] .".html";
				?>								
	 
		  
		  
				<li class="span3">
				  <div class="thumbnail">
					
				           <p><a href="chi-tiet-<?php echo $url;?>"><img src="./images/<?php echo $v["img"]; ?>" alt="" /></a></p>
																
							<a href="chi-tiet-<?php echo $url;?>" style="text-overflow: ellipsis; overflow:  hidden;" class="title"><?php echo $v["ten"]; ?></a><br/>

							<center><?php echo $v["diachi"]; ?></center>
				  </div>
				</li>
			
			<?php 
			} 

			?>
		</ul>
	</div>
