
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ukobag</title>

<!-- SEO meta -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8" />
<meta content='Ukobag' name='description'/>
<meta content='Ukobag, www.ukobag.com, Ukobag, Bags' name='keywords'/> 
<meta http-equiv="content-language" content="en" />

<link href="css/index.css" rel="stylesheet" type="text/css"/>
<link href="img/xlogo.png" rel="shortcut icon" type="image/x-icon"/>

<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/slippry.js"></script>
<link rel="stylesheet" href="css/slippry.css" />
<script src="js/jquery.cookie.js"></script>

<script> 
$(document).ready(function(){	
$('.menu').hide();
	$('#design').click(function(){
		$('.menu').toggle(300);
	});
});
</script>
</head>
<body>


<header>
<nav>
<div><a href="#" id="design">KATEGORI PRODUK</a>
	<div class="menu" style="text-transform: uppercase;">
	<?php
		include "koneksi.php";
		$query=mysqli_query($koneksi, "select * from category where status_category='public'");
		
		while($data=mysqli_fetch_array($query)){
			echo '<a href="?page=produk&category='.$data[category].'">'.$data[name_category].'</a><br />';
		}
	?>
    </div>
</div>
<div><a href="index.php?page=tentang">TENTANG</a></div>
<div><a href="index.php?page=kontak">KONTAK</a></div>
<div><a href="index.php?page=bantuan">BANTUAN</a></div>

<br /><br />

<div>
<?php 
	session_start();
	if(!isset($_SESSION['login_member'])){
		echo '<a href="?page=masuk">MASUK</a> / <a href="?page=daftar">DAFTAR</a>';
	}
	else {
		echo '
			<b>Selamat Datang, <br>'.$_SESSION['login_member']['fullname'].'</b>
			<br>
			<a href="?page=akun-saya">AKUN SAYA</a>
			<br>
			<a href="logout.php">KELUAR</a>
		';
	}
?>

</div>

<div>
	<a href="index.php?page=cart">
	<?php 
		$j = 0;
		for($i=0; $i < count($_SESSION['cart']); $i++){
			$j += $_SESSION['cart'][$i]['qty'];
		}
		if($j > 0){
			echo'KERANJANG BELANJA ('.$j.')';
		}
		else {
			echo 'KERANJANG BELANJA (0)';
		}

	?>
	</a>	
</div>
</nav>

<div class="head" id="design_head">
<a href="#"><img src="img/logo.png" class="logo"/></a><br />
<img src="img/header_shadow.png" class="shadow"/>


<div class="design" style="left:20px;">
<?php
	switch ($_GET['page']) {
	    case "produk":
	        include "konten-produk.php";
	        break;
	    case "tentang":
	        include "about.php";
	        break;
	    case "bantuan":
	        include "help.php";
	        break;
	    case "masuk":
	        include "masuk.php";
	        break;
	    case "akun-saya":
	        include "akun-saya.php";
	        break;
	    case "daftar":
	        include "daftar.php";
	        break;
	    case "keranjang":
	        include "keranjang.php";
	        break;
	    case "order":
	        include "order.php";
	        break;
	    case "cart":
	        include "addcart.php";
	        break;
	    case "konfirmasi":
	        include "konfirmasi.php";
	        break;
	    case "kontak":
	        include "contact.php";
	        break;
        default:
        	include "semua-produk.php";
	}
?>
</div>

</div>



</header>



<footer>
<div class="share">
	SHARE <br />
    <a href="http://www.facebook.com/sharer/sharer.php?u=http://www.ukobag.com" target="_blank">
    <img src="img/share_fb.png" /></a>
    
    <a href="http://twitter.com/share?url=http://www.ukobag.com" target="_blank">
    <img src="img/share_twitter.png" /></a>
    
    <a href="http://pinterest.com/pin/create/button/?url=http://www.ukobag.com" target="_blank">
    <img src="img/share_pinterest.png" /></a>
</div>
<div class="copyright" style="text-align:justify;">
Semua konten dari website kami (termasuk teks, grafis, logo, ikon tombol, gambar, dan software) adalah milik UKOBAG dan dilindungi oleh undang-undang hak cipta internasional. Merek dagang, logo, merek layanan, dan nama dagang dari UKOBAG dan tidak boleh digunakan tanpa izin tertulis dari kami.
<br /><br />
Copyright &copy; UkoBag 2016. Seluruh hak cipta. Dikembangkan oleh <a href="http://www.ukobag.com" target="_blank">Uko Bona Ibin</a>
</div>
</footer>


</body>
</html>