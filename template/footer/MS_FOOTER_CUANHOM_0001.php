<?php //include DIR_CHARACTERISTICS."MS_CHARACTERISTICS_CUANHOM_0001.php";?>
<footer class="site-footer footer-default">

    <div class="container-fluid1">

        <div class="footer-main-content_cuanhom">

            <div class="row" style="margin: 0;">

                <div class="col-md-4">

                    <div class="footer-main-content_cuanhom-element">

                        <aside class="widget-footer">

                            <h3 class="widget-title-footer-cuanhom uni-uppercase">Liên hệ</h3>

                            <div class="widget-content">

                                <div class="footer-lienhe-cuanhom">

                                    <ul>

                                        <li>

                                            <p>Trụ sở: <?= $rowConfig['content_home1'] ?></p>

                                            

                                        </li>

                                        <!-- <li>

                                            <p>Cơ sở: <?= $rowConfig['content_home4'] ?></p>

                                            

                                        </li> -->

                                        <li>

                                            <p>Điện thoại: <?= $rowConfig['content_home3'] ?></p>

                                        </li>

                                        <li>

                                            <p>Email: <?= $rowConfig['content_home2'] ?></p>

                                        </li>

                                    </ul>

                                </div>

                            </div>

                        </aside>

                    </div>

                </div>

                <div class="col-md-3 hidden">

                    <div class="footer-main-content_cuanhom-element">

                        <aside class="widget-footer">

                            <h3 class="widget-title-footer-cuanhom uni-uppercase">Thông tin</h3>

                            <div class="widget-content">

                                <div class="footer-link-cuanhom">

                                    <ul>

                                        <?= $rowConfig['content_home8'] ?>

                                    </ul>

                                </div>

                            </div>

                        </aside>

                    </div>

                </div>

                <div class="col-md-4">

                    <div class="footer-main-content_cuanhom-element">

                        <aside class="widget-footer">

                            <h3 class="widget-title-footer-cuanhom uni-uppercase">Lượt truy cập</h3>

                            <div class="widget-content">

                                <div class="footer-luottruycap-cuanhom">

                                    <table class="table">

                                        <tr>

                                            <td>Đang trực tuyến</td>

                                            <td><?= $rowConfig['content_home4'] ?></td>

                                        </tr>

                                        <tr>

                                            <td>Hôm nay</td>

                                            <td><?= $rowConfig['content_home5'] ?></td>

                                        </tr>

                                        <tr>

                                            <td>Hôm qua</td>

                                            <td><?= $rowConfig['content_home6'] ?></td>

                                        </tr>

                                        <tr>

                                            <td>Tất cả</td>

                                            <td><?= $rowConfig['content_home7'] ?></td>

                                        </tr>

                                    </table>

                                </div>

                            </div>

                        </aside>

                    </div>

                </div>

                <div class="col-md-4">

                    <div class="footer-main-content_cuanhom-element">

                        <aside class="widget-footer">

                            <h3 class="widget-title-footer-cuanhom uni-uppercase">Đăng ký nhận tin</h3>

                            <div class="widget-content">

                                <div class="footer-dangkynhantin-cuanhom">

                                      <p>Đăng ký để nhận được tin tức mới nhất từ website.</p>

                                    <form action="">

                                        <div class="form-group">

                                            <input type="email" class="form-control">

                                            <button class="btn btndnagky">Đăng ký</button>

                                        </div>

                                    </form>

                                </div>

                            </div>

                        </aside>

                    </div>

                </div>

            </div>

        </div>

    </div>

    <div class="copyright-area_cuanhom">

        <div class="container-fluid">

            <div class="copyright-content_cuanhom">

                <p class="copyright-text_cuanhom">© Copyright 2017. All rights reserved. Design by Cafe Link Việt Nam</p>

            </div>

        </div>

    </div>

</footer>

<style>
#scroll-top {
  display: none; /* Hidden by default */
  position: fixed; /* Fixed/sticky position */
  bottom: 200px; /* Place the button at the bottom of the page */
  right: 10px; /* Place the button 30px from the right */
  z-index: 99; /* Make sure it does not overlap */
  border: none; /* Remove borders */
  outline: none; /* Remove outline */
  /*background-color: red;*/ /* Set a background color */
  color: white; /* Text color */
  cursor: pointer; /* Add a mouse pointer on hover */
  /*padding: 15px;*/ /* Some padding */
  /*border-radius: 10px;*/ /* Rounded corners */
  font-size: 18px; /* Increase font size */
}

#scroll-top:hover {
  /*background-color: #555;*/ /* Add a dark-grey background on hover */
}
</style>

<!-- <button onclick="topFunction()" id="scroll-top" title="Go to top">Top</button> -->
<img src="/images/Scroll-to-top-button.png" alt="Go to top" onclick="topFunction()" id="scroll-top" width="60">


<script>
//Get the button:
mybutton = document.getElementById("scroll-top");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  //document.body.scrollTop = 0; // For Safari
  //document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
  $("html, body").animate({ scrollTop: 0 }, "slow");
  return false;
}
</script>

<script>
  function them_vao_tu_sach (product_id) {
    const xhttp = new XMLHttpRequest();
  xhttp.onload = function() {
    // document.getElementById("demo").innerHTML = this.responseText;
      alert(this.responseText);
    }
  xhttp.open("GET", "/functions/ajax/them_vao_tu_sach.php?product_id="+product_id, true);
  xhttp.send();
  }
</script>

<style>
#btn-zalo {
  position: fixed;
  right: 10px;
  bottom: 140px;
  z-index: 999999;
}
#btn-zalo {
  width: 60px;
}
</style>
<a href="https://zalo.me/<?= preg_replace("/[^0-9]/", "",$rowConfig['content_home3']); ?>" title="" id="btn-zalo">
  <img src="/images/zalo-icon1.png" alt="zalo">
</a>