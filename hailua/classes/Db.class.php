<?php
class Db{
			var $conn ='';
			public function __construct()
			{
				 $this->conn =  new PDO('mysql:host=localhost; dbname=qlch' , 'root' , '');
		        //this->conn =$o      nn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				 $this->conn->query('set names "utf8" ');
			}
			public function query($sql)
			{
				//echo "$sql ";
				$stm = $this->conn->query($sql);
				return $stm->fetchAll();
			}
			public function queryInsert($sql)
			{
				return $stm =$this->conn->query($sql);
			}

	
	
	
	}
?>