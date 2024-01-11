<?php require_once("cann.php");
  


  if (isset($_POST['submit'])){
    $email= mysqli_real_escape_string($conn, strip_tags($_POST['email']));
    $request= mysqli_real_escape_string($conn, strip_tags($_POST['request']));


  $mysqlux = mysqli_query($conn, "INSERT INTO contact (email,request,dated) VALUES('$email','$request','$date_reg')");
      
 echo'<script type="text/javascript">
         alert("Congratulations! you have successfully submitted a request.")
        </script>';
     
   }





if (isset($_POST['toolz'])) {

$adminid3= mysqli_real_escape_string($conn, strip_tags($_POST['adminid3']));
$email4= mysqli_real_escape_string($conn, strip_tags($_POST['email4']));
$request4 = mysqli_real_escape_string($conn, strip_tags($_POST['request4']));


$mysqlux4= mysqli_query($conn, "UPDATE contact SET email='$email4', request='$request4' WHERE id=$adminid3");
  
echo'<script type="text/javascript">
    alert("updated!.")
    </script>';
   
}


        


if(isset($_POST["delete"])){
    $adminid3= mysqli_real_escape_string($conn, strip_tags($_POST['adminid3']));
       
    $sql = "DELETE FROM contact WHERE id  IN ($adminid3)";
     if($conn->query($sql) === TRUE){ 
        echo '<script type="text/javascript">
              alert("successfully deleted.");
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
								<h3 class="page-title"> Frequently asked questions</h3>
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
											<label>Email<span class="text-danger"></span></label>
												<input name="email" type="text" maxlength="200"  class="form-control" required>
										</div>
									</div>

								
									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Request<span class="text-danger"></span></label>
								
												<textarea name="request"  rows = "5" cols = "50" class="form-control" required> </textarea>
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
                                       <th>Email</th>
                                       <th>Request</th>
									   <th>Date</th>
                                         </tr>				
                                    </thead>
                                    <tbody>
                                        <?php 

                                        
             $bisola = mysqli_query($conn, "SELECT * FROM contact ");
              $num=1;
                  while ($row = mysqli_fetch_assoc($bisola)) {
                    $ada = $row['id'];
                    $email2=$row['email'];
                    $request2 = $row['request'];
                    $date2 = $row['dated'];
       
                                    ?>
                                       
                                    <tr>
                                  
                                       <td><?php echo $num;?></td>
                                       <td><?php echo $email2;?></td>
                                       <td><?php echo $request2;?></td >
                                        <td style="display: none;"><?php echo $ada; ?></td>
                                        <td><?php echo $date2;?></td >
                                       
                                    
                                                           
                                              <!--<td>
                                          <a href="<?php echo $predit; ?>" class="btn btn-info">Edit</a>   
                                            </td> -->
                                            <td class="text-left">
                                              <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item upp" href="#" data-toggle="modal" data-target=""><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                        <a class="dropdown-item ria" href="#" data-toggle="modal" data-target="#delete_asset"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
 

                                                    </div>
                                                     </div>
                                                    
                                                </div>
                                            </td>
                                        </tr>
                                       
                                                    
                                              
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
                                <h5 class="modal-title">Edit </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                           <form method="post" action="" >
                    
									<div class="form-group">
									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Email<span class="text-danger"></span></label>
											<input type="hidden" name="adminid3" value="<?php echo $ada;?>" id ="adminid2">
												<input name="email4" type="text" maxlength="200"  class="form-control" id= "email3" value="<?php echo $email2;?>" >
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group">
											<label>Request<span class="text-danger"></span></label>
								
										<textarea name="request4"  rows = "5" cols = "50" class="form-control"  id="request3" value="<?php echo $request2;?>"></textarea>
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
                  </div>
                              
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
                <p>Are you sure you want to delete your account?</p>
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