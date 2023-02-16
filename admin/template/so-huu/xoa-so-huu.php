<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM so_huu WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=so-huu');
?>