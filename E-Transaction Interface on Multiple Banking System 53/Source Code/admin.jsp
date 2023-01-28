<HTML>
	<HEAD>
		<TITLE></TITLE>
	</HEAD>
	<script>
	function call() {
		if (document.f.uname.value == "") {
			alert("Please Enter Name");
			document.f.name.focus();
			return false;
		}
		if (document.f.pwd.value == "") {
			alert("Please Enter Ur Password");
			document.f.pwd.focus();
			return false;
		}
	}
</script>
	<BODY bgcolor="white">

		<center>
			<BR>
			<BR><br><br>
			<font size="+2" color="black" style="background-color: rgb(255, 255, 255)"><h2>
								<b>Welcome To Multi Banking System</b>
							</h2>
						</font><br>
			<table border=0 bgcolor="white">
				<tr>
					<td>
						
						<br>



						<center>
							<form method=post action="admincheck.jsp" name="f"
								onSubmit='return call()'>
								<table bgcolor="white">
									<tr>
										<td>
											<font color="black"><b>User Name:</b>
											</font>
										</td>
										<td>
											<font color="red"><input name="uname" type="text" tabindex="1">
											</font>
										</td>
									</tr>
									<tr>
										<td>&nbsp;
											
										</td>
									</tr>
									<tr>
										<td>
											<b><font color="black"> Password :</font>
											</b>
										</td>
										<td>
											<input name="pwd" type="password" tabindex="2">
										</td>
									</tr>
									<tr>
										<td>&nbsp;
											
										</td>
									</tr>
									<tr>
										<td align="right">
											<input type="submit" tabindex="3" value="Submit">
										</td>
										<td>
											<input type="reset" tabindex="4" value="Reset">
										</td>
									<td width="120" align="left">
									<a href="home.jsp"><font color="green" color="black" style="background-color: rgb(255, 255, 255)">HOME</font></a></td>
									</tr>
									
								</table>
								<br>
								<BR>
							</form>
							<br>
						</center>
					</td>
				</tr>
			</table>
		</center>
	</BODY>
</HTML>
