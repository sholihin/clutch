<?php 
include "koneksi.php";
session_start();
$query = mysqli_query($koneksi, "SELECT * FROM `user` where id='".$_SESSION['login_member']['id']."'");
$row = mysqli_fetch_array($query);
?>
<div class="login">
<form action="checkout.php" method="post" class="validate-form" id="signupform" name="signupform"> 
	<table id="signup" style="width:525px;">
	<tr>
		<td colspan="2">NAMA PENERIMA <br />
	    <input type="text" name="fullname" value="<?php echo $row['fullname']; ?>" required/></td>
	</tr>
	<tr>
		<td colspan="2">NOMOR TELEPON <br />
	    <input type="text" name="phone" value="<?php echo $row['phone']; ?>" required id="harusnomor1"/></td>
	</tr>
	<tr>
		<td colspan="2">ALAMAT <br />
	    <textarea name="address" required><?php echo $row['address']; ?></textarea></td>
	</tr>

	<tr>
		<td colspan="2">KOTA <br />
	    <select name="ongkir" required style="background-color:white;width:260px;"/>
	    	<option value="">** Pilih Lokasi</option>
	    	<?php
	    		$q = mysqli_query($koneksi, "SELECT * FROM shipping");
	    		$fill = '';
	    		while($x = mysqli_fetch_array($q)){
	    			$fill .='<option value="'.$x['tarif'].'"';
	    			if($row['city'] == $x['lokasi']){
	    				$fill .='selected';
	    			}
	    			$fill .='>'.$x['lokasi'].'</option>';
	    		}
    			echo $fill;
	    	?>
	    </select>
	    </td>
	    <input type="hidden" name="city" value="<?php echo $row['city']; ?>" required/></td>
	</tr>

	<tr>
		<td colspan="2">KODE POS <br />
	    <input type="text" name="poscode" value="<?php echo $row['poscode']; ?>" required id="harusnomor2"/></td>
	</tr>

	<tr>
		<td colspan="2"><input type="submit" value="PROSES"/></td>
	</tr>
	</table>
</form>
</div>