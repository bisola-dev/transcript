<?php require_once("cann.php");

  
  if (isset($_POST['submit'])){
    $namex= mysqli_real_escape_string($conn, strip_tags($_POST['namex']));
    $testimon = mysqli_real_escape_string($conn, strip_tags($_POST['testimon']));
    
$acct = mysqli_query($conn, "SELECT * FROM testimony WHERE namex='$namex' AND testimon='$testimon'");
$num_rows = mysqli_num_rows($acct);

if ($num_rows == 1){
      echo'<script type="text/javascript">
     alert("Sorry,you can not send the same testimony record twice.");
        </script>'; }

else{
  $targetDir4 = "memb/";
   $fileName4 = basename($_FILES["upd"]["name"]);
   $fileName4 = $tstamp.$fileName4;
   $targetFilePath4 = $targetDir4 . $fileName4;
   $fileType4 = pathinfo($targetFilePath4,PATHINFO_EXTENSION);
 
 $shee5= move_uploaded_file($_FILES["upd"]["tmp_name"], $targetFilePath4);

$mysqlux = mysqli_query($conn, "INSERT INTO testimony (pix,namex,testimon) VALUES('$fileName4','$namex','$testimon')");
      
 echo'<script type="text/javascript">
         alert("Congratulations! you have successfully submitted a testimony.")
        </script>';
     
   }
}




if (isset($_POST['toolz'])) {

$adminid3= mysqli_real_escape_string($conn, strip_tags($_POST['adminid3']));
$namex5= mysqli_real_escape_string($conn, strip_tags($_POST['namex4']));
$testimon5 = mysqli_real_escape_string($conn, strip_tags($_POST['testimon4']));
$mysqlux5= mysqli_query($conn, "UPDATE testimony SET namex='$namex5', testimon='$testimon5' WHERE id=$adminid3");
  
echo'<script type="text/javascript">
    alert("Testimony updated.")
    </script>';
   
}


if (isset($_POST['replaceimg'])) {

  $adminid3= mysqli_real_escape_string($conn, strip_tags($_POST['adminid3']));

  $targetDir5 = "memb/";
  $fileName5= basename($_FILES["upd"]["name"]);
  $fileName5= $tstamp.$fileName5;
  $targetFilePath5= $targetDir5 . $fileName5;
  $fileType5= pathinfo($targetFilePath5,PATHINFO_EXTENSION);
  
  $shee51= move_uploaded_file($_FILES["upd"]["tmp_name"], $targetFilePath5);
  
  
  $mysqlux5= mysqli_query($conn, "UPDATE testimony SET pix='$fileName5' WHERE id=$adminid3");
    
  echo'<script type="text/javascript">
      alert("Testimony image updated.")
      </script>';
     
  }

        
if(isset($_POST["delete"])){
    $adminid3= mysqli_real_escape_string($conn, strip_tags($_POST['adminid3']));
       
    $sql = "DELETE FROM  testimony WHERE id  IN ($adminid3)";
     if($conn->query($sql) === TRUE){ 
        echo '<script type="text/javascript">
              alert("testimony successfully deleted.");
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
        <title>Create Account  </title>
		
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
								<h3 class="page-title">Testimony details</h3>
								<ul class="breadcrumb">
					 				 
									<li class="breadcrumb-item active"></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
                    <form method="post" action=""  enctype="multipart/form-data">
							<div class="col-md-12">
							 
								<div class="row">
									<div class="col-sm-6 col-md-12">
										<div class="form-group">
										<label>Name<span class="text-danger"></span></label>
												<input name="namex" type="text" maxlength="200"  class="form-control" required>
										</div>
									</div>

									
									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Testimony <span class="text-danger"></span></label>
											<textarea name="testimon"  rows = "5" cols = "50" class="form-control" required> </textarea>
										</div>
										</div>

                    <div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Upload image here <span class="text-danger"></span></label>											
										<input name="upd" type="file" maxlength="200"  class="form-control" >
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
                                       <th>Name</th> 
                                       <th>Testaments</th>
                                       <th>Image</th>
                                       <th>Edit</th>
                                      </tr>						
                                    </thead>
                                    <tbody>
                                        <?php 

                                        
      $bisola = mysqli_query($conn, "SELECT * FROM testimony");
      $num=1;
      while ($row = mysqli_fetch_assoc($bisola)) {
      $ada = $row['id'];
      $namex2=$row['namex'];
      $testimon2 = $row['testimon'];
      $pix2 = $row['pix'];

                         
                                     
                                    ?>
                                       
                                
                                    <tr>
                                       <td><?php echo $num;?></td>
                                       <td><?php echo $namex2;?></td>
                                       <td><?php echo $testimon2;?></td >
                                        <td style="display: none;"><?php echo $ada; ?></td>                                     
                                       <td><img width="70px" src="memb/<?php echo $pix2;?>"/></td>

                                          <!--<td>
                                          <a href="<?php echo $predit; ?>" class="btn btn-info">Edit</a>   
                                            </td> -->
                                            <td class="text-left">
                                              <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item upp" href="#" data-toggle="modal" data-target=""><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                        <a class="dropdown-item dia" href="#" data-toggle="modal" data-target=""><i class="fa fa-picture-o m-r-5"></i> Replace image</a>
                                                        <a class="dropdown-item ria" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
 

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
            <div id="ruil" class="modal custom-modal fade" role="dialog">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                        <div class="modal-header">
                                <h5 class="modal-title">Edit </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                           <form method="post" action="" >
									<div class="col-sm-6 col-md-12">
										<div class="form-group">
                    <label>Name<span class="text-danger"></span></label>
											<input type="hidden" name="adminid3" value="<?php echo $ada;?>" id ="adminid2">
												<input name="namex4" type="text" maxlength="200"  class="form-control" id= "namex3" value="<?php echo $namex2;?>" >
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
                    <label>Testament <span class="text-danger"></span></label>
                    
                    <textarea name="testimon4"  rows = "5" cols = "50" class="form-control" id="testimon3" value="<?php echo $testimon2;?>"> </textarea>
									
									</div>
									</div>
                  <div class="form-group">
										     <div class="submit-section">
                                        <button  type="submit" name="toolz" class="btn btn-info submit-btn">Edit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
				          </div>
      </div>
				 

      <div id="dial" class="modal custom-modal fade" role="dialog">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                        <div class="modal-header">
                                <h5 class="modal-title">Replace image </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                           <form method="post" action="" enctype="multipart/form-data">
									<div class="col-sm-6 col-md-12">        
                   <div class="form-group">
                    <label>Replace image here <span class="text-danger"></span></label> 
                    <input type="hidden" name="adminid3" value="<?php echo $ada;?>" id ="adminid1"> 
                  <input name="upd" type="file"   class="form-control"  id="picture3">								
									</div>
									</div>

                  <div class="form-group">
										     <div class="submit-section">
                                        <button  type="submit" name="replaceimg" class="btn btn-info submit-btn">Edit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
				          </div>
      </div>
                                 

                  <div class="modal custom-modal fade" id="id01" role="dialog">
                  <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                      <div class="modal-body">
                        <div class="form-header">
                        <form method="post" action="">	
                          <h3>Delete record</h3>
                       	<div class="col-sm-6 col-md-12">
						    <div class="form-group"> 
                <p>Are you sure you want to delete your record?</p>
               <input type="hidden" name="adminid3" value="<?php echo $ada;?>" id ="updi">  
                </div>
                 </div>
                         <div class="submit-section">
                         <button type ="submit" name="delete" class="btn btn-success">delete</button>
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
        $('#ruil').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children('td').map(function(){
        return $(this).text();
        }).get();
        console.log(data);
       
        $('#namex3').val(data[1]);
        $('#testimon3').val(data[2]);
        $('#adminid2').val(data[3]); 
        });
    
    });  
    
    $(document).ready(function(){
      $('.dia').on('click', function(){
        //$('#dataTableExample1 tbody').on('click', 'tr', function(){
        $('#dial').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children('td').map(function(){
        return $(this).text();
        }).get();
        console.log(data);
        $('#adminid1').val(data[3]); 
        $('#picture3').val(data[4]);

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