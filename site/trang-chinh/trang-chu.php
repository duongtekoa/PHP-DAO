<div class="row">
    
<?php
foreach ($dac_biet_list as $item) {
?>

<div class="col-sm-3 alert alert-secondary mg" id="cart-items">

<img width="100%" src="../../content/img/<?=$item['hinh']?>"/>

<div>
<h3><?=$item['don_gia']?>đ</h3>
<p><?=$item['ten_hh']?></p>

<a  class="btn btn-secondary it " href="../hang-hoa/chi-tiet.php?ma_hh=<?=$item['ma_hh']?>">XEM CHI TIẾT</a>
</div>
</div> 
<br>
<?php
}
?>
   
</div>
