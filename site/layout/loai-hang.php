

<div class="alert alert-secondary">
<div class="list-group">
<div>DANH MỤC SẢN PHẨM</div>
<?php

$items = loai_select_all();
foreach($items as $loai){
    $href = "$SITE_URL/hang-hoa/liet-ke.php?ma_loai=$loai[ma_loai]";
    echo "<a class='list-group-item list-group-item-action' href='$href'>" .$loai['ten_loai'].  "</a>" ;
    
}
?>





<div>
<form action="<?=$SITE_URL?>/hang-hoa/liet-ke.php">
<input class='list-group-item list-group-item-action' name="keywords" placeholder="Từ khóa tìm kiếm">
</form> 

</div>

</div>
</div>