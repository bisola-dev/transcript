<?php require_once("cann.php");
  require_once("choice.php");
  require_once("stud.php");

  try {
  if (isset($_GET['destadd']) && isset($_GET['id'])) {
    $Destinationaddress = $_GET['destadd'];
    $iD = $_GET['id'];
   
  }


  if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    $iD= $_POST['id'];
    $dest= $_POST['dest'];


 
    $noway2 = "SELECT * FROM [Transcript].[dbo].[Transcript_order] WHERE id=$iD";
    $fin=sqlsrv_query($conn,$noway2);
    while($rowz=sqlsrv_fetch_array($fin)){
        $stat=$rowz['status'];
        }

    if($stat == 1){   
    echo '<script type="text/javascript">
    alert("Sorry, you cant change the destination address, Payment for this request has beeen made")
    </script>';  
   }

   else{
    $loon=sqlsrv_query($conn, "UPDATE [Transcript].[dbo].[Transcript_order] SET destinationadd='$dest' WHERE id=$iD");
     echo '<script type="text/javascript">
     alert("Destination address successfully updated!")
     window.location.href="vieword.php";
     </script>';
  }
}

} catch (Exception $e) {
    // Handle the exception here
    echo "An error occurred: " . $e->getMessage();
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
        <title>Update Email </title>
		
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
              <?php require_once('siderd.php');?>
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
			
				<!-- Page Content -->
                <div class="content container-fluid">
				
					<!-- Page Header -->
				
							<div class="col-sm-12">
								<h3 class="page-title"> Update Destination Address</h3>
								<ul class="breadcrumb">
					 				 
									<li class="breadcrumb-item active"></li>
								</ul>
							</div>
					
					<!-- /Page Header -->
				
                       <form method="post" action="" >
							<div class="col-md-12">
								<div class="row">
									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label> Destination address<span class="text-danger"></span></label>
                                            <input type="hidden" maxlength="200" name="id" value = "<?php echo $iD;?>" class="form-control">
											<input type="text" maxlength="200" name="dest" value = "<?php echo $Destinationaddress;?>" class="form-control">
										</div>
								

								
									
									<div class="submit-section">
									<button name ="submit" type="submit" class="btn btn-success submit-btn">Update</button>
									</div>
								  </form>

						</div>
					</div>
                    </div>
                  

                 
        <!-- /Main Wrapper -->
        
        <!-- jQuery -->
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        
        <!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        
        <!-- Slimscroll JS -->
        <script src="assets/js/jquery.slimscroll.min.js"></script>
        
        <!-- Select2 JS -->
        <script src="assets/js/select2.min.js"></script>
        
        <!-- Datetimepicker JS -->
        <script src="assets/js/moment.min.js"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
        
        <!-- Custom JS -->
      	<script src="assets/js/app.js"></script>
    </body>

</html>