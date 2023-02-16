<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM khach_ao WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=khach-ao');
?>