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
    <title>Transcript Management System :: Apply now</title>
    <link rel="shortcut icon" href="imgg/logoyct.png" type="image/x-icon">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Light gray background */
        }

        .logo-container {
            text-align: center;
            margin-bottom: 30px;
        }

        .logo img {
            max-width: 200px;
            height: auto;
        }

        .card {
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #28a745; /* Green background for card header */
            border-radius: 15px 15px 0 0;
        }

        .card-title {
            color: #fff; /* White text color for card title */
            font-size: 24px;
            font-weight: bold;
        }

        .card-body {
            padding: 30px;
        }

        .form-label {
            color: #495057; /* Dark gray text color for form labels */
        }

        .btn-login {
            background-color: #ffc107; /* Yellow background for login button */
            color: #212529; /* Dark gray text color for login button */
            border: none;
            padding: 12px 30px;
            font-weight: bold;
            border-radius: 25px;
            transition: background-color 0.3s ease;
        }

        .btn-login:hover {
            background-color: #ffca2b; /* Lighter yellow background on hover */
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="logo-container">
        <div class="logo">
            <img src="imgg/yabalogo.jpg" alt="Yaba College of Technology Logo">
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header text-center">
                    <h2 class="card-title">Sign in to Transcript Portal</h2>
                </div>
                <div class="card-body">
                    <form method="post" action="">
                        <div class="mb-4">
                            <label for="matricNumber" class="form-label">Matric Number</label>
                            <input type="text" class="form-control" id="matricNumber" name="ato" placeholder="Enter your matric number">
                        </div>
                        <div class="mb-4">
                            <label for="surname" class="form-label">Surname</label>
                            <input type="text" class="form-control" id="surname" name="surn" placeholder="Enter your surname">
                        </div>
                        <div class="d-grid">
                            <button type="submit" name="submit" class="btn btn-login">SIGN IN</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
