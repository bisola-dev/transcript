<?php require_once("cann.php");
      require_once("trois2.php"); 

$feyi='paylogg'.$schid;


if(isset($_POST["delete"])){
 $crease=trim(strip_tags($_POST['crease']));
 

$sql = "DELETE FROM $feyi WHERE id  IN ($crease)";

 if($conn->query($sql) === TRUE){ 
  echo '<script type="text/javascript">
        alert("payment log  successfully deleted.");
        </script>';
       

} else {
    echo "Error deleting record: " . $mysqli->error; 
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
        <title>Create Class <?php echo $adminfulln;?> </title>
		
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
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">View Payments for <?php echo $schname;?>.</h3>
								<ul class="breadcrumb">
					 				 
									<li class="breadcrumb-item active"></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
							<form method="post" action="" >
							<div class="col-md-12">
							 
								<div class="row">
									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Input class  <span class="text-danger"></span></label>
												<input name="classname" type="text" maxlength="200"  class="form-control" required>
										</div>
                    
                  <div class="submit-section">
										<button  type="submit" name="submit" class="btn btn-info submit-btn">Check Payment</button>
									</div>
                </div>
              </div>
								</form>
		               

      <hr>
			
				       <div class="table-responsive">
                              <table id="dataTableExample1" class="table table-bordered table-striped table-hover">
                                 <thead>
                                    <tr class="info">
                                       <th>S/N</th>
                                       <th>Fullname</th>
                                       <th>Classname</th>
                                       <th>Amount</th>
                                       <th>Session</th>
                                       <th>Term</th>
                                       <th>Purpose of Payment</th>
                                       <th>Date of log Payment</th>
                                       <th>Delete</th>
                                       
                                       
                                       
                                    </tr>
                                 </thead>
                                 <tbody>

 <?php 

if (isset($_POST['submit'])){
   $classy = mysqli_real_escape_string($conn, strip_tags($_POST['classname']));

$tracy = mysqli_query($conn,"SELECT * from $feyi where classname='$classy'");
$num_rows = mysqli_num_rows($tracy);

if (mysqli_num_rows($tracy)==0){ 
      echo '<script type="text/javascript">
        alert("No payment log for this class yet.");
        </script>';}  
else{
$bisola = mysqli_query($conn, "SELECT * FROM $feyi WHERE classname='$classy'");
                                    $count = 1;
                                    while ($row = mysqli_fetch_assoc($bisola)) {
                                      $payid = $row['id'];
                                      $classsid = $row['classid'];
                                      $classnamee=$row['classname'];
                                      $fullnn=$row['fulln'];
                                      $ammt=$row['amt'];
                                      $sesss=$row['sess'];
                                      $temms=$row['tems'];
                                      $poss=$row['pos'];
                                      $dre=$row['dreg'];
        ?>
                                       
                                    <tr>
                                       <td><?php echo $count;?></td>
                                       <td><?php echo $fullnn;?></td>
                                       <td><?php echo $classnamee;?></td>
                                       <td><?php echo $ammt;?></td>
                                       <td><?php echo $sesss;?></td>
                                       <td><?php echo $temms;?></td>
                                       <td><?php echo $poss;?></td>
                                       <td><?php echo $dre;?></td>
           

                                   <td><form method="POST" action="" >
                                   <input type="hidden"  value= "<?php echo $payid;?>" name="crease">
                               <p><input type="submit" name="delete" value="delete paylog"> </p></form></td>
 
                
                 
            
            </div>
          </div>

                                          
                                      
                                    </tr>
                                    <?php $count++;} } }?> 
                                 </tbody>
                              </table>       
                           </div>
      </div>

                        </div>
                     </div>
                  </div>
               </div>
            </section>
      </div>
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
		
		<!-- Select2 JS -->
		<script src="assets/js/select2.min.js"></script>
		
		<!-- Datetimepicker JS -->
		<script src="assets/js/moment.min.js"></script>
		<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/app.js"></script>
		
    </body>

</html>