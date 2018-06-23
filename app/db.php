<?php
	require_once("config.php");
	// $servername = "localhost"; // nếu có port thì điền vào VD: localhost:8080
	// $username = "root";
	// $password = ""; // nếu có password thì điền vào
	// $dbname = "hotel_ks"; // Tên CSDL trong MySQL cần kết nối
	// // Tao ket noi ham mysqli_connect
	// $conn = new mysqli($servername, $username, $password, $dbname);

	// $conn->set_charset("utf8");

	// // kiểm tra kết nối
	// if ($conn->connect_error) {
	//     die("Connection failed: " . $conn->connect_error);
	// } 
		
	class db
	{
		public static $conn;
		//1.Ket noi trong ham construct
		public function __construct()
		{
			self::$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
			self::$conn->set_charset('utf8');
		}
		public function __destruct()
		{
			//dong ket noi
			self::$conn->close();
		}
		public function getData($obj)
		{
			$arr = array();
			while ($row = $obj->fetch_assoc()) 
			{
				$arr[] = $row;
			}
			return $arr;
		}
		public function getAll($sql, $page = 0, $per_page = 1)
		{
			// Tinh so thu tu trang bat dau
			$first_link = ($page - 1) * $per_page;

			// Viet cau truy van
			if ($first_link >= 0)
			{
				$sql .= " LIMIT $first_link, $per_page";
			}
			
			//Thuc thi
			$result = self::$conn->query($sql);
			
			return $this->getData($result);
		}

		public function executeNonQuery($sql)
		{
			$result = self::$conn->query($sql);

			return $result;
		}

		public function countAll($sql)
		{
			//Thuc thi
			$result = self::$conn->query($sql);
			//tra ve tong so dong
			return $result->num_rows;
		}
		public function search($key)
		{
			// Viet cau truy van
			$sql = "SELECT * FROM products WHERE name LIKE '%".$key."%'";
			//Thuc thi
			$result = self::$conn->query($sql);
			return $this->getData($result);
		}
		public function countsearch($page, $per_page)
		{
			// Tính số thứ tự trang bắt đầu
			$first_link = ($page - 1) * $per_page;
			$sql = "SELECT * FROM Products LIMIT $first_link, $per_page";
			$kq = self::$conn->query ($sql);
			return $this->getdata($kq);
		}
		public function create_links ($base_url, $total_rows, $page, $per_page)
		{
			$total_links = ceil($total_rows/$per_page);
			$link ="";
			for($j=1; $j <= $total_links ; $j++)
			{
			$link = $link."<a href='".$base_url."&page=$j'> $j </a>";
			}
			return $link;
		}
	}	
			
?>