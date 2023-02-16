<?php 
  function dang_ky () {
    global $conn_vn;
    if (isset($_POST['dang-ky'])) {
      $name = mysqli_real_escape_string($conn_vn, $_POST['name']);
      $phone1 = $_POST['phone1'];
      $phone2 = $_POST['phone2'];

      $ok = 1;
      if ($phone1 != $phone2) {
        $ok = 0;
        echo '<script>alert("Số điện thoại không khớp");</script>';
        return false;
      }

      $sql = "SELECT * FROM user1 WHERE phone = '$phone1'";
      $result = mysqli_query($conn_vn, $sql);
      $num = mysqli_num_rows($result);
      if ($num != 0) {
        $ok = 0;
        echo '<script>alert("Số điện thoại đã tồn tại");</script>';
        return false;
      }

      if ($ok == 1) {
        $sql = "INSERT INTO user1 (name, phone) VALUES ('$name', '$phone1')";
        $result = mysqli_query($conn_vn, $sql);
        if ($result) {
          $_SESSION['user_gbvn_id'] = mysqli_insert_id($conn_vn);

          echo '<script>alert("Bạn đã đăng ký thành công.");</script>';
        } else {
          echo '<script>alert("Có lỗi xảy ra.");</script>';
        }
      }
    }
  }
  dang_ky();
  // var_dump($_SESSION['user_gbvn_id']);
?>

<!-- Modal -->
<div id="dang-ky" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Đăng ký thành viên</h4>
      </div>
      <div class="modal-body">
        <p>Xin vui lòng nhập điền đầy đủ thông tin trước khi ấn nút đăng ký</p>
        <br>
        <form action="" method="post" accept-charset="utf-8" id="form-dang-ky">
            <div class="form-group">
                <label for="email">Họ tên đầy đủ</label>
                <input type="text" name="name" class="form-control" id="email" required="">
              </div>
              <div class="form-group">
                <label for="pwd">Số điện thoại</label>
                <input type="text" name="phone1" class="form-control" id="pwd" pattern="[0-9]{1,}" required="">
              </div>
              <div class="form-group">
                <label for="pwd1">Nhập lại số điện thoại</label>
                <input type="text" name="phone2" class="form-control" id="pwd1" pattern="[0-9]{1,}" required="">
              </div>
            <p>Xin lưy ý: số điện thoại của bạn sẽ được dùng để đăng nhập vào sachnoi.me nên bạn hãy nhập thật chính xác số điện thoại bạn đang sử dụng.</p>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Đóng lại</button>
        <button type="submit" name="dang-ky" class="btn btn-primary" form="form-dang-ky">Đăng ký tài khoản</button>
      </div>
    </div>

  </div>
</div>