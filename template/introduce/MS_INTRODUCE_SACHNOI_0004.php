<?php 
	$uu_diem = $action->getDetail('page', 'page_id', 57);
	$uu_diem_muc = explode("\r\n", $uu_diem['page_des']);
?>
<div class="uu-diem">
	<div class="container">
		<h3 class="title-1">ƯU ĐIỂM</h3>
		<h3 class="title-2">SÁCH NÓI ONLINE</h3>
		<div class="row">
			<div class="col-md-5">
				<?php foreach ($uu_diem_muc as $item) { ?>
				<div class="row">
					<div class="col-xs-2">
						<svg xmlns="http://www.w3.org/2000/svg" width="90%" height="100%" preserveAspectRatio="none" viewBox="0 0 1792 1896.0833" class="" fill="#000"> <path d="M1671 566q0 40-28 68l-724 724-136 136q-28 28-68 28t-68-28l-136-136-362-362q-28-28-28-68t28-68l136-136q28-28 68-28t68 28l294 295 656-657q28-28 68-28t68 28l136 136q28 28 28 68z"></path> </svg>
					</div>
					<div class="col-xs-10 left-0">
						<p><?= $item ?></p>
					</div>
				</div>
				<?php } ?>
			</div>
			<div class="col-md-7">
				<img src="/images/<?= $uu_diem['page_img'] ?>" alt="Ưu điểm sách nói online" class="img">
			</div>
		</div>
		<div class="row">
			<button class="pulse nhan-uu-dai">NHẬN ƯU ĐÃI</button>
		</div>
	</div>
</div>