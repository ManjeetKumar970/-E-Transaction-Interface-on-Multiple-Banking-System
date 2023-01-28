
<HTML>
<HEAD>
<TITLE></TITLE>
 
</HEAD>
<center>
 <script>
 function check(){
 if(document.f1.accno.value==""){
 alert("enter your account number");
 return false;
 }


 if(document.f1.daccno.value==""){
 alert("enter destination account number");
 return false;
 }
var id=/^[0-9][0-9]/
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

<BODY  ><BR><BR><BR><BR>
 <form action="tsbsave.jsp" name="f1" method=get onsubmit='return check()'>
 <b><h2><u>Enter Account Details</u></h2></b>
 <table cellspacing="3">
<tr><td>
<h3>Enter Your Account Number   </td><td>   <input type="text" name="accno"></td></tr><tr></tr><tr></tr>
<tr><td><h3>Account Type</td><td><SELECT NAME="atype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

  </SELECT></td></tr><tr></tr><tr></tr>

<tr><td>
<h3> Enter Destination Account NUM </td><td> <input type="text" name="daccno"></td></tr><tr></tr><tr></tr>

<tr><td><h3> Destination Account Type</td><td><SELECT NAME="datype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

  </SELECT></td></tr><tr></tr><tr></tr>
<h3><tr><td><h3> Enter Amount </td><td> <input type="text" name="amt"></td></tr><tr></tr><tr></tr>

<tr><td>

<h3> Enter Transaction Password	 </td><td>      	     <input type="password" name="password"></td></tr><tr></tr><tr></tr>
<tr><td><h3>Confirm Password</td>  <td><input type="password" name="password1"></td></tr><br><tr></tr><tr></tr>

     </table><BR>
 
<input type=submit value =Submit>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name=back  value="   back   " onClick="window.location='userhome.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset"   value="   reset   " >
 </form>
  </body>
  </center>
  </html>

