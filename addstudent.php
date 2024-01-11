<?php //require_once("cann.php");
      //require_once("trois2.php"); 


      
 $schidd=($_GET['schoolid']);
$clasm=($_GET['id']);
$clast=($_GET['classname']);
$tiyi=($_GET['tiyi']);

$jimmy = '12345678';
$ribb='kokoro'.$jimmy;
$jim=md5($ribb);

    if (isset($_POST['clickin'])){
   $sname = mysqli_real_escape_string($conn, strip_tags($_POST['sname']));
   $onames = mysqli_real_escape_string($conn, strip_tags($_POST['onames']));
   $addy = mysqli_real_escape_string($conn, strip_tags($_POST['addy']));
   $dob = mysqli_real_escape_string($conn, strip_tags($_POST['dob']));
   $parentname = mysqli_real_escape_string($conn, strip_tags($_POST['parentname']));
   $parentno = mysqli_real_escape_string($conn, strip_tags($_POST['parentno']));
   $parentemail = mysqli_real_escape_string($conn, strip_tags($_POST['parentemail']));
   

 $queryy = mysqli_query($conn, "SELECT * FROM $tiyi where sname='$sname' AND onames='$onames'");
 $komo = mysqli_num_rows($queryy);
 
  if($sname == "" || $onames == "" || $parentno == "" || $parentemail == "" || $addy == "" ||$parentname== "" ) {
 echo '<script type ="text/javascript">
 alert("please do not submit empty form.")
 </script>';}
 

 else if(!filter_var($parentemail,FILTER_VALIDATE_EMAIL)){
       echo '<script type="text/javascript">
        alert("The email provided is invalid, please retry.");
        </script>';
           
    }
          
  else if(strlen($parentno)<11){
                 echo'<script type="text/javascript">
        alert("The phone number is invalid, please retry.");
        </script>';

      }

else if ($komo == 1){
      echo'<script type="text/javascript">
     alert("Sorry, this student details already exist.");
        </script>'; }
      
     else{

   $mysqlu = mysqli_query($conn, "INSERT INTO $tiyi (classid, classname,sname, onames, dob, parentno, parentemail, addy, parentname, parentpass) VALUES ($clasm, '$clast', '$sname', '$onames', '$dob', '$parentno', '$parentemail','$addy', '$parentname', '$jim')"); 
            
  echo'<script type="text/javascript"> 
    alert("Student successfully registered.");

      </script>';
   }
}





 if (isset($_POST['uppy'])) {
   $upid2= mysqli_real_escape_string($conn, strip_tags($_POST['upid'])); 
   $sname3= mysqli_real_escape_string($conn, strip_tags($_POST['sname3'])); 
   $onames3= mysqli_real_escape_string($conn, strip_tags($_POST['onames3'])); 
   $dob3= mysqli_real_escape_string($conn, strip_tags($_POST['dob3'])); 
   $addy3= mysqli_real_escape_string($conn, strip_tags($_POST['addy3'])); 
   $parentname3= mysqli_real_escape_string($conn, strip_tags($_POST['parentname3'])); 
   $parentno3= mysqli_real_escape_string($conn, strip_tags($_POST['parentno3'])); 
   $parentemail3= mysqli_real_escape_string($conn, strip_tags($_POST['parentemail3'])); 
    

  $skillzx = mysqli_query($conn, "UPDATE $tiyi SET sname='$sname3', onames='$onames3',dob='$dob3',addy='$addy3',parentname='$parentname3',parentno='$parentno3', parentemail='$parentemail3' WHERE id=$upid2");
  
    echo'<script type="text/javascript">
        alert("Congratulations! you have successfully updated this student details.")
        </script>';
       
   }


if(isset($_POST["delete"])){
 $crease=trim(strip_tags($_POST['crease']));
 

$sql = "DELETE FROM $tiyi WHERE id  IN ($crease)";

 if($conn->query($sql) === TRUE){ 
  echo $mes='<script type="text/javascript">
        alert("profile details successfully deleted.");
        </script>';
         $ms = "profile details successfully deleted. ";

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
        <title>Add new member</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
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


 <?php
$schidd=($_GET['schoolid']);
$clasm=($_GET['id']);
$clast=($_GET['classname']);
$tiyi=($_GET['tiyi']);?>

					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Add students singly  for <?php echo $clast;?></h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="dashboardad.php">Dashboard</a></li>
									<li class="breadcrumb-item active">fields with asteriks * are compulsory</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-md-12">
							<form action="" method="post">
								<div class="row">
									
									<div class="col-sm-6 col-md-3">
										<div class="form-group">
											<label>Surname <span class="text-danger">*</span></label>
												<input type="text" maxlength="30" name="sname" class="form-control" required>
										</div>
									</div>

									<div class="col-sm-6 col-md-3">
										<div class="form-group">
										  <label>Other names <span class="text-danger">*</span></label>
												<input type="text" name="onames" maxlength="60" class="form-control" required>

									</div>
									</div>


									<div class="col-sm-6 col-md-3">
										<div class="form-group">
											<label>Address<span class="text-danger">*</span></label>
											   <input class="form-control" type="text"
												name="addy"  required>
										</div>
									</div>


									<div class="col-sm-6 col-md-3">
										<div class="form-group">
											<label>Date of birth<span class="text-danger">*</span></label>
											   <input class="form-control" type="date"
												name="dob"  required>
										</div>
									</div>


									<div class="col-sm-6 col-md-3">
										<div class="form-group">
										  <label>Parent name <span class="text-danger">*</span></label>
												<input type="text" name="parentname" maxlength="60" class="form-control" required>
										</div>
									</div>


									<div class="col-sm-6 col-md-3">
										<div class="form-group">
										  <label>Parent Phone number <span class="text-danger">*</span></label>
												<input type="tel" name="parentno" maxlength="18" class="form-control" required>
										</div>
									</div>
							
									 <div class="col-sm-6 col-md-3">
										<div class="form-group">
										 <label>Parent Email address <span class="text-danger">*</span></label>
												<input type="email" name="parentemail" class="form-control" required>
										</div>
									</div>

                                     </div>

								<div class="submit-section">
									<button type="submit" name="clickin" class="btn btn-primary submit-btn m-r-10">Submit</button>
									 
								</div>
							</form>

		   <div class="table-responsive">
                              <table id="dataTableExample1" class="table table-bordered table-striped table-hover">
                                 <thead>
                                    <tr class="info">
                                       <th>S/N</th>
                                       <th>Surname</th>
                                       <th>othernames</th>
                                       <th>Date of birth</th>
                                       <th>Address</th>
                                       <th>Parent Name</th>
                                       <th>Parent Phone</th>
                                       <th>Parent  Email</th>
                                       <th>Edit</th>
                                       <th>Delete</th>
                                      
                                       
                                       
                                    </tr>
                                 </thead>
                                 <tbody>

 <?php 
             $feyi = mysqli_query($conn, "SELECT * FROM $tiyi where classid=$clasm AND classname='$clast'");
                                      $count = 1;
                                      while ($row = mysqli_fetch_assoc($feyi)) {
                                       $upid= $row['id'];
                                       $sname= $row['sname'];
                                       $classr= $row['classid'];
                                       $onames=$row['onames'];
                                       $dob= $row['dob'];
                                       $addy=$row['addy'];
                                       $parentname= $row['parentname'];
                                       $parentno=$row['parentno'];
                                       $parentemail= $row['parentemail'];
                                       $classnam= $row['classname'];
                                       $fulln=$sname.''.$onames;
                                       
                             
            
                             ?>
                                       
                                    <tr>  
                                       <td style="display: none;"><?php echo $upid; ?></td>
                                       <td><?php echo $count;?></td>
                                       <td><?php echo $sname;?></td>
                                       <td><?php echo $onames?></td>
                                       <td><?php echo $dob;?></td>
                                       <td><?php echo $addy;?></td>
                                       <td><?php echo $parentname;?></td>
                                       <td><?php echo $parentno;?></td>
                                       <td><?php echo $parentemail;?></td>
                                       <td style="display: none;"><?php echo $classr; ?></td>
                                        <td style="display: none;"><?php echo $classname;?></td>

                                           <td class="text-right">
                                              <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item upp" href="#" data-toggle="modal" data-target=""><i class="fa fa-pencil m-r-5"></i> Edit</a></div>
                                                    </div>
                                                </td>

                                   

                                        <td> <form method="post" action="">  
                              <input type="hidden" name="crease" value="<?php echo $upid;?>"> 
                        <button type ="submit" name="delete" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to DELETE?');"><i class="fa fa-trash-o"></i></button>
                    </form>
 
                    </td>

								 
						
						</div>
					</div>    
                                    </tr>
                                    <?php $count++;} ?> 
                                 </tbody>
                              </table>       
                           </div>
             </div>
            </div>

		 <div id="checck" class="modal custom-modal fade" role="dialog">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Edit </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>

                            <div class="modal-body">
                           <form method="post" action="">

                    <div class="col-sm-6 col-md-12">
                  <div class="form-group">
                     <label>Surname <span class="text-danger"></span></label>
                     <input type="hidden" name="upid" id ="upid2" value="<?php echo $upid;?>">
                    <input type="text" name="sname3" class="form-control" id ="sname2">
                    </div>
                  </div>


                   <div class="col-sm-6 col-md-12">
                    <div class="form-group">
                      <label>Othernames<span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="onames3" id="onames2">
                        
                    </div>
                  </div>

                 <div class="col-sm-6 col-md-12">
                    <div class="form-group">
                      <label>Address<span class="text-danger">*</span></label>
                  <input class="form-control" type="text" name="addy3" id="addy2">
                       
                    </div>
                  </div>


                  <div class="col-sm-6 col-md-12">
                    <div class="form-group">
                      <label>Date of birth<span class="text-danger">* m/d/y format</span></label>
                         <input class="form-control" type="text"
                        name="dob3" id="dob2" >
                    </div>
                  </div>


                  <div class="col-sm-6 col-md-12">
                    <div class="form-group">
                      <label>Parent name <span class="text-danger">*</span></label>
                        <input type="text" name="parentname3" maxlength="60" class="form-control" id="parentname2" >
                    </div>
                  </div>


                  <div class="col-sm-6 col-md-12">
                    <div class="form-group">
                      <label>Parent Phone number <span class="text-danger">*</span></label>
                        <input type="tel" name="parentno3" maxlength="18" class="form-control" id="parentno2">
                    </div>
                  </div>
              
                   <div class="col-sm-6 col-md-12">
                    <div class="form-group">
                     <label>Parent Email address <span class="text-danger">*</span></label>
                        <input type="email" name="parentemail3" class="form-control" id="parentemail2">
                    </div>
                  </div>
               <div class="col-sm-6 col-md-12">
                <div class="submit-section">
            <button type="submit" name="uppy" class="btn btn-primary submit-btn m-r-10">Update</button>
                   
            </div>
            </form>
            </div>
                                    

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
		  <script src="assets/js/app.js"></script>
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
        $('#upid2').val(data[0]);
        $('#sname2').val(data[2]);
        $('#onames2').val(data[3]);
        $('#dob2').val(data[4]);
        $('#addy2').val(data[5]);
        $('#parentname2').val(data[6]);
        $('#parentno2').val(data[7]);
        $('#parentemail2').val(data[8]);

        });
    
    });

      </script>
    </body>
</html>
