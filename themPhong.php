<?php
	require_once("app/db.php");

	if (isset($_GET["txtTenLoaiPhong2"]))
	{
		$TenLoaiPhong = $_GET["txtTenLoaiPhong2"];

		$sql = "INSERT INTO loaiphong(TenLoaiPhong) VALUES('$TenLoaiPhong')";
		$db = new db();

		$result = $db->executeNonQuery($sql);

		if ($result == TRUE)
		{
			
			header("Location: phong.php");
		}
		else
		{
			echo "False";
		}
	}
?>