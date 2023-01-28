<%@ page import ="java.sql.*,beans.*" %>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<HTML>
<HEAD>
<TITLE> </TITLE>
<script >
function call()
{

}
</script>
</HEAD>
<BODY bgcolor="white">

<center>
<BR><BR><br><br>
 
 <font size="+2" color="green" style="background-color: rgb(255, 255, 255)"><h1><b>MultiBanking System</b>
 </h1></font>
<br>
 
<form  method=post action="usercheck.jsp" name="f" onSubmit='return call()'>
 <table bgcolor="white">
 <tr>
<td height="67"><a href="viewacinfo1.jsp"><font color="black">
  <h2>View Accounts Information</h2>
</font></a></td></tr><tr></tr><tr></tr>
  <tr>
 <td>
<tr>
<td height="50"><font color="#000000">
  <h2 align="center"><strong>Select Bank</strong></h2>
</font></td>
<td>
<SELECT NAME="bname"> 
<% 
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
	   PreparedStatement st=con.prepareStatement("select * from bank ");
	
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>


                  <option  ><b><%=rs.getString(2)%></b></option>
				  
<%}
	rs.close();
	st.close();
	con.close();
}catch(Exception e){}%>
  </SELECT></td></tr>
</table>
<br> <BR>
 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="back " onClick="window.location='login.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Home " onClick="window.location='home.jsp'">

 </form>
<center><font color="green" style="background-color: rgb(255, 255, 255)"><a href="otherbanknewac.jsp"><font color="black"><h2>New User &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create Account</h2></font> </a></font>

<br><center><BR><BR>

</center>

</BODY>
</HTML>
