<?php require_once("cann.php");
      require_once("trois.php"); 


    //$delec = 'dashboardapp.php';

  if (isset($_POST['submit'])){
   $fulln = mysqli_real_escape_string($conn, strip_tags($_POST['fulln']));
   $schn = mysqli_real_escape_string($conn, strip_tags($_POST['schn']));
   $addy = mysqli_real_escape_string($conn, strip_tags($_POST['addy']));
   $admail = mysqli_real_escape_string($conn, strip_tags($_POST['admail']));
   $fon = mysqli_real_escape_string($conn, strip_tags($_POST['fon']));

  
   
           $domal='kokoro2'.$admail;
		   $hemal=md5($domal);

 $queryy = mysqli_query($conn, "SELECT * FROM adminlogin where admail='$admail' ||schname='$schn'");
 $komo = mysqli_num_rows($queryy);

  
  $targetDir = "olly/";
  $fileName = basename($_FILES["foto"]["name"]);
  $fileName = $tstamp.$fileName;
  $targetFilePath = $targetDir . $fileName;
  $fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);


  //$allowTypes = array('jpg','png','jpeg','gif');
  // Allow certain file formats
$allowTypes = array('jpg','png','jpeg');
 if (!in_array($fileType, $allowTypes)){
      echo '<script type="text/javascript">
        alert("Incorrect file format.Sorry only jpeg, jpg and png files are allowed");
        </script>'; } 
 
                   // Check file size
  else if ($_FILES["foto"]["size"] > 500000) {
               echo '<script type="text/javascript">
                alert("Sorry, your image is too large. Must be maximum of 500KB in size")
                </script>';
            }

else if ($komo == 1){
      echo'<script type="text/javascript">
     alert("Sorry, this school account already exists.please use another.");
        </script>'; }



    else { 
      $shee =  move_uploaded_file($_FILES["foto"]["tmp_name"], $targetFilePath);
  $mysqlux = mysqli_query($conn, "INSERT INTO adminlogin (fulln,schname,addy,admail,fon,logo,hpazz,role,dreg,hemal)VALUES('$fulln','$schn','$addy','$admail','$fon','$fileName','d2f591b43983be677334ef7903b551d5', 1 , '$date_reg','$hemal')");
      
    echo'<script type="text/javascript">
        alert("Congratulations! you have successfully Created a school detail.")
        </script>';
        //header("Location:$delec"); 
   }

}



    if (isset($_POST['toolz'])) { echo 'success';
   $adminid3= mysqli_real_escape_string($conn, strip_tags($_POST['adminid3'])); 
   $fulln4 = mysqli_real_escape_string($conn, strip_tags($_POST['fulln3']));
   $schn4 = mysqli_real_escape_string($conn, strip_tags($_POST['schn3']));
   $addy4 = mysqli_real_escape_string($conn, strip_tags($_POST['addy3']));
   $admail4 = mysqli_real_escape_string($conn, strip_tags($_POST['admail3']));
   $fon4 = mysqli_real_escape_string($conn, strip_tags($_POST['fon3']));
  

   //echo $adminid2.''.$fulln4.''.$schn4.''.$addy4.''.$admail4.''.$fon4;

  $targetDir4 = "olly/";
  $fileName4 = basename($_FILES["foto3"]["name"]);
  $fileName4 = $tstamp.$fileName4;
  $targetFilePath4 = $targetDir4 . $fileName4;
  $fileType4 = pathinfo($targetFilePath4,PATHINFO_EXTENSION);


  //$allowTypes = array('jpg','png','jpeg','gif');
  // Allow certain file formats
$allowTypes4 = array('jpg','png','jpeg');
 if (!in_array($fileType4, $allowTypes4)){
      echo '<script type="text/javascript">
        alert("Incorrect file format.Sorry only jpeg, jpg and png files are allowed");
        </script>'; } 
 
                   // Check file size
  else if ($_FILES["foto3"]["size"] > 500000) {
               echo '<script type="text/javascript">
                alert("Sorry, your image is too large. Must be maximum of 500KB in size")
                </script>';
            }




    else { 
      $shee4 =  move_uploaded_file($_FILES["foto3"]["tmp_name"], $targetFilePath4);
  $mysqlux4= mysqli_query($conn, "UPDATE adminlogin SET fulln='$fulln4', schname='$schn4', addy='$addy4', admail='$admail4', fon='$fon4', logo='$fileName4' WHERE id=$adminid3");
      
    echo'<script type="text/javascript">
        alert("Congratulations! you have successfully updated a school detail.")
        </script>';
        //header("Location:$delec"); 
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
        <title>Create Account <?php echo $myfulln; ?> </title>
		
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
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Create School Account</h3>
								<ul class="breadcrumb">
					 				 
									<li class="breadcrumb-item active"></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
							<form method="post" action="" enctype="multipart/form-data">
							<div class="col-md-12">
							 
								<div class="row">
									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>School name<span class="text-danger"></span></label>
												<input name="schn" type="text" maxlength="200"  class="form-control" required>
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Address <span class="text-danger"></span></label>
												<input type="text" name="addy" maxlength="50"  class="form-control" required>
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Fullname <span class="text-danger"></span></label>
												<input type="text" name="fulln" maxlength="50"  class="form-control" required>
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Admin email <span class="text-danger"></span></label>
												<input type="text" name="admail" maxlength="50"  class="form-control" required>
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>phone number <span class="text-danger"></span></label>
												<input type="text" name="fon" maxlength="50"  class="form-control" required>
										</div>
									</div>

									
									<div class="form-group">
									 <label>Select School logo (png, jpg or jpeg format allowed) <span class="text-danger">*</span></label>
										<input name="foto" class="form-control" type="file" required>
									</div>
									 
									</div>

									<div class="submit-section">
										<button  type="submit" name="submit" class="btn btn-info submit-btn">Upload now</button>
									</div>
								</form>
		
						</div>
					</div>

                  
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-striped custom-table mb-0 datatable">
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                       <th>School Name</th>
                                       <th>Address</th>
                                       <th>Full name</th>
                                       <th>Admin mail</th>
                                       <th>Phone number</th>
                                        <th>Image</th>
                                       <th>Edit</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php 
                                         $num=1;
             $bisola = mysqli_query($conn, "SELECT * FROM adminlogin ");
                  while ($row = mysqli_fetch_assoc($bisola)) {
                                       $ada = $row['id'];
                                       $skoolnam=$row['schname'];
                                       $skooladdy = $row['addy'];
                                       $skoolfoto = $row['logo'];
                                       $adminfulln = $row['fulln'];
                                       $admail=$row['admail'];
                                       $fonnum = $row['fon'];

                                     
                                    ?>
                                       
                                    <tr>
                                       <td><?php echo $num;?></td>
                                       <td><?php echo $skoolnam;?></td>
                                       <td><?php echo $skooladdy;?></td >
                                        <td style="display: none;"><?php echo $ada; ?></td>
                                       <td><?php echo $adminfulln;?></td>
                                       <td><?php echo $admail;?></td>
                                       <td><?php echo $fonnum;?></td>
                                       <td><img width="70px" src="olly/<?php echo $skoolfoto;?>"/></td>
 
                                          <!--<td>
                                          <a href="<?php echo $predit; ?>" class="btn btn-info">Edit</a>   
                                            </td> -->
                                            <td class="text-right">
                                              <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item upp" href="#" data-toggle="modal" data-target=""><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                        <!--<a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fa fa-trash-o m-r-5"></i> Delete</a>-->
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <?php $num++;} ?>
                                    </tbody>
                                </table>
                                
                            </div>
                        </div>
                    </div> 
                </div> 
                
              </div>        
            </div>
                    </div>
                        </div>
                    </div>
                </div>
                <!-- /Add Role Modal -->         
                </div>
            </div>
            <!-- /Page Wrapper -->
            <div id="checck" class="modal custom-modal fade" role="dialog">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Edit Price/Testname</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                           <form method="post" action="" enctype="multipart/form-data">
                            	<div class="col-sm-6 col-md-12">
									<div class="form-group">
                                      <label>School name</label> 
                                      <input type="text" name="adminid3" value="<?php echo $ada;?>" id ="adminid2">
                                    <input type="text" name="schn3"  maxlength="200" class="form-control"  id="schn2">
                                       
                                    </div>	
									</div>

                            <div class="col-sm-6 col-md-12">
										<div class="form-group">
										<label>Address <span class="text-danger"></span></label>
										<input type="text" name="addy3" maxlength="50" class="form-control" id="addy2">
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
									<div class="form-group">
									<label>Fullname <span class="text-danger"></span></label>
									<input type="text" name="fulln3" maxlength="50"  class="form-control" id="fulln2">
									    </div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
									<label>Admin email <span class="text-danger"></span></label>
								<input type="text" name="admail3" maxlength="50"  class="form-control" id="admail2">
										</div>
									</div>


									<div class="col-sm-6 col-md-12">
										<div class="form-group">
									<label>phone number <span class="text-danger"></span></label>
									<input type="text" name="fon3" maxlength="50"  class="form-control" id="fon2">
										</div>
									</div>

									<div class="form-group">
									 <label>Select School logo (png, jpg or jpeg format allowed) <span class="text-danger">*</span></label>
										<input name="foto3" class="form-control" type="file" id="foto2">
									</div>
									 
									</div>



									
                                    <div class="submit-section">
                                        <button  type="submit" name="toolz" class="btn btn-info submit-btn">Edit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>      
                <div class="modal custom-modal fade" id="delete_pricing" role="dialog">
                  <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                      <div class="modal-body">
                        <div class="form-header">
                          <h3>Transaction List</h3>
                          <p>Are you sure want to delete?</p>
                        </div>
                        <div class="modal-btn delete-action">
                          <div class="row">
                            
                    <div class="col-6">
                      
                      
                    </div>
                  
                    <div class="col-6">
                      <a href="javascript:void(0);" data-dismiss="modal" class="btn btn-primary cancel-btn">Cancel</a>
                    </div>
                  </div>
                </div>
              </div>
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
        $('#schn2').val(data[1]);
        $('#addy2').val(data[2]);
        $('#adminid2').val(data[3]);
        $('#fulln2').val(data[4]);
        $('#admail2').val(data[5]);
        $('#fon2').val(data[6]);
       
        });
    
    });
  </script>
    </body>

</html>