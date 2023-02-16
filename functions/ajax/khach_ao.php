<?php 
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();
	$khach_ao = $action->getList('khach_ao', '', '', 'id', 'asc', '', '', '');
	$khach_ao_count = count($khach_ao);
	$random = rand(1, $khach_ao_count) - 1;

	$khach_ao_item = $khach_ao[$random];
?>
<div class="ladi-notify">
		<div class="ladi-notify-image">
			<img src="/images/<?= $khach_ao_item['image'] ?>">
		</div>
		<div class="ladi-notify-title"><?= $khach_ao_item['name'] ?></div>
		<div class="ladi-notify-content"><?= $khach_ao_item['phone'] ?>, đã đăng ký</div>
		<div class="ladi-notify-time">Thanh toán thành công</div>
	</div>