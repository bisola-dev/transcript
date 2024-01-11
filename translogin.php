<?php require_once('cann.php');


		if ($_SERVER['REQUEST_METHOD'] == 'POST'){

			$surn = trim($_POST['surn']);
			$ato= trim($_POST['ato']);

			if(!preg_match("/^[a-zA-Z0-9\/]+$/",$ato)) {
				echo'<script type="text/javascript">
					alert("The matric number provided is invalid, please retry.");
					</script>';
					
				}
			else{

				$fedr= "SELECT * FROM [EBPORTAL].[dbo].[Biodata] WHERE Matricnum='$ato' AND Surname='$surn'";
				$check=sqlsrv_query($conn,$fedr);
				$row = sqlsrv_fetch_array($check, SQLSRV_FETCH_ASSOC);
				//var_dump($row);

				if ($row == 0){
				
				
				echo '<script type="text/javascript">
				alert("No record found,please input the correct details.");
				 </script>';
				
		          }

				else{

				$semat= $row['Matricnum'];
				$semal=$row['Email'];
				$ssur=$row['Surname'];
				$sfirs=$row['Firstname'];
				$Phone=$row['Phone'];
			
			 	$semat= $_SESSION['Matricnum'] = $semat;
			    $semal = $_SESSION['Email'] = $semal;

				$ssur= $_SESSION['Surname'] = $ssur;
				$sfirs = $_SESSION['Firstname'] = $sfirs;
				$Phone= $_SESSION['Phone'] = $Phone;
				
					echo '<script type="text/javascript">
					alert("Congratulations! You have successfully logged in.")
					window.location.href="vieword.php";
					</script>';

				}

				// while($row = sqlsrv_fetch_array($check, SQLSRV_FETCH_ASSOC) ){

					

				// 	$semat= $row['Matricno'];
				// 	$semal=$row['Email'];
				// 	$srem=$row['Remita_rrr'];
			
				// 	$semat= $_SESSION['Matricno'] = $semat;
				// 	$semal = $_SESSION['Email'] = $semal;
				// 	$srem = $_SESSION['Remita_rrr']=$srem;
	
				// 	}

			}
				
		}					
				

	
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transcript Login</title>
    <link rel="shortcut icon" href="imgg/logoyct.png" type="image/x-icon">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <style>
        body{
			background-color: #146209; /* For browsers that do not support gradients */
  			background-image: linear-gradient(green, lightgreen);
		}

        .logo {
			text-align: center;
		}

        .logo img {
		max-width: 80px;
		height: auto;
		}

        .bgcolor{
            background-color: green; /* For browsers that do not support gradients */
  			background-image: linear-gradient(green, white);
        }
    </style>
</head>

<body>
	
    <div class="container mt-5">
        <div class="row justify-content-center" style="min-height: 100vh;">

            <div class="col-md-4">
                <div class="mb-3 logo">
                    <img src="imgg/yabalogo.jpg">
                </div>
                <div class="card">
                    <div class="card-header bgcolor mb-3">
						
                        <h5 class="text-center text-white">Sign in to Transcript Portal</h5>
                        <!-- <p class="text-center text-white">Provide your surname and matric no below</p> -->
                    </div>
					<form method="post" action="">	
                    <div class="card-body">
                             <div class="mb-4">
                                <label for="matricNumber" class="form-label">Matric Number</label>
                                <input type="text" class="form-control" id="matricNumber" name="ato"
                                    placeholder="Enter your matric number">
                               </div>

							<div class="mb-4">
                                <label for="surname" class="form-label">Surname</label>
                                <input type="text" class="form-control" id="surname" placeholder="Enter your surname" name="surn">
                            </div>

                            <div class="d-grid">
                                <button type="submit" name="submit"  class="btn btn-warning text-white">SIGN IN</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS (Make sure to include the required Popper.js and Bootstrap JS dependencies) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
		
</body>

</html>

		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.2.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/app.js"></script>
		
    </body>

</html>