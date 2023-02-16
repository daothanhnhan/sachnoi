<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function so_huu ($id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$popup = '';
			if(isset($_FILES['popup']) && $_FILES['popup']['name'] != ""){

				uploadPicture($src, $_FILES['popup']['name'], $_FILES['popup']['tmp_name']);
				$popup = $_FILES['popup']['name'];

			}

			$name = mysqli_real_escape_string($conn_vn, $_POST['name']);
			$num = mysqli_real_escape_string($conn_vn, $_POST['num']);

			$add = '';
			if ($image != '') {
				$add .= " ,image = '$image' ";
			}

			if ($popup != '') {
				$add .= " ,popup = '$popup' ";
			}

			$sql = "UPDATE so_huu SET name = '$name', num = '$num' $add WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một sở hữu.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	so_huu($_GET['id']);

	$info = $action->getDetail('so_huu', 'id', $_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin sở hữu<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=so-huu">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $info['name'] ?>" required/>
            <p class="titleRightNCP">Số</p>
            <input type="number" class="txtNCP1" name="num" value="<?= $info['num'] ?>" required/>
            <p class="titleRightNCP">Ảnh chính</p>
            <input type="file" class="txtNCP1" name="image" />
            <img src="/images/<?= $info['image'] ?>" alt="" width="300">
            <p class="titleRightNCP">Ảnh phụ</p>
            <input type="file" class="txtNCP1" name="popup" />
            <img src="/images/<?= $info['popup'] ?>" alt="" width="300">
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Phát Triển Thương Hiệu Cafe Link Việt Nam</p>