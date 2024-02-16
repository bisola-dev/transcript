<?php require_once("cann.php");
      require_once("sexx2.php"); 

  $genap = 'genap.php';
  $afm = 'appb.php';
    // check form payment
       if ($pafm1 == 0) { echo '<script type="text/javascript">
       alert("You are yet to pay for the Application Form. Please proceed to make online payment now.")
       window.location.href="'.$payform.'";
        </script>'; }


     if ($appid1 == "") { echo '<script type="text/javascript">
       alert("Your Application Number is being generated.")
       window.location.href="'.$genap.'";
        </script>'; }

    if ($subform1 == 0) { echo '<script type="text/javascript">
       alert("You can now proceed to fill the Application form.")
       window.location.href="'.$afm.'";
        </script>'; }

    //$delec = 'dashboardapp.php';

  if (isset($_POST['cloki'])){


   $grid1 = mysqli_real_escape_string($conn, strip_tags($_POST['grid1']));
   $subj1 = mysqli_real_escape_string($conn, strip_tags($_POST['subj1']));
   $grdd1 = mysqli_real_escape_string($conn, strip_tags($_POST['grdd1']));
   $exmm1 = mysqli_real_escape_string($conn, strip_tags($_POST['exmm1']));

   $grid2 = mysqli_real_escape_string($conn, strip_tags($_POST['grid2']));
   $subj2 = mysqli_real_escape_string($conn, strip_tags($_POST['subj2']));
   $grdd2 = mysqli_real_escape_string($conn, strip_tags($_POST['grdd2']));
   $exmm2 = mysqli_real_escape_string($conn, strip_tags($_POST['exmm2']));

   $grid3 = mysqli_real_escape_string($conn, strip_tags($_POST['grid3']));
   $subj3 = mysqli_real_escape_string($conn, strip_tags($_POST['subj3']));
   $grdd3 = mysqli_real_escape_string($conn, strip_tags($_POST['grdd3']));
   $exmm3 = mysqli_real_escape_string($conn, strip_tags($_POST['exmm3']));

   $grid4 = mysqli_real_escape_string($conn, strip_tags($_POST['grid4']));
   $subj4 = mysqli_real_escape_string($conn, strip_tags($_POST['subj4']));
   $grdd4 = mysqli_real_escape_string($conn, strip_tags($_POST['grdd4']));
   $exmm4 = mysqli_real_escape_string($conn, strip_tags($_POST['exmm4']));

   
 if ($subj1 != ""  || $grdd1 != "" || $exmm1 != "") {
  $mysqb = mysqli_query($conn, "UPDATE ograde SET subj = '$subj1', grdd = '$grdd1', 
  	exmm = '$exmm1', dreg = '$date_reg' WHERE id = $grid1"); }

    $mysqb = mysqli_query($conn, "UPDATE ograde SET subj = '$subj2', grdd = '$grdd2', 
  	exmm = '$exmm2', dreg = '$date_reg' WHERE id = $grid2"); 

  	  $mysqb = mysqli_query($conn, "UPDATE ograde SET subj = '$subj3', grdd = '$grdd3', 
  	exmm = '$exmm3', dreg = '$date_reg' WHERE id = $grid3"); 

  	    $mysqb = mysqli_query($conn, "UPDATE ograde SET subj = '$subj4', grdd = '$grdd4', 
  	exmm = '$exmm4', dreg = '$date_reg' WHERE id = $grid4"); 

  	  

    $checkings = mysqli_query($conn, "UPDATE applicants SET olevyes = 1 WHERE emal = '$mymal'"); 
            
    echo'<script type="text/javascript">
        alert("Congratulations! you have successfully updated jamb details . You can upload your credentials .")
        window.location.href="credeup.php";
        </script>';
        //header("Location:$delec"); 
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
        <title>Update Jamb details <?php echo $fully; ?></title>
		
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
								<h3 class="page-title">Update your Jamb details </h3>
								 
							</div>
							 
						</div>
					</div>
					<!-- /Page Header -->
					 
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								
					 <form method="post" action="">
								<table class="table table-striped custom-table mb-0">
									<thead>
										<tr>
											<th>S/N</th>
											<th>Subject</th>
											<th>Score</th>
											
											 
										</tr>
									</thead>
									<tbody>

	 <?php 
	     $resun = mysqli_query($conn, "SELECT * FROM aplicants WHERE appid = '$appid1'");

             while($get_info = mysqli_fetch_assoc($resun)){ // Start looping table row 
                                         $grid = $get_info['id'];
                                         $jambsub = $get_info['jambsub'];
                                         $jsubscor = $get_info['jsubscor'];
                                        

                                         $resun = mysqli_query($conn, "SELECT * FROM aplicants WHERE appid = '$appid1'");}
	    

	    while($get_info = mysqli_fetch_assoc($resun)){ // Start looping table row 
                                         $grid = $get_info['id'];
                                         $jambsub = $get_info['jambsub'];
                                         $jsubscor = $get_info['jsubscor'];
                                         $jambsub2 = $get_info['jambsub2'];
                                         $jsubscor2 = $get_info['jsubscor2'];
                                         $jambsub3 = $get_info['jambsub3'];
                                         $jsubscor3 = $get_info['jsubscor3'];
                                         $jambsub4 = $get_info['jambsub4'];
                                         $jsubscor4 = $get_info['jsubscor4'];
                                        
                                        
                              
                                       
                              ?>  

                               <input type="hidden" value="<?php echo $grid;?>" name="grid">
										<tr>
											<td><a href="#"><?php echo $grid; ?></a></td>                           

								<td> 
                                   <input type="text" value="Use of English" id="username" class="form-control" name="jambsub" disabled>
                                  
								 </td>


								<td> 
                                   <input type="text" value="<?php echo $jsubscor;?>" id="username" class="form-control" name="jsubscor">
                                  
											 </td>
											 <?php 
									
                              $kim = 1;
                              while ($kim < 5 ){
                            ?>



 <td> 
							   	<select class="form-control" name="jambsub<?php echo $kim;?>">
											 <option value="<?php echo $jambsub;?>">
											 	<?php if (is_null($jambsub)) {echo '-- Select subject now--';} else {echo $jambsub;} ?>
											 </option>

		 <?php $resuy = mysqli_query($conn, "SELECT * FROM subject ORDER BY subjects ASC");
               
             while($get_info = mysqli_fetch_assoc($resuy)){ // Start looping table row 
                                         $subjectss = $get_info['subjects'];
                                   ?>	 
											 <option value="<?php echo $subjectss; ?>"><?php echo $subjectss; ?></option>
											<?php } ?>
 
											 </select>
											 </td>
 
							 <td> 
                                   <input type="text" value="<?php echo $jsubscor;?>" id="username" class="form-control" name="jsubscor<?php echo $kim;?>">
                                  
											 </td>
											</tr>


						<?php $kim++;} }?>

				 
									</tbody>
								</table>

					 	<div class="col-sm-6 col-md-9">  
							<button type="submit" name="cloki" class="btn btn-primary submit-btn m-r-10">Update result</button>  
						</div>  
			</form>

							</div>
						</div>
					</div>
                </div>
				<!-- /Page Content -->
				
				 
			
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