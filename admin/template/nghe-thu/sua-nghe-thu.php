<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function nghe_thu ($id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$mp3 = '';
			if(isset($_FILES['mp3']) && $_FILES['mp3']['name'] != ""){
				$src= "../images/mp3/";
				uploadPicture($src, $_FILES['mp3']['name'], $_FILES['mp3']['tmp_name']);
				$mp3 = $_FILES['image']['mp3'];

			}

			$name = mysqli_real_escape_string($conn_vn, $_POST['name']);
			$mp3 = mysqli_real_escape_string($conn_vn, $_POST['mp3']);

			$add = '';
			if ($image != '') {
				$add .= " ,image = '$image' ";
			}

			$sql = "UPDATE nghe_thu SET name = '$name', mp3 = '$mp3' $add WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một nghe thử.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	nghe_thu($_GET['id']);

	$info = $action->getDetail('nghe_thu', 'id', $_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin nghe thử<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=nghe-thu">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $info['name'] ?>" required/>
            <p class="titleRightNCP">Ảnh</p>
            <input type="file" class="txtNCP1" name="image" />
            <img src="/images/<?= $info['image'] ?>" alt="" width="300">
            <p class="titleRightNCP">mp3</p>
            <input type="text" class="txtNCP1" name="mp3" value="<?= $info['mp3'] ?>" />
            <audio controls="">
			    <source src="/images/mp3/<?= $info['mp3'] ?>" type="audio/mpeg">
			</audio>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Phát Triển Thương Hiệu Cafe Link Việt Nam</p>