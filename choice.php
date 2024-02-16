<?php

				
            
			 	$semat= $_SESSION['Matricnum'];
			    $semal = $_SESSION['Email'];
                  $matno=$semat;
                  $email=$semal;

				$ssur= $_SESSION['Surname'] ;
			    $sfirs = $_SESSION['Firstname'] ;
                $sfirs = $_SESSION['Firstname'];
				$Phone= $_SESSION['Phone'];

                $name=$ssur.' '.$sfirs;
            

        $description='Transcript payment for '.$sfirs;

            if ($semal  == ""){header("Location:logout.php");}

            $fedr= "SELECT * FROM [Transcript].[dbo].[vw_Transcript_Request] WHERE Matricno='$semat'";
			
            $rex= "SELECT * FROM [Transcript].[dbo].[Transcript_Upload] WHERE Matricno='$semat'";
            $din=sqlsrv_query($conn,$rex);
            while($rowz = sqlsrv_fetch_array($din)){

             $yloc2= $rowz['Loc2'];
             $ma=$rowz['Matricno'];
            
            }
               
?>