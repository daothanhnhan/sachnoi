<?php 
	function doi_thong_tin () {
		global $conn_vn;
		if (isset($_POST['cap_nhat_thong_tin'])) {
			$name = mysqli_real_escape_string($conn_vn, $_POST['name']);
			$address = mysqli_real_escape_string($conn_vn, $_POST['address']);
			$sql = "UPDATE user1 SET name = '$name', address = '$address' WHERE id = ".$_SESSION['user_gbvn_id'];
			$result = mysqli_query($conn_vn, $sql);

			if ($result) {
				echo '<script>alert("Cập nhật thông tin thành công.")</script>';
			} else {
				echo '<script>alert("Có lỗi xảy ra.")</script>';
			}
		}
	}
	doi_thong_tin();
	$user = $action->getDetail('user1', 'id', $_SESSION['user_gbvn_id']);
?>

<style>

</style>
<div class="container thong-tin-ca-nhan">
	<h1 class="title">Thông Tin Cá Nhân</h1>
	<div class="box">
		<form action="" method="post">
		  <div class="form-group">
		    <label for="email">Họ tên:</label>
		    <input type="text" name="name" class="form-control" id="email" value="<?= $user['name'] ?>" required >
		  </div>
		  <div class="form-group">
		    <label for="email1">Địa chỉ:</label>
		    <input type="text" name="address" class="form-control" id="email1" value="<?= $user['address'] ?>">
		  </div>
		  <div class="form-group">
		    <label for="pwd">Số điện thoại:</label>
		    <input type="text" class="form-control" id="pwd" value="<?= $user['phone'] ?>" readonly="">
		  </div>
		  
		  <button type="submit" name="cap_nhat_thong_tin" class="btn btn-primary">Cập nhật thông tin</button>
		</form>
	</div>
</div>