<style>

</style>
<div class="container kich-hoat-ma-code">
	<h1 class="title">Bước 2: Kích Hoạt Mã Code</h1>
	<div class="box">
		<p class="text-1">Mã số kích hoạt của bạn *</p>
		<input type="text" name="code" id="code" placeholder="ABC2DE234">
		<p class="text-2">Là mã số kích hoạt bạn nhận được, ví dụ: ABC2DE234</p>
		<p class="text-1">Số điện thoại sẽ được kích hoạt</p>
		<p class="phone"><?= $user['phone'] ?></p>
		<p class="luu-y">Lưu ý:</p>
		<ul>
			<li>Mỗi mã kích hoạt chỉ được kích hoạt được cho duy nhất cho 1 số điện thoại.</li>
			<li>Một số điện thoại có thể kích hoạt được cho nhiều mã tương ứng với nhiều bộ sách bạn đã đăng ký mua trước đó.</li>
			<li>Khi kích hoạt thành công, tất cả các đầu sách trong bộ sách bạn đã mua sẽ được kích hoạt ngay lập tức.</li>
			<li>Bạn có thể xem toàn bộ các sách kích hoạt tại menu "Sách của tôi".</li>
		</ul>
		<hr>
		<button type="button" class="btn btn-primary" onclick="kich_hoat_ma()">Kích Hoạt Bộ Sách</button>
	</div>
</div>

<script>
	function kich_hoat_ma () {
		var code = document.getElementById('code').value;
		// alert(code);
		if (code == '') {
			alert('Bạn chưa nhập code');
			return false;
		} else {
			const xhttp = new XMLHttpRequest();
			  xhttp.onload = function() {
			    // document.getElementById("demo").innerHTML = this.responseText;
			    	alert(this.responseText);
			    }
			  xhttp.open("GET", "/functions/ajax/kich_hoat_ma.php?ma="+code, true);
			  xhttp.send();
		}
		// alert('a');
	}
</script>