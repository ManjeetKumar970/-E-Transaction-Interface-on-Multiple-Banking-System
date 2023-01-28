
<HTML>
<HEAD>
<TITLE></TITLE>
 
 <script>
 function check(){
 if(document.f1.accno.value==""){
 alert("enter account number");
 return false;
 }

 if(document.f1.name.value==""){
 alert("enter account holder name");
 return false;
 }


 if(document.f1.tpassword.value==""){
	
 alert("enter transaction password");
 return false;
 }
 if(!((document.f1.tpassword.value)==(document.f1.tpassword1.value)))
	{
	 alert("enter correct transaction password");
	 return false;
	}

 }

</script>
</head>
<BODY bgcolor="white" >
<center>
 <form action="insaccount.jsp" name="f1" method=get onsubmit='return check()'>
 <h2><font color="black" style="background-color: rgb(255, 255, 255)"><u>Enter Account Details</u></font></h2><B></B>
 <table width="45%" border=0 bgcolor="white">
<tr><td>
<h3><font color="#80ffff">Enter Account Number</font></td><td>   <input type="text" name="accno"></td></tr><tr></tr><tr></tr>
<tr><td><font color="#80ffff"><h3>Enter Account Holder Name</h3></font> </td><td> <input type="text" name="name"></td></tr><tr></tr>

<tr><td><font color="#80ffff"><h3>Account Type</h3></font></td><td><SELECT NAME="atype"> 
                  <option  >Current Account</option>
				  <option >Savings Account</option>
				  <option >Others</option>

  </SELECT></td></tr>
  <tr><td>

<font color="#80ffff"><h3>Enter Transaction Password</h3></font></td><td>      	     <input type="password" name="tpassword"></td></tr><tr></tr><tr></tr>
<tr><td><font color="#80ffff"><h3>Confirm Password</h3></font></td>  <td><input type="password" name="tpassword1"></td></tr><br><tr></tr>
     </table><BR>
 <BR><BR>
<input type=submit value =Submit>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="   back   " onClick="window.location='userhome.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset"   value="   reset   " >
   </form>
  </body>
  </html>

