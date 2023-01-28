<html>
<head>
<script>
	function call() {
		if (document.f.number.value == "") {
			alert("Please Enter account number");
			document.f.number.focus();
			return false;
		}
		if(!(document.f.number.value.match(/^[0-9]+$/)))
		{
		alert("Invalid acc");
		document.f.number.focus();
		return false;
		}
		if (document.f.amount.value == "") {
			alert("Please Enter amount");
			document.f.amount.focus();
			return false;
		}
		 if (document.f.amt.value<=0)
		 {
		 alert("invalid");
		 document.f1.amt.focus();
		 return false;
		 }
		  		 
		if(!(document.f.amount.value.match(/^[0-9]+$/)))
		{
		alert("Invalid amount");
		document.f.amount.focus();
		return false;
		}
	}
	</script>
</head>

<BODY background="img9.jpg">
<%String cid=request.getParameter("cid");
session.setAttribute("cid",cid);
%>
<center>
<form action="debitamount.jsp" name="f" onSubmit='return call()'>
<h1><font color="black" style="background-color: rgb(255, 255, 255)">Add Amount To Your Account</font></h1>
<table align="center" bgcolor="white">

<tr><td><font color="black">Enter Account Number</font></td>
<td><input type="text" name="number"></td>
</tr>
<tr><td><font color="black">Enter Amount</font></td>
<td><input type="text" name="amount"></td>
</tr>
<tr><td colspan="2" align="center"><input type ="submit" value="Add">
</td></tr>

<tr><td align="center"> <a href="lcustomer.jsp"><font color="black" style="background-color: rgb(255, 255, 255)"><h2>Back</h2></font></a></td></tr>



</table>




</form>




</center>



</body>



</html>