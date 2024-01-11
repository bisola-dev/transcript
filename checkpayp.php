<?php
require_once("cann.php");
    require_once("paron.php");  








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
        <title>see details of registered children </title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="assets/css/line-awesome.min.css">
		
		<!-- Datatable CSS -->
		<link rel="stylesheet" href="assets/css/dataTables.bootstrap4.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
    </head>
    <body>
		<!-- Main Wrapper -->
         <div class="main-wrapper">
		
			 <?php require_once('hedad3.php');?>
			<!-- /Header -->
			
		  <!-- Sidebar -->
              <?php require_once('siderd3.php');?>
      <!-- /Sidebar -->

			<!-- Page Wrapper -->
            <div class="page-wrapper">
			
				<!-- Page Content -->
                <div class="content container-fluid">
			
				<!-- Page Content -->
                <div class="content container-fluid">
             	<!-- Page Header -->
				<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
              
					<!-- /Page Header -->
					
					   

				<!-- /Page Content -->
        <div id="tableid">
       <div class="table-responsive">
                              <table id="dataTableExample1" class="table table-bordered table-striped table-hover">
                                 <thead>
                                    <tr class="info">
                                       <th>S/N</th>
                                       <th>classname</th>
                                       <th>Fullname</th>
                                       <th>Amount paid</th>
                                       <th>Session</th>
                                       <th>Term</th>
                                       <th>Purpose of payment</th>
                                      
      
                                    </tr>
                                 </thead>
                                 <tbody>

 <?php 
                          
                          
       $feyi='paylogg'.$schoolid;

    $dkny = mysqli_query($conn, "SELECT * FROM $feyi WHERE fulln = '$fulln'");
  $num_rows = mysqli_num_rows($dkny);
  if (mysqli_num_rows($dkny)==0){ 
      echo '<script type="text/javascript">
        alert("No payment has been made yet.");
        </script>';} 
        else{

              $count = 1;  
      while($get_info3 = mysqli_fetch_assoc($dkny)){ // Start looping table row 
                                         $clown = $get_info3['classname'];
                                         $fullny = $get_info3['fulln'];
                                         $amt=$get_info3['amt'];
                                         $sess=$get_info3['sess'];
                                         $pos=$get_info3['pos'];
                                          $tems=$get_info3['tems'];
        
            
                             ?>
                                        
                                    <tr>
                                     
                                       <td><?php echo $count;?></td>
                                       <td><?php echo $clown;?></td>
                                       <td><?php echo $fullny;?></td>
                                       <td><?php echo $amt;?></td>
                                       <td><?php echo $sess;?></td>
                                       <td><?php echo $tems;?></td>
                                       <td><?php echo $pos;?></td>
                                       
                                        

                       
                    </td>

						</div>
					</div> 

                                    </tr>

                                    <?php $count++;} }


       
                                    ?> 
                                 </tbody>

                                 
                      </table> 
                    </div>
</div>

</div>
</div>
</div>
<input type="button" onclick="printDiv('tableid')" value="print data!" />
</div>
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
		
		<!-- Datatable JS -->
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/dataTables.bootstrap4.min.js"></script>

		<!-- Custom JS -->
		  
    </body>


</html>