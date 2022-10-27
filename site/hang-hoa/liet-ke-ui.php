<div class="row">
<?php
foreach($items as $item){
?>
<div class="col-sm-3 alert alert-secondary mg" id="cart-items">
    
        <img src="../../content/img/<?=$item['hinh']?>" />
   
    <div class="">
    <h3><?=$item['don_gia']?>đ</h3>
    <p><?=$item['ten_hh']?></p>
    <a  href="chi-tiet.php?ma_hh=<?=$item['ma_hh']?>"> XEM CHI TIẾT </a>
</div>
</div>

<?php
}
?>
</div>
<div class="row">
    
