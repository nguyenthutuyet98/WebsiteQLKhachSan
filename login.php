<?php
	require_once('app/login.php');

	if (isset($_POST['txtUsername']) == true && isset($_POST['txtPassword']) == true) //
	{
		$Username = $_POST['txtUsername'];
		$Password = $_POST['txtPassword'];

		$user = new User();

		$result = $user->DangNhap($Username, $Password);

		if ($result == null)
		{
			echo "<script>alert('Sai tài khoản hoặc sai mật khẩu!');</script>";
		}
		else
		{
			session_start();
			$_SESSION["user_login"] = $result;
			header("Location: index.php?HoTenKH=".$result["HoTenKH"]);
			exit;
		}
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Login with La Casa Account</title>
	<link rel="stylesheet" type="text/css" href="public/css/login_styles.css">
</head>
<body>

	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Đăng nhập</label>
			<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Đăng ký</label>
			
			<div class="login-form">
				<form method="POST" action="login.php">
					<div class="sign-in-htm">
						<div class="group">
							<label for="user" class="label">Tài khoản</label>
							<input id="txtUsername" name="txtUsername" type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">Mật khẩu</label>
							<input id="txtPassword" name="txtPassword" type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<input id="ckIsKeepLogin" type="checkbox" class="check">
							<label for="check"><span class="icon"></span> Duy trì đăng nhập</label>
						</div>
						<div class="group">
							<input id="btnLogin" type="submit" class="button" value="Đăng nhập">
						</div>
						<div id="CheckLogin"></div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<a href="#forgot">Quên mật khẩu?</a>
						</div>
					</div>
				</form>

				<div class="sign-up-htm">
					<div class="group">
						<label for="user" class="label">Tài khoản</label>
						<input id="user" type="text" class="input">
					</div>
					<div class="group">
						<label for="pass" class="label">Mật khẩu</label>
						<input id="pass" type="password" class="input" data-type="password">
					</div>
					<div class="group">
						<label for="pass" class="label">Nhập lại mật khẩu</label>
						<input id="pass" type="password" class="input" data-type="password">
					</div>
					<div class="group">
						<label for="pass" class="label">Tên hiển thị</label>
						<input id="pass" type="text" class="input">
					</div>
					<div class="group">
						<input type="submit" class="button" value="Đăng ký">
					</div>
					<div class="hr"></div>
					<div class="foot-lnk">
						<label for="tab-1">Đã có tài khoản?</a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>