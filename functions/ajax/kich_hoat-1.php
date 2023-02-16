<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$id = $_GET['id'];

	$goi = $action->getDetail('dang_ky_goi', 'id', $id);

	if ($goi['state'] == 1) {
		echo 'Đã kích hoạt';
	} else {
		$sql = "UPDATE dang_ky_goi SET state = 1 WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
		$user_id = $goi['user_id'];

		if ($goi['goi'] == 3) {
			$sql = "UPDATE user1 SET goi_vip = 1 WHERE id = $user_id";
			$result = mysqli_query($conn_vn, $sql);

			if ($result) {
				echo 'Kích hoạt thành công.';
			} else {
				echo 'Có lỗi xảy ra.';
			}
		} else {
			$user = $action->getDetail('user1', 'id', $user_id);
			$diem = $user['diem'];

			if ($goi['goi'] == 1) {
				$diem += 80;
			}

			if ($goi['goi'] == 2) {
				$diem += 250;
			}

			$sql = "UPDATE user1 SET diem = $diem WHERE id = $user_id";
			$result = mysqli_query($conn_vn, $sql);

			if ($result) {
				echo 'Kích hoạt thành công.';
			} else {
				echo 'Có lỗi xảy ra.';
			}
		}
	}