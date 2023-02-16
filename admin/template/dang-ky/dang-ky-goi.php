<?php
    $rows = $acc->getList("dang_ky_goi","","","id","desc",$trang, 20, "dang-ky-goi");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <!-- <h1><a href="index.php?page=them-thuong-hieu">Thêm</a></h1> -->
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Số điện thoại</th>
                    <th>Gói</th>
                    <th>Kích Hoạt</th>
                    <th>Mã</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                        $user = $action->getDetail('user1', 'id', $row['user_id']);
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $user['phone']?></td>
                            <td>
                                <?= $row['goi']?>
                            </td>
                            <td>
                                <input type="checkbox" name="" onclick="kich_hoat(<?= $row['id'] ?>)" <?= $row['state']==1 ? 'checked' : '' ?> >
                            </td>
                            <!-- <td style="float: none;"><a href="index.php?page=xoa-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td> -->
                            <td>CAF2LI<?= $row['id'] ?></td>
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

<script>
    function kich_hoat (id) {
        // alert(id);
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            // document.getElementById("demo").innerHTML = this.responseText;
                alert(this.responseText);
            }
          xhttp.open("GET", "/functions/ajax/kich_hoat.php?id="+id, true);
          xhttp.send();
    }
</script>