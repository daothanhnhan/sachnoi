<?php 
	$video1 = $action->getDetail('page', 'page_id', 50);
?>
<div class="container home-video">
	<h3><?= $video1['page_name'] ?></h3>
	<h3 class="tac-gia"><?= $video1['page_des'] ?></h3>
	<?= $video1['page_sub_info1'] ?>
</div>