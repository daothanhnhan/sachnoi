<style>

</style>
<div id="NOTIFY3303" class="ladi-element ladi-notify-transition" style="opacity: 0; top: -162px;">
	<div class="ladi-notify">
		<div class="ladi-notify-image">
			<img src="/images/72458484_2393757767360779_3561394694388711424_n-20191214092219.jpg">
		</div>
		<div class="ladi-notify-title">Đồ Gỗ Lan Anh</div>
		<div class="ladi-notify-content">0913361xxx, đã đăng ký</div>
		<div class="ladi-notify-time">Thanh toán thành công</div>
	</div>
</div>

<script>
	var thong_bao_mua_state = 0;
	<?php if (!isset($_GET['page'])) { ?>
	setInterval(thong_bao_mua, 5000);
	<?php } ?>

	function thong_bao_mua() {
	  // document.getElementById("demo").innerHTML += "Hello";
	  if (thong_bao_mua_state == 0) {
	  	thong_bao_mua_state = 1;
	  	document.getElementById("NOTIFY3303").setAttribute("style", "");

	  	const xhttp = new XMLHttpRequest();
		  xhttp.onload = function() {
		    document.getElementById("NOTIFY3303").innerHTML = this.responseText;
		    }
		  xhttp.open("GET", "/functions/ajax/khach_ao.php", true);
		  xhttp.send();
	  } else {
	  	thong_bao_mua_state = 0;
	  	document.getElementById("NOTIFY3303").setAttribute("style", "opacity: 0; top: -162px;");
	  }
	}
</script>