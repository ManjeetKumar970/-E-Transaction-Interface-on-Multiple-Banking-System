<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.id.value==""){
alert("Please Enter Customer Id");
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
 if((document.f.phone.value=="") || ((document.f.phone.value).length!=10)){
		
	 alert("enter correct phone no");
	 document.f.phone.focus();
	 return false;
	 }
 if(!(document.f.phone.value.match(/^[0-9]+$/)))
	{
	alert("Invalid phone number");
	document.f.phone.focus();
	return false;
	}
 
}
</script>
<BODY bgcolor="white">

<center>
<BR>
 
 <font size="+2" color="black" style="background-color: rgb(255, 255, 255)"><h2><b>Welcome To Multi Banking System</b></h2></font>
<br>
 



<form  method=post action="customerprocess.jsp" name="f" onSubmit='return call()'>
 <table border=0 bgcolor="white">
 <tr>
 <td><b><h3><font color="#000000">Customer ID:</font></h3></b></td><td><input type="text" name="id" ></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr> 
<td><b><h3><font color="#000000"> Password:</font></h3></b></td><td><input type="password" name="pwd"></td>
</tr><tr></tr><tr></tr>
<tr> 
<td><b><h3><font color="#000000">Retype Password:</font></h3></b></td><td><input type="password" name="pwd1"></td>
</tr><tr></tr><tr></tr>
<tr> 
<td><b><h3><font color="#000000">Enter Phone no.</font></h3></b></td><td><input type="text" name="phone"></td>
</tr>
<tr>
  <td>Email id </td>
  <td><label>
    <input name="email" type="text" id="email">
  </label></td>
</tr>
<tr></tr><tr></tr>
</table>
<br> <BR>
 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="reset">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name=back  value="   BACK   " onClick="window.location='login.jsp'">
 </form>
<br>

</center>

</BODY>
</HTML>
