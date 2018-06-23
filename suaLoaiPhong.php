<?php
	require_once("app/db.php");

	if (isset($_GET["txtID"]) && isset($_GET["txtTenLoaiPhong"]))
	{
		$ID = $_GET["txtID"];
		$TenLoaiPhong = $_GET["txtTenLoaiPhong"];

		$sql = "UPDATE loaiphong SET TenLoaiPhong='$TenLoaiPhong' WHERE IDLoaiPhong = $ID";
		$db = new db();

		$result = $db->executeNonQuery($sql);

		if ($result == TRUE)
		{
			
			header("Location: loaiphong.php");
		}
		else
		{
			echo "False";
		}
	}
?>