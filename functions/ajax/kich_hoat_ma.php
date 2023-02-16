<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$ma = $_GET['ma'];
	$dau = substr($ma, 0, 6);//echo $dau;
	$duoi = substr($ma, 6);//echo $duoi;

	if ($dau != 'CAF2LI') {
		echo 'Mã nhập không đúng.';
		die;
	}

	$dang_ky_goi = $action->getDetail('dang_ky_goi', 'id', $duoi);//var_dump($dang_ky_goi);
	if (empty($dang_ky_goi)) {
		echo 'Mã nhập không đúng.';
		die;
	}

	$goi = $dang_ky_goi['goi'];
	$user = $action->getDetail('user1', 'id', $dang_ky_goi['user_id']);
	$user_id = $dang_ky_goi['user_id'];

	if ($dang_ky_goi['state'] == 1) {
		echo 'Mã code đã kích hoạt.';
		die;
	}

	if ($goi['goi'] == 1) {
		$sql = "UPDATE user1 SET goi_1 = 1 WHERE id = $user_id";echo $sql;
		$result = mysqli_query($conn_vn, $sql);

		if ($result) {
			echo 'Kích hoạt thành công.';
		} else {
			echo 'Có lỗi xảy ra.';
		}
	}

	if ($goi['goi'] == 2) {
		$sql = "UPDATE user1 SET goi_2 = 1 WHERE id = $user_id";
		$result = mysqli_query($conn_vn, $sql);

		if ($result) {
			echo 'Kích hoạt thành công.';
		} else {
			echo 'Có lỗi xảy ra.';
		}
	}

	if ($goi['goi'] == 3) {
		$sql = "UPDATE user1 SET goi_3 = 1 WHERE id = $user_id";
		$result = mysqli_query($conn_vn, $sql);

		if ($result) {
			echo 'Kích hoạt thành công.';
		} else {
			echo 'Có lỗi xảy ra.';
		}
	}

	if ($goi['goi'] == 4) {
		$sql = "UPDATE user1 SET goi_4 = 1 WHERE id = $user_id";
		$result = mysqli_query($conn_vn, $sql);

		if ($result) {
			echo 'Kích hoạt thành công.';
		} else {
			echo 'Có lỗi xảy ra.';
		}
	}

	$sql = "UPDATE dang_ky_goi SET state = 1 WHERE id = '$duoi'";
	$result = mysqli_query($conn_vn, $sql);