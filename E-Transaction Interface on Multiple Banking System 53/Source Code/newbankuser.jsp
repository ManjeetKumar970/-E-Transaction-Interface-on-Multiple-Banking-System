<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.id.value==""){
alert("Please Enter  Id");
document.f.id.focus();
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
document.f.pwd.focus();
return false;
}
 if(!((document.f.pwd.value)==(document.f.pwd1.value)))
	{
	 alert("enter correct password");
	 document.f.pwd.focus();
	 return false;
	}
	if(document.f.bname.value==""){
alert("Please Enter Bank Name");
document.f.phone.focus();
return false;
}
	if(document.f.phone.value==""){
		alert("Please Enter phone no");
		document.f.phone.focus();
		return false;
		}
}
</script>
<BODY bgcolor="white">

<center>
<BR><BR>
 
 <font size="+2" color="black" style="background-color: rgb(255, 255, 255)"><h2><b>Welcome To Multi Banking System</b></h2></font>
<br>
 



<form  method=post action="bankprocess.jsp" name="f" onSubmit='return call()'>
 <table border=0 bgcolor="white">
 <tr>
 <td><h3><font color="black"><b>User ID:</b></font><h3></td><td><input type="text" name="id" ></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr> 
<td><h3><b><font color="black">Password:</font></b><h3></td><td><input type="password" name="pwd"></td>
</tr><tr></tr><tr></tr>
<tr> 
<td><h3><b><font color="black">Retype Password:</font></b><h3></td><td><input type="password" name="pwd1"></td>
</tr><tr></tr><tr></tr>
 <tr>
 <td><h3><b><font color="black">Enter Bank Name:</font></b><h3></td><td><input type="text" name="bname" ></td>
</tr>
<tr>
 <td><h3><b><font color="black">Enter phone no:</font></b><h3></td><td><input type="text" name="phone" ></td>
</tr>
</table>
<br> <BR>
 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name=back  value="   BACK   " onClick="window.location='blogin.jsp'">
 </form>
<br>

</center>

</BODY>
</HTML>
