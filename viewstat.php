<?php require_once("cann.php");
  require_once("choice.php");





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
        <title>View Status <?php echo $ssur.''.$sfirs; ?> 
      </title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" href="../webadmin/inc/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.13.2/datatables.min.css"/>
 
		
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
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.13.2/datatables.min.js"></script>
        <script src= "https://code.jquery.com/jquery-3.5.1.js" ></script>
        <script src = "https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js" > </script>
        <script src ="https://code.jquery.com/jquery-3.5.1.js" > </script>
        <script src ="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js" > </script>
        <script src ="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js" > </script>
        <script src ="https://cdn.datatables.net/buttons/2.3.4/js/dataTables.buttons.min.js" > </script>
        <script src ="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js" > </script>
        <script src ="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js" > </script>
        <script src ="https://cdn.datatables.net/buttons/2.3.4/js/buttons.html5.min.js" > </script>
       
       
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->

    <script>
      var DataTableJQ = jQuery.noConflict(true);
      DataTableJQ(document).ready(function () {
        DataTableJQ('#example2').DataTable({
          dom:'Bfrtip',
          buttons: [ 
           
          ],
         
    });
});
   </script>
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
								<h3 class="page-title">View transcript status</h3>
								<ul class="breadcrumb">
					 				 
									<li class="breadcrumb-item active"></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table id="example2"  class="table table-striped custom-table mb-0 datatable">
                                    <thead>
                                        <tr>
                                       <th>S/N</th>
                                       <th>Surname</th>
                                       <th>Firstname</th>
                                       <th>Matric no</th>
                                       <th>Remitta RRR</th>
                                       <th>Program</th>
                                      <th>status</th>
                                      <th>Download</th>
                                      
                                      
                                         </tr>				
                                    </thead>
                                    <tbody>
                                  
<?php

$fedr= "SELECT * FROM [Transcript].[dbo].[vw_Transcript_Request] WHERE Matricno='$semat'";
 
         $check=sqlsrv_query($conn,$fedr);
         $num=1;
           while($row = sqlsrv_fetch_array($check)){
                $sprog= $row['program'];
                $scstatus= $row['CStatus'];
                $srrr= $row['Remita_rrr'];

           
                
 
                           
               ?>
                                      <tr>
                                       <td><?php 
                                       echo $num;?> </td>
                                       <td><?php echo $ssur;?></td>
                                       <td><?php echo $sfirs;?></td>
                                       <td><?php echo $semat;?></td>
                                       <td><?php echo $srrr?></td >
                                       <td><?php echo $sprog;?></td>
                                      
                                       <td><?php 
                                       if($scstatus==0){
                                         echo'Pending';}
                                       elseif($scstatus==1){
                                          echo'Uploaded for approval';
                                        }
                                        elseif($scstatus==2){
                                          echo 'Approved and Sent Student Copy';
                                        }  ?></td>

                                       <td><?php    
                                      if($scstatus==2){  
                                      $link = $yloc2;
                                       echo '<div class="columns download">
                                      <a href="'.$link.'" download> Download student copy</a>
                                      </div>';}

                                      elseif($scstatus==0){
                                        echo'pending';
                                      }
                              
                                    else {
                                        echo 'Still awaiting approval';
                                      }
                                      
                                      ?>
                                      </td>   
                                        </tr>
                                        <?php $num++;}?>
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