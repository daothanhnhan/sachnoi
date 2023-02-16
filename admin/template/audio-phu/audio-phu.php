<?php
    $rows = $acc->getList("sub_audio","product_id",$_GET['product_id'],"id","asc",$trang, 20, "audio-phu");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-audio-phu&product_id=<?= $_GET['product_id'] ?>">Thêm audio phụ</a></h1>
        <a href="index.php?page=sua-san-pham&id=<?= $_GET['product_id'] ?>" title="">Quay lại</a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên</th>
                    <th>mp3</th>
                    <th>Thời lượng</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['name']?></td>
                            <td><?= $row['mp3']?></td>
                            <td><?= $row['thoi_luong']?></td>
                            
                            <td style="float: none;"><a href="index.php?page=xoa-audio-phu&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-audio-phu&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Phát Triển Thương Hiệu Cafe Link Việt Nam</p>             