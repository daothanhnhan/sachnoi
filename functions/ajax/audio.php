<?php 
	session_start();

	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	if (isset($_SESSION['user_gbvn_id'])) {
		$user_id = $_SESSION['user_gbvn_id'];
		$product_id = $_GET['product_id'];
		$sub_id = $_GET['sub_id'];
		$giay = $_GET['giay'];

		$sql = "SELECT * FROM audio WHERE user_id = $user_id AND product_id = $product_id";
		$result = mysqli_query($conn_vn, $sql);

		$num = mysqli_num_rows($result);
		if ($num == 0) {

			if ($sub_id == 0) {
				$sql = "INSERT INTO audio (user_id, product_id, giay) VALUES ('$user_id', '$product_id', '$giay')";
				$result = mysqli_query($conn_vn, $sql);
			} else {
				$sql = "INSERT INTO audio (user_id, product_id, giay) VALUES ('$user_id', '$product_id', '0')";
				$result = mysqli_query($conn_vn, $sql);

				$sql = "INSERT INTO sub_audio_giay (user_id, sub_audio_id, giay) VALUES ('$user_id', '$sub_id', '$giay')";
				$result = mysqli_query($conn_vn, $sql);
			}

			$product = $action->getDetail('product', 'product_id', $product_id);
			$dang_nghe = $product['dang_nghe'] + 1;
			$sql = "UPDATE product SET dang_nghe = $dang_nghe WHERE product_id = $product_id";
			$result = mysqli_query($conn_vn, $sql);
		} else {
			
			if ($sub_id == 0) {
				$sql = "UPDATE audio SET giay = '$giay' WHERE user_id = $user_id AND product_id = $product_id";
				$result = mysqli_query($conn_vn, $sql);
			} else {
				$sql = "SELECT * FROM sub_audio_giay WHERE user_id = $user_id AND sub_audio_id = $sub_id";
				$result = mysqli_query($conn_vn, $sql);
				$num = mysqli_num_rows($result);

				if ($num == 0) {
					$sql = "INSERT INTO sub_audio_giay (user_id, sub_audio_id, giay) VALUES ('$user_id', '$sub_id', '$giay')";
					$result = mysqli_query($conn_vn, $sql);
				} else {
					$sql = "UPDATE sub_audio_giay SET giay = '$giay' WHERE user_id = $user_id AND sub_audio_id = $sub_id";
					$result = mysqli_query($conn_vn, $sql);
				}

				
			}
			
		}
	}
	
?>