<?php

require_once("cann.php");
  require_once("trois2.php"); 

$schidd=($_GET['schoolid']);
$clasm=($_GET['id']);
$clast=($_GET['classname']);

$jimmy = '12345678';
$ribb='kokoro'.$jimmy;
$jim=md5($ribb);

 $tiyi='student'.$schid;

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
	       values($clasm, '$clast','$emapData[2]','$emapData[3]','$emapData[4]','$emapData[5]','$emapData[6]','$emapData[7]','$emapData[8]','$jim')");
	         //we are using mysql_query function. it returns a resource on true else False on error
	            
	      
				if(! $result )
				{
					echo "<script type=\"text/javascript\">
							alert(\"Invalid File:Please Upload CSV File.\");
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


   if (isset($_POST['uppy'])) {
   $upid3= mysqli_real_escape_string($conn, strip_tags($_POST['upid'])); 
   $sname3= mysqli_real_escape_string($conn, strip_tags($_POST['sname3'])); 
   $onames3= mysqli_real_escape_string($conn, strip_tags($_POST['onames3'])); 
   $dob3= mysqli_real_escape_string($conn, strip_tags($_POST['dob3'])); 
   $addy3= mysqli_real_escape_string($conn, strip_tags($_POST['addy3'])); 
   $parentname3= mysqli_real_escape_string($conn, strip_tags($_POST['parentname3'])); 
   $parentno3= mysqli_real_escape_string($conn, strip_tags($_POST['parentno3'])); 
   $parentemail3= mysqli_real_escape_string($conn, strip_tags($_POST['parentemail3'])); 

  $skillzx = mysqli_query($conn, "UPDATE $tiyi SET sname ='$sname3',onames='$onames3',dob='$dob3',addy='$addy3',parentname ='$parentname3',parentno ='$parentno3', parentemail='$parentemail3' WHERE id=$upid3");
  
    echo'<script type="text/javascript">
        alert("Congratulations! you have successfully updated this student details.")
        </script>';
       
   }


   if (isset($_POST['datelogo'])) {
   $upd= mysqli_real_escape_string($conn, strip_tags($_POST['upd'])); 
  
  $targetDir4 = "imgg/";
  $fileName4 = basename($_FILES["updd"]["name"]);
  $fileName4 = $tstamp.$fileName4;
  $targetFilePath4 = $targetDir4 . $fileName4;
  $fileType4 = pathinfo($targetFilePath4,PATHINFO_EXTENSION);

   $shee5= move_uploaded_file($_FILES["updd"]["tmp_name"], $targetFilePath4);
  $mysqlux5= mysqli_query($conn, "UPDATE $tiyi SET logo ='$fileName4' WHERE id=$upd");
      
    echo'<script type="text/javascript">
        alert("Congratulations! you have successfully uploaded athe students picture.")
        </script>';
        //header("Location:$delec"); 
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
      <!-- /Sidebar -->

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
                <?php
                $schidd=($_GET['schoolid']);
$clasm=($_GET['id']);
$clast=($_GET['classname']);

                ?>
								<h3 class="page-title">
                Upload students singly for <?php echo $clast;?></h3> 
								<ul class="breadcrumb">
  
               <?php  $link2='addstudent.php?id='.$clasm.'&classname='.$clast.'&schoolid='.$schidd.'&tiyi='.$tiyi;?>
                 
               </ul>
               

									<li class="breadcrumb-item"> <a href="<?php echo $link2;?>"> <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#customer2"><i class="fa fa-home"></i>click here to add single students </button></a></li>
									
								</ul>
							</div>
						</div>
					</div>
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Upload students in bulk for<?php echo $clast;?></h3>
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
        <div id="tableid">
       <div class="table-responsive">
                              <table id="dataTableExample1" class="table table-bordered table-striped table-hover">
                                 <thead>
                                    <tr class="info">
                                       <th>S/N</th>
                                       <th>Surname</th>
                                       <th>othernames</th>
                                       <th>Date of birth</th>
                                       <th>Address</th>
                                       <th>student image</th>
                                       <th>Parent Name</th>
                                       <th>Parent Phone</th>
                                       <th>Parent  Email</th>
                                       <th>Edit</th>
                                       <th>Delete</th>
                                       
                                       
                                    </tr>
                                 </thead>
                                 <tbody>

 <?php 
             $feyi = mysqli_query($conn, "SELECT * FROM $tiyi where classid=$clasm");
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
                                       $logozz=$row['logo'];
                                       $fulln=$sname.''.$onames;
                         
            
                             ?>
                                        
                                    <tr>
                                    <td style="display: none;"><?php echo $upid; ?></td>  
                                       <td><?php echo $count;?></td>
                                       <td><?php echo $sname;?></td>
                                       <td><?php echo $onames?></td>
                                       <td><?php echo $dob;?></td>
                                       <td><?php echo $addy;?></td>
                                       <td><img width="70px" src=<?php if($logozz==""){echo"imgg/default.jpg";}
                                       else{echo"imgg/$logozz";}?>> </td>
                                       <td><?php echo $parentname;?></td>
                                       <td><?php echo $parentno;?></td>
                                       <td><?php echo $parentemail;?></td>
                                       <td style="display: none;"><?php echo $classr;?></td>
                                        <td style="display: none;"><?php echo $classname;?></td>
 
                                           <td class="text-right">
                                              <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-edit"></i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item upp" href="#" data-toggle="modal" data-target=""><i class="fa fa-pencil m-r-5"></i> Edit profile</a>


                                                        <a class="dropdown-item ria" href="#" data-toggle="modal" data-target=""><i class="fa fa-image m-r-5"></i> Replace passport</a>

                                                      </div>
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

<input type="button" onclick="printDiv('tableid')" value="print data!" />


 
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
        <!-- <tr>
          <td>
            <button onclick="myFunction()">Print this page</button>
          </td>
        </tr> -->
   
  
                                    
          <hr>

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
        $('#parentname2').val(data[7]);
        $('#parentno2').val(data[8]);
        $('#parentemail2').val(data[9]);

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
        //$('#adminid2').val(data[0]);
        $('#updi').val(data[0]);
        // alert()
      
       
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