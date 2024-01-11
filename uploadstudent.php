<?php

require_once("cann.php");
  require_once("trois2.php"); 

$schid=($_GET['schid']);
$classid=($_GET['id']);
$classname=($_GET['classname']);
$tiyi=($_GET['tiyi']);

$jimmy = '12345678';
$ribb='kokoro'.$jimmy;
$jim=md5($ribb);

if(isset($_POST["Import"])){
	 
	   
	 	 $filename=$_FILES["file"]["tmp_name"];

	 	 //$redirek = 'viewdiv.php?cosid='.$id1;
	 
	  if($_FILES["file"]["size"] > 0)
		 {

		 	$file = fopen($filename, "r");
		 	$counta = 0;
	         while (($emapData = fgetcsv($file, 10000, ",")) !== FALSE)
	         {
	         	if($counta > 0) {  
	    		//	   $rere = rand_chars("abcdefghijk", 1);
	          //It wiil insert a row to our subject table from our csv file`

$result = mysqli_query($conn, "INSERT into $tiyi (`classid`,`classname`,`sname`,`onames`,`dob`,`addy`,`parentname`, `parentno`,`parentemail`,`parentpass`) 
	       values($classid, '$classname','$emapData[2]','$emapData[3]','$emapData[4]','$emapData[5]','$emapData[6]','$emapData[7]','$emapData[8]', '$jim')");
	         //we are using mysql_query function. it returns a resource on true else False on error
	            
	      
				if(! $result )
				{
					echo "<script type=\"text/javascript\">
							alert(\"Invalid File:Please Upload CSV File correctly.\");
						 </script>";

						header("Location:uploadstudent.php");
				}
			}

	       $counta++;  }
	         fclose($file);
	         //throws a message if data successfully imported to mysql database from excel file
	        echo '<script type="text/javascript">
        alert("File successfully uploaded.");
        </script>';
	          //close of connection
			
				
		 	
			
		 }
	}	 




if(isset($_POST["delete"])){
 $crease=trim(strip_tags($_POST['crease']));
 

$sql = "DELETE FROM $tiyi WHERE id  IN ($crease)";

 if($conn->query($sql) === TRUE){ 
  echo '<script type="text/javascript">
        alert("profile details successfully deleted.");
        </script>';     

} else {
    echo "Error deleting record: " . $mysqli->error; 
}

}


  


   if (isset($_POST['subby'])) {
   $upid2= mysqli_real_escape_string($conn, strip_tags($_POST['upid'])); 
   $amt2= mysqli_real_escape_string($conn, strip_tags($_POST['amt'])); 
   $sess2= mysqli_real_escape_string($conn, strip_tags($_POST['sess'])); 
   $tems2= mysqli_real_escape_string($conn, strip_tags($_POST['tems'])); 
   $pos2= mysqli_real_escape_string($conn, strip_tags($_POST['pos'])); 
   $classr2= mysqli_real_escape_string($conn, strip_tags($_POST['classr'])); 
   $onames3= mysqli_real_escape_string($conn, strip_tags($_POST['onames3'])); 
   $studname3= mysqli_real_escape_string($conn, strip_tags($_POST['studname3']));
   $clak3= mysqli_real_escape_string($conn, strip_tags($_POST['clak3'])); 
 

  $fulln3=$studname3.' '.$onames3;

 $tracym = mysqli_query($conn,"SELECT * from schoolfeed where schoolid=$schid");
$num_rowsm = mysqli_num_rows($tracym);

 
   if($amt2 == "" || $sess2 == ""||$tems2 == ""||$pos2 ==""||$classr2==""){
         echo '<script type="text/javascript">
         alert("Please fill the field correctly");   
            </script>';
            }



$feyi='paylogg'.$schid;
 
 if($num_rowsm != 0)      //Code to see if Table Exists
  {$queryy = mysqli_query($conn, "CREATE TABLE $feyi (
                          id int(11) AUTO_INCREMENT,
                          classid int (100) NOT NULL,
                           classname varchar (255) NOT NULL,
                           fulln varchar(255) NOT NULL,
                           amt varchar(100) NOT NULL,
                           sess varchar(255) NOT NULL,
                           tems varchar(255) NOT NULL,
                           pos varchar(255) NOT NULL,
                           dreg varchar(255) NOT NULL,
                          PRIMARY KEY  (id)
                          )");


 $joyce = mysqli_query($conn,"SELECT * FROM  $feyi where fulln ='$fulln3' AND classid=$classr2");
$countyy = mysqli_num_rows($joyce);

if($countyy==1){
   echo'<script type="text/javascript">
        alert("you have already logged a payment for this students.")
        </script>';

}

  else { 
     
  $skillzx = mysqli_query($conn, "INSERT INTO $feyi (classid,classname,fulln,amt,sess,tems,pos,dreg) VALUES ($classr2,'$clak3','$fulln3',$amt2,'$sess2','$tems2','$pos2','$date_reg')");
  
    echo'<script type="text/javascript">
        alert("Congratulations! you have successfully logged a payment for this student.")
        </script>';
       
   }


  
   if ($num_rowsm == 0){
      echo'<script type="text/javascript">
     alert("Sorry, please create a class.");
        </script>';}

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
        <title>Add students</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="assets/css/line-awesome.min.css">
		
		<!-- Datatable CSS -->
		<link rel="stylesheet" href="assets/css/dataTables.bootstrap4.min.css">
		
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
			
				<!-- Page Content -->
                <div class="content container-fluid">
             	<!-- Page Header -->
				<div class="page-header">

						<div class="row">
							<div class="col-sm-12">

								<h3 class="page-title">Upload students singly for <?php echo $classname;?></h3> 
								<ul class="breadcrumb">

               
             <?php  $link2='addstudent.php?id='.$classid.'&classname='.$classname.'&schid='.$schid.'&tiyi='.$tiyi;?>
									<li class="breadcrumb-item"> <a href="<?php echo $link2;?>"> <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#customer2"><i class="fa fa-home"></i>click here to add single students </button></a></li>
									
								</ul>
							</div>
						</div>
					</div>
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Upload students in bulk for<?php echo $classname;?></h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="dashboardapp.php">Dashboard</a></li>
									<li class="breadcrumb-item active">Leads</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					    <form class="col-sm-6" action="" method="post" name="upload_excel" enctype="multipart/form-data">
           
                              <div class="form-group">
                    <label>Select CSV/Excel file of topics <a href="text.csv" download>
                              <i class="fa fa-list"></i> Download Sample CSV</a></label>
         <input type="file" name="file" id="file">
                              </div>
                        
                         <button type="submit" id="submit" name="Import" class="btn btn-success">
                         Import csv file now
                       </button>
                             
                           </form>
                 <hr>
				<!-- /Page Content -->
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
                                       <th>Log Payment</th>
                                       <th>Delete</th>
                                       
                                       
                                    </tr>
                                 </thead>
                                 <tbody>

 <?php 
             $feyi = mysqli_query($conn, "SELECT * FROM $tiyi where classid=$classid");
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
                                                        <a class="dropdown-item upp" href="#" data-toggle="modal" data-target=""><i class="fa fa-pencil m-r-5"></i> log payment</a></div>
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
                                <h5 class="modal-title">Log pay </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                           <form method="post" action="">
                            	<div class="col-sm-6 col-md-12">
									<div class="form-group">

									 <input type="text" name="studname" value="<?php echo $studname3;?>" id ="studname2" disabled>
                                        <input type="text" name="onames" value="<?php echo $onames3;?>" id ="onames2" disabled > </div>

                                      <div class="col-sm-6 col-md-12">
									<div class="form-group">

                                      <label>Amount</label> 
                                     
                                      <input type="hidden" name="upid" id ="upid2" value="<?php echo $upid;?>">

									 <input type="hidden" name="studname3" value="<?php echo $sname;?>" id ="studname3">
                                        <input type="hidden" name="onames3" value="<?php echo $onames;?>" id ="onames3">
                                        <input type="hidden" name="clak3" value="<?php echo $classnam;?>" id ="clak3">

                                       
                                        <input type="hidden" name="classr" value="<?php echo $classr;?>" id ="classr2">
                                     
                                    <input type="text" name="amt"  maxlength="200" class="form-control"  id="amt2" required >
                                       
                                    </div>	
									</div>

                            <div class="col-sm-6 col-md-12">
										<div class="form-group">
										<label>Session <span class="text-danger"></span></label>
										<input type="text" name="sess" maxlength="50" class="form-control" required>
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
									<div class="form-group">
									<label>Term <span class="text-danger"></span></label>
									<input type="text" name="tems" maxlength="50"  class="form-control" id="tems2" requitred>
									    </div>
									</div>

									    <div class="col-sm-6 col-md-12">
										<div class="form-group">
										<label>Purpose <span class="text-danger"></span></label>
										<input type="text" name="pos" maxlength="50" class="form-control" id="pos2" >
										</div>
									</div>

									
                                    <div class="col-sm-6 col-md-12">
                                    <div class="submit-section">
                                        <button  type="submit" name="subby" class="btn btn-info submit-btn">Log</button>
                                 
                                </form>
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
        $('#upid3').val(data[0]);
        $('#studname2').val(data[1]);
        $('#studname3').val(data[1]);
        $('#onames2').val(data[2]);
        $('#onames3').val(data[2]);
        $('#clak3').val(data[9]);
       
        });
    
    });

      </script>
    </body>


</html>