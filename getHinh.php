<?php
	require_once("app/db.php");

	if (isset($_GET["MaPhong"]))
	{
		$MaPhong = $_GET["MaPhong"];

		$db = new db();

		$sql = "SELECT URL FROM bangbosuutap WHERE IDPhong = $MaPhong";

		$DSHinh = $db->getAll($sql);

		echo json_encode($DSHinh);
	}
	else
	{
		echo "";
	}
?>