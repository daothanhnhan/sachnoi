<?php 
    // $nghe_do = json_decode($user['product_id']);var_dump($user['product_id']);
    $audio = $action->getList('audio', 'user_id', $_SESSION['user_gbvn_id'], 'id', 'desc', '', '', '');//var_dump($audio);
?>
<style>

</style>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_CUANHOM_0004.php";?>

<div class="gb-page-sanpham_cuanhom home-procat tu-sach-yeu-thich">

    <div class="container padding-mobile-procat">

        <h1 class="title">Sách Đang Nghe Dở</h1>

        <div class="col-md-12">

            <?php //include DIR_SEARCH."MS_SEARCH_CUANHOM_0001.php";?>

            <div class="row" style="display: flex;flex-wrap: wrap;">

                <?php 

                $d = 0;

                foreach ($audio as $id) { 

                    $d++;

                    $item = $action_product->getProductDetail_byId($id['product_id'], $lang);
                    $rowLang = $action_product->getProductLangDetail_byId($id['product_id'], $lang);
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
                            <p><i class="fa fa-clock-o"></i><?= $item['product_shape'] ?></p>
                            <p><i class="fa fa-play-circle"></i><?= number_format($item['product_review']) ?> lượt nghe</p>
                            <p><?= number_format($item['dang_nghe']) ?> người đang nghe</p>

                        </div>

                    </div>

                </div>

                <?php 

                if ($d%3==0) {

                    // echo '<hr style="width:100%;border:0;" />';

                }

                } ?>

            </div>

            <div><?= $rows['paging'] ?></div>

        </div>

        <div class="col-md-3 hidden">
            <?php include DIR_SIDEBAR."MS_SIDEBAR_CUANHOM_0009.php";?>

            <?php include DIR_SIDEBAR."MS_SIDEBAR_CUANHOM_0001.php";?>

            <?php include DIR_SIDEBAR."MS_SIDEBAR_CUANHOM_0002.php";?>

            <?php include DIR_SIDEBAR."MS_SIDEBAR_CUANHOM_0004.php";?>

        </div>

    </div>

</div>