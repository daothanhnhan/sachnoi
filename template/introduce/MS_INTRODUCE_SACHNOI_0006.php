<?php 
	$khoa_hoc = $action->getList('khoa_hoc', '', '', 'id', 'asc', '', '', '');
?>
<style>

</style>
<div class="uu-dai">
	<div class="container">
		<h3 class="title-1">ĐẶC BIỆT NHẬN HƠN 300+ KHOÁ HỌC</h3>
		<h3 class="title-2">KHI ĐĂNG KÝ NGHE SÁCH NGAY HÔM NAY!</h3>
		<div class="row">
			<?php foreach ($khoa_hoc as $item) { ?>
			<div class="col-md-4">
				<div class="box" data-toggle="modal" data-target="#myModal-<?= $item['id'] ?>">
					<div>
						<img src="/images/<?= $item['image'] ?>" alt="khóa học">
					</div>
					<div class="info">
						<p class="name"><?= $item['name'] ?></p>
						<p class="des"><?= $item['note'] ?></p>
						<p class="xem">XEM DEMO</p>
					</div>
				</div>
			</div>
			<?php } ?>
			
		</div>
	</div>
</div>

<?php foreach ($khoa_hoc as $item) { ?>
<!-- Modal -->
<div id="myModal-<?= $item['id'] ?>" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <!-- <h4 class="modal-title">Modal Header</h4> -->
      </div>
      <div class="modal-body">
        
        <img src="/images/<?= $item['popup'] ?>" alt="khóa học" width="100%">
      </div>
      <!-- <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div> -->
    </div>

  </div>
</div>
<?php } ?>