								
	<div class="row-fluid">
		<ul class="thumbnails">
			<?php

				$db=new Db();

				$sql=$db->query("select ma,ten,diachi,img from monan JOIN nhacungcap on monan.MaNCC=nhacungcap.MaNCC where hot > 0 limit 4");	

				foreach($sql as $v)
				{
				?>								
			 
				  
				  
					<li class="span3">
					  <div class="thumbnail">
						
				        <a href="chitiet.php?id=<?php echo $v['ma']?>"><img src="./images/<?php echo $v["img"]; ?>" alt="" /></a>
																
						<a href="chitiet.php?id=<?php echo $v['ma']?>" style="text-overflow: ellipsis; overflow:  hidden;" class="title"><?php echo $v["ten"]; ?></a><br/>

						<center><?php echo $v["diachi"]; ?></center>


							
					  </div>
					</li>
					
				<?php 
				} 

				?>
		</ul>
	</div>
								
		
									
											
									