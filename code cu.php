<?php
	require 'app/db.php';
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>



	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Login</h4>
				</div>
				<div class="modal-body">
					<form action="#" method="POST" class="form-horizontal" role="form">
          		<!-- <div class="form-group">
          			<legend>Form title</legend>
          		</div> -->

          		<div class="form-group">
          			<label for="username" class="control-label col-sm-4">User name:</label>
          			<div class="col-sm-8">
          				<input type="text" name="username" id="username" class="form-control" placeholder="Enter user name..." onkeyup="">
          				<span class="help-block"></span>
          			</div>
          		</div>
          		<div class="form-group">
          			<label for="password" class="control-label col-sm-4">Password:</label>
          			<div class="col-sm-8">
          				<input type="password" name="password" id="password" class="form-control" placeholder="Enter password..." onkeyup="">
          				<span class="help-block"></span>
          			</div>
          		</div>

          		<div class="form-group">
          			<div class="col-sm-10 col-sm-offset-2">
          				<button type="submit" class="btn btn-primary">Submit</button>
          			</div>
          		</div>
          	</form>
          </div>
          <div class="modal-footer">
          	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
      </div>
      
  </div>
</div>



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
						<!-- <li class="active"><a href="#">Link</a></li>
						-->						<!-- <li><a href="set_room.html">Set Room</a></li> -->
					</ul>
					<!-- <form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form> -->
					<ul class="nav navbar-nav navbar-right">
						<!-- <li><a href="#">Buy</a></li>
						<li><a href="#">Rent</a></li>
						<li><a href="#">Sell</a></li> -->
						
						<li><a href="#">About</a></li>
						<li><a href="#">Contact</a></li>
						<li class="login_btn" data-toggle="modal" data-target="#myModal"><a href="#">Login</a></li>
						<!-- <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li><a href="#">Separated link</a></li>
							</ul>
						</li> -->
						
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

			<!-- <div class="advanced_search">
				<div class="wrapper">
					<span class="arrow"></span>
					<form action="#" method="post">
						<div class="search_fields">
							<input type="text" class="float" id="check_in_date" name="check_in_date" placeholder="Check In Date"  autocomplete="off">

							<hr class="field_sep float"/>

							<input type="text" class="float" id="check_out_date" name="check_out_date" placeholder="Check Out Date"  autocomplete="off">
						</div>
						<div class="search_fields">
							<input type="text" class="float" id="min_price" name="min_price" placeholder="Min. Price"  autocomplete="off">

							<hr class="field_sep float"/>

							<input type="text" class="float" id="max_price" name="max_price" placeholder="Max. price"  autocomplete="off">
						</div>
						<input type="text" id="keywords" name="keywords" placeholder="Keywords"  autocomplete="off">
						<input type="submit" id="submit_search" name="submit_search"/>
					</form>
				</div>
		</div>
	-->

	<div class="product">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<?php
					$sql = "SELECT IDPhong, TenPhong, LoaiPhong, Gia, MoTa, HinhDaiDien FROM phong";
					$result = $conn->query($sql);

					if ($result->num_rows > 0) {

					while ($row = $result->fetch_assoc()) // dùng hàm mysqli_fetch_assoc để lấy từng dòng trong kết quả ra.
					{
						
					
					?>
					<a href="hotel.php"><img src="<?php echo 'public/images/'.$row['HinhDaiDien']; ?>" alt="property_1.2" align="_bank" class="img-responsive"></a>
					<div class="content">
						<p>
							<a href="hotel.php">
								<?php echo $row["TenPhong"]?>
							</a>
						</p>
						<h5>
							<?php echo $row["Gia"]?>
							
						</h5>
						<span><?php echo substr($row["MoTa"], 0, 80); ?></span>
					</div>

				</div>
				<!-- <div class="col-md-4">
					<img src="public/images/property_2.1.jpg" alt="property_2.1" class="img-responsive">
					<div class="content">
						<p>
							<a href="hotel.php">
								Fuisque dictum tortor at purus libero
							</a>
						</p>
						<h5>
							2 kitchens, 2 bed, 2 bath...
							<span>(288ftsq)</span>
						</h5>
					</div>

				</div>
				<div class="col-md-4">
					<img src="public/images/property_1.1.2.jpg" alt="" class="img-responsive">
					<div class="content">
						<p>
							<a href="hotel.html">
								Fuisque dictum tortor at purus libero
							</a>
						</p>
						<h5>
							2 kitchens, 2 bed, 2 bath...
							<span>(288ftsq)</span>
						</h5>
					</div>

				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<img src="public/images/property_1.2.2.jpg" alt="" class="img-responsive">
					<div class="content">
						<p>
							<a href="#">
								Fuisque dictum tortor at purus libero
							</a>
						</p>
						<h5>
							2 kitchens, 2 bed, 2 bath...
							<span>(288ftsq)</span>
						</h5>
					</div>

				</div>
				<div class="col-md-4">
					<img src="public/images/property_1.jpg" alt="" class="img-responsive">
					<div class="content">
						<p>
							<a href="#">
								Fuisque dictum tortor at purus libero
							</a>
						</p>
						<h5>
							2 kitchens, 2 bed, 2 bath...
							<span>(288ftsq)</span>
						</h5>
					</div>

				</div>
				<div class="col-md-4">
					<img src="public/images/property_1.jpg" alt="" class="img-responsive">
					<div class="content">
						<p>
							<a href="#">
								Fuisque dictum tortor at purus libero
							</a>
						</p>
						<h5>
							2 kitchens, 2 bed, 2 bath...
							<span>(288ftsq)</span>
						</h5>
					</div>

				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<img src="public/images/property_1.jpg" alt="" class="img-responsive">
					<div class="content">
						<p>
							<a href="#">
								Fuisque dictum tortor at purus libero
							</a>
						</p>
						<h5>
							2 kitchens, 2 bed, 2 bath...
							<span>(288ftsq)</span>
						</h5>
					</div>

				</div>
				<div class="col-md-4">
					<img src="public/images/property_1.jpg" alt="" class="img-responsive">
					<div class="content">
						<p>
							<a href="#">
								Fuisque dictum tortor at purus libero
							</a>
						</p>
						<h5>
							2 kitchens, 2 bed, 2 bath...
							<span>(288ftsq)</span>
						</h5>
					</div>

				</div>
				<div class="col-md-4">
					<img src="public/images/property_1.jpg" alt="" class="img-responsive">
					<div class="content">
						<p>
							<a href="#">
								Fuisque dictum tortor at purus libero
							</a>
						</p>
						<h5>
							2 kitchens, 2 bed, 2 bath...
							<span>(288ftsq)</span>
						</h5>
					</div>

				</div>
			</div> -->
			<div class="button-page">
				<a href="#" class="btn-page">View More Listings</a>
			</div>
		</div>
		<?php

			}
			} else {
			    echo "0 results";
			}
			mysqli_close($conn); 
		?>
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
				Coppyright &copy 2018 | Nguyen Thu Tuyet
			</div>
		</div>
	</div>
</body>
</html>