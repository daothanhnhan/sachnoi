<?php 
	$gia_goi_1 = $action->getDetail('gia_goi', 'id', 1);
	$gia_goi_2 = $action->getDetail('gia_goi', 'id', 2);
	$gia_goi_3 = $action->getDetail('gia_goi', 'id', 3);
	$gia_goi_4 = $action->getDetail('gia_goi', 'id', 4);

  function dang_ky_ngay () {
    global $conn_vn;
    if (isset($_POST['dang-ky-ngay'])) {
      $name = mysqli_real_escape_string($conn_vn, $_POST['name']);
      $address = mysqli_real_escape_string($conn_vn, $_POST['address']);
      $phone = $_POST['phone'];
      // $phone2 = $_POST['phone2'];
      $goi = $_POST['goi'];

      $ok = 1;
      // if ($phone1 != $phone2) {
      //   $ok = 0;
      //   echo '<script>alert("Số điện thoại không khớp");</script>';
      //   return false;
      // }

      $sql = "SELECT * FROM user1 WHERE phone = '$phone'";
      $result = mysqli_query($conn_vn, $sql);
      $num = mysqli_num_rows($result);
      if ($num != 0) {
        $ok = 0;
        $user = mysqli_fetch_assoc($result);
        $user_id = $user['id'];
        // echo '<script>alert("Số điện thoại đã tồn tại");</script>';
        $sql = "INSERT INTO dang_ky_goi (user_id, goi) VAlUES ('$user_id', '$goi')";
		$result = mysqli_query($conn_vn, $sql);

        $_SESSION['user_gbvn_id'] = $phone;
        header('Location: /thank-you/'.$phone.'/'.$goi);
        return false;
      }

      if ($ok == 1) {
        $sql = "INSERT INTO user1 (name, phone, address) VALUES ('$name', '$phone', '$address')";
        $result = mysqli_query($conn_vn, $sql);
        if ($result) {
          $_SESSION['user_gbvn_id'] = mysqli_insert_id($conn_vn);
          $user_id = $_SESSION['user_gbvn_id'];

          // echo '<script>alert("Bạn đã đăng ký tài khoản thành công.");</script>';
          	$sql = "INSERT INTO dang_ky_goi (user_id, goi) VAlUES ('$user_id', '$goi')";
			$result = mysqli_query($conn_vn, $sql);

			header('Location: /thank-you/'.$phone.'/'.$goi);
        
        } else {
          echo '<script>alert("Có lỗi xảy ra.");</script>';
        }
      }
    }
  }
  dang_ky_ngay();
  // var_dump($_SESSION['user_gbvn_id']);
?>
<style>

</style>
<div class="uu-dai-dac-biet" id="uu-dai-dac-biet-id">
	<div class="container">
		<div class="row info-top" >
			<span class="title">ƯU ĐÃI ĐẶC BIỆT</span>

			<img src="/images/layer-68-copy-2-20210412042554.png" alt="pháo" class="phao-1" style="">
			<img src="/images/layer-68-copy-20210412042636.png" alt="pháo" class="phao-2">
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="box-left">
					<div class="row">
						<div class="col-xs-6 blue">
							<div class="box-item-1">
								GÓI 1:
							</div>
							<div class="box-item-2">
								<div class="text-1">
									<span class="text">Giá gốc</span><br>
									<span class="price"><del><?= $gia_goi_1['price_goc'] ?>K</del></span>
									<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" preserveAspectRatio="none" viewBox="0 0 1664 1896.0833" class="nhap-nhay" fill="rgba(106, 52, 255, 1)"> <path d="M45 1651q-19 19-32 13t-13-32V160q0-26 13-32t32 13l710 710q8 8 13 19V160q0-26 13-32t32 13l710 710q19 19 19 45t-19 45l-710 710q-19 19-32 13t-13-32V922q-5 10-13 19z"></path> </svg>
								</div>
								<div class="text-2">
									<span class="text">Chỉ còn</span><br>
									<span class="price"><?= $gia_goi_1['price'] ?>K</span>
								</div>
							</div>
							<div class="box-item-3">
								<p>20+ SÁCH NÓI<br>
								PHÁT TRIỂN BẢN THÂN</p>
								<button>GIÁ TỐT NHẤT</button>
							</div>
						</div>
						<div class="col-xs-6 border-verify red" style="border-right: 0;">
							<div class="box-item-1">
								GÓI 2:
							</div>
							<div class="box-item-2">
								<div class="text-1">
									<span class="text">Giá gốc</span><br>
									<span class="price"><del><?= $gia_goi_2['price_goc'] ?>K</del></span>
									<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" preserveAspectRatio="none" viewBox="0 0 1664 1896.0833" class="nhap-nhay" fill="rgba(106, 52, 255, 1)"> <path d="M45 1651q-19 19-32 13t-13-32V160q0-26 13-32t32 13l710 710q8 8 13 19V160q0-26 13-32t32 13l710 710q19 19 19 45t-19 45l-710 710q-19 19-32 13t-13-32V922q-5 10-13 19z"></path> </svg>
								</div>
								<div class="text-2">
									<span class="text">Chỉ còn</span><br>
									<span class="price"><?= $gia_goi_2['price'] ?>K</span>
								</div>
							</div>
							<div class="box-item-3">
								<p>40+ PHÁT TRIỂN BẢN THÂN VÀ TIỂU THUYẾT KINH ĐIỂN</p>
								<button>CHỌN NHIỀU NHẤT</button>
							</div>
						</div>
						<div class="col-xs-6 border-verify red" style="border-left: 0;">
							<div class="box-item-1">
								GÓI 3:
							</div>
							<div class="box-item-2">
								<div class="text-1">
									<span class="text">Giá gốc</span><br>
									<span class="price"><del><?= $gia_goi_3['price_goc'] ?>K</del></span>
									<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" preserveAspectRatio="none" viewBox="0 0 1664 1896.0833" class="nhap-nhay" fill="rgba(106, 52, 255, 1)"> <path d="M45 1651q-19 19-32 13t-13-32V160q0-26 13-32t32 13l710 710q8 8 13 19V160q0-26 13-32t32 13l710 710q19 19 19 45t-19 45l-710 710q-19 19-32 13t-13-32V922q-5 10-13 19z"></path> </svg>
								</div>
								<div class="text-2">
									<span class="text">Chỉ còn</span><br>
									<span class="price"><?= $gia_goi_3['price'] ?>K</span>
								</div>
							</div>
							<div class="box-item-3">
								<p>80+ KINH DOANH, TIỂU THUYẾT VÀ PHÁT TRIỂN BẢN THÂN</p>
								<button>CHỌN NHIỀU NHẤT</button>
							</div>
						</div>
						<div class="col-xs-6 yellow">
							<div class="box-item-1">
								GÓI 4:
							</div>
							<div class="box-item-2">
								<div class="text-1">
									<span class="text">Giá gốc</span><br>
									<span class="price"><del><?= $gia_goi_4['price_goc'] ?>K</del></span>
									<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" preserveAspectRatio="none" viewBox="0 0 1664 1896.0833" class="nhap-nhay" fill="feb930"> <path d="M45 1651q-19 19-32 13t-13-32V160q0-26 13-32t32 13l710 710q8 8 13 19V160q0-26 13-32t32 13l710 710q19 19 19 45t-19 45l-710 710q-19 19-32 13t-13-32V922q-5 10-13 19z"></path> </svg>
								</div>
								<div class="text-2">
									<span class="text">Chỉ còn</span><br>
									<span class="price"><?= $gia_goi_4['price'] ?>K</span>
								</div>
							</div>
							<div class="box-item-3">
								<p>TOÀN BỘ KHO SÁCH GỒM 4 CHỦ ĐỀ VỚI HƠN 500 ĐẦU SÁCH</p>
								<button>KHUYÊN DÙNG</button>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<hr>
						</div>
					</div>
					<div class="row thanh-toan">
						<div class="col-md-6 col-xs-7">
							<div class="box-info">
								<p>THANH TOÁN ONLINE</p>
								<p class="mau">
									<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" preserveAspectRatio="none" viewBox="0 0 1664 1896.0833" class="" fill="rgba(48, 232, 189, 1)"> <path d="M256 1344q0-26-19-45t-45-19q-27 0-45.5 19t-18.5 45q0 27 18.5 45.5T192 1408q26 0 45-18.5t19-45.5zm160-512v640q0 26-19 45t-45 19H64q-26 0-45-19t-19-45V832q0-26 19-45t45-19h288q26 0 45 19t19 45zm1184 0q0 86-55 149 15 44 15 76 3 76-43 137 17 56 0 117-15 57-54 94 9 112-49 181-64 76-197 78h-129q-66 0-144-15.5t-121.5-29T702 1580q-123-43-158-44-26-1-45-19.5t-19-44.5V831q0-25 18-43.5t43-20.5q24-2 76-59t101-121q68-87 101-120 18-18 31-48t17.5-48.5T881 310q7-39 12.5-61t19.5-52 34-50q19-19 45-19 46 0 82.5 10.5t60 26 40 40.5 24 45 12 50 5 45 .5 39q0 38-9.5 76t-19 60-27.5 56q-3 6-10 18t-11 22-8 24h277q78 0 135 57t57 135z"></path> </svg>
									<span class="to_nho_hai">ĐƯƠC KHUYÊN DUNG</span>
								
								</p>
								<ul>
									<li class="">Ngay sau khi thanh toán thành công, bạn sẽ được cấp một tài khoản nghe sách Online trên website: sachnoi.me&nbsp;</li>
								</ul>
								<a href="javascript:void()" title="" class="thanh-toan-online">Hướng dẫn thanh toán online</a>
							</div>
						</div>
						<div class="col-md-6 col-xs-5">
							<img src="/images/anh-3-20210903032747.png" alt="thanh toán">
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<hr>
						</div>
					</div>
					<div class="row tai-nha">
						<div class="col-md-5 col-xs-9 box-info">
							<p>THANH TOÁN TẠI NHÀ</p>
							<p class="mau"><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" preserveAspectRatio="none" viewBox="0 0 1792 1896.0833" class="" fill="rgba(206, 8, 47, 1)"> <path d="M1024 1375v-190q0-14-9.5-23.5T992 1152H800q-13 0-22.5 9.5T768 1185v190q0 14 9.5 23.5t22.5 9.5h192q13 0 22.5-9.5t9.5-23.5zm-2-374l18-459q0-12-10-19-13-11-24-11H786q-11 0-24 11-10 7-10 21l17 457q0 10 10 16.5t24 6.5h185q14 0 23.5-6.5t10.5-16.5zm-14-934l768 1408q35 63-2 126-17 29-46.5 46t-63.5 17H128q-34 0-63.5-17T18 1601q-37-63-2-126L784 67q17-31 47-49t65-18 65 18 47 49z"></path> </svg> KHÔNG ĐƯỢC KHUYÊN DÙNG</p>
							<ul>
								<li class="">Nhận thẻ kích hoạt tài khoản nghe sách tại nhà</li>
								<li class="">Phí ship 30k</li>
								<li class="">Thời gian giao hàng kéo dài (4 - 10 ngày)</li>
								<!-- <li class="">Nhiều địa điểm không được phép giao hàng</li> -->
							</ul>
						</div>
						<div class="col-md-7 col-xs-3">
							<img src="/images/the_code_kich_hoat-05-copy-20210927040635.png" alt="thanh toán tại nhà">
							<img src="/images/the_code_kich_hoat-06-20210927040159.png" alt="thanh toán tại nhà">
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="box-right">
					<div class="row">
						<div class="col-md-12">
							<p class="text-1">CHÍNH SÁCH SẢN PHẨM</p>
						</div>
						<div class="col-md-12">
							<ul>
								<li class="">Mua 1 lần sử dụng mãi mãi</li>
								<li class="">Không tốn thêm bất kỳ khoản chi phí nào khác</li>
								<li class="">Bảo hành dữ liệu trọn đời</li>
								<li class="">Update thêm các đầu sách mới theo yêu cầu</li>
								<!-- <li class="">Tặng 300+ khóa học cực chất<br></li> -->
							</ul>
						</div>
						<div class="col-md-12">
							<hr>
						</div>
						<div class="col-md-12">
							<form action="" method="post" accept-charset="utf-8">
								<input type="text" name="name" class="text" placeholder="Họ và tên" required="">
								<input type="tel" name="phone" class="text" placeholder="Số điện thoại" pattern="[0-9]{1,}" required="">
								<input type="text" name="address" class="text" placeholder="Địa chỉ">
								<div class="box-radio">
									<div class="radio">
									  <label><input type="radio" name="goi" value="1" required="">GÓI 1: GIÁ <?= $gia_goi_1['price'] ?>K - Bộ 20+ SÁCH PHÁT TRIỂN BẢN THÂN HAY NHẤT MỌI THỜI ĐẠI</label>
									</div>
									<div class="radio">
									  <label><input type="radio" name="goi" value="2">GÓI 2: GIÁ <?= $gia_goi_2['price'] ?>K - COMBO 40+ SÁCH NÓI TIỂU THUYẾT KINH ĐIỂN VÀ PHÁT TRIỂN BẢN THÂN</label>
									</div>
									<div class="radio">
									  <label><input type="radio" name="goi" value="3">GÓI 3: GIÁ <?= $gia_goi_3['price'] ?>K - COMBO 80+ SÁCH NÓI KINH DOANH LÀM GIÀU, TIỂU THUYẾT VÀ PHÁT TRIỂN BẢN THÂN</label>
									</div>
									<div class="radio">
									  <label><input type="radio" name="goi" value="4">GÓI 4: GIÁ <?= $gia_goi_4['price'] ?>K - TOÀN BỘ KHO SÁCH bao gồm các chủ đề: Kinh Doanh Làm Giàu, Phát Triển Bản Thân, Tiểu Thuyết Kinh Điển, Hàm Dưỡng Tâm Hồn....</label>
									</div>
								</div>
								<div class="box-text">
									<p>Thời điểm bạn đưa ra quyết định <br>
									là lúc vận mệnh của bạn được hình thành!</p>
								</div>
								<div class="btn">
									<button type="submit" name="dang-ky-ngay">ĐĂNG KÝ NGAY</button>
								</div>
								
							</form>
						</div>
					</div>
					
				</div>
			</div>

			
		</div>
	</div>
</div>