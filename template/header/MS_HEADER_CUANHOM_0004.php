<?php 
  if (isset($_SESSION['user_gbvn_id'])) {
    $user = $action->getDetail('user1', 'id', $_SESSION['user_gbvn_id']);
  } else {
    $user = 0;
  }
  $gia_goi = $action->getList('gia_goi', '', '', 'id', 'asc', '', '', '');
?>
<style>

</style>
<!-- Modal -->
<div id="kich-hoat" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Nhận thẻ kích hoạt nghe sách</h4>
      </div>
      <div class="modal-body">
        <div id="chon-goi">
          <div class="radio">
            <label><input type="radio" name="goi" value="1"><span>Gói 1: Giá <?= $gia_goi[0]['price'] ?>K</span>
              <ul>
                <li class="special">20+ cuốn phát triển bản thân</li>
                <li>Combo 20+ sách phát triển bản thân hay nhất mọi thời đại</li>
                <li>Giá tốt nhất để bắt đầu</li>
              </ul>
            </label>
          </div>
          <div class="radio">
            <label><input type="radio" name="goi" value="2"><span>Gói 2: <?= $gia_goi[1]['price'] ?>K</span>
              <ul>
                <li class="special">40+ cuốn sách phát triển bản thân và tiểu thuyết</li>
                <li>Combo 20+ sách phát triển bản thân & Combo 20+ tiểu thuyết hay nhất mọi thời đại</li>
                <li>Lựa chọn tốt nhất cho thành viên</li>
              </ul>
            </label>
          </div>
          <div class="radio">
            <label><input type="radio" name="goi" value="3"><span>Gói 3: Giá <?= $gia_goi[2]['price'] ?>K</span>
              <ul>
                <li class="special">80+ cuốn sách phát triển bản thân, tiểu thuyết và kinh doanh</li>
                <li>Combo 20+ sách phát triển bản thân & Combo 20+ sách tiểu thuyết & Combo 40+ sách kinh doanh</p>
                <li>Lựa chọn tốt nhất cho thành viên</li>
              </ul>
            </label>
          </div>
          <div class="radio">
            <label><input type="radio" name="goi" value="4"><span>Gói 4: Giá <?= $gia_goi[3]['price'] ?>K</span>
              <ul>
                <li class="special">Toàn bộ kho sách</li>
                <li>Nghe toàn bộ kho sách bao gồm các chủ đề: Phát Triển Bản Thân, Tiểu Thuyết, Kinh Doanh, Hàm Dưỡng Tâm Hồn ....</p>
                <li>Miễn phí cập nhật thêm sách 1 năm (mỗi ngày 1 cuốn sách mới), update sách theo yêu cầu.</li>
                <li>Giá tốt nhất, được khuyên dùng</li>
              </ul>
            </label>
          </div>
          <div class="nut-dat-mua">
            <button class="btn btn-primary" onclick="dat_mua_ngay()">ĐẶT MUA NGAY -></button>
          </div>
        </div>
        <div id="mua-goi" style="display: none;">
          <p class="text-chuyen-khoan-1">Chuyển khoản Online</p>
          <p class="text-chuyen-khoan-2">Quý khách có thể sử dụng ứng dụng Mobile Banking, Internet Banking hoặc bất kỳ hình thức chuyển khoản NHANH 24/7 thường dùng của quý khách để chuyển khoản tới tài khoản dưới đây:</p>
          <hr>
          <p>Số tiền chuyển: <span id="tien"></span></p>
          <hr>
          <p>Tài khoản</p>
          <p>Số tài khoản: 123456789</p>
          <p>Ngân hàng VietTinBank</p>
          <p>Chủ TK: NGUYEN XUAN TRUONG</p>
          <p>Chi nhánh Hà Nội</p>
          <hr>
          <p>Nội dung chuyển khoản:</p>
          <p>Hãy nhập số điện thoại của bạn vào phần nội dung chuyển khoản như nội dung dưới đây:</p>
          <p class="phone"><?= $user['phone'] ?></p>
          
          <p class="note">Sau khi thực hiện chuyển khoản xong, bạn hãy bấm vào nút xác nhận đã chuyển khoản dưới đây</p>
          <br>
          <div class="nut-dat-mua">
            <button type="" class="btn btn-default" onclick="quay_lai()"><- Quay lại</button>
            <button type="" class="btn btn-success" onclick="da_chuyen_khoan()">Tôi đã chuyển khoản</button>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>

  </div>
</div>

<script>
  function dat_mua_ngay () {
    var chon = document.querySelector('input[name="goi"]:checked');
    // alert(chon);
    if (chon == null) {
      alert('Xin vui lòng chọn gói tài khoản');
    } else {
      // alert(chon.value);
      document.getElementById("chon-goi").style.display = "none";
      document.getElementById("mua-goi").style.display = "block";
      if (chon.value == 1) {
        document.getElementById("tien").innerHTML = '<?= $gia_goi[0]['price'] ?>,000đ';
      }
      if (chon.value == 2) {
        document.getElementById("tien").innerHTML = '<?= $gia_goi[1]['price'] ?>,000đ';
      }
      if (chon.value == 3) {
        document.getElementById("tien").innerHTML = '<?= $gia_goi[2]['price'] ?>,000đ';
      }
      if (chon.value == 4) {
        document.getElementById("tien").innerHTML = '<?= $gia_goi[3]['price'] ?>,000đ';
      }
    }
  }

  function quay_lai () {
    document.getElementById("chon-goi").style.display = "block";
      document.getElementById("mua-goi").style.display = "none";
  }

  function da_chuyen_khoan () {
    var goi = document.querySelector('input[name="goi"]:checked').value;

    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
      // document.getElementById("demo").innerHTML = this.responseText;
        alert(this.responseText);
      }
    xhttp.open("GET", "/functions/ajax/dang_ky_goi.php?goi="+goi, true);
    xhttp.send();
  }
</script>