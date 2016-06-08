<?php 
include "koneksi.php";
$query=mysqli_query($koneksi, "SELECT * FROM `product` where id_product = '".$_GET['produk']."' LIMIT 1");
$row = mysqli_fetch_array($query);
?>
<h4 style="margin-bottom:10px;font-weight:100; text-transform:uppercase;text-align:center;">
	<?php echo $row['name_product']; ?>
</h4>
<form action="proses-beli.php" method="post">
<div class="left" style="text-align:center">
	<input type="hidden" value="<?php echo $_GET['produk']; ?>" name="id_produk">
	<input type="hidden" name="name_product" value="<?php echo $row['name_product']; ?>">
	<input type="hidden" name="price_product" value="<?php echo $row['price_product']; ?>">

	<div class="master" style="display: block;">
		<img src="img/<?php echo $row['picture_product']; ?>" id="front_leather" style="position:absolute;z-index:-1">
	    <div id="initial" class="initial"> </div>
	</div>

	<div class="back" style="display: none;">
		<img src="img/man/back/m_backview_front_black.png" id="back_handle" style="position:absolute;z-index:-2">
		<img src="img/man/back/m_backview_back_black.jpg" id="back_leather" style="position:absolute;z-index:-1">
	    <img src="img/man/back/m_backview_zipper_black.png" id="back_zipper" style="position:absolute;z-index:-1">
	    <img src="img/man/back/m_backview_stitching_black.png" id="back_stitching" style="position:absolute;z-index:-1">
	</div>

	<div class="side" style="display: none;">
		<img src="img/man/side/m_sideview_front_black.png" id="sidefront_leather" style="position:absolute;z-index:0">
	    <img src="img/man/side/m_sideview_back_black.png" id="sideback_leather" style="position:absolute;z-index:0">
	    <img src="img/man/side/m_sideview_zipper_black.png" id="side_zipper" style="position:absolute;z-index:0">
	    <img src="img/man/side/m_sideview_inside_black.png" id="side_inside" style="position:absolute;z-index:-1">
	    <img src="img/man/side/m_sideview_stitching_black.png" id="side_stitching" style="position:absolute;z-index:1">
	</div>

	<div class="top" style="display: none;">
		<img src="img/man/top/m_topview_inside_black.jpg" id="inside_suede" style="position:absolute;z-index:-1">
	    <img src="img/man/top/m_topview_zipper_black.png" id="top_zipper" style="position:absolute;z-index:-1">
	    <img src="img/man/top/m_topview_front_black.png" id="top_front" style="position:absolute;z-index:2">
	    <img src="img/man/top/m_topview_stitching_black.png" id="top_stitching" style="position:absolute;z-index:5">
	</div>


	<table>
	    <tbody>
	    <tr>
	        <td>NAMA INISIAL</td>
	        <td>JUMLAH PESAN</td>
	        <td>&nbsp;</td>
	    </tr>
	    <tr>
	        <td valign="top"><input type="text" maxlength="3" name="initial_name" ><br>
	        	Sampai dengan 3 huruf</td>
	        <td valign="top"><input type="number" max="999" min="1" value="1" name="qty"></td>
	        <td valign="top"><input type="submit" value="BELI" style="margin-top:0px;height:25px;"></td>
	    </tr>
	    <tr>
	    	<td colspan="3" style="text-align:justify;"><br><br>
	    		<?php echo $row['description_product']; ?>
	        </td>
	    </tr>
	    </tbody>
	</table>
</div>

<p></p>
</div>