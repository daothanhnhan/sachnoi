<?php 
  $goi = $action->getList('gia_goi', '', '', 'id', 'asc', '', '', '');
?>
<table class="table table-bordered">
    <thead>
      <tr>
        <th>Gói</th>
        <th>Giá tiền</th>
        <th>Giá gốc</th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($goi as $item) { ?>
      <tr>
        <td>Gói <?= $item['id'] ?></td>
        <td><input type="number" name="" value="<?= $item['price'] ?>" onchange="gia_goi(<?= $item['id'] ?>, this.value, 1)" onkeyup="gia_goi(<?= $item['id'] ?>, this.value, 1)" ></td>
        <td><input type="number" name="" value="<?= $item['price_goc'] ?>" onchange="gia_goi(<?= $item['id'] ?>, this.value, 2)" onkeyup="gia_goi(<?= $item['id'] ?>, this.value, 2)" ></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>

<script>
  function gia_goi (id, price, stt) {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        // document.getElementById("demo").innerHTML = this.responseText;
      }
    xhttp.open("GET", "/functions/ajax/gia_goi.php?id="+id+"&price="+price+"&stt="+stt, true);
    xhttp.send();
  }
</script>