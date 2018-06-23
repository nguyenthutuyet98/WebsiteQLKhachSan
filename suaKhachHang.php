<?php
	require_once("app/db.php");

	if (isset($_GET["txtID"]) && isset($_GET["txtTenKH"]) && isset($_GET["dtNgaySinh"]) && isset($_GET["txtSoDT"]) && isset($_GET["txtDiaChi"]))
	{
		$ID = $_GET["txtID"];
		$TenKH = $_GET["txtTenKH"];
		$NgaySinh = $_GET["dtNgaySinh"];
		$SoDT = $_GET["txtSoDT"];
		$DiaChi = $_GET["txtDiaChi"];

		$sql = "UPDATE khachhang SET HoTenKH = '$TenKH', NgaySinh = '$NgaySinh', SoDT = '$SoDT', DiaChi = '$DiaChi' WHERE IDKhachHang = $ID";
		$db = new db();

		$result = $db->executeNonQuery($sql);

		if ($result == TRUE)
		{
			
			header("Location: khachhang.php");
		}
		else
		{
			echo "False";
		}
	}
?>