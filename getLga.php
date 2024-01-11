 <?php
require_once("cann.php");

$staty1 = $_POST['staty'];
$sql = "SELECT * FROM mytable WHERE stateid= $staty1";
$result = mysqli_query($conn, $sql);
$users_arr = array();
while($row = mysqli_fetch_array($result)){
	$lgaid = $row['id'];
	$lganame = $row['lga'];

	$users_arr[] = array("id"=>$lgaid, "lga" => $lganame);
}

echo json_encode($users_arr);



?>

