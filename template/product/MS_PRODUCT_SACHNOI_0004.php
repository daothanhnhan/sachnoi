<?php 
	$product_new = $action->getList('product', '', '', 'product_id', 'desc', '', '6', '');//var_dump($product_new);
    $nghe_nhieu = $action->getList('product', '', '', 'dang_nghe', 'desc', '', '6', '');
?>
<style>

</style>
<div class="container book-new">
	<p class="tu-sach-book-new-title"><i class="fa fa-book"></i>Sách Mới Cập Nhật</p>
	<div class="row">
		<?php 
		foreach ($product_new as $item) { 
			$rowLang = $action_product->getProductLangDetail_byId($item['product_id'], $lang);
            if (empty($item['product_img'])) {
                $item['product_img'] = 'khong-ten.jpg';
            }
		?>
			<div class="col-xs-6 col-sm-2">

                    <div class="gb-product-item_cuanhom">

                        <div class="gb-product-item_cuanhom-img">

                            <a href="/<?= $rowLang['friendly_url'] ?>" class="book-aspect-box">
                                <img src="/images/<?= $item['product_img'] ?>" alt="<?= $rowLang['lang_product_name'] ?>" class="img-responsive book-aspect-img">
                                <div class="play-icon d-flex justify-content-center align-items-center"><i class="fa fa-play-circle"></i></div>
                                <?php include DIR_PRODUCT."MS_PRODUCT_SACHNOI_0008.php";?>
                            </a>

                        </div>
                        <div class="product-heart">
                            <i class="fa fa-heart" onclick="them_vao_tu_sach(<?= $item['product_id'] ?>)"></i>
                        </div>
                        <div class="gb-product-item_cuanhom-text">

                            <h2><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a></h2>

                            <p><i class="fa fa-at"></i> <?= $item['product_code'] ?></p>
                            <p><i class="fa fa-clock-o"></i> <?= $item['product_shape'] ?></p>
                            <p><i class="fa fa-play-circle"></i> <?= number_format($item['product_review']) ?> lượt nghe</p>
                            <p><?= number_format($item['dang_nghe']) ?> người đang nghe</p>

                        </div>

                    </div>

                </div>
		<?php } ?>
	</div>
    <div class="row btn-xem-them">
        <a href="/sach-moi-nhat">Xem thêm<i class="fa fa-long-arrow-right"></i></a>
    </div>
</div>

<div class="pro-book-list">
	<div class="container">
		<?php include DIR_PRODUCT."MS_PRODUCT_SACHNOI_0005.php";?>
	</div>
</div>

<div class="container book-new">
    <p class="tu-sach-book-new-title"><i class="fa fa-bolt"></i>Đang Được Nghe Nhiều</p>
    <div class="row">
        <?php 
        foreach ($nghe_nhieu as $item) { 
            $rowLang = $action_product->getProductLangDetail_byId($item['product_id'], $lang);
            if (empty($item['product_img'])) {
                $item['product_img'] = 'khong-ten.jpg';
            }
        ?>
            <div class="col-xs-6 col-sm-2">

                    <div class="gb-product-item_cuanhom">

                        <div class="gb-product-item_cuanhom-img">

                            <a href="/<?= $rowLang['friendly_url'] ?>" class="book-aspect-box">
                                <img src="/images/<?= $item['product_img'] ?>" alt="<?= $rowLang['lang_product_name'] ?>" class="img-responsive book-aspect-img">
                                <div class="play-icon d-flex justify-content-center align-items-center"><i class="fa fa-play-circle"></i></div>
                                <?php include DIR_PRODUCT."MS_PRODUCT_SACHNOI_0008.php";?>
                            </a>

                        </div>
                        <div class="product-heart">
                            <i class="fa fa-heart"></i>
                        </div>
                        <div class="gb-product-item_cuanhom-text">

                            <h2><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a></h2>

                            <p><i class="fa fa-at"></i> <?= $item['product_code'] ?></p>
                            <p><i class="fa fa-clock-o"></i> <?= $item['product_shape'] ?></p>
                            <p><i class="fa fa-play-circle"></i> <?= number_format($item['product_review']) ?> lượt nghe</p>
                            <p><?= number_format($item['dang_nghe']) ?> người đang nghe</p>

                        </div>

                    </div>

                </div>
        <?php } ?>
    </div>
    <div class="row btn-xem-them">
        <a href="/sach-nghe-nhieu">Xem thêm<i class="fa fa-long-arrow-right"></i></a>
    </div>
</div>