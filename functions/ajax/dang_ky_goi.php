<?php 
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();
	$goi = $_GET['goi'];
	$user_id = $_SESSION['user_gbvn_id'];

	$sql = "INSERT INTO dang_ky_goi (user_id, goi) VAlUES ('$user_id', '$goi')";
	$result = mysqli_query($conn_vn, $sql);

	if ($result) {
		echo 'Bạn đã đăng ký gói thành công';
	} else {
		echo 'Có lỗi xảy ra.';
	}
?>