<?php
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('user1',array('nick','first_name','last_name','email'), $_GET['search'],$trang,10,$_GET['page']);
    }else{
       
        $rows = $acc->getList("user1","","","","asc",$trang, 10, "tai-khoan-user");
    }
    


?>	
    <div class="boxPageNews">
    	<div class="searchBox">
            <form action="">
                <input type="hidden" name="page" value="tai-khoan">
            	<button type="submit" class="btnSearchBox" name="">Tìm kiếm</button>
                <input type="text" class="txtSearchBox" name="search" />                	                
            </form>
        </div>
        
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Tên tài khoản</th>
                    <th>Số điện thoại</th>
                    <th>Gói 1</th>
                    <th>Gói 2</th>
                    <th>Gói 3</th>
                    <th>Gói 4</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    foreach ($rows['data'] as $row) {
                    ?>
                        <tr>
                            <td><a href="javascrip:void(0)" title=""><?= $row['name']; ?></a></td>
                            <td><?= $row['phone']?></td>
                            
                            <td>
                               <!--  <?php 
                                    $acc = new action_account("VN");
                                    $rowRole = $acc->getDetail("admin_role","admin_role_id",$row['admin_role']);
                                    echo $rowRole['admin_role_name'];
                                ?> -->
                                <?php //date('d-m-Y H:m:s', strtotime($row['time'])); ?>
                                <?= $row['goi_1']==1 ? 'Kích hoạt' : 'Chưa' ?>
                            </td>
                            <!-- <td><?= $row['admin_state'] == 1 ? 'Hoạt động' : 'Khóa'?></td> -->
                            <td><?= $row['goi_2']==1 ? 'Kích hoạt' : 'Chưa' ?></td>
                            <td><?= $row['goi_3']==1 ? 'Kích hoạt' : 'Chưa' ?></td>
                            <td><?= $row['goi_4']==1 ? 'Kích hoạt' : 'Chưa' ?></td>
                            <td><a href="index.php?page=chinh-sua-user&id=<?= $row['id'] ?>">Chỉnh sửa</a></td>
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