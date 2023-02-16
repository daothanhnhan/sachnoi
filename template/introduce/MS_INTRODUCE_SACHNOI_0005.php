<?php 
	$thinh_gia_1 = $action->getDetail('page', 'page_id', 58);
	$thinh_gia_2 = $action->getDetail('page', 'page_id', 59);
	$thinh_gia_3 = $action->getDetail('page', 'page_id', 60);
?>
<div class="thinh-gia">
	<div class="overlay">
		
	</div>
	<div class="container">
		<h3 class="title-h3">THÍNH GIẢ CỦA AUDIO BOOKS</h3>
		<p class="title-des">+10.000 thính giả phản hồi tích cực và đang nghe sách nói mỗi ngày!</p>
		<div class="row">
			<div class="col-md-4">
				<div class="box">
					<div class="img">
						<img src="/images/<?= $thinh_gia_1['page_img'] ?>" alt="Cá nhân">
					</div>
					<div class="info">
						<p><?= $thinh_gia_1['page_name'] ?></p>
						<div>
							<?= $thinh_gia_1['page_des'] ?>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="box">
					<div class="img">
						<img src="/images/<?= $thinh_gia_2['page_img'] ?>" alt="Cá nhân">
					</div>
					<div class="info">
						<p><?= $thinh_gia_2['page_name'] ?></p>
						<div>
							<?= $thinh_gia_2['page_des'] ?>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="box">
					<div class="img">
						<img src="/images/<?= $thinh_gia_3['page_img'] ?>" alt="Cá nhân">
					</div>
					<div class="info">
						<p><?= $thinh_gia_3['page_name'] ?></p>
						<div>
							<?= $thinh_gia_3['page_des'] ?>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<button class="pulse nhan-uu-dai">NHẬN ƯU ĐÃI</button>
		</div>
	</div>
</div>