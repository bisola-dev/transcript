<?php 
	require_once("cann.php"); 
    require_once("trois2.php"); 
	//$mymal =$_SESSION['mymal'];
    //$myfull =$_SESSION['mynam']; 
   // $fid=$_GET['did'];
    $redir3= 'invoice2.php?lid='.$fid.'&fuln='.$patnam;
    
    if (isset($_POST['saveme']) || !empty($_POST['testyy']) || !empty($_POST['amuntt'])) {
        $testyy1 = mysqli_real_escape_string($conn, strip_tags($_POST['testyy'])); 
        $amuntt1 = mysqli_real_escape_string($conn, strip_tags($_POST['amuntt'])); 
           if($testyy1==  "" || $amuntt1==  "" ){
             echo '<script type="text/javascript">
             alert("field must not be empty ");   
                </script>';
            }
             else {
                $pushhy = mysqli_query($conn, "INSERT INTO price_tbl (cid, patientID, testnammy, pricee, datty) VALUES('$fid', '$cardno', '$testyy1', '$amuntt1', '$date_reg')");

                    echo '<script type="text/javascript">
                        alert("record inserted successful")
                        </script>';     
                     }

                 }

        if(isset($_POST["eraze"])){
         $hidenid1=mysqli_real_escape_string($conn, $_POST['hidenid']);    
         $canny = "UPDATE price_tbl SET dele=1 WHERE id = $hidenid1";
         if (mysqli_query($conn, $canny) === TRUE) {
             echo "<script type='text/javascript'>
                 alert('record deleted');
                 </script>";
         } else {
             echo "Error deleting record: " . $conn->error;
        }
      }



      if (isset($_POST['submit']) || !empty($_POST['moni'])) {
        $tid1 = mysqli_real_escape_string($conn, strip_tags($_POST['tid'])); 
        $tnammy1 = mysqli_real_escape_string($conn, strip_tags($_POST['tnammy'])); 
        $moniy1 = mysqli_real_escape_string($conn, strip_tags($_POST['moniy']));

        if($moniy1== ""){
         echo '<script type="text/javascript">
         alert("Please fill the field");   
            </script>';
            }
            else {
                $movit= mysqli_query($conn, "UPDATE price_tbl SET testnammy= '$tnammy1', pricee= '$moniy1' WHERE id = $tid1");
                 echo '<script type="text/javascript">
                    alert("updated successful")
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
        <title>BOB-Pricing</title>
        
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
            <?php  
    
              require_once('hedad1.php');

           require_once('siderd2.php');
            
            ?>
            <!-- Page Wrapper -->
            <div class="page-wrapper">
            
                <!-- Page Content -->
               <div class="content container-fluid">
                
                    <!-- Page Header -->
                    <div class="page-header">
                        <div class="text-center">
                            <div class="col">
                                <h3 class="page-title">Transaction details for <span style="color: cadetblue;"><?php echo $patnam; ?></span></h3><br>
                                <h3 style="color: red;">Please input the examinations and Amount</h3>
                                    
                            </div>
                            <div>
                                    
                             </div>
                        </div>
                    </div>
                    <!-- /Page Header -->
                    
                    <!-- Search Filter -->
                        <form action="" method="post">
                            <div class="row">
                                <div class="form-group col-sm-4">
                                    <input class="form-control" type="text" name="testyy" maxlength="50" minlength="3" placeholder="Examinations" required>
                                </div>
                                <div class="form-group col-sm-4">
                                    <input class="form-control" type="text" name="amuntt" maxlength="6" minlength="3" placeholder="Amount" required>
                                </div>
                                <div class="form-group col-sm-4">
                                    <button name="saveme" class="btn btn-success" type="submit">Submit</button>
                                </div>
                                <!--
                                    <div class="form-group col-sm-4">
                                        <select type="text" name="subject4" class="form-control">
                                            <option value="select">Select Examination</option>
                                            <?php 
                                            $testy = mysqli_query($conn,"SELECT * FROM examinationtbl");
                                            while ($row=mysqli_fetch_assoc($testy)) {
                                                    $oney = $row['testyname'];
                                                 ?> 
                                            <option value="<?php //echo $oney; ?>"><?php// echo $oney; ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                     -->
                            </div>
                        </form>
                  
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-striped custom-table mb-0 datatable">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Test Name</th>
                                            <th>Amount</th>
                                            <th class="text-right">Action</th>
                                            <!--<th>Delete</th>-->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php 
                                        $num=1;
                                        $payme = mysqli_query($conn, "SELECT * FROM price_tbl WHERE cid= '$fid'");
                                          while ($row=mysqli_fetch_assoc($payme)) { 
                                            $tid=$row['id'];
                                            $cardy2=$row['patientID'];
                                            $testyy2=$row['testnammy'];
                                            $amuntt2=$row['pricee'];
                                            $predit = 'editpriz2.php?lid='.$tid.'&fuln='.$patnam;
          
                                            ?>
                                        <tr>
                                            <td><?php echo $num; ?></td>
                                            <td style="display: none;"><?php echo $tid; ?></td>
                                            <td><?php echo $testyy2; ?></td>
                                            <td><?php echo $amuntt2; ?></td>
                                          <!--<td>
                                          <a href="<?php echo $predit; ?>" class="btn btn-info">Edit</a>   
                                            </td> -->
                                            <td class="text-right">
                                              <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="material-icons">more_vert</i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item cosUpdate" href="#" data-toggle="modal" data-target=""><i class="fa fa-pencil m-r-5"></i> Edit</a>
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
                <div class="form-group text-center">
                <a href="<?php echo $redir3; ?>" class="btn btn-primary">Generate invoice</a>
                <a href="consultationlog2.php" class="btn btn-white">Cancel</a>
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
            <div id="customer1" class="modal custom-modal fade" role="dialog">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Edit Price/Testname</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form method="post" action="">
                                    <input type="hidden" name="tid" id="trid">
                                    <div class="form-group ">
                                        <label>Test name</label> 
                                    <input class="form-control" type="text" name="tnammy" id="tname">
                                       
                                    </div>
                                    <div class="form-group">
                                    <label>Amount</label>
                                    <input class="form-control" type="text" name="moniy" id="moni">
                                    </div>
                                    <div class="submit-section">
                                        <button  type="submit" name="submit" class="btn btn-info submit-btn">Edit</button>
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
                      <?php  
                  $deletid = mysqli_query($conn, "SELECT * FROM price_tbl WHERE cid= '$fid'");
                    while ($chekky=mysqli_fetch_assoc($deletid)) { 
                      $mid=$chekky['id'];
                     }
                   ?>
                      <form method="post" action="">  
                         <input type="text" name="hidenid" value="<?php echo $mid.' '.$fid;?>" > 
                         <button type ="submit" name="eraze" class="btn btn-danger cancel-btn">Delete</button>
                     </form>

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
      $('.cosUpdate').on('click', function(){
        //$('#dataTableExample1 tbody').on('click', 'tr', function(){
        $('#customer1').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children('td').map(function(){
        return $(this).text();
        }).get();
        console.log(data);
        $('#trid').val(data[1]);
        $('#tname').val(data[2]);
        $('#moni').val(data[3]);
        });
    });
  </script>
    </body>

</html>