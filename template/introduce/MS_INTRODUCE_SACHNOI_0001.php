<?php 
	$giup_ban_1 = $action->getDetail('page', 'page_id', 51);
	$giup_ban_2 = $action->getDetail('page', 'page_id', 52);
	$giup_ban_3 = $action->getDetail('page', 'page_id', 53);
	$giup_ban_4 = $action->getDetail('page', 'page_id', 54);
	$giup_ban_5 = $action->getDetail('page', 'page_id', 55);
	$giup_ban_6 = $action->getDetail('page', 'page_id', 56);
?>
<div class="giup-ban">
	<div class="container">
		<h3 class="title">SÁCH NÓI ĐIỆN TỬ SẼ GIÚP BẠN!</h3>
		<div class="row" style="display: flex;flex-wrap: wrap;">
			<div class="col-md-4">
				<img src="/images/brainstorm.png" alt="sẽ giúp bạn">
				<h3><?= $giup_ban_1['page_name'] ?></h3>
				<p><?= $giup_ban_1['page_des'] ?></p>
			</div>
			<div class="col-md-4">
				<img src="/images/savings.png" alt="sẽ giúp bạn">
				<h3><?= $giup_ban_2['page_name'] ?></h3>
				<p><?= $giup_ban_2['page_des'] ?></p>
			</div>
			<div class="col-md-4">
				<img src="/images/listening.png" alt="sẽ giúp bạn">
				<h3><?= $giup_ban_3['page_name'] ?></h3>
				<p><?= $giup_ban_3['page_des'] ?></p>
			</div>
			<div class="col-md-4">
				<img src="/images/happy.png" alt="sẽ giúp bạn">
				<h3><?= $giup_ban_4['page_name'] ?></h3>
				<p><?= $giup_ban_4['page_des'] ?></p>
			</div>
			<div class="col-md-4">
				<img src="/images/listening-1.png" alt="sẽ giúp bạn">
				<h3><?= $giup_ban_5['page_name'] ?></h3>
				<p><?= $giup_ban_5['page_des'] ?></p>
			</div>
			<div class="col-md-4">
				<img src="/images/leader.png" alt="sẽ giúp bạn">
				<h3><?= $giup_ban_6['page_name'] ?></h3>
				<p><?= $giup_ban_6['page_des'] ?></p>
			</div>
		</div>
		<div class="row">
			<button class="pulse nhan-uu-dai">NHẬN ƯU ĐÃI</button>
		</div>
	</div>
</div>

