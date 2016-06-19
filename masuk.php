<script> 
$(document).ready(function(){
	$('#forgot').hide();
	$('#wrapname').hide();
	$('#cname').prop('disabled', true);
	
	$('#reset_email').focus(function() {
		$('#forgot').slideDown('fast');
	});
	$('#reset_email').blur(function() {
		$('#forgot').slideUp('fast');
	});
});
</script>
<div class="login">
	<table id="login">
		<form action="check_login.php" method="post"> 
			<tr>
				<td>E-MAIL <br />
			    <input type="text" name="email"/></td>
			</tr>
			<tr>
				<td>PASSWORD <br />
			    <input type="password" name="password"/></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" name="buttonlogin" value="LOG IN" /></td>
			</tr>
		</form>

		<!-- <form action="php/reset_password" method="post" class="validate-form">
			<tr>
				<td style="padding-top:180px;">LUPA KATA SANDI ? <br />
			    <input type="text" name="resetemail" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" id="reset_email"/><br />
			    <input type="submit" value="SEND NEW PASSWORD" id="forgot"/>
			    <div class="forgot" style="margin: 0 auto;">
			    Ketikkan e-mail Anda. Kami akan mengirimkan sandi baru ke e-mail Anda. Nantinya Anda dapat mengubah password dengan pergi ke halaman <b>'AKUN SAYA'</b>.
			    </div>
			    </td>
			</tr>
		</form> -->
	</table>
</div>