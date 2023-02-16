<?php 
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	if (empty($_SESSION['user_gbvn_id'])) {
		echo 'Bạn chưa đăng nhập.';die();
	}

	$user_id = $_SESSION['user_gbvn_id'];
	$product_id = $_GET['product_id'];

	$sql = "SELECT * FROM them_vao_tu_sach WHERE user_id = $user_id AND product_id = $product_id";
	$result = mysqli_query($conn_vn, $sql);

	$num = mysqli_num_rows($result);
	if ($num == 0) {
		$sql = "INSERT INTO them_vao_tu_sach (user_id, product_id) VALUES ('$user_id', '$product_id')";
		$result = mysqli_query($conn_vn, $sql);
		if ($result) {
			echo 'Bạn đã thêm vào thành công.';
		} else {
			echo 'Có lỗi xảy ra.';
		}
		
	} else {
		echo 'Bạn đã thêm vào rồi.';
	}

?>