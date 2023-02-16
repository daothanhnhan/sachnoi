<?php 
	$nghe_thu = $action->getList('nghe_thu', '', '', 'id', 'asc', '', '', '');
?>
<div class="nghe-thu">
	<div class="container">
		<div class="row">
			<h3>NGHE THỬ SÁCH NÓI</h3>
			<?php 
			foreach ($nghe_thu as $item) { 
				if (strpos($item['mp3'], 'http') === false) {
				  $source = '/images/mp3/'.$item['mp3'];
				} else {
				  $source = $item['mp3'];
				}
			?>
			<div class="col-md-6 box">
				<div class="row">
					<div class="col-xs-1 hidden-xs"></div>
					<div class="col-xs-3">
						<img src="/images/<?= $item['image'] ?>" alt="nghe thử sách nói">
					</div>
					<div class="col-xs-8">
						<p><?= $item['name'] ?></p>
						<audio controls="">
						    <source src="<?= $source ?>" type="audio/mpeg">
						</audio>
					</div>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
</div>