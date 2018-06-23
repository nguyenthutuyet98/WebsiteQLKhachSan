<?php
	require_once("app/db.php");

	if (isset($_GET["IDLoaiPhong"]))
	{
		$IDLoaiPhong = $_GET["IDLoaiPhong"];

		$sql = "DELETE FROM loaiphong WHERE IDLoaiPhong = $IDLoaiPhong";
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