<?php
	require_once('app/login.php'); 

	if (isset($_POST['username']) == true && isset($_POST['password']) == true) // Kiem tra username && password co dung hay khong?
	{
		$Username = $_POST['username']; 
		$Password = $_POST['password'];

		$user = new User();

		$result = $user->DangNhap($Username, $Password); // truong hop dung hien thi ket qua ra trang chu

		if ($result == false) // Truong hop sai thi hien ra message box false 
		{
			echo "false";
		}
		else
		{
			header("Location: index.php");
			exit;
		}
	}
?>