<?php
	require_once("app/db.php");

	if (isset($_GET["txtTenKH2"]) && isset($_GET["dtNgaySinh2"]) && isset($_GET["txtSoDT2"]) && isset($_GET["txtDiaChi2"]))
	{
		$TenKH = $_GET["txtTenKH2"];
		$NgaySinh = $_GET["dtNgaySinh2"];
		$SoDT = $_GET["txtSoDT2"];
		$DiaChi = $_GET["txtDiaChi2"];

		$sql = "INSERT INTO khachhang(HoTenKH, NgaySinh, SoDT, DiaChi, TaiKhoan, MatKhau) VALUES('$TenKH', '$NgaySinh', '$SoDT', '$DiaChi', '$SoDT', '1234')";
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