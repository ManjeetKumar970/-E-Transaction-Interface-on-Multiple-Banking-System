 <HTML>
	<HEAD>
		<TITLE></TITLE>
		<script>
	function call() {
		if (document.f.cid.value == "") {
			alert("Please Enter Customer Id");
			document.f.cid.focus();
			return false;
		}
		if (document.f.pwd.value == "") {
			alert("Please Enter Ur Password");
			document.f.pwd.focus();
			return false;
		}
	}
</script>
	</HEAD>
	<BODY bgcolor="white">

		<center>
			<BR>
			<BR><br><br><br><br>

			<font size="+2" color="black" style="background-color: rgb(255, 255, 255)"><h2>
					<b>Welcome To Multi Banking System</b>
				</h2>
			</font>
			<br>




			<form method=post action="logincheck.jsp" name="f" onSubmit='return call()'>
				 <table width="282" height="102" border=0 bgcolor="white" >
					<tr>
						<td>
							<font color="black"><b>Customer ID:</b>
							</font>
						</td>
						<td>
							<input type="text" name="cid">
						</td>
					</tr>
					<tr>
						<td>&nbsp;
							
					  </td>
					</tr>
					<tr>
						<td height="36">
							<font color="black"><b> Password:</b>							</font>						</td>
						<td>
							<input type="password" name="pwd">
						</td>
					</tr>
			  </table>
				<br>
				<BR>

				<input type="submit" value="submit">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<b><input type="reset" value="reset"></b>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<b><input type="button" name=back value="Home"
					onClick="window.location='home.jsp'"></b>
				<center>
					<h2><br>
						<b><a href="newcustomer.jsp"><font color="black" style="background-color: rgb(255, 255, 255)"><BR>New
									User????? Click here</font> </a>
						</b>
				  </h2>
				</center>
			</form>

		</center>

	</BODY>
</HTML>
 