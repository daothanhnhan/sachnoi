<!--CONTENT-->
<div class="Content-Main">
    <?php include DIR_BANNER."MS_BANNER_SACHNOI_0001.php";?>
    <?php include DIR_VIDEO."MS_VIDEO_SACHNOI_0001.php";?>
    <?php include DIR_INTRODUCE."MS_INTRODUCE_SACHNOI_0001.php";?>
    <?php include DIR_INTRODUCE."MS_INTRODUCE_SACHNOI_0002.php";?>
    <?php include DIR_INTRODUCE."MS_INTRODUCE_SACHNOI_0003.php";?>
    <?php include DIR_INTRODUCE."MS_INTRODUCE_SACHNOI_0004.php";?>
    <?php include DIR_INTRODUCE."MS_INTRODUCE_SACHNOI_0005.php";?>
    <?php //include DIR_INTRODUCE."MS_INTRODUCE_SACHNOI_0006.php";?>
    <?php include DIR_INTRODUCE."MS_INTRODUCE_SACHNOI_0007.php";?>
    <?php include DIR_VIDEO."MS_VIDEO_SACHNOI_0002.php";?>
</div>

<script>
$(".nhan-uu-dai").click(function() {
    $([document.documentElement, document.body]).animate({
        scrollTop: $("#uu-dai-dac-biet-id").offset().top
    }, 2000);
});
$(".thanh-toan-online").click(function() {
    $([document.documentElement, document.body]).animate({
        scrollTop: $("#home-video-dang-nhap-id").offset().top
    }, 1000);
});
$(".cac-dau-sach").click(function() {
    $([document.documentElement, document.body]).animate({
        scrollTop: $("#cac-dau-sach-id").offset().top
    }, 2000);
});
</script>