<?php require_once("cann.php");
      require_once("sexx2.php"); 

  $genap = 'genap.php';
  $afm = 'appb.php';





if ($uplev1!="" AND $upjamb!="" AND $upbcert!="") {$inserty= mysqli_query($conn, "UPDATE applicants SET oppyes = 1 WHERE emal = '$mymal'"); 
   }
 
?>

<!DOCTYPE html>
<html lang="en">
    
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <meta name="description" content="Smarthr - Bootstrap Admin Template">
		<meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
        <meta name="author" content="Dreamguys - Bootstrap Admin Template">
        <meta name="robots" content="noindex, nofollow">
        <title>Upload credentials <?php echo $fully; ?></title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" href="../webadmin/inc/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="assets/css/line-awesome.min.css">
		
		<!-- Select2 CSS -->
		<link rel="stylesheet" href="assets/css/select2.min.css">
		
		<!-- Datetimepicker CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <script type="text/javascript" src="jquery.js"></script>
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
    </head>
    <body>
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			 <?php require_once('hedad2.php');?>
			<!-- /Header -->
			
			<!-- Sidebar -->
              <?php require_once('siderd2.php');?>
			<!-- Page Wrapper -->
            <div class="page-wrapper">
			
				<!-- Page Content -->
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row align-items-center">
							<div class="col">
								<h3 class="page-title">Upload credentials</h3>
								 
							</div>
							 
						</div>
					</div>
					<!-- /Page Header -->
					
				  	<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table mb-0">
									<thead>
										<tr>
											<th>S/N</th>
											<th>File type</th>
											<th>Upload status</th>
											<th>Action</th>
										 
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>O level result (first sitting)</td>
											 <td><span class="badge bg-inverse-<?php if ($uplev1 !=""){echo 'success'; $rpp1 = 'Uploaded';} else{ echo 'danger'; $rpp1 = 'Not uploaded';}?>"><?php echo $rpp1; ?></span></td>
											<td><a href="#" class="btn btn-info" data-toggle="modal" data-target="#olev1"><i class="fa fa-upload"></i> Upload or replace</a></td>
											 
										</tr>
										<tr>
											<td>2</td>
											<td>JAMB result</td>
										    <td><span class="badge bg-inverse-<?php if ($upjamb !=""){echo 'success'; $rpp2 = 'Uploaded';}else{ echo "danger"; $rpp2 = 'Not uploaded';}?>"><?php echo $rpp2; ?></span></td>
										<td><a href="#" class="btn btn-info" data-toggle="modal" data-target="#jmb"><i class="fa fa-upload"></i> Upload or replace</a></td>
											 
										</tr>

										<tr>
											<td>3</td>
										     <td>Birth certificate</td>
											 <td><span class="badge bg-inverse-<?php if ($upbcert !=""){echo 'success'; $rpp3 = 'Uploaded';}else{echo "danger"; $rpp3 = 'Not uploaded';}?>"><?php echo $rpp3; ?></span></td>
											<td><a href="#" class="btn btn-info" data-toggle="modal" data-target="#bcert"><i class="fa fa-upload"></i> Upload or replace</a></td>
											 
										</tr>

										<tr>
											<td>4</td>
											<td>O level result (second sitting)</td>
											 <td><span class="badge bg-inverse-<?php if ($uplev2 !=""){echo 'success'; $rpp4 = 'Uploaded';}else{echo "danger"; $rpp4 = 'Not uploaded';}?>"><?php echo $rpp4; ?></span></td>
											<td><a href="#" class="btn btn-info" data-toggle="modal" data-target="#olev2"><i class="fa fa-upload"></i> Upload or replace</a></td>
										</tr>


									</tbody>
								</table>
							</div>
						</div>
					</div>
                </div>
				<!-- /Page Content -->

				  <div class="row">
				  	<div class="col-md-12">
										  <div class="uploaded-box">
										  	<h2>O level result (first sitting)</h2>
												<div class="uploaded-img">
												 <img width="500px" src="olev/<?php echo $uplev1;?>" class="img-fluid" alt="">
												</div>
										 </div>
				  </div>
				</div>


				    <div class="row"> <div class="col-md-12">
										  <div class="uploaded-box">
										  	<h2>JAMB result</h2>
												<div class="uploaded-img">
												 <img width="500px" src="jmb/<?php echo $upjamb;?>" class="img-fluid" alt="">
												</div>
										 </div>
				  </div></div>

				      <div class="row"> <div class="col-md-12">
										  <div class="uploaded-box">
										  	<h2>Birth certificate</h2>
												<div class="uploaded-img">
												 <img width="500px" src="oda/<?php echo $upbcert;?>" class="img-fluid" alt="">
												</div>
										 </div>
				  </div></div>

				     <div class="row"><div class="col-md-12">
										  <div class="uploaded-box">
										  	<h2>O level result (second sitting)</h2>
												<div class="uploaded-img">
												 <img width="500px" src="olev/<?php echo $uplev2;?>" class="img-fluid" alt="">
												</div>
										 </div>
				  </div></div>
				 

				 

					<!-- Add Role Modal -->
				<div id="olev1" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Upload O level result (first sitting)</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form method="post" action="uplev1.php" enctype="multipart/form-data">
									<div class="form-group">
									 <label>Select file (png, jpg or jpeg format allowed) <span class="text-danger">*</span></label>
										<input name="foto" class="form-control" type="file" required>
									</div>
									<div class="submit-section">
										<button  type="submit" name="submita" class="btn btn-info submit-btn">Upload now</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Add Role Modal -->

					<!-- Add Role Modal -->
				<div id="jmb" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Upload JAMB result</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form method="post" action="upjamb.php" enctype="multipart/form-data">
									<div class="form-group">
									 <label>Select file (png, jpg or jpeg format allowed) <span class="text-danger">*</span></label>
										<input name="foto" class="form-control" type="file" required>
									</div>
									<div class="submit-section">
										<button  type="submit" name="submitb" class="btn btn-info submit-btn">Upload now</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Add Role Modal -->

					<!-- Add Role Modal -->
				<div id="bcert" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Upload birth certificate</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form method="post" action="bcert.php" enctype="multipart/form-data">
									<div class="form-group">
									 <label>Select file (png, jpg or jpeg format allowed) <span class="text-danger">*</span></label>
										<input name="foto" class="form-control" type="file" required>
									</div>
									<div class="submit-section">
										<button  type="submit" name="submitc" class="btn btn-info submit-btn">Upload now</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Add Role Modal -->

					<!-- Add Role Modal -->
				<div id="olev2" class="modal custom-modal fade" role="dialog">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-header">
							 <h5 class="modal-title">Upload O level result (second sitting)</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form method="post" action="uplev2.php" enctype="multipart/form-data">
									<div class="form-group">
									 <label>Select file (png, jpg or jpeg format allowed) <span class="text-danger">*</span></label>
										<input name="foto" class="form-control" type="file" required>
									</div>
									<div class="submit-section">
										<button  type="submit" name="submitd" class="btn btn-info submit-btn">Upload now</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- /Add Role Modal -->

				 
            </div>


            
			<!-- /Page Wrapper -->
			
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.2.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
		<script src="assets/js/jquery.slimscroll.min.js"></script>
		
		<!-- Slimscroll JS -->
		<script src="assets/js/select2.min.js"></script>
		
		<!-- Datetimepicker JS -->
		<script src="assets/js/moment.min.js"></script>
		<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/app.js"></script>

    </body>

</html>