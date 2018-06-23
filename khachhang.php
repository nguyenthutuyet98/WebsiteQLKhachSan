<?php
	require_once('app/db.php');

	$db = new db();

	// Biến dùng để phân trang
	$page = 0;

	if (isset($_GET['page']))
	{
		$page = $_GET['page']; // Lấy số trang trên thanh địa chỉ
	}
	else
	{
		$page = 1;
	} 

	$per_page = 6; // hiển thị 6 sản phẩm trên 1 trang 

	$total_rows = $db->countAll("SELECT * FROM khachhang"); // Tính tổng số dòng
	///////////////////////////

	$sql = "SELECT IDKhachHang, HoTenKH, NgaySinh, SoDT, DiaChi FROM khachhang";
	$DSKH = $db->getAll($sql, $page, $per_page);
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title> Trang web chuc nang hotel</title>
	<meta name="ViewPort" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="public/bootstrap-3.3.7-dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="public/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="public/css/phong.css">

	<script type="text/javascript" src="public/js/jquery-3.2.1.min.js"></script>
	<script src="public/css/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		function ShowAndLoadDataModal(currentRow)
		{
			$("#txtID").val(currentRow.cells[0].innerHTML);
			$("#txtTenKH").val(currentRow.cells[1].innerHTML);
			$("#dtNgaySinh").val(currentRow.cells[2].innerHTML);
			$("#txtSoDT").val(currentRow.cells[3].innerHTML);
			$("#txtDiaChi").val(currentRow.cells[4].innerHTML);


			$('#myModal').modal('toggle');
		}
	</script>
</head>
<body>

	<!-- Modal content-->
<div id="myModal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Thông tin chi tiết khách hàng</h4>
			</div>
			<form name="fmInfoTable" id="fmInfoTable" action="suaKhachHang.php" method="get">
				<div class="modal-body" >
					<div class="form-group">
						<label>ID: </label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
							<input type="text" name="txtID" id="txtID" class="form-control" readonly="true" required>
						</div>
					</div>

					<div class="form-group">
						<label>Họ Tên: </label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
							<input type="text" name="txtTenKH" id="txtTenKH" placeholder="Nhập tên khách hàng" class="form-control" required>
						</div>
					</div>

					<div class="form-group">
						<label>Ngày Sinh: </label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
							<input type="date" name="dtNgaySinh" id="dtNgaySinh" class="form-control">
						</div>
					</div>


					<div class="form-group">
						<label>Số Điện Thoại: </label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-bitcoin"></i></span>
							<input type="number" name="txtSoDT" id="txtSoDT" placeholder="Nhập số điện thoại" class="form-control">
						</div>
					</div>


					<div class="form-group">
						<label for="comment">Địa chỉ: </label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-comment"></i></span>
							<textarea class="form-control" rows="8" id="txtDiaChi" name="txtDiaChi" placeholder="Nhập địa chỉ"></textarea>
						</div>
					</div>
				</div>

				<div class="modal-footer">
					<button id="btnUpdateTable" type="submit" class="btn btn-default">Cập Nhật</button>
					<button id="btnCancel" type="button" class="btn btn-default" data-dismiss="modal">Thoát</button>
				</div>
			</form>
		</div>
	</div>
</div>

<div id="myModal2" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Nhập thông tin khách hàng</h4>
			</div>
			<form name="fmThemKH" id="fmThemKH" action="themKhachHang.php" method="get">
				<div class="modal-body" >
					<div class="form-group">
						<label>ID: </label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
							<input type="text" name="txtID2" id="txtID2" class="form-control" readonly="true" required>
						</div>
					</div>

					<div class="form-group">
						<label>Họ Tên: </label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
							<input type="text" name="txtTenKH2" id="txtTenKH2" placeholder="Nhập tên khách hàng" class="form-control" required>
						</div>
					</div>

					<div class="form-group">
						<label>Ngày Sinh: </label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
							<input type="date" name="dtNgaySinh2" id="dtNgaySinh2" class="form-control">
						</div>
					</div>


					<div class="form-group">
						<label>Số Điện Thoại: </label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-bitcoin"></i></span>
							<input type="number" name="txtSoDT2" id="txtSoDT2" placeholder="Nhập số điện thoại" class="form-control">
						</div>
					</div>


					<div class="form-group">
						<label for="comment">Địa chỉ: </label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-comment"></i></span>
							<textarea class="form-control" rows="8" id="txtDiaChi2" name="txtDiaChi2" placeholder="Nhập địa chỉ"></textarea>
						</div>
					</div>
				</div>

				<div class="modal-footer">
					<button id="btnUpdateTable" type="submit" class="btn btn-default">Thêm</button>
					<button id="btnCancel" type="button" class="btn btn-default" data-dismiss="modal">Thoát</button>
				</div>
			</form>
		</div>
	</div>
</div>

	<div id="header">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					
					<a class="navbar-brand" href="index.php">La CaSa</a>
				</div>
		
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav">
						<!-- <li class="active"><a href="#">Link</a></li> -->
						<li><a href="phong.php">Phòng</a></li>
						<li><a href="khachhang.php">Khách Hàng</a></li>
						<li><a href="loaiphong.php">Loại Phòng</a></li>
					</ul>
					
					
				</div><!-- /.navbar-collapse -->
			</div>
		</nav>
	</div>
	<div id="middle">
		<div class="container">
			<div class="nav navbar-nav navbar-right">
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Nhập Tìm Kiếm...">
					</div>
					<button type="submit" class="btn btn-default">Tìm Kiếm</button>
				</form>

			</div>
		</div>
	</div>
	<hr>
	<div class="middle-table">
		<div class="container">
			<div class="table">
				
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<th colspan="8">KHÁCH HÀNG</th>

					</thead>
					<thead>
						<th>ID </th>
						<th>Họ Tên KH</th>
						<th>Ngày Sinh</th>
						<th>Số ĐT</th>
						<th>Địa Chỉ</th>
						<th></th>
					</thead>

					<tbody>
						<?php
							foreach ($DSKH as $row) 
							{
								echo "<tr onclick='ShowAndLoadDataModal(this);'>";
								echo "<td>".$row['IDKhachHang']."</td>";
								echo "<td>".$row['HoTenKH']."</td>";
								echo "<td>".$row['NgaySinh']."</td>";
								echo "<td>".$row['SoDT']."</td>";
								echo "<td>".$row['DiaChi']."</td>";
								echo "<td>";
								echo "<div class='buttonicon'>";
								echo "<a class='btn btn-danger' href='xoaKhachHang.php?IDKhachHang=".$row['IDKhachHang']."'><i class='fa fa-minus-square' aria-hidden='true'></i></a>";
								echo "</div>";
								echo "</td>";
								echo "</tr>";

							}
						?>
					</tbody>
				</table>
			</div>
			<button class="btn pull-right" style="border-radius: 10%" data-toggle="modal" data-target="#myModal2">Thêm Dữ Liệu</button>

			<div style="text-align: center;">
				<ul class="pagination pagination-lg">
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
					   			$link = $link."<li class='active' id='li-pagination'><a href = 'loaiphong.php?page=$j'> $j </a></li>";  	
					   		}
					   		else
					   		{
					   			$link = $link."<li id='li-pagination'><a href = 'loaiphong.php?page=$j'> $j </a></li>"; 	
					   		}
					   		   
					   	}    
					   	echo $link; 	     
					   		
					}
					?>
				</ul>
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
				Coppyright &copy 2018 | Nguyen Thu Tuyet | Ngo Thi Ngoc Diem
			</div>
		</div>
	</div>
</body>
</html>