 
<HTML>
<HEAD>
<TITLE></TITLE>
 
 <script>
 function check(){
 if(document.f1.accno.value==""){
 alert("enter your account number");
 document.f1.accno.focus();
 return false;
 }
 if (!(document.f1.accno.value.match(/^[0-9]+$/)))
 {
 alert("account should be integer");
 document.f1.accno.focus();
 return false;
 }
  if(document.f1.daccno.value==""){
 alert("enter destination account number");
 document.f1.daccno.focus();
 return false;
 }
 
 if (!(document.f1.daccno.value.match(/^[0-9]+$/)))
 {
 alert("destination account no is invalid");
 document.f1.daccno.focus();
 return false;
 }
	if((document.f1.amt.value=="")||(document.f1.amt.value<=0))
	{
	alert("Invalid amount");
	document.f1.amt.focus();
	return false;
	}
if ((document.f1.amt.value).length < 0)
{
    alert("Amount must be greater than zero rupee");
    document.f1.amt.focus();
    return false;
}
if (!(document.f1.amt.value.match(/^[0-9]+$/)))
{
alert("invalid Numeric number");
document.f1.amt.focus();
return false;
}

 if(document.f1.password.value==""){
	
 alert("enter password");
 document.f1.password.focus();
 return false;
 }
 if(!((document.f1.password.value)==(document.f1.password1.value)))
	{
	 alert("enter correct password");
	 document.f1.password.focus();
	 return false;
	}
 }

</script>
</HEAD>
<BODY bgcolor="white">
<center>
<form action="tsbsave.jsp" name="f1" method=get onsubmit='return check()'>
<font color="black"><b><h2><u>Enter Account Details</u></h2></b></font>
<table cellspacing="3" bgcolor="white">
<tr><td>
<font color="black"><h3>Bank Name</h3></font></td>
<td><input type="text" name="bname" value=<%=session.getAttribute("bname")%> disabled></td></tr><tr></tr><tr></tr>
<tr><td>
<font color="black"><h3>Enter Your Account Number</h3></font></td>
<td><input type="text" name="accno"></td></tr><tr></tr><tr></tr>
<tr><td><font color="black"><h3>Account Type</h3></font></td>
<td><SELECT NAME="atype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

</SELECT></td></tr><tr></tr><tr></tr>
<tr><td>
<font color="black"><h3> Enter Destination Account Num</h3></font></td><td> <input type="text" name="daccno"></td></tr><tr></tr><tr></tr>

<tr><td><font color="black"><h3> Destination Account Type</h3></font></td>
<td><SELECT NAME="dtype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

</SELECT></td></tr><tr></tr><tr></tr>
<h3><tr><td><font color="black"><h3> Enter Amount</h3></font> </td>
<td> <input type="text" name="amt"></td></tr><tr></tr><tr></tr>

<tr>
<td><font color="black"><h3> Enter Transaction Password</h3></font></td>
<td><input type="password" name="password"></td></tr><tr></tr><tr></tr>
<tr>
<td><font color="black"><h3>Confirm Password</h3></font></td>
<td><input type="password" name="password1"></td></tr><br><tr></tr><tr></tr>

</table><BR>
 
<input type=submit value =Submit>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name=back  value="   back   " onClick="window.location='userhome.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset"   value="   reset   " >
</form>
</center>
</body>
</html> 


 
<%--  <%@ page import="java.sql.*,beans.*" %>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<HTML>
<HEAD>
<TITLE></TITLE>
 

 <script>
 function ff(){
 if(document.f1.accno.value==""){
 alert("enter user account number");
  document.f1.accno.focus();
 return false;
 }}

 function ff1(){
 if(document.f1.daccno.value==""){
 alert("enter destination account number");
  document.f1.daccno.focus();
 return false;
 }} function ff2(){
var id=/^[0-9][0-9]*$/
	if(!(id.test(document.f1.amt.value)))
	{
	alert("Invalid amount");
	document.f1.amt.focus();
	return false;
	}}
 function ff3(){
 if(document.f1.password.value==""){
	
 alert("enter password");
 document.f.password.focus();
 return false;
 }
 }
 function check(){
 if(document.f1.accno.value==""){
 alert("enter user account number");
 document.f1.accno.focus();
 return false;
 }


 if(document.f1.daccno.value==""){
 alert("enter destination account number");
 return false;
 }var id=/^[0-9][0-9]/
	if(!(id.test(document.f1.amt.value)))
	{
	alert("Invalid amount");
	document.f1.amt.focus();
	return false;
	}

 if(document.f1.password.value==""){
	
 alert("enter password");
 return false;
 }
 if(!((document.f1.password.value)==(document.f1.password1.value)))
	{
	 alert("enter correct password");
	 return false;
	}
 }

</script>
</HEAD>
<BODY background="img13.jpeg" >
<center>
<BR><BR>
 <form action="tsbsave.jsp" name="f1" method=get onsubmit='return check()'>
 <h2><u><font color="#80ffff">Enter Account Details</font></u></h2><B></B>
 <table>
<tr><td>
<h3><font color="#ff8000">Enter Your Account Number</font></td><td>   <input type="text" name="accno"></td></tr><tr></tr><tr></tr>
<tr><td><font color="#ff8000"><h3>Account Type</h3></font></td><td><SELECT NAME="atype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>
<tr></tr><tr></tr>
 

 
<tr>
<td>
<font color="#ff8000"><h3> Enter Destination Account Num</h3></font> </td><td> <input type="text" name="daccno" onFocus='return ff()'></td></tr><tr></tr><tr></tr>
<tr><td>
<tr><td><font color="#ff8000"><h3> Destination Account Type</h3></font></td><td><SELECT NAME="datype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

  </SELECT></td></tr><tr></tr><tr></tr>
<h3><tr><td><font color="#ff8000"><h3> Enter Amount</h3></font> </td><td> <input type="text" name="amt" onFocus='return ff1()'></td></tr><tr></tr><tr></tr>

<tr>
<td>
<font color="#ff8000"><h3> Enter Transaction Password</h3></font></td><td>      	     <input type="password" name="password" onFocus='return ff2()'></td></tr><tr></tr><tr></tr>
<tr><td><font color="#ff8000"><h3>Confirm Password</h3></font></td>  <td><input type="password" name="password1" onFocus='return ff3()'></td></tr><br><tr></tr><tr></tr>

     </table><BR>
 <BR><BR>
<input type=submit value =Submit>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="   back   " onClick="window.location='userhome.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset"   value="   reset   " >

   </form>
   </center>
  </body>
  </html>

   --%>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 