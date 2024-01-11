<?php require_once("cann.php");
      require_once("trois2.php"); 

      
$classname=($_GET['classname']);
$fullnn=($_GET['fulln']);
$sesss=($_GET['sess']);      
$temms=($_GET['tems']);
$poss=($_GET['pos']);
$ammt=($_GET['amt']);
$payid=($_GET['id']);
$classsid=($_GET['classid']);

$feyi='paylogg'.$schid;

if (strlen($payid) == 1){$appnew = 'INV210000'.$payid;} 
else if (strlen($payid) == 2){$appnew = 'INV21000'.$payid;} 
else if (strlen($payid) == 3){$appnew = 'INV2100'.$payid;} 
else if (strlen($payid) == 4){$appnew = 'INV210'.$payid;} 
else if (strlen($payid) == 5){$appnew = 'INV21'.$payid;} 

$logen = mysqli_query($conn, "UPDATE $feyi SET payidd = '$appnew' WHERE id = $payid"); 



                        
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
      
			 <?php require_once('hedad2.php');?>
			<!-- /Header -->
			
			<!-- Sidebar -->
              <?php require_once('siderd.php');?>

      
      
    
      <!-- /Sidebar -->
      
      <!-- Page Wrapper -->
            <div class="page-wrapper">
      
        <!-- Page Content -->
                <div class="content container-fluid">
        
          <!-- Page Header -->
          <div class="page-header">
            <div class="row align-items-center">
              <div class="col">
                <h3 class="page-title">Receipt</h3>
                <ul class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                  <li class="breadcrumb-item active">Receipt</li>
                </ul>
              </div>
              
          <!-- /Page Header -->
          <div id="tableid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-6 m-b-20">
                      <img src="imgg/<?php echo $logoz;?>" class="inv-logo" alt="">
                      <ul class="list-unstyled">
                        <li><?php echo $schname;?></li>
                        <li><?php echo $schaddy;?></li>
                        <li><?php echo $fony;?></li>
                        
                      </ul>
                    </div>


<?php 

$resulttr = mysqli_query($conn, "SELECT * FROM $feyi WHERE id = $payid");
                
      while($get_info = mysqli_fetch_assoc($resulttr)){ // Start looping table row 
                                         $paidd = $get_info['payidd'];
}?>
                    <div class="col-sm-6 m-b-20">
                      <div class="invoice-details">
                        <h3 class="text-uppercase">Invoice <?php echo $paidd;?></h3>
                        <ul class="list-unstyled">
                          <li>Date: <span><?php echo $tdate;?></span></li>
                          
                        </ul>
                      </div>
                    </div>
                  </div>



                  <div class="row">
                    <div class="col-sm-6 col-lg-7 col-xl-8 m-b-20">
                      <h5>Invoice to:</h5>
                      <ul class="list-unstyled">
                        <li><h5><strong><?php echo $fullnn;?></strong></h5></li>
                        <li><span><strong><?php echo $classname;?></strong></span></li>
                        <li><?php echo $sesss;?> Session</li>
                       
                       
                      </ul>
                    </div>


                    <div class="col-sm-6 col-lg-5 col-xl-4 m-b-20">
                      <span class="text-muted">Payment Details:</span>
                      <ul class="list-unstyled invoice-payment-details">
                        
                        <li>Paymode name: <span>Bank payment</span></li>
                        
                      </ul>
                    </div>
                  </div>
                  <div class="table-responsive">
                    <table class="table table-striped table-hover">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>NAME</th>
                          <th class="d-none d-sm-table-cell">PURPOSE</th>
                          <th>TERM</th>
                          <th>AMOUNT</th>
                          <th class="text-right">TOTAL</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>

                          <td></td>
                          <td><?php echo $fullnn;?></td>
                          <td class="d-none d-sm-table-cell"><?php echo $poss;?></td>
                          <td><?php echo $temms;?></td>
                          <td>N<?php echo $ammt;?></td>
                          <td class="text-right">N<?php echo $ammt;?></td>
                        </tr>
                    
                                
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>

                     
                    <div class="invoice-info">
                      
</div>
</div>
                      <h5><input type="button" onclick="printDiv('tableid')" value="print data!" /></h5>
                      <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed dictum ligula, cursus blandit risus. Maecenas eget metus non tellus dignissim aliquam ut a ex. Maecenas sed vehicula dui, ac suscipit lacus. Sed finibus leo vitae lorem interdum, eu scelerisque tellus fermentum. Curabitur sit amet lacinia lorem. Nullam finibus pellentesque libero, eu finibus sapien interdum vel</p>
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
          </div>
                </div>
        <!-- /Page Content -->
        
            </div>
      <!-- /Page Wrapper -->

        </div>
    <!-- /Main Wrapper -->

  
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

