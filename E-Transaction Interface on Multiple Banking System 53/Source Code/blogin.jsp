<%@ page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.bid.value==""){
alert("Please Enter Ur Name");
document.f.bid.focus();
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
document.f.pwd.focus();
return false;
}
if((document.f.bid.value=="")||(document.f.pwd.value==""))
	{
alert("Please Enter Username& password");
document.f.bid.focus();
return false;
}
}
</script>
<BODY bgcolor="white">
<br> 
<center>
<BR>
 
 <b><h2><u><font color="green" style="background-color: rgb(255, 255, 255)">Welcome To Multi Banking System</font></u></h2></b>
<br>
 
 Bank Admin Login

<br>
<form  method=post action="bloginch.jsp" name="f" onSubmit='return call()'>
 <table width="40%" cellpadding="5" cellspacing="5" border=0 bgcolor="white">
 <colgroup span=2 >
 <tr>
 <td><font color="black"><b>Username:</b></font></td><td><input type="text" name="bid" ></td>
</tr>
 <tr> 
<td><b><font color="black"> Password:</font></b></td><td><input type="password" name="pwd"></td>
 <tr> 
<td><b><font color="black"> Select Bank:</font></b></td><td><SELECT NAME="bl">
<%
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amarDSN","system","amar");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from  bank");
while(rs.next())
{
	%>
<option><%=rs.getString(2)%></option>
<%
}
con.close();
}catch(Exception e){
	System.out.println(e);
	}
	%>
 </SELECT></td>
</tr>
</table>
<br> <input type="submit" value="   Login   "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="   reset   ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Home" onClick="window.location='home.jsp'"><BR><BR>
 <center><h2><b><a href="newbankuser.jsp"><font color="black" size=5 color="black" style="background-color: rgb(255, 255, 255)"><BR>New User????? Click here</font> </a></b></h2></center>    
 </form>

 

</center>

</BODY>
</HTML>
