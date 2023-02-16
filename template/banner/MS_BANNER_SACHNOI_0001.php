<?php 
    $banner_home = $action->getDetail('page', 'page_id', 49);
?>
<!-- <img src="/images/bg-20220126084703.png" alt="banner" class="banner-top"> -->
<div class="banner-top-2">
	<div class="anh-nen">
		
	</div>
	<div class="khung-nen">
		<div class="text-main">
			<p class="text-1"><?= $banner_home['page_des'] ?></p>
			<p class="text-2">SÁCH NÓI</p>
			<p class="text-3">CHỦ ĐỂ</p>
			<p class="text-4">HAY NHẤT MỌI THỜI ĐẠI</p>
			<p class="text-5"><?= $banner_home['page_name'] ?></p>
		</div>
		<div class="list">
			<?= $banner_home['page_content'] ?>
		</div>
		<button type="button" class="button-1 cac-dau-sach">Chi tiết đầu sách</button>
		<button type="button" class="button-2 nhan-uu-dai">Nhận ưu đãi</button>
		<img src="/images/<?= $banner_home['page_img'] ?>" alt="banner">
	</div>
</div>