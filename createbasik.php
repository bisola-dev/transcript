<?php require_once("cann.php");
  


  if (isset($_POST['submit'])){
    $cny= mysqli_real_escape_string($conn, strip_tags($_POST['cny']));
    $addy = mysqli_real_escape_string($conn, strip_tags($_POST['addy']));
    $cemail = mysqli_real_escape_string($conn, strip_tags($_POST['cemail']));
    $dla = mysqli_real_escape_string($conn, strip_tags($_POST['dla']));
    $dlapple = mysqli_real_escape_string($conn, strip_tags($_POST['dlapple']));
    $fck = mysqli_real_escape_string($conn, strip_tags($_POST['fck']));
    $utb =mysqli_real_escape_string($conn, strip_tags($_POST['utb']));
    $gplus= mysqli_real_escape_string($conn, strip_tags($_POST['gplus']));
    $linkin = mysqli_real_escape_string($conn, strip_tags($_POST['linkin']));
    $fon=mysqli_real_escape_string($conn, strip_tags($_POST['fon']));
    $aboutus=mysqli_real_escape_string($conn, strip_tags($_POST['aboutus']));
    $twit = mysqli_real_escape_string($conn, strip_tags($_POST['twit']));

$acct = mysqli_query($conn, "SELECT * FROM basik");
	while ($row=mysqli_fetch_assoc($acct)) {
			   $komo = $row['stat'];}
if ($komo == 1){
      echo'<script type="text/javascript">
     alert("Sorry,you can only enter a record once , you can edit the saved record below..");
        </script>'; }

 else{
  $mysqlux = mysqli_query($conn, "INSERT INTO basik (companyname,aboutus,addy,cemail,fon,downloadlinkapple,downloadlinkandroid,facebook,twitter,linkedin,googleplus,youtube)VALUES('$cny','$aboutus','$addy','$cemail','$fon','$dla','$dlapple','$fck','$twit','$linkin','$gplus','$utb')");
      
 echo'<script type="text/javascript">
         alert("Congratulations! you have successfully Created a basic detail of your company.")
        </script>';
     
   }
}




if (isset($_POST['toolz'])) {

$adminid3= mysqli_real_escape_string($conn, strip_tags($_POST['adminid3']));
  $cny4=  mysqli_real_escape_string($conn, strip_tags($_POST['cny4']));
  $addy4 =  mysqli_real_escape_string($conn, strip_tags($_POST['addy4']));
  $cemail4 = mysqli_real_escape_string($conn, strip_tags($_POST['cemail4']));
  $dla4 =  mysqli_real_escape_string($conn, strip_tags($_POST['dla4']));
  $dlapple4 =  mysqli_real_escape_string($conn, strip_tags($_POST['dlapple4']));
  $fck4=  mysqli_real_escape_string($conn, strip_tags($_POST['fck4']));
  $utb4 =  mysqli_real_escape_string($conn, strip_tags($_POST['utb4']));
  $gplus4=  mysqli_real_escape_string($conn, strip_tags($_POST['gplus4']));
  $linkin4 =  mysqli_real_escape_string($conn, strip_tags($_POST['linkin4']));
  $fon4=  mysqli_real_escape_string($conn, strip_tags($_POST['fon4']));
  $aboutus4= mysqli_real_escape_string($conn, strip_tags($_POST['aboutus4']));
  $twit4 =  mysqli_real_escape_string($conn, strip_tags($_POST['twit4']));


$mysqlux4= mysqli_query($conn, "UPDATE basik SET companyname='$cny4',aboutus='$aboutus4',addy='$addy4',cemail='$cemail4',fon='$fon4',downloadlinkapple='$dlapple4',downloadlinkandroid='$dla4',facebook='$fck4',twitter='$twit4',linkedin='$linkin4',googleplus='$gplus4',youtube='$utb4' WHERE id=$adminid3");
  
echo'<script type="text/javascript">
    alert("Congratulations! you have successfully updated a basic detail.")
    </script>';
   
}


        

if (isset($_POST['datelogo'])) {
    $upd= mysqli_real_escape_string($conn, strip_tags($_POST['upd'])); 
   
   $targetDir4 = "olly/";
   $fileName4 = basename($_FILES["updd"]["name"]);
   $fileName4 = $tstamp.$fileName4;
   $targetFilePath4 = $targetDir4 . $fileName4;
   $fileType4 = pathinfo($targetFilePath4,PATHINFO_EXTENSION);
 
    $shee5= move_uploaded_file($_FILES["updd"]["tmp_name"], $targetFilePath4);
   $mysqlux5= mysqli_query($conn, "UPDATE basik SET logo ='$fileName4' WHERE id=$upd");
       
     echo'<script type="text/javascript">
         alert("Congratulations! you have successfully updated a basic logo.")
         </script>';
    
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
		
			 <?php require_once('hedad3.php');?>
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
					
                    <form method="post" action="" >
							<div class="col-md-12">
							 
								<div class="row">
									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Company name<span class="text-danger"></span></label>
												<input name="cny" type="text" maxlength="200"  class="form-control" required>
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
											<label>Company Email<span class="text-danger"></span></label>
												<input type="text" name="cemail" maxlength="50"  class="form-control" required>
										</div>
									</div>

                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Phone number <span class="text-danger"></span></label>
												<input type="text" name="fon" maxlength="50"  class="form-control" required>
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>About us <span class="text-danger"></span></label>
								
												<textarea name="aboutus"  rows = "5" cols = "50" class="form-control" required> </textarea>
										</div>
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Download Link Android <span class="text-danger"></span></label>
												<input type="text" name="dla" maxlength="50"  class="form-control" required>
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Download Link apple <span class="text-danger"></span></label>
												<input type="text" name="dlapple" maxlength="50"  class="form-control" required>
										</div>
									</div>

                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Facebook <span class="text-danger"></span></label>
												<input type="text" name="fck" maxlength="50"  class="form-control" required>
										</div>
									</div>
									
                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Twitter <span class="text-danger"></span></label>
												<input type="text" name="twit" maxlength="50"  class="form-control" required>
										</div>
									</div>
                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Linkedin <span class="text-danger"></span></label>
												<input type="text" name="linkin" maxlength="50"  class="form-control" required>
										</div>
									</div>
                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Googleplus<span class="text-danger"></span></label>
												<input type="text" name="gplus" maxlength="50"  class="form-control" required>
										</div>
									</div>
                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>youtube <span class="text-danger"></span></label>
												<input type="text" name="utb" maxlength="50"  class="form-control" required>
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
                                       <th>Company Name</th>
                                       <th>Aboutus</th>
                                       <th>Address</th>
                                       <th>Phone</th>
                                       <th>Email</th>
                                      <th>Downloadlinkandroid</th>
                                       <th>Downloadlinkapple</th>
									   <th>Facebook</th>
                                       <th>Twitter</th>
                                       <th>linkedin</th>
                                        <th>Googleplus</th>
                                       <th>Youtube</th>
									   <th>logo</th>
									   <th>Edit</th>
                                         </tr>				
                                    </thead>
                                    <tbody>
                                        <?php 

                                        
             $bisola = mysqli_query($conn, "SELECT * FROM basik ");
              $num=1;
                  while ($row = mysqli_fetch_assoc($bisola)) {
                    $ada = $row['id'];
                    $cny2=$row['companyname'];
                    $aboutus2 = $row['aboutus'];
                    $addy2 = $row['addy'];
                    $fon2 = $row['fon'];
                    $cemail2=$row['cemail'];
                    $dla2 = $row['downloadlinkandroid'];
                    $dlapple2=$row['downloadlinkapple'];
                    $fck2= $row['facebook'];
                    $twit2 = $row['twitter'];
                    $linkin2 = $row['linkedin'];
                    $gplus2=$row['googleplus'];
                    $utb2 = $row['youtube'];
                    $logo2 = $row['logo'];

                  

                         
                                     
                                    ?>
                                       
                                    <tr>
                                    <tr>
                                       <td><?php echo $num;?></td>
                                       <td><?php echo $cny2;?></td>
                                       <td><?php echo $aboutus2;?></td >
                                        <td style="display: none;"><?php echo $ada; ?></td>
                                       <td><?php echo $addy2;?></td>
                                       <td><?php echo $fon2;?></td>
                                       <td><?php echo $cemail2;?></td>
									                      <td><?php echo  $dla2;?></td>
                                       <td><?php echo  $dlapple2;?></td>
                                       <td><?php echo  $fck2;?></td>
									                      <td><?php echo $twit2;?></td>
                                       <td><?php echo $linkin2;?></td>
									                      <td><?php echo $gplus2;?></td>
                                       <td><?php echo $utb2;?></td>
                                       <td><img width="70px" src="olly/<?php echo $logo2;?>"/></td>

  
                                    
                                          <!--<td>
                                          <a href="<?php echo $predit; ?>" class="btn btn-info">Edit</a>   
                                            </td> -->
                                            <td class="text-right">
                                              <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item upp" href="#" data-toggle="modal" data-target=""><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                        <!--<a class="dropdown-item" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fa fa-trash-o m-r-5"></i> Delete</a>-->
														<a class="dropdown-item ria" href="#" data-toggle="modal" data-target=""><i class="fa fa-pencil m-r-5"></i> updatelogo</a>   

                                                    </div>
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
                                <h5 class="modal-title">Edit <?php echo $cny2;?></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                           <form method="post" action="" enctype="multipart/form-data">
                            	<div class="col-sm-6 col-md-12">
									<div class="form-group">
									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Company name<span class="text-danger"></span></label>
											<input type="hidden" name="adminid3" value="<?php echo $ada;?>" id ="adminid2">
												<input name="cny4" type="text" maxlength="200"  class="form-control" id= "cny3" value="<?php echo $cny2;?>" >
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Address <span class="text-danger"></span></label>
												<input type="text" name="addy4" maxlength="50"  class="form-control" id="addy3" value="<?php echo $addy2;?>">
										</div>
									</div>

                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Company Email<span class="text-danger"></span></label>
												<input type="text" name="cemail4" maxlength="50"  class="form-control"  id="cemail3" value="<?php echo $cemail2;?>" >
										</div>
									</div>

                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Phone number <span class="text-danger"></span></label>
												<input type="text" name="fon4" maxlength="50"  class="form-control" id="fon3" value="<?php echo $fon2;?>">
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>About us <span class="text-danger"></span></label>
								
												<textarea name="aboutus4"  rows = "5" cols = "50" class="form-control"  id="aboutus3" value="<?php echo $aboutus2;?>"></textarea>
										</div>
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Download Link Android <span class="text-danger"></span></label>
												<input type="text" name="dla4" maxlength="50"  class="form-control" id="dla3" value="<?php echo $dla2;?>">
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Download Link apple <span class="text-danger"></span></label>
												<input type="text" name="dlapple4" maxlength="50"  class="form-control" id="dlapple3" value="<?php echo $dlapple2;?>" >
										</div>
									</div>

                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Facebook <span class="text-danger"></span></label>
												<input type="text" name="fck4" maxlength="50"  class="form-control" id="fck3" value="<?php echo $fck2;?>" >
										</div>
									</div>
									
                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Twitter <span class="text-danger"></span></label>
												<input type="text" name="twit4" maxlength="50"  class="form-control" id="twit3" value="<?php echo $twit2;?>" >
										</div>
									</div>
                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Linkedin <span class="text-danger"></span></label>
												<input type="text" name="linkin4" maxlength="50"  class="form-control" id="linkin3" value="<?php echo $linkin2;?>" >
										</div>
									</div>
                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Googleplus<span class="text-danger"></span></label>
												<input type="text" name="gplus4" maxlength="50"  class="form-control" id="gplus3" value="<?php echo $gplus2;?>" >
										</div>
									</div>
                  <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>youtube <span class="text-danger"></span></label>
												<input type="text" name="utb4" maxlength="50"  class="form-control" id="utb3" value="<?php echo $utb2;?>" >
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
				  </div>
                 

				  <div class="modal custom-modal fade" id="updatelogo" role="dialog">
                  <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                      <div class="modal-body">
                        <div class="form-header">
                        <form method="post" action="" enctype="multipart/form-data">	
                          <h3>Update Logo here</h3>
                    	<div class="col-sm-6 col-md-12">
						<div class="form-group"> 
							
                       <label>Select School logo (png, jpg or jpeg format allowed) <span class="text-danger">*</span></label>
                       <div id="newphoto"></div>
                         <input type="hidden" name="upd" value="<?php echo $ada;?>" id ="updi">
                         
                         <input type="file" class="form-control" name="updd"  id="updd2">
                     </div>
                 </div>
                         <div class="submit-section">
                         <button type ="submit" name="datelogo" class="btn btn-success">update</button>
                           </div>
                     </form>
                    </div>
                    </div>

                  <div class="col-sm-6 col-md-12">
					<div class="form-group">
                      <a href="javascript:void(0);" data-dismiss="modal" class="btn btn-danger cancel-sm">Cancel</a>
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
        $('#cny3').val(data[1]);
        $('#aboutus3').val(data[2]);
        $('#adminid2').val(data[3]);
        $('#addy3').val(data[4]);
        $('#fon3').val(data[5]);
        $('#cemail3').val(data[6]);
        $('#dla3').val(data[7]);
		$('#dlapple3').val(data[8]);
        $('#fck3').val(data[9]);
        $('#twit3').val(data[10]);
        $('#linkin3').val(data[11]);
        $('#gplus3').val(data[12]);
		$('#utb3').val(data[13]);
        });
    
    });

	$(document).ready(function(){
      $('.ria').on('click', function(){
        //$('#dataTableExample1 tbody').on('click', 'tr', function(){
        $('#updatelogo').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children('td').map(function(){
        return $(this).text();
        }).get();
        console.log(data);    
        $('#updi').val(data[3]);
         $('#updd2').html(data[14]);
	});
});

    
  </script>
    </body>

</html>