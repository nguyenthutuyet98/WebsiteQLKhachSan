<?php
	require_once("app/db.php");

	if (isset($_GET["IDKhachHang"]))
	{
		$IDKhachHang = $_GET["IDKhachHang"];

		$sql = "DELETE FROM khachhang WHERE IDKhachHang = $IDKhachHang";
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