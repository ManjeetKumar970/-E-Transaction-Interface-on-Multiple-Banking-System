<%@ page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY bgcolor="white"><center><BR><BR><BR><BR><h2><u><font  color="red" style="background-color: rgb(255, 255, 255)">List Of Pending Accounts</font></u></h2><BR><BR><BR> 
 <table align=center cellpadding="0" border=1 width="60%" cellspacing="0" bgcolor="white">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><font  color="black" ><b>A/C Number</b></font> </td>
		<td align=center><font  color="black" ><b> A/C Name</b></font> </td>
			<td align=center ><font  color="black" ><b>Customer ID</b></font></td>
	<td align=center><font  color="black" ><b>Name of Bank</b></font></td> <td align=center><font  color="#00ff40" ><b>Amount</b></font></td>  <td align=center colspan=2><font  color="#00ff40" ><b>operation</b></font></td> 
				</tr>
<%
 
String bn=request.getParameter("bname");
String bname1=(String)session.getAttribute("bname");
 String id="";
int in=0;
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where status=0 and bname='"+bname1+"'");
while(rs.next())
{  id=rs.getString(1);
	 %>
<tr>
	<td align=center><font  color="blue" ><%=rs.getString(4)%><font  color="black" > </td>
	<td align=center><font  color="blue" ><%=rs.getString(5)%></font> </td>
	 
		<td align=center><font  color="blue" ><%=id%></font> </td>
				<td align=center><font  color="blue" ><%=rs.getString(7)%></font> </td>
		<td align=center><font  color="blue" ><%=rs.getFloat(8)%></font> </td>
		<td align=center><font  color="black" ><a href="comp.jsp?id=<%=id%>"><font  color="red" >Grant</font></a></font> </td> 
		<td align=center><font  color="black" ><a href="pend.jsp?id=<%=id%>"><font  color="red" >Reject</font></a></font> </td> 
		</tr>
		<%
			in++;
}
if(in==0)
response.sendRedirect("norec1.jsp");
session.setAttribute("id",id);
rs.close();
st.close();
con.close();
}catch(Exception e){}
%>
</table><BR><BR>
 <center><input type="button" value="     back     " onclick="window.location='bmain.jsp'">  
</BODY>
</HTML>
