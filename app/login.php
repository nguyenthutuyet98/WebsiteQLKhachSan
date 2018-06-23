<?php
	require_once("db.php");

	class User {
		public static $db;

		public function __construct()
		{
			self::$db = new db();
		}

		public function DangXuat() {
			session_unset();
		}

		public function DangNhap($TaiKhoan, $MatKhau){
			
			// Viet cau truy van
			$sql = "SELECT IDKhachHang, HoTenKH, NgaySinh, SoDT, DiaChi, TaiKhoan, MatKhau FROM khachhang";
			// Thuc thi cau truy van
			$result = self::$db->getAll($sql); // self: tra ve cau truy van
			
			foreach ($result as $row) {
				if (strcmp($row["TaiKhoan"], $TaiKhoan) == 0 && strcmp($row["MatKhau"], $MatKhau) == 0)
				{
					return $row;
				}
			}

			return null;			
		}
	}
?>