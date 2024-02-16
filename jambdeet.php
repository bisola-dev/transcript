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


  
   $jsubscor12 = mysqli_real_escape_string($conn, strip_tags($_POST['jsubscor1']));

   $jambsub22 = mysqli_real_escape_string($conn, strip_tags($_POST['jambsub2']));
   $jsubscor22 = mysqli_real_escape_string($conn, strip_tags($_POST['jsubscor2']));

   $jambsub32 = mysqli_real_escape_string($conn, strip_tags($_POST['jambsub3']));
   $jsubscor32 = mysqli_real_escape_string($conn, strip_tags($_POST['jsubscor3']));

   $jambsub42 = mysqli_real_escape_string($conn, strip_tags($_POST['jambsub4']));
   $jsubscor42 = mysqli_real_escape_string($conn, strip_tags($_POST['jsubscor4']));
  

 if ($jsubscor12!= "" || $jambsub22!= "" || $jsubscor22!= "" || $jambsub32 != ""|| $jsubscor32!= ""|| $jambsub42!=""||$jsubscor42!="") {

 $kin=mysqli_query($conn, "UPDATE applicants SET jsubscor1='$jsubscor12', jambsub2='$jambsub22', jsubscor2='$jsubscor22', jambsub3='$jambsub32', jsubscor3='$jsubscor32', jambsub4='$jambsub42', jsubscor4='$jsubscor42' WHERE id=$id1");

  $checkings = mysqli_query($conn, "UPDATE applicants SET jambdeet = 1 WHERE emal = '$mymal'"); 
            
    echo'<script type="text/javascript">
        alert("Congratulations! you have successfully updated jamb details . You can upload your credentials .")
        window.location.href="credeup.php";
        </script>';
       
   }


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
 
										<tr>
											<td><a href="#">1</a></td>     
								<td>  
                             <input type="text"  id="username" class="form-control" value="<?php echo $jambsub1;?>" name="jambsub1" disabled >    
								 </td>


								<td> 
                                   <input type="text"  value="<?php echo $jsubscor1;?>" maxlength="3" id="username" class="form-control" name="jsubscor1" required>
                                  </td></tr>

                                        <tr>
                               	<td><a href="#">2</a></td>     
                                  <td> 
							   	<select class="form-control" name="jambsub2" required>
											 <option value="<?php echo $jambsub2;?>">
											 	<?php if (is_null($jambsub2)) {echo '-- Select subject now--';} else {echo $jambsub2;} ?>
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
                                   <input type="text"  value="<?php echo $jsubscor2;?>" maxlength="3" id="username" class="form-control" name="jsubscor2" required>
											 </td></tr>
											  
										<tr>
											<td><a href="#">3</a></td>  
                           <td> 
							   	<select class="form-control" name="jambsub3" required>
											 <option value="<?php echo $jambsub3;?>">
											 	<?php if (is_null($jambsub3)) {echo '-- Select subject now--';} else {echo $jambsub3;} ?>
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
                                   <input type="text" value="<?php echo $jsubscor3;?>" maxlength="3"  id="username" class="form-control" name="jsubscor3" required>
                                  
											 </td>

								<tr>
											<td><a href="#">4</a></td>  
                             <td> 
							   	<select class="form-control" name="jambsub4" required>
											 <option value="<?php echo $jambsub2;?>">
											 	<?php if (is_null($jambsub4)) {echo '-- Select subject now--';} else {echo $jambsub4;} ?>
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
                                   <input type="text"  value="<?php echo $jsubscor4;?>"  maxlength="3" id="username" class="form-control" name="jsubscor4" required>
                                  
											 </td>
											</tr>
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