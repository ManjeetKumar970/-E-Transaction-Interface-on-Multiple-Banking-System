<%@ page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
 <BODY bgcolor="white"><BR><BR><BR>
 <center>
 <h2><u><center><font size="+2" color="black" style="background-color: rgb(255, 255, 255)">  New User Requests </font></u></h2>
  <table width="60%" border="2" align="center" bgcolor="white">
<tr align="center">

<td><b><font size="4" color="blue">User Name</font></b></td>
<td><b><font size="4" color="blue">Password</font></b></td>
<td><b><font size="4" color="blue">Bank Name</font></b></td> 
 <td colspan="2"><b><font size="4" color="blue">Operations</font></b></td> 


</tr><%    
int s=0;
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
	   PreparedStatement st=con.prepareStatement("select * from blogin where status=?");
	st.setInt(1,s);
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>
<tr align="center">

	<% 
 int id=rs.getInt(1);
%>
<td><font size="3" color="black"><%=rs.getString(2)%></font></td>
<td><font size="3" color="black"><%=rs.getString(3)%></font></td>
<td><font size="3" color="black"><%=rs.getString(4)%></font></td>
<td><a href="acceptbuser.jsp?id=<%=id%>"><font size="3" color="black">Accept</font></a></td>
<td><a href="deletebuser.jsp?id=<%=id%>"><font size="3" color="black">Decline</font></a></td>
</tr> 
<BR><BR><%}
	rs.close();
	st.close();
	con.close();
}catch(Exception e){}
%>
<center></table><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='adminhome.jsp'">
 
</center></BODY>
