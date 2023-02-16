<?php 
	$id = $_GET['id'];
	$sql = "SELECT * FROM sub_audio WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$product_id = $row['product_id'];

	$sql = "DELETE FROM sub_audio WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=audio-phu&product_id='.$product_id);
?>