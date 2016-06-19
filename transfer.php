<div class="login" style="margin:0 auto;">
<form action="bayar.php" method="post" class="validate-form" id="signupform" name="signupform" enctype="multipart/form-data"> 
	<table id="payment" style="text-align: left;padding:20px;width:330px;margin-top:-8px;margin: 0 auto;"> 
	<tr>
		<td colspan="2" style="text-align:center">
			<h3 style="font-size:16px;margin-top:0px">Konfirmasi Pembayaran</h3>
		</td>
	</tr>
	<tr>
		<td colspan="2">Invoice <br />
	    <input type="text" name="invoice" value="<?php echo $_GET['inv']; ?>" readonly required/></td>
	</tr>
	<tr>
		<td colspan="2">Total Tagihan <br />
	    <input type="text" name="total_tagihan" value="<?php echo $_GET['p']; ?>" readonly required/></td>
	</tr>
	<tr>
		<td colspan="2">Nama Bank <br />
	    <input type="text" name="nama_bank" value="" required/></td>
	</tr>
	<tr>
		<td colspan="2">No Rekening <br />
	    <input type="text" name="no_rekening" value="" required/></td>
	</tr>
	<tr>
		<td colspan="2">Atas Nama <br />
	    <input type="text" name="atas_nama" value="" required/></td>
	</tr>
	<tr>
		<td colspan="2">Rekening Tujuan <br />
	    <select name="rekening_tujuan" required 
	    style="
	    border: 2px solid #EAEAEA;
	    padding: 3px;
	    background-color:white;
	    font-size: 11px;">
	    	<option value=""> ** Pilihan</option>
	    	<option value="mandiri">Mandiri</option>
	    	<option value="bca">BCA</option>
	    </select>
	    </td>
	</tr>
	<tr>
		<td colspan="2">Jumlah Bayar <br />
	    <input type="text" name="jumlah_bayar" value="" required/></td>
	</tr>
	<tr>
		<td colspan="2">Bukti <br />
	    <input type="file" name="bukti" value=""/></td>
	</tr>
	<tr>
		<td colspan="2">Keterangan <br />
	    <textarea name="keterangan" required style="
	    border: 2px solid #EAEAEA;
	    padding: 3px;
	    background-color:white;
	    font-size: 11px;"></textarea></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:left">
			<strong><button type="submit" class="active" style="width: 262px;border-radius:3px;font-weight:600;"><i class="fa fa-send"></i> KIRIM</button></strong>
		</td>
	</tr>
	</table>
</form>
</div>