<?php require_once("cann.php");
      require_once("trois2.php"); 

      
$schidd=($_GET['schoolid']);
$clasm=($_GET['id']);
$clast=($_GET['classname']);

$tiyi='student'.$schid;



$tracym = mysqli_query($conn,"SELECT * from schoolfeed where schoolid=$schidd");
$num_rowsm = mysqli_num_rows($tracym);
$feyi='paylogg'.$schidd;
 
 if($num_rowsm != 0)      //Code to see if Table Exists
  {$queryy = mysqli_query($conn, "CREATE TABLE $feyi (
                          id int(11) AUTO_INCREMENT,
                          classid int (100) NOT NULL,
                          payidd varchar (255) NOT NULL,
                          classname varchar (255) NOT NULL,
                           fulln varchar(255) NOT NULL,
                           amt varchar(100) NOT NULL,
                           sess varchar(255) NOT NULL,
                           tems varchar(255) NOT NULL,
                           pos varchar(255) NOT NULL,
                           dreg varchar(255) NOT NULL,
                          PRIMARY KEY  (id)
                          )");




if (isset($_POST['subby'])) { 
   $amt2= mysqli_real_escape_string($conn, strip_tags($_POST['amt'])); 
   $sess2= mysqli_real_escape_string($conn, strip_tags($_POST['sess'])); 
   $tems2= mysqli_real_escape_string($conn, strip_tags($_POST['tems'])); 
   $pos2= mysqli_real_escape_string($conn, strip_tags($_POST['pos'])); 
   $fulln2= mysqli_real_escape_string($conn, strip_tags($_POST['fulln'])); 
   
 
   if($amt2 == "" || $sess2 == ""||$tems2 == ""||$pos2 ==""||$clasm ==""){
         echo '<script type="text/javascript">
         alert("Please fill the field correctly");   
            </script>';
            }
else{


  $skillzx = mysqli_query($conn, "INSERT INTO $feyi (classid,classname,fulln,amt,sess,tems,pos,dreg) VALUES ($clasm,'$clast','$fulln2',$amt2,'$sess2','$tems2','$pos2','$date_reg')");
  
    echo'<script type="text/javascript">
        alert("Congratulations! you have successfully logged a payment for this student.")
        </script>';
       
   }

}
  }


if(isset($_POST["delete"])){
 $crease=trim(strip_tags($_POST['crease']));
 

$sql = "DELETE FROM $feyi WHERE id  IN ($crease)";

 if($conn->query($sql) === TRUE){ 
  echo '<script type="text/javascript">
        alert("payment details successfully deleted.");
        </script>';     

} else {
    echo "Error deleting record: " . $mysqli->error; 
}

}





if (isset($_POST['subby4'])) { 
   $payid3= mysqli_real_escape_string($conn, strip_tags($_POST['payid3'])); 
   $amt3= mysqli_real_escape_string($conn, strip_tags($_POST['amt3'])); 
   $sess3= mysqli_real_escape_string($conn, strip_tags($_POST['sess3'])); 
   $tems3= mysqli_real_escape_string($conn, strip_tags($_POST['tems3'])); 
   $pos3= mysqli_real_escape_string($conn, strip_tags($_POST['pos3'])); 
   $fulln3= mysqli_real_escape_string($conn, strip_tags($_POST['fulln3'])); 
   
 
   if($amt3 == "" || $sess3 == ""||$tems3 == ""||$pos3 =="" ||$fulln=""){
         echo '<script type="text/javascript">
         alert("Please fill the field correctly");   
            </script>';
            }
else{


  $skillzx = mysqli_query($conn, "UPDATE $feyi SET fulln='$fulln3',amt='$amt3',sess='$sess3',tems='$tems3',pos='$pos3' WHERE id =$payid3");
  
    echo'<script type="text/javascript">
        alert("Congratulations! payment log updated.")
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
?>

					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Payment log for <?php echo $clast;?></h3>
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
                       
									 <div class="form-group col-lg-6">
                      <label>Full name<span class="text-danger"></span></label>
                       <select class="form-control" id="sel_state" name="fulln" required>
                          <option value="">-- Select --</option>
                          <?php
$stlt = mysqli_query($conn, "SELECT * FROM  $tiyi WHERE classname ='$clast'");
while ($row = mysqli_fetch_assoc($stlt)) {
    $stary = $row['sname'];
     $stary2 = $row['onames'];
$fulln3=$stary.' '.$stary2;
    echo "<option value = .MD>" . $fulln3 . "</option>";
}
?>
</select>
  </div>
  </div>
                 <div class="form-group col-lg-6">
                    <div class="form-group">
                    <label>Session <span class="text-danger"></span></label>
                    <input type="text" name="sess" maxlength="50" class="form-control" required>
                    </div>
                  </div>

                 <div class="form-group col-lg-6">
                  <div class="form-group">
                  <label>Term <span class="text-danger"></span></label>
                  <input type="text" name="tems" maxlength="50"  class="form-control"required>
                      </div>
                  </div>

                       <div class="form-group col-lg-6">
                    <div class="form-group">
                    <label>Amount <span class="text-danger"></span></label>
                    <input type="text" name="amt" maxlength="50" class="form-control" >
                    </div>
                  </div>



                       <div class="form-group col-lg-6">
                    <div class="form-group">
                    <label>Purpose <span class="text-danger"></span></label>
                    <input type="text" name="pos" maxlength="50" class="form-control" >
                    </div>
                  </div>

                  
                      <div class="form-group col-lg-6">
                       <div class="submit-section">
                        <button  type="submit" name="subby" class="btn btn-info submit-btn">Log</button>
                                 
                          </form>
                            </div>
                          </div>
                        </div>


                      
		             <div id="tableid">
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
                                       <th>View</th>
                                       <th>Edit</th>
                                       <th>Delete</th>
                                       
                                       
                                       
                                    </tr>
                                 </thead>
                                 <tbody>

 <?php 

$feyi='paylogg'.$schid;
$bisola = mysqli_query($conn, "SELECT * FROM $feyi WHERE classname ='$clast'");
                                    $count = 1;
                                    $total = 0;
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

                                      $total = $total + $ammt;

              
                          $link6='view.php?classname='.$classnamee.'&fulln='.$fullnn.'&sess='.$sesss.'&tems='.$temms.'&pos='.$poss.'&amt='.$ammt.'&classid='.$classsid.'&id='.$payid;   

        ?> 
                                       
                                    <tr>
                                       <td style="display: none;"><?php echo $payid; ?></td>
                                       <td><?php echo $count;?></td>
                                       <td><?php echo $fullnn;?></td>
                                       <td><?php echo $classnamee;?></td>
                                       <td><?php echo $ammt;?></td>
                                       <td><?php echo $sesss;?></td>
                                       <td><?php echo $temms;?></td>
                                       <td><?php echo $poss;?></td>
                                       <td><?php echo $dre;?></td>

 <td><button type="text"><a href="<?php echo $link6; ?>">View Receipt</a></button></td>



                                        <td class="text-right">
                                              <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item upp" href="#" data-toggle="modal" data-target=""><i class="fa fa-pencil m-r-5"></i> Edit</a></div>
                                                    </div>
                                                </td>



                                        <td> <form method="post" action="">  
                              <input type="hidden" name="crease" value="<?php echo $payid;?>"> 
                        <button type ="submit" name="delete" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to DELETE?');"><i class="fa fa-trash-o"></i></button>
                    </form>
 
                    </td>
            
            </div>
          </div>       
                                    </tr>
                                    <?php $count++;} ?> 
                     
             </tbody>
                              </table>  
                              <td> Subtotal= <?php echo $total;?></td>     
                           </div>
                          </div>
                        </div>
                
 <input type="button" onclick="printDiv('tableid')" value="print data!" />
                  </div>
               </div>

               <div id="checck" class="modal custom-modal fade" role="dialog">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Edit payment</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                           <form method="post" action="">


                   <div class="form-group col-lg-12">
                  <div class="form-group">
                  <label>Full Name<span class="text-danger"></span></label>
                  <input type="hidden" name="payid3" maxlength="50" class="form-control" id="payid4">
                  <input type="text" name="fulln3" maxlength="50"  class="form-control" id="fulln4">
                      </div>


                     <div class="form-group col-lg-12">
                    <div class="form-group">
                    <label>Session <span class="text-danger"></span></label>
                    <input type="text" name="sess3" maxlength="50" class="form-control" id="sess4">
                    </div>
                  </div>

                 <div class="form-group col-lg-12">
                  <div class="form-group">
                  <label>Term <span class="text-danger"></span></label>
                  <input type="text" name="tems3" maxlength="50"  class="form-control" id="tem4">
                      </div>
                  </div>

                       <div class="form-group col-lg-12">
                    <div class="form-group">
                    <label>Amount <span class="text-danger"></span></label>
                    <input type="text" name="amt3" maxlength="50" class="form-control" id="amt4">
                    </div>
                  </div>



                       <div class="form-group col-lg-12">
                    <div class="form-group">
                    <label>Purpose <span class="text-danger"></span></label>
                    <input type="text" name="pos3" maxlength="50" class="form-control" id="pos4">
                    </div>
                  </div>

                  
                      <div class="form-group col-lg-12">
                       <div class="submit-section">
                        <button  type="submit" name="subby4" class="btn btn-info submit-btn">update</button>
                                 
                          </form>
                            </div>
                          </div>
                        </div>


            </section>
      </div>
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
        $('#payid4').val(data[0]);
        $('#fulln4').val(data[2]);
        $('#amt4').val(data[4]);
        $('#sess4').val(data[5]);
        $('#tem4').val(data[6]);
        $('#pos4').val(data[7]);
        
       
        });
    
    });

    function printDiv(tableid) {
     var printContents = document.getElementById(tableid).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}

      </script>
    </body>


</html>

