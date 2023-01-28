<%@ page import="java.sql.*" %>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<HTML>
<HEAD>
<TITLE></TITLE>
  
 <script>
  
 function check(){
   if(document.f1.name.value==""){
	 alert("enter customer name");
	 document.f1.name.focus();
	 return false;
	 }
 
 if(document.f1.city.value==""){
 alert("enter select branch city");
 document.f1.city.focus();
 return false;
 }
    
if(document.f1.tpassword.value==""){
	
 alert("enter  transaction password");
 document.f1.tpassword.focus();
 return false;
 }
 if(!((document.f1.tpassword.value)==(document.f1.tpassword1.value)))
	{
	 alert("enter correct transaction password");
	 document.f1.tpassword.focus();
	 return false;
	}
 if((document.f1.phone.value=="") || ((document.f1.phone.value).length!=10)){
		
	 alert("enter correct phone no");
	 document.f1.phone.focus();
	 return false;
	 }
  		if(!(document.f1.phone.value.match(/^[0-9]+$/)))
		{
		alert("Invalid phone number");
		document.f1.phone.focus();
		return false;
		}
 }
  
</script>
</HEAD>
<BODY bgcolor="white"><BR>
 <form action="insotheraccount.jsp" name="f1" method=post onSubmit='return check()'>
 <h2 align="center"><font color="black" style="background-color: rgb(255, 255, 255)"><b>Enter Account Details</b></font></h2><B></B><table width="622" height="266" border=0 align="center" bgcolor="white">
 <tr><td width="129"><h3><font color="black"><strong>Select Bank</strong></td>
 <td width="144"><SELECT NAME="bname" >
      <%

     // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	  //Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");
	  
	  /*Class.forName("com.mysql.jdbc.Driver"); 
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/etdb","root","jlcindia"); */
	  Connection con=new AbstractDataAccessObject().getConnection();
	   PreparedStatement st=con.prepareStatement("select * from bank ");
	
	ResultSet rs=st.executeQuery();
	while(rs.next()){
		%>
		<option ><%=rs.getString(2)%></option>

				  
<%}%>
   </SELECT></td>
  
   <td width="59">&nbsp;</td>
   <td width="124"><strong>Branch City
       <label></label>
   </strong>
     <label></label></td>
   <td width="144"><input name="city" type="text" id="city"></td>
 </tr>
<tr><td><label><strong>Customer name </strong></label></td>
<td><input name="name" type="text" id="name"></td>
<td>&nbsp;</td>
<td><font color="black"><strong>Account Type</strong></font></td>
<td><select name="atype">
  <option  >Current Account</option>
  <option >Savings Account</option>
  <option >Others</option>
</select></td>
 </tr>
<tr>
  <td><font color="black"><strong>Enter Transaction Password</strong></font></td>
  <td><label>
    <input type="password" name="tpassword">
  </label></td>
  <td>&nbsp;</td>
  <td><font color="black"><strong>Confirm Password</strong></font></td>
  <td><input type="password" name="tpassword1"></td>
</tr>
<tr>
  <td><font color="black"><strong>Enter Phone NO</strong></font></td>
  <td><input type="text" name="phone"></td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
</tr><br><br>
<tr><td height="22"><h3>&nbsp;</h3></td><td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
</tr>
     </table>
 <BR>
 <center>
<input type="submit" value ="Submit" title="Are u confirm to submit">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="   back   " onClick="window.location='user.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset"   value="   reset   " >
</center>
</form>
  </body>

  </html>

