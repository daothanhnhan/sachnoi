<?php 
     $product_related1 = $action_product->getListProductRelate_byIdCat_hasLimit($productcat_id, 6);
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<link rel="stylesheet" href="/plugin/animsition/css/animate.css">
<style>
.owl-carousel .owl-dots.disabled, .owl-carousel .owl-nav.disabled {
     display: block;
}
.product-relate {
    margin-bottom: 20px;
}
</style>
<div class="gb-slideshow_cuanhom product-relate">
    <div class="gb-slideshow_cuanhom-slide owl-carousel owl-theme">
         <?php
            foreach ($product_related1 as $item) {
                $rowLang = $action_product->getProductLangDetail_byId($item['product_id'], $lang);
                if (empty($item['product_img'])) {
                    $item['product_img'] = 'khong-ten.jpg';
                }
            ?> 
        <div class="item">
            <a href="/<?= $rowLang['friendly_url'] ?>" class="book-aspect-box">
                <img src="/images/<?= $item['product_img']?>" alt="slideshow" class="img-responsive book-aspect-img">
                <?php include DIR_PRODUCT."MS_PRODUCT_SACHNOI_0008.php";?>
            </a>
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
        <?php                            
          }
        ?>  
    </div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-slideshow_cuanhom-slide').owlCarousel({
            loop:true,
            margin:10,
            navSpeed:500,
            nav:true,
            dots: false,
            autoplay: true,
            rewind: true,
            navText:[],
            items:1,
            responsive:{
            0:{
                items:2
            },
            600:{
                items:6
            },
            1000:{
                items:6
            }
    }
        });
    });
</script>