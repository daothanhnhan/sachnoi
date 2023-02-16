<?php 

$action_product = new action_product(); 

$slug = isset($_GET['slug']) ? $_GET['slug'] : '';



$rowLang = $action_product->getProductLangDetail_byUrl($slug,$lang);

$name_pro = $rowLang['lang_product_name'];

$row = $action_product->getProductDetail_byId($rowLang[$nameColIdProduct_productLanguage],$lang);

$_SESSION['productcat_id_relate'] = $row[$nameColIdProductCat_product];

$_SESSION['sidebar'] = 'productDetail';

$arr_id = $row['productcat_ar'];

$arr_id = explode(',', $arr_id);

$productcat_id = (int)$arr_id[0];

$product_breadcrumb = $action_product->getProductCatLangDetail_byId($productcat_id, $lang);

$breadcrumb_url = $product_breadcrumb['friendly_url'];

$breadcrumb_name = $product_breadcrumb['lang_productcat_name'];

$use_breadcrumb = true;

if (empty($row['product_img'])) {
    $row['product_img'] = 'khong-ten.jpg';
}



$img_sub = json_decode($row['product_sub_img']);

$arr_id = array_unique($arr_id);
// var_dump($arr_id);

/////////////////////////////
$diem_nghe = 0;
$vip = 0;
if (isset($_SESSION['user_gbvn_id'])) {
  $giay = $action->getDetail_New('audio', array('user_id', 'product_id'), array($_SESSION['user_gbvn_id'], $row['product_id']))['giay'];//var_dump($giay);
  if (empty($giay)) {
    $giay = 0;
  }
////////////////////////////
  $user = $action->getDetail('user1', 'id', $_SESSION['user_gbvn_id']);
  $vip = $user['goi_vip'];
  $da_doc = $user['product_id'];//var_dump($da_doc);

  if ($user['diem'] != 0) {
    if ($da_doc == null) {
      $da_doc = array($row['product_id']);
      $da_doc = json_encode($da_doc);
      $da_doc = mysqli_real_escape_string($conn_vn, $da_doc);
      $sql = "UPDATE user1 SET product_id = '$da_doc' WHERE id = ".$_SESSION['user_gbvn_id'];
      $result = mysqli_query($conn_vn, $sql);
      $diem_nghe = 1;// lan dau tien
    } else {
      $da_doc = json_decode($da_doc);
      $da_doc_count = count($da_doc);

      if ($da_doc_count < $user['diem']) {
        if (!in_array($row['product_id'], $da_doc)) {
          $da_doc[] = $row['product_id'];
          $da_doc = json_encode($da_doc);
          $da_doc = mysqli_real_escape_string($conn_vn, $da_doc);
          $sql = "UPDATE user1 SET product_id = '$da_doc' WHERE id = ".$_SESSION['user_gbvn_id'];
          $result = mysqli_query($conn_vn, $sql);
          $diem_nghe = 1;// chua du diem
        }
      } else {
        if (in_array($row['product_id'], $da_doc)) {
          $diem_nghe = 1;// du diem va da nghe
        }
      }
      
    }
  }
  
}
/////////////////////////////
$duoc_nghe = 0;
if (isset($_SESSION['user_gbvn_id'])) {
  // var_dump($arr_id);
  if ($user['goi_4'] == 1) {
    $duoc_nghe = 1;
  } else {
    if ($user['goi_3'] == 1) {
      // 153 kinh doanh, 152, 154
      if (in_array('154', $arr_id)) {
        $duoc_nghe = 1;
      }
      if (in_array('153', $arr_id)) {
        $duoc_nghe = 1;
      }
      if (in_array('152', $arr_id)) {
        $duoc_nghe = 1;
      }
    } else {
      if ($user['goi_2'] == 1) {
        // 154 tieu thuyet, 152
        if (in_array('153', $arr_id)) {
          $duoc_nghe = 1;
        }
        if (in_array('152', $arr_id)) {
          $duoc_nghe = 1;
        }
      } else {
        if ($user['goi_1'] == 1) {
          // 152 phat trien ban than
          if (in_array('152', $arr_id)) {
            $duoc_nghe = 1;
          }
        }
      }
    }
  }
}
/////////////////////////////

/////////////////////////////

function review ($product_id) {
  global $conn_vn;
  $action = new action();
  $product = $action->getDetail('product', 'product_id', $product_id);
  $review = $product['product_review'] + 1;
  $sql = "UPDATE product SET product_review = $review WHERE product_id = $product_id";
  $result = mysqli_query($conn_vn, $sql);
}
review($row['product_id']);
// var_dump($row['product_review']);
// var_dump($row['dang_nghe']);
if (strpos($row['mp3'], 'http') === false) {
  $source = '/images/mp3/'.$row['mp3'];
} else {
  $source = $row['mp3'];
}

$sub_audio = $action->getList('sub_audio', 'product_id', $row['product_id'], 'id', 'asc', '', '', '');//var_dump($sub_auido);
$count_sub_audio = count($sub_audio);//var_dump($c)

if (isset($_GET['trang'])) {
  $sub_id = $_GET['trang'];
  if ($sub_id != 0) {
    $giay = 0;
    $source = $action->getDetail('sub_audio', 'id', $sub_id)['mp3'];
    $sub_audio_giay = $action->getDetail_New('sub_audio_giay', array('user_id', 'sub_audio_id'), array($_SESSION['user_gbvn_id'], $sub_id));
    // var_dump($sub_audio_giay);

    if (!empty($sub_audio_giay)) {
      $giay = $sub_audio_giay['giay'];
    }

    if (strpos($source, 'http') === false) {
      $source = '/images/mp3/'.$source;
    } else {
      
    }
  }
  
} else {
  $sub_id = 0;
  // get tab
  if (isset($_SESSION['user_gbvn_id'])) {
    $audio = $action->getDetail_New('audio', array('user_id', 'product_id'), array($_SESSION['user_gbvn_id'], $row['product_id']));
    if (!empty($audio)) {
      $sub_id = $audio['tab'];//var_dump($sub_id);
      if ($sub_id != 0) {
        $source = $action->getDetail('sub_audio', 'id', $sub_id)['mp3'];
        $giay = 0;
        $sub_audio_giay = $action->getDetail_New('sub_audio_giay', array('user_id', 'sub_audio_id'), array($_SESSION['user_gbvn_id'], $sub_id));
        if (!empty($sub_audio_giay)) {
          $giay = $sub_audio_giay['giay'];
        }
      }
    }
  }
}
if (isset($_GET['trang'])) {
  // set tab
  $audio = $action->getDetail_New('audio', array('user_id', 'product_id'), array($_SESSION['user_gbvn_id'], $row['product_id']));
  if (empty($audio)) {
    $user_id = $_SESSION['user_gbvn_id'];
    $product_id = $row['product_id'];
    $tab = $_GET['trang'];
    $sql = "INSERT INTO audio (user_id, product_id, giay, tab) VALUES ('$user_id', '$product_id', '0', '$tab')";
    $result = mysqli_query($conn_vn, $sql);
  } else {
    $audio_id = $audio['id'];
    $tab = $_GET['trang'];
    $sql = "UPDATE audio SET tab = '$tab' WHERE id = $audio_id";
    $result = mysqli_query($conn_vn, $sql);
  }
}

//////////////////////////
if ($duoc_nghe == 0) {
  if (strpos($row['product_sub_info1'], 'http') === false) {
    $source = '/images/mp3/'.$row['product_sub_info1'];
  } else {
    $source = $row['product_sub_info1'];
  }
  $giay = 0;
}
?>
<!-- <script type="text/javascript" src="https://cdn.staticfile.org/jquery/3.1.1/jquery.min.js"></script> -->
<link rel="stylesheet" href="/plugin/AudioPlayer/jQuery.AudioPlayer.css">
<script type="text/javascript" src="/plugin/AudioPlayer/jQuery.AudioPlayer.js"></script>
<style>
.img-xoay {
  animation: app-logo-spin infinite 15s linear
}

@keyframes app-logo-spin {
  from {
    transform: rotate(0deg)
  }
  to {
    transform: rotate(360deg)
  }
}

.img-xoay.pause {
    -webkit-animation-play-state: paused;
    animation-play-state: paused;
}

.gb-chitiet_sanpham_cuanhom .tai-ve-may {
    color: #fff;
    background-color: #17a2b8;
    border-color: #17a2b8;
    padding: 0.25rem 0.5rem;
    /*font-size: .77rem;*/
    line-height: 1.5;
    border-radius: 0.2rem;
    font-weight: bold;
}
.gb-chitiet_sanpham_cuanhom .them-vao-tu-sach {
  padding: 0.25rem 0.5rem;
    /*font-size: .77rem;*/
    line-height: 1.5;
    border-radius: 0.2rem;
    color: #fff;
    background-color: #ff4136;
    border-color: #ff4136;
    font-weight: bold;
}

.list-sub-audio {
  background: #472e55;
  max-height: 280px;
  overflow-y: auto;
  margin-bottom: 40px;
}
.list-sub-audio .item {
  border-bottom: 1px solid #fff;
  padding: 20px 50px;
  display: block;
}
.list-sub-audio .item .info {
  display: flex;
}
.list-sub-audio .item .info .cot-1 {
  width: 40px;
  color: #fff;
}
.list-sub-audio .item .info .cot-1 i {
  margin-top: 14px;
  font-size: 20px;
}
.list-sub-audio .item .info .cot-2 {

}
.list-sub-audio .item .info .cot-2 .text-1 {
  font-size: 16px;
  font-weight: bold;
  color: #fff;
}
.list-sub-audio .item .info .cot-2 .text-2 {
  color: #ffffff80;
}
.list-sub-audio .item .info .cot-2 .text-2 i {
  color: #ff4136;
}
.list-sub-audio .item .bam {
  color: #fff;
  margin-left: 40px;
}
.state-nghe {
  color: #ffc107 !important;
}
</style>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_CUANHOM_0003.php";?>

<div class="gb-chitiet_sanpham_cuanhom">

    <div class="gb-chitiet_sanpham_cuanhom-body">

        <div class="container">

            <div class="row">

                <div class="col-md-3">
                  <div class="aspect-box">
                    <img src="/images/<?= $row['product_img'] ?>" id="anh-sach" class="product-img aspect-img img-xoay pause" alt="sách">
                  </div>
                  
                </div>

                <div class="col-md-9">
                  <h1><?= $row['product_name'] ?></h1>
                  <hr>
                  <p><i class="fa fa-user"></i> Tác giả: <?= $row['product_code'] ?></p>
                  <p><i class="fa fa-clock-o"></i> Thười lượng <?= $row['product_shape'] ?></p>
                  <p><i class="fa fa-headphones"></i> <?= $row['product_name'] ?></p>
                  <p><i class="fa fa-play-circle"></i> <?= number_format($row['product_review']) ?> lượt nghe, <i class="fa fa-commenting"></i> <?= number_format($row['dang_nghe']) ?> người đang nghe</p>
                  <p>
                    <?php 
                    foreach ($arr_id as $item) { 
                      $procat = $action->getDetail('productcat', 'productcat_id', $item);
                    ?>
                    <i class="fa fa-book"></i> <?= $procat['productcat_name'] ?> 
                    <?php } ?>
                  </p>
                  <br>
                  <?php if ($duoc_nghe == 0) { ?>
                  <button type="button" data-toggle="modal" data-target="#dang-ky"><i class="fa fa-play"></i>Nghe thử</button>
                  <?php } else { ?>
                  <a href="<?= $source ?>" title="" download111 class="tai-ve-may"><i class="fa fa-download"></i> Tải về máy</a>
                  <a href="javascript:;" title="" class="them-vao-tu-sach" onclick="them_vao_tu_sach(<?= $row['product_id'] ?>)"><i class="fa fa-heart"></i> Thêm vào tủ sách</a>
                  <?php } ?>
                </div>

             </div>

         </div>

     </div>

     <div class="container product-detail-content">
      <div>
        <?php if (isset($_SESSION['user_gbvn_id'])) { ?>
        <div id="audioWrap"></div>
        
        <br>
        <br>
        <br>
        
        <script type="text/javascript">
    $(function() {
        var player = $.AudioPlayer;
        player.init({
            container: '#audioWrap'
            ,source: '<?= $source ?>'
            ,imagePath: '/plugin/AudioPlayer/image'
            ,debuggers: false
            ,allowSeek: true
            ,product_id: <?= $row['product_id'] ?>
            ,sub_id: <?= $sub_id ?>
            ,setTimeStar: <?= $giay ?>
            // ,timeupdateCallback: 10
            ,canplayCallback: function(data){
                // your code
                // alert('b');
            }
        });

        $('[data-url]').on('click', function(event) {
            event.preventDefault();

            player.updateSource({
                source: $(this).data('url')
            });
        });
    });
    </script>
    <?php } ?>

    <?php if ($duoc_nghe == 1) { ?>
    <?php if (!empty($count_sub_audio)) { ?>
    <div class="list-sub-audio">
      <a class="item" href="/<?= $_GET['page'] ?>/0">
        <div class="info">
          <div class="cot-1">
            <i class="fa fa-play-circle"></i>
          </div>
          <div class="cot-2">
            <p class="text-1 <?= $sub_id ==0 ? 'state-nghe' : '' ?>">Nghe Toán Bộ Cuốn sách Này</p>
            <p class="text-2"><i class="fa fa-clock-o"></i><?= $row['product_shape'] ?></p>
          </div>
        </div>
        <div class="bam">
          <p><i class="fa fa-play"></i>Bấm để nghe</p>
        </div>
      </a>
      <?php 
      $d = 0;
      foreach ($sub_audio as $sub) { 
        $d++;
      ?>
      <a class="item" href="/<?= $_GET['page'] ?>/<?= $sub['id'] ?>">
        <div class="info">
          <div class="cot-1">
            <i class="fa fa-play-circle"></i>
          </div>
          <div class="cot-2">
            <p class="text-1 <?= $sub_id==$sub['id'] ? 'state-nghe' : '' ?>">Phần <?= $d ?>: <?= $sub['name'] ?></p>
            <p class="text-2"><i class="fa fa-clock-o"></i><?= $sub['thoi_luong'] ?></p>
          </div>
        </div>
        <div class="bam">
          <p><i class="fa fa-play"></i>Bấm để nghe</p>
        </div>
      </a>
    <?php } ?>
    
    </div>
  <?php } ?>
<?php } ?>
      </div>
       <?= $row['product_content'] ?>
     </div>

     <div class="container">
       <p class="product-relate-text">Cùng Chủ Đề Cuốn Sách Đang Nghe</p>
       <div>
         <?php include DIR_PRODUCT."MS_PRODUCT_SACHNOI_0001.php";?>
       </div>
     </div>

 </div>

 <script>
$(document).ready(function(){
  $(".controls_toggle").click(function(){
    // alert('a');
    $("#anh-sach").toggleClass("pause");
  });
});
</script>

