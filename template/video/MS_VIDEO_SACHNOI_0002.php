<?php 
	$video2 = $action->getDetail('page', 'page_id', 61);
?>
<div class="container home-video-dang-nhap" id="home-video-dang-nhap-id">
	<h3><?= $video2['page_name'] ?></h3>
	<h3 class="tac-gia"><?= $video2['page_des'] ?></h3>
	<div class="border">
		<?= $video2['page_sub_info1'] ?>
	</div>
	
</div>