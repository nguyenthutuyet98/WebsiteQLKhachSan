<?php
	require_once("app/db.php");

	$db = new db();

	$sql = "SELECT TaiKhoan, MatKhau from khachhang";
	$result = $db->getAll($sql);

	foreach ($result as $row) {
		echo $row["TaiKhoan"]." - ".$row["MatKhau"];
		echo "<br />";
	}
?>