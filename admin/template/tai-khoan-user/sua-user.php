<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function user ($id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";
			$image = '';

			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$diem = $_POST['diem'];
			$goi_1 = $_POST['goi_1'];
			$goi_2 = $_POST['goi_2'];
			$goi_3 = $_POST['goi_3'];
			$goi_4 = $_POST['goi_4'];

			$sql = "UPDATE user1 SET goi_1 = '$goi_1', goi_2 = '$goi_2', goi_3 = '$goi_3', goi_4 = '$goi_4' WHERE id = $id";//echo $sql;

			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa user thành công.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	user($_GET['id']);

	$info = $action->getDetail('user1', 'id', $_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin user<br /><br /></p>  
            <p class="subLeftNCP"><a href="index.php?page=tai-khoan-user">Quay lại</a><br /><br /></p>   
                    
        </div>
        <div class="boxNodeContentPage">
            <!-- <p class="titleRightNCP">Số đầu sách</p>
            <input type="number" class="txtNCP1" name="diem" value="<?= $info['diem'] ?>" required/> -->
            <p class="titleRightNCP">Gói 1</p>
            <select name="goi_1" class="txtNCP1">
            	<option value="0">Chưa</option>
            	<option value="1" <?= $info['goi_1']==1 ? 'selected' : '' ?> >Kích hoạt</option>
            </select>
            <p class="titleRightNCP">Gói 2</p>
            <select name="goi_2" class="txtNCP1">
            	<option value="0">Chưa</option>
            	<option value="1" <?= $info['goi_2']==1 ? 'selected' : '' ?> >Kích hoạt</option>
            </select>
            <p class="titleRightNCP">Gói 3</p>
            <select name="goi_3" class="txtNCP1">
            	<option value="0">Chưa</option>
            	<option value="1" <?= $info['goi_3']==1 ? 'selected' : '' ?> >Kích hoạt</option>
            </select>
            <p class="titleRightNCP">Gói 4</p>
            <select name="goi_4" class="txtNCP1">
            	<option value="0">Chưa</option>
            	<option value="1" <?= $info['goi_4']==1 ? 'selected' : '' ?> >Kích hoạt</option>
            </select>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Phát Triển Thương Hiệu Cafe Link Việt Nam</p>