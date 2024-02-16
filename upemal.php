<?php 
    require_once("canny.php");
    require_once("choice.php");

    try {

    if ($_SERVER['REQUEST_METHOD'] == 'POST'){

        $nemal= $_POST['nemal'];
       $mike = "UPDATE [EBPORTAL].[dbo].[Biodata] SET Email ='$nemal' WHERE Matricnum='$semat'";
        
        $skillzx = sqlsrv_query($conn, $mike);
     
        echo'<script type="text/javascript">
            alert("New email successfully updated.")
            </script>';   
       }

       $chin= "SELECT * FROM [EBPORTAL].[dbo].[Biodata] WHERE Matricnum='$semat'";
       $kin=sqlsrv_query($conn,$chin);
       $hjz = sqlsrv_fetch_array($kin, SQLSRV_FETCH_ASSOC);
       if ($hjz <= 0){echo "No records";}  
       else{
        $emally=  $hjz['Email'];
   
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
								<h3 class="page-title"> Update Email</h3>
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
											<label> Current Email<span class="text-danger"></span></label>
												<input type="text" maxlength="200"  value = "<?php echo $emally;?>" class="form-control" disabled>
										</div>
									</div>

								
									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>New Email<span class="text-danger"></span></label>
								
                                            <input name="nemal" type="text" maxlength="200"  class="form-control" required>
										</div>
										</div>
                                         </div>		

									<div class="submit-section">
									<button name ="submit" type="submit" class="btn btn-success submit-btn">Update</button>
									</div>
								  </form>

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
        <script>
    $(document).ready(function(){
      $('.upp').on('click', function(){
        //$('#dataTableExample1 tbody').on('click', 'tr', function(){
        $('#checck').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children('td').map(function(){
        return $(this).text();
        }).get();
        console.log(data);
        //$('#adminid2').val(data[0]);
        $('#email3').val(data[1]);
        $('#request3').val(data[2]);
        $('#adminid2').val(data[3]);
       
        });
    
    });

	  $(document).ready(function(){
      $('.ria').on('click', function(){
        //$('#dataTableExample1 tbody').on('click', 'tr', function(){
        $('#id01').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children('td').map(function(){
        return $(this).text();
        }).get();
        console.log(data);    
        $('#updi').val(data[3]);
       
	});
});

    
  </script>
    </body>

</html>