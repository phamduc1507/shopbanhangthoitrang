<div class="menu" style="height: 150px;">
<div>
<a href="index.php">
    <img  class ="mySlider"src="photo/hshop.png" width="180px" height="80px" >
</a>
       </div>
       <ul class="list_menu" style="margin:0; display:flex; justify-content:center;width:100%;">
           <li><a href="index.php">Trang chủ</li>
           <li><a href="./indexs.php?quanly=danhmucsp&id=1">Hot</a></li>
           <li><a href="./indexs.php?quanly=ao">Thời trang cao cấp</a></li>
           <li><a href="./indexs.php?quanly=quan">Thời trang giá rẻ</a></li>
       </ul>
       <div>
       <a style="text-decoration: none; margin-right: 0px; margin-top:-90px" class="giohang_css" href="./chitiet.php?quanly=giohang"><i style="color:red;" class="fas fa-cart-plus fa-2x"></i>
       <?php
    if(isset($_SESSION['dangky'])){
    ?>  
       <?php
                        if(isset($_SESSION['cart'])){
                            $soluongsanpham=0; 
                            foreach($_SESSION['cart'] as $cart_item){
                            $soluongsanpham+=$cart_item['soluong'];}
                            ?><?php  echo '  <span style="color:white;" class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">'.$soluongsanpham?>
 <?php 
 }
 ?>
<?php   
}else{
}      
?>  
</a>  
</div>
</div>
  
 