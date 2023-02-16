<?php 

    if (isset($_GET['slug']) && $_GET['slug'] != '') {

        $slug = $_GET['slug'];



        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);

        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang['productcat_id'],$lang);

        $rows = $action_product->getProductList_byMultiLevel_orderProductId_search($rowCat['productcat_id'],'desc',$trang,12,$slug);//var_dump($rows);

    }else{

        $rows = $action->getList('product','','','product_id','desc',$trang,12,'san-pham');

        

    }



    $_SESSION['sidebar'] = 'productCat';

?>
<style>

</style>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_CUANHOM_0002.php";?>

<div class="gb-page-sanpham_cuanhom home-procat">

    <div class="container padding-mobile-procat">

        <div class="col-md-12">

            <?php //include DIR_SEARCH."MS_SEARCH_CUANHOM_0001.php";?>

            <div class="row" style="display: flex;flex-wrap: wrap;">

                <?php 

                $d = 0;

                foreach ($rows['data'] as $item) { 

                    $d++;

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