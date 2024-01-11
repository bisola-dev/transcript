<?php 
    require_once("cann.php");
require_once("choice.php");
 
$scstatus = $_GET['scstatus'];


$download_me = "download me...";
header("Content-type: text/plain");
header("Content-Disposition: attachment; filename=test.txt");
echo $download_me;
?>


if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    $try= $_POST['yloc2'];

// Initialize a file URL to 
// the variable 
$url = 
'https://contribute.geeksforgeeks.org/wp-content/uploads/gfg-40.png'; 
    
// Use basename() function to 
// return the file  
$file_name = basename($url); 
     
// Use file_get_contents() function 
// to get the file from url and use 
// file_put_contents() function to 
// save the file by using base name 
if(file_put_contents( $file_name, 
      file_get_contents($url))) { 
    echo "File downloaded successfully"; 
} 
else { 
    echo "File downloading failed."; 
}
}


?>

