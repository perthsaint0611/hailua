<?php
class Monan extends Db{
	private $_page_size =5;//Một trang hiển hị 5 cuốn sách
	private $_page_count;
	public function getRand($n)
	{
		$sql="select ma, ten, img from monan order by rand() limit 0, $n ";
		return $this->exeQuery($sql);	
	}
	
	public function getByPubliser($mancc)
	{
		
	}
	public function delete($ma)
	{
		$sql="delete from monan where ma=:ma ";
		$arr =  Array(":ma"=>$ma);
		return $this->exeNoneQuery($sql, $arr);	
	}
	
	public function getDetail($ma)
	{
		$sql="select monan.*, tenloai 
			from monan, loai
			where monan.maloai = loai.maloai
				
				and ma=:ma ";
		$arr = array("ma"=>$ma);
		$data = $this->exeQuery($sql, $arr);
		if (Count($data)>0) return $data[0];
		else return array();
	}
	
	public function getAll($currPage=1)
	{
		$offset = ($currPage -1) * $this->_page_size;
		$sql="SELECT
				Count(*)
				FROM
				loai
				INNER JOIN monan ON monan.maloai = loai.maloai
				INNER JOIN nhacungcap ON monan.mancc = nhacungcap.mancc";
				$n  = $this->count($sql);
				$this->_page_count = ceil($n/$this->_page_size);
		$sql="SELECT
				monan.ma,
				monan.ten,
				monan.gia,
				monan.noidung,
				monan.img,
				monan.mancc,
				monan.maloai,
				loai.tenloai,
				nhacungcap.tenncc
				FROM
				loai
				INNER JOIN monan ON monan.maloai = loai.maloai
				INNER JOIN nhacungcap ON monan.mancc = nhacungcap.mancc
				limit $offset, " . $this->_page_size;
		
		return $this->exeQuery($sql);
	}
	
	public function search($currPage=1)
	{
		$key = Utils::getIndex("key");
		$arr = array(":ten"=>"%". $key ."%");
		
		$offset = ($currPage -1) * $this->_page_size;
		$sql="SELECT
				Count(*)
				FROM
				loai
				INNER JOIN monan ON monan.maloai = loai.maloai
				INNER JOIN nhacungcap ON monan.mancc = nhacungcap.mancc
				where ten like :ten	";
				$n  = $this->count($sql, $arr);
				$this->_page_count = ceil($n/$this->_page_size);
		$sql="SELECT
				monan.ma,
				monan.ten,
				monan.gia,
				monan.noidung,
				monan.img,
				monan.mancc,
				monan.maloai,
				loai.tenloai,
				nhacungcap.tenncc
				FROM
				loai
				INNER JOIN monan ON monan.maloai = loai.maloai
				INNER JOIN nhacungcap ON monan.mancc = nhacungcap.mancc
				where ten like :ten	
				limit $offset, " . $this->_page_size;
						
		return $this->exeQuery($sql, $arr);
	}
	
	public function count($sql, $arr=array())
	{
		return $this->countItems($sql, $arr);
	}
	
	public function getPageCount()
	{
		return $this->_page_count;	
	}

}
?>