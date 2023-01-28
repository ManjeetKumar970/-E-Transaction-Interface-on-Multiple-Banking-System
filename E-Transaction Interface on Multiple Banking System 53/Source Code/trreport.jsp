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
   PreparedStatement st1=con.prepareStatement("select * from taccept where scid=? and sbname=? ");
	   st1.setString(1,cid);
	   st1.setString(2,bname);
ResultSet rs=st1.executeQuery();%>
<body bgcolor="white">
<center><font color="green" style="background-color: rgb(255, 255, 255)"><h2><u>Accepted Transactions</u></h2></font><BR><BR>
<table align=center cellpadding="0" border=5 width="85%" cellspacing="0" cellpadding="0" bgcolor="white">

<tr>
	<td align=center><font color="black"><b>Source A/C Number</b></font> </td>
	
			<td align=center ><font color="black"><b>Account Type</b></font></td>
	<td align=center><font color="black"><b>Name of Bank</b></font></td>
	<td align=center><font color="black"><b>Amount</b></font></td>
	<td align=center><font color="black"><b>Destination A/C Number</b></font></td>
	<td align=center><font color="black"><b>Balance</b></font></td>
				</tr><%
while(rs.next())
{
	i++;
	%>
	<tr>
	<td align=center><font color="blue"><%=rs.getString(2)%></font></td>
	<td align=center><font color="blue"><%=rs.getString(3)%></font></td>
	<td align=center><font color="blue"><%=rs.getString(4)%></font></td>
	<td align=center><font color="blue"><%=rs.getFloat(10)%></font></td> 
	<td align=center><font color="blue"><%=rs.getString(7)%></font></td>
	<td align=center><font color="blue"><%=rs.getFloat(5)%></font> </td></tr>
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
</center></center>
</body>