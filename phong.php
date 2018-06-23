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

	$total_rows = $db->countAll("SELECT * FROM phong"); // Tính tổng số dòng
	///////////////////////////

	$sqlLoaiPhong = "SELECT IDLoaiPhong, TenLoaiPhong FROM loaiphong";
	$DSLoaiPhong = $db->getAll($sqlLoaiPhong);

	$sqlPhong = "SELECT IDPhong, TenPhong, phong.IDLoaiPhong, TenLoaiPhong, Gia, MoTa FROM phong, loaiphong WHERE phong.IDLoaiPhong = loaiphong.IDLoaiPhong";
	$DSPhong = $db->getAll($sqlPhong, $page, $per_page);
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
			$("#txtTenPhong").val(currentRow.cells[1].innerHTML);
			$("#sltMaLoaiPhong option").each(function () {
				if ($(this).text().localeCompare(currentRow.cells[2].innerText) == 0)
				{
					$(this).prop("selected", "selected");
					return;
				}
			});
			$("#txtGia").val(currentRow.cells[3].innerHTML);
			$("#txtMoTa").val(currentRow.cells[4].title);

			$.ajax(
			{
				type: "GET",
				url: "getHinh.php",
				data: { MaPhong: currentRow.cells[0].innerHTML },
				dataType: "JSON",
				success: function(data) {
					var DSHinh = $(".imgHinhAnhPhong");
					for (var i = 0; i < data.length; i++)
					{
						var loaiPhong = "";

						if (currentRow.cells[2].innerText.localeCompare("Phòng Trẻ Em") == 0)
						{
							loaiPhong = "phong-tre-em";
						}
						else if (currentRow.cells[2].innerText.localeCompare("Phòng Đơn") == 0)
						{
							loaiPhong = "phong-don";
						}
						else if (currentRow.cells[2].innerText.localeCompare("Phòng Đôi") == 0)
						{
							loaiPhong = "phong-doi";
						}
						else
						{
							loaiPhong = "phong-nhom-gia-dinh";
						}

						DSHinh[i].src = "public/hotel-img/" + loaiPhong + "/" + data[i].URL;
					}
				}
			});

			$('#myModal').modal('toggle');
		}

		$(document).ready(function () {
			$('#btnChooseFile1').on('change',function (e)
	        {
	        	files = e.target.files;

	            if (FileReader && files && files.length)
	            {
	            	var fr = new FileReader();
	            	fr.onload = function () {
	            		$("#imgHinh1").attr("src", fr.result);
	            		$("#imgHinh1").css("width", "169px");
	            		$("#imgHinh1").css("height", "127px");
	            	}

	            	fr.readAsDataURL(files[0]);
	            }
	            else
	            {
	            	alert("Browser not supported!");
	            }
	        });

	        $('#btnChooseFile2').on('change',function (e)
	        {
	        	files = e.target.files;

	            if (FileReader && files && files.length)
	            {
	            	var fr = new FileReader();
	            	fr.onload = function () {
	            		$("#imgHinh2").attr("src", fr.result);
	            		$("#imgHinh2").css("width", "169px");
	            		$("#imgHinh2").css("height", "127px");
	            	}

	            	fr.readAsDataURL(files[0]);
	            }
	            else
	            {
	            	alert("Browser not supported!");
	            }
	        });

	        $('#btnChooseFile3').on('change',function (e)
	        {
	        	files = e.target.files;

	            if (FileReader && files && files.length)
	            {
	            	var fr = new FileReader();
	            	fr.onload = function () {
	            		$("#imgHinh3").attr("src", fr.result);
	            		$("#imgHinh3").css("width", "169px");
	            		$("#imgHinh3").css("height", "127px");
	            	}

	            	fr.readAsDataURL(files[0]);
	            }
	            else
	            {
	            	alert("Browser not supported!");
	            }
	        });
		});
	</script>
</head>
<body>

	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Thông tin chi tiết phòng</h4>
				</div>
				<form name="fmInfoTable" id="fmInfoTable">
					<div class="modal-body" >
						<div class="form-group">
							<label>ID: </label>
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
								<input type="text" name="txtID" id="txtID" class="form-control" readonly="true" required>
							</div>
						</div>

						<div class="form-group">
							<label>Tên Phòng: </label>
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
								<input type="text" name="txtTenPhong" id="txtTenPhong" placeholder="Nhập tên phòng" class="form-control" required>
							</div>
						</div>

						<div class="form-group">
							<label>Mã Loại Phòng: </label>
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
								<select name="sltMaLoaiPhong" id="sltMaLoaiPhong" class="form-control">
									<option value="">--Vui lòng chọn loại phòng--</option>
									<?php
										foreach ($DSLoaiPhong as $row) 
										{
											$id = $row["IDLoaiPhong"];
											echo "<option value='".$id."'>".$row['TenLoaiPhong']."</option>";
										}
									?>
								</select>
							</div>
						</div>


						<div class="form-group">
							<label>Giá: </label>
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-bitcoin"></i></span>
								<input type="text" name="txtGia" id="txtGia" placeholder="Nhập giá phòng" class="form-control">
							</div>
						</div>


						<div class="form-group">
							<label for="comment">Mô tả: </label>
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-comment"></i></span>
								<textarea class="form-control" rows="8" id="txtMoTa" name="txtMoTa" placeholder="Nhập mô tả phòng"></textarea>
							</div>
						</div>

						<div class="form-group">
							<label for="comment">Hình ảnh phòng: </label>
							<div class="input-group">
								<div class="row">
									<div class="col-md-4">
										<img id="imgHinh1" src="public/images/hinh2.jpg" alt="" class="img-responsive imgHinhAnhPhong">
										<input type="file" value="Choose File" id="btnChooseFile1" accept="image/*" class="btn form-control"> <!-- Chap nhan tat cac file co dinh dang hinh anh -->
									</div>

									<div class="col-md-4">
										<img id="imgHinh2"  src="public/images/hinh2.jpg" alt="" class="img-responsive imgHinhAnhPhong">
										<input type="file" value="Choose File" id="btnChooseFile2" accept="image/*" class="btn form-control">
									</div>

									<div class="col-md-4">
										<img id="imgHinh3" src="public/images/hinh2.jpg" alt="" class="img-responsive imgHinhAnhPhong">
										<input type="file" value="Choose File" id="btnChooseFile3" accept="image/*" class="btn form-control">
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="modal-footer">
						<button id="btnUpdateTable" type="submit" class="btn btn-default">Update</button>
						<button id="btnCancel" type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
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
					
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="#">
							<?php
								if (isset($_SESSION["user_login"]))
								{
									echo "T";
									$tmp = $_SESSION["user_login"];
									echo $tmp["HoTenKH"];
								}
								else
								{
									echo "About";
								}
							?>
							</a>
						</li>
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
					<tr>
						<th colspan="6">PHÒNG</th>
					</tr>
					<thead>
						<th>ID Phòng</th>
						<th>Tên Phòng</th>
						<th>Loại Phòng</th>
						<th>Giá</th>
						<th>Mô Tả</th>
						<th></th>
					</thead>
					<tbody>
						<?php
							foreach ($DSPhong as $row) 
							{
								echo "<tr onclick='ShowAndLoadDataModal(this);'>";
								echo "<td>".$row['IDPhong']."</td>";
								echo "<td>".$row['TenPhong']."</td>";
								echo "<td title='".$row['IDLoaiPhong']."'>".$row['TenLoaiPhong']."</td>";
								echo "<td>".$row['Gia']."</td>";
								echo "<td style='width: 600px;' title='".$row['MoTa']."'>".substr($row['MoTa'], 0, 80)."...</td>";
								echo "<td>";
								echo "<div class='buttonicon'>";
								echo "<button><i class='fa fa-minus-square' aria-hidden='true'></i></i></button>";
								echo "</div>";
								echo "</td>";
								echo "</tr>";

							}
						?>
					</tbody>
				</table>

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
						   			$link = $link."<li class='active' id='li-pagination'><a href = 'index.php?page=$j'> $j </a></li>";  	
						   		}
						   		else
						   		{
						   			$link = $link."<li id='li-pagination'><a href = 'phong.php?page=$j'> $j </a></li>"; 	
						   		}
						   		   
						   	}    
						   	echo $link; 	     
						   		
						}
						?>
					</ul>
				</div>
			</div>
			<button class="btn pull-right" style="border-radius: 10%">Thêm Dữ Liệu</button>

		</div>
		
	<div class="hr"></div>
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
				Coppyright &copy 2018 | Nguyen Thu Tuyet | Ngo Thi Ngoc Diem
			</div>
		</div>
	</div>
</body>
</html>