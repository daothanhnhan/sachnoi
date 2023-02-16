<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$id = $_GET['id'];
	$price = $_GET['price'];
	$stt = $_GET['stt'];

	if ($stt == 1) {
		$sql = "UPDATE gia_goi SET price = '$price' WHERE id = $id";
	} else {
		$sql = "UPDATE gia_goi SET price_goc = '$price' WHERE id = $id";
	}
	
	$result = mysqli_query($conn_vn, $sql);
