<!--MENU MOBILE-->

<?php include_once DIR_MENU."MS_MENU_CUANHOM_0002.php"; ?>

<!-- End menu mobile-->

<?php include DIR_HEADER."MS_HEADER_CUANHOM_0002.php";?>
<?php include DIR_HEADER."MS_HEADER_CUANHOM_0003.php";?>
<?php include DIR_HEADER."MS_HEADER_CUANHOM_0004.php";?>
<?php include DIR_HEADER."MS_HEADER_CUANHOM_0005.php";?>

<!--MENU DESTOP-->
<style>
.container-fluid {
    /*padding-left: 0;*/
    /*padding-right: 0;*/
}
.gb-main-menu_cuanhom .cssmenu ul {
    text-align: center;
}
</style>
<header>

    <div class="gb-header-cuanhom">

        <div class="container-fluid1 container-mobile1">

            <div class="gb-top-header_cuanhom">

                <div class="row" style="margin: 0;">

                    <div class="col-md-6 col-sm-6">

                        <div class="gb-top-header_cuanhom-left">

                            <!-- <ul>

                                <li><a href="">Đăng nhập</a></li>

                                <li><a href="">Đăng ký</a></li>

                            </ul> -->
                            <p class="hidden-xs"><?= $rowConfig['web_name'] ?></p>
                            <p class="hidden-sm hidden-md hidden-lg" style="height: 40px;margin-top: 15px;"><?= $rowConfig['content_home3'] ?></p>

                        </div>

                    </div>

                    <div class="col-md-6 col-sm-6">

                        <div class="gb-top-header_cuanhom-right">

                            <ul>

                                <li><i class="fa fa-envelope-o" aria-hidden="true"></i><?= $rowConfig['content_home2'] ?></li>

                                <li><i class="fa fa-phone" aria-hidden="true"></i><?= $rowConfig['content_home3'] ?></li>

                            </ul>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="gb-header-between_cuanhom hidden">

            <div class="container container-mobile">

                <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="logo" class="img-responsive"></a>

            </div>

        </div>

        <div class="container-fluid1 hidden-xs">

            <div class="gb-header-bottom_cuanhom">

                <div class="row" style="margin: 0;">

                    <div class="col-md-8">

                        <?php include DIR_MENU."MS_MENU_CUANHOM_0001.php";?>

                    </div>

                    <div class="col-md-4">

                        <?php include DIR_SEARCH."MS_SEARCH_CUANHOM_0002.php";?>

                    </div>

                </div>

            </div>

        </div>

    </div>

</header>



<script src="/plugin/sticky/jquery.sticky.js"></script>

<script>

    $(document).ready(function () {

        $(".sticky-menu").sticky({topSpacing:0});

    });

</script>



