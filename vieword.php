<?php require_once("cann.php");
  require_once("choice.php");
  require_once("stud.php");


  


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
        <script type="text/javascript" src="jquery.js"></script>
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="assets/css/line-awesome.min.css">
		
		<!-- Select2 CSS -->
		<link rel="stylesheet" href="assets/css/select2.min.css">
		
		<!-- Datetimepicker CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- <script type="text/javascript" src="jquery.js"></script> -->
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.13.2/datatables.min.js"></script>
       <script src= "https://code.jquery.com/jquery-3.5.1.js" ></script>
        <script src = "https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js" > </script>
        <!-- <script src ="https://code.jquery.com/jquery-3.5.1.js" > </script> -->
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

                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table id="example2"  class="table table-striped custom-table mb-0 datatable">
                                    <thead>
                                        <tr>
                                       <th class="d-none"></th>
                                       <th>Full name</th>
                                       <th>Phone</th>
                                       <th>Matric no</th>
                                       <th>Remitta RRR</th>
                                       <th>Session</th>
                                       <th>Location</th>
                                       <th>Destination</th>
                                       <th>Destination Address</th>
                                       <th>Destination email</th>
                                       <th>CGPA</th>
                                      <th>Edit Destination</th>
                                      <th>Status</th>
                                      
                                      
                                         </tr>				
                                    </thead>
                                    <tbody>
                                  
<?php


         $num=0;
        $fedr= "SELECT * FROM [Transcript].[dbo].[Transcript_order] WHERE matricno='$semat'";
 $check=sqlsrv_query($conn,$fedr);

           while($row = sqlsrv_fetch_array($check)){
                $id= $row['id'];
                $Namex= $row['namex'];
                $Phone= $row['phone'];
                $Matricno= $row['matricno'];
                $Phone= $row['phone'];
                $Rrr= $row['remita_rrr'];
                $Session= $row['sessionname'];
                $Location= $row['locationx'];
                $Destination= $row['destination'];
                $Destinationaddress= $row['destinationadd'];
                $Destinationemail= $row['destemail'];
                $Cgpa= $row['cgpa'];
                $Status= $row['status'];  
                $studcopy= $row['studcopy'];                   
               ?>
                                   <tr>
                                    
                                     
                                       <td class="d-none"><?php echo $id;?> </td>
                                       <td><?php echo $Namex;?></td>
                                       <td><?php echo $Phone;?></td>
                                       <td><?php echo $Matricno;?></td>
                                       <td><?php echo $Rrr;?></td >
                                       <td><?php echo $Session;?></td>
                                       <td><?php echo $Location;?></td>
                                       <td><?php echo $Destination;?></td>
                                       <td><?php echo $Destinationaddress;?></td >
                                       <td><?php if($Destinationemail==""&& $studcopy==1){
                                         echo "This studentcopy will be sent to your email";}

                                         elseif($Destinationemail!="" && $studcopy==2)
                                        {echo "This Online copy will be sent to $Destinationemail";}?>
                                       </td >
                                       <td><?php echo $Cgpa;?></td>
                                       <td><?php if($Destinationaddress!=""){
                                         $encodedDestadd = urlencode($Destinationaddress);
                                         $encodedId = urlencode($id);
                                         
                                          $checky="updestadd.php?destadd=$encodedDestadd&id=$encodedId";
                                          echo'<a href="'.$checky.'">
                                          <i class="bi bi-pencil-square"> Edit</i>
                                          </a>';}
                                          else{echo "No address to be edited";}
                                            ?>
                                            </td>  

                                       <td><?php 
                                       if($Status==NULL || $Status==0){ 
                                         $link="https://onlinepay.portal.yabatech.edu.ng/?v1=$Rrr";
                                        echo '<div class="columns download">
                                        <a href="'.$link.'"> Proceed to pay</a>
                                        </div>';}

                                       elseif($Status==1){
                                          echo 'Payment made';
                                        } ?> </td>
                                        
                                        </tr>
                                        <?php }?>
                                    </tbody>
                                </table>
                                   
                
        <!-- /Main 
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

      // var ModalJQ = jQuery.noConflict(true);
      $(document).ready(function(){
        $('.upp').on('click', function(){
        //$('#dataTableExample1 tbody').on('click', 'tr', function(){
        $('#update').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children('td').map(function(){
        return $(this).text();
        }).get();
        console.log(data);
        //$('#adminid2').val(data[0]);
        $('#adminid5').val(data[0]);
        $('#destiny').val(data[8]);
       
       
        });
    
    });

			
    
    </script>

    

    </body>

</html>