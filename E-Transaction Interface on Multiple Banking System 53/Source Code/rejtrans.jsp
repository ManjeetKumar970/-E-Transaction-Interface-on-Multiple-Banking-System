<%@ page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<%
int i=0;
String cid= (String)session.getAttribute("cid");
  String bname=(String)session.getAttribute("bname");
  /* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn();
Connection con=new AbstractDataAccessObject().getConnection();
   PreparedStatement st1=con.prepareStatement("select * from reject where cid=? and bname=? ");
	   st1.setString(1,cid);
	   st1.setString(2,bname);
ResultSet rs=st1.executeQuery();%>
<BODY bgcolor="white">
<BR><BR><center><h2><font color="red" style="background-color: rgb(255, 255, 255)">Rejected Transactions</font>
<BR><BR>
<table align=center cellpadding="0" border=6 width="50%" cellspacing="0" bgcolor="white">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><font color="black"><b> A/C Number </b></font></td>
	
			<td align=center ><font color="black"><b>Account Type</b></font></td>
	<td align=center><font color="black"><b>Name of Bank</b></font></td>
				</tr><%
while(rs.next())
{
	i++;
	%>
	<td align=center><font color="blue"><b><%=rs.getString(2)%></b></font> </td>
	<td align=center><font color="blue"><b><%=rs.getString(3)%></b></font> </td>
	<td align=center><font color="blue"><b><%=rs.getString(4)%></b></font> </td> 

<%
		}
				rs.close();
				st1.close();
				con.close();
}catch(Exception e){}
  %>
  </table>
  <center><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='treport.jsp'">
</body>