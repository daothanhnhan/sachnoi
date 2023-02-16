<?php 
$duoc_nghe_book = 0;
if (isset($_SESSION['user_gbvn_id'])) {
  // var_dump($arr_id);
	$arr_id_book = explode(',', $item['productcat_ar']);
  if ($user['goi_4'] == 1) {
    $duoc_nghe_book = 1;
  } else {
    if ($user['goi_3'] == 1) {
      // 153 kinh doanh, 152, 154
      if (in_array('154', $arr_id_book)) {
        $duoc_nghe_book = 1;
      }
      if (in_array('153', $arr_id_book)) {
        $duoc_nghe_book = 1;
      }
      if (in_array('152', $arr_id_book)) {
        $duoc_nghe_book = 1;
      }
    } else {
      if ($user['goi_2'] == 1) {
        // 154 tieu thuyet, 152
        if (in_array('153', $arr_id_book)) {
          $duoc_nghe_book = 1;
        }
        if (in_array('152', $arr_id_book)) {
          $duoc_nghe_book = 1;
        }
      } else {
        if ($user['goi_1'] == 1) {
          // 152 phat trien ban than
          if (in_array('152', $arr_id_book)) {
            $duoc_nghe_book = 1;
          }
        }
      }
    }
  }
}
?>
<?php if ($duoc_nghe_book == 1) { ?>
<div class="book-active">ĐÃ<br>KÍCH HOẠT</div>
<?php } ?>