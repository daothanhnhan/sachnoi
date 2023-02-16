<?php 
  function dang_nhap () {
    global $conn_vn;
    if (isset($_POST['dang-nhap'])) {
      $phone = $_POST['phone'];

      $sql = "SELECT * FROM user1 WHERE phone = '$phone'";
      $result = mysqli_query($conn_vn, $sql);
      $num = mysqli_num_rows($result);

      if ($num == 1) {
        $row = mysqli_fetch_assoc($result);
        $_SESSION['user_gbvn_id'] = $row['id'];
        echo '<script>alert("Bạn đã đăng nhập thành công.");</script>';
      } else {
        echo '<script>alert("Số điện thoại không tồn tại.");</script>';
      }
    }
  }
  dang_nhap();
  // var_dump($_SESSION['user_gbvn_id']);
?>
<!-- Modal -->
<div id="dang-nhap" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Đăng nhập</h4>
      </div>
      <div class="modal-body">
        <form action="" method="post" accept-charset="utf-8" id="form-dang-nhap">
            
              <div class="form-group">
                <label for="pwd">Nhập số điện thoại</label>
                <input type="text" name="phone" class="form-control" id="pwd" pattern="[0-9]{1,}" required="">
              </div>
              
            <p>Lưu ý: số điện thoại phải là số điện thoại đã được kích hoạt cho bộ sách này, nếu bạn chưa kích hoạt vui lòng kích hoạt số điện thoại của bạn trước khi đăng nhập.</p>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Đóng lại</button>
        <button type="submit" name="dang-nhap" class="btn btn-primary" form="form-dang-nhap">Đăng nhập</button>
      </div>
    </div>

  </div>
</div>