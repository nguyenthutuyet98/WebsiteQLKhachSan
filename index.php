<?php
require 'app/db.php';

if (isset($_GET["HoTenKH"])) // Set gia tri ho ten kh len trang chinh
{
	$HoTenKH = $_GET["HoTenKH"];
}

$page = 0;

if (isset($_GET['page']))
{
	$page = $_GET['page']; // Lấy số trang trên thanh địa chỉ
}
else
{
	$page = 1;
} 

// Xử lý phân trang
$db = new db();
$per_page = 6; // hiển thị 6 sản phẩm trên 1 trang 

$total_rows = $db->countAll("SELECT * FROM phong"); // Tính tổng số dòng
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Do An Mon Lap Trinh Web 1</title>
	<meta name="ViewPort" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="public/bootstrap-3.3.7-dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="public/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="public/css/styles.css">
	<script src="public/js/jquery-3.2.1.min.js"></script>
	<script src="public/css/js/bootstrap.min.js"></script>
</head>
<body>

<div id="top-header">
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img src="public/images/logo.png" alt=""></a>

			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
					<?php 
					if (isset($HoTenKH)) 
					{
						echo "<li class='login_btn'><a href='phong.php' id='txtName'>".$HoTenKH."</a></li>"; 
					}
					else
					{
						echo "<li class='login_btn'><a href='login.php' id='txtName'>Login</a></li>"; 
					}
					?>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div>
	</nav>
</div>

<div id="middle">
	<div class="img-middle">
		<h2>Find You Dream Home</h2>
		<h3>Appartements - Houses - Mansions</h3>
	</div>
	<div class="search">
		<div class="look-for">
			<form action="#" method="POST">
				<input type="text" id="search" name="search" placeholder="WHAT ARE YOU LOOKING FOR?" autocomplete="off">
				<button class="submit">Look For <i class="fa fa-search" aria-hidden="true"></i></button>
			</form>
			<a href="#" class="icon-search"><i class="fa fa-cog" aria-hidden="true"></i></a>
		</div>
	</div>
	<div class="product">
		<div class="container">
			<div class="row">
				<?php

				$sql = "SELECT IDPhong, TenPhong, IDLoaiPhong, Gia, MoTa, HinhDaiDien FROM phong";
				$result = $db->getAll($sql, $page, $per_page);
				foreach ($result as $row) 
				{
				?>

					<div class="col-md-4">
						<a href="hotel_detail.html">
							<img src="<?php 
							if ($row['IDLoaiPhong'] == 1)
								echo 'public/hotel-img/phong-tre-em/'.$row['HinhDaiDien']; 
							else if ($row['IDLoaiPhong'] == 2)
								echo 'public/hotel-img/phong-don/'.$row['HinhDaiDien'];
							else if ($row['IDLoaiPhong'] == 3)
								echo 'public/hotel-img/phong-doi/'.$row['HinhDaiDien']; 
							else if ($row['IDLoaiPhong'] == 4)
								echo 'public/hotel-img/phong-nhom-gia-dinh/'.$row['HinhDaiDien'];?>" alt="hinh1" align="_bank" title ="phong khach" class="img-responsive"></a>
							<div class="content">
								<p>
									<a href="hotel_detail.html">
										<?php echo $row["TenPhong"]?>
									</a>
								</p>
								<h5>
									2 kitchens, 2 bed, 2 bath...
									<b><span>Giá: <?php echo $row["Gia"]?></span></b>
								</h5>
							</div>

						</div>

				<?php

				}
				?>
				</div>

			</div>
			
			<div style="text-align: center;">
				<ul class="pagination pagination-lg">
					<!-- <li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li> -->
					<?php
						if($total_rows > 0) 
						{ 
							$total_links = ceil($total_rows/$per_page); // số trang      

							if ($total_links == 0)
							{
								$total_links = 1;
							}

						   	$link = "";     
						   	for ($j = 1; $j <= $total_links; $j++) 
						   	{
						   		if ($j == $page)
						   		{
						   			$link = $link."<li class='active' id='li-pagination'><a href = 'index.php?page=$j'> $j </a></li>";  	
						   		}
						   		else
						   		{
						   			$link = $link."<li id='li-pagination'><a href = 'index.php?page=$j'> $j </a></li>"; 	
						   		}
						   		   
						   	}    
						   	echo $link; 	     
						   		
						}
					?>
				</ul>
			</div>
		</div>
	</div>
</div>

<div id="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<p><a href="#">About</a></p>
				<p><a href="#">Support</a></p>
				<p><a href="#">Terms</a></p>
				<p><a href="#">Policy</a></p>
				<p><a href="#">Contact</a></p>
			</div>
			<div class="col-md-4">
				<p><a href="#">Appartements</a></p>
				<p><a href="#">Houses</a></p>
				<p><a href="#">Villas</a></p>
				<p><a href="#">Mansions</a></p>
				<p><a href="#">...</a></p>
			</div>
			<!-- <div class="col-md-3">
				<p><a href="#">New York</a></p>
				<p><a href="#">Los Anglos</a></p>
				<p><a href="#">Miami</a></p>
				<p><a href="#">Washington</a></p>
				<p><a href="#">...</a></p>
			</div> -->
			<div class="col-md-4">
				<p>
					La Casa is real estate minimal html5 website template, designed and coded by pixelhint, tellus varius, dictum erat vel, maximus tellus. Sed vitae auctor ipsum
				</p>
				<p>
					<i class="fa fa-facebook-square" aria-hidden="true"></i>
					<i class="fa fa-twitter-square" aria-hidden="true"></i>
					<i class="fa fa-google-plus-square" aria-hidden="true"></i>
					<i class="fa fa-skype" aria-hidden="true"></i>
				</p>
			</div>
		</div>
		<div class="ft-name">
			Coppyright &copy 2018 | Nguyễn Thu Tuyết | Ngô Thị Ngọc Diễm
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready()
	{
		$("#li-pagination a").click(function() {
			$("#li-pagination a").each(function(index) {
				$(this).removeClass("active");
			});

			$(this).addClass("active");
		});
	}
</script>

</body>
</html>