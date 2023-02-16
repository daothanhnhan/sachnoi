<?php 
	$so_huu = $action->getList('so_huu', '', '', 'id', 'asc', '', '', '');
?>
<div class="container dau-sach" id="cac-dau-sach-id">
	<h3 class="title-1">CÁC ĐẦU SÁCH NÓI MÀ</h3>
	<h3 class="title-2">BẠN SẼ SỞ HỮU</h3>
	<div class="row">
		<?php foreach ($so_huu as $item) { ?>
		<div class="col-md-4">
			<div class="box" data-toggle="modal" data-target="#so-huu-<?= $item['id'] ?>">
				<img src="/images/<?= $item['image'] ?>" alt="đầu sách">
				<div class="info">
					<div class="row">
						<div class="col-xs-3">
							<span class="number"><?= $item['num'] ?></span>
						</div>
						<div class="col-xs-9">
							<p class="info-1">SÁCH NÓI</p>
							<p class="info-2"><?= $item['name'] ?></p>
							<p class="info-3">click để xem danh sách</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<?php } ?>

	</div>
	<div class="row">
		<button class="pulse nhan-uu-dai">NHẬN ƯU ĐÃI</button>
	</div>
</div>

<?php foreach ($so_huu as $item) { ?>
<!-- Modal -->
<div id="so-huu-<?= $item['id'] ?>" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><?= $item['name'] ?></h4>
      </div>
      <div class="modal-body">
        <img src="/images/<?= $item['popup'] ?>" alt="sách" width="100%">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<?php } ?>