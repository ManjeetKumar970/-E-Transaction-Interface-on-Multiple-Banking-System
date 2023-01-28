<%@page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
		<BODY bgcolor="white"><BR><BR><BR>
<CENTER>
<h2><font color="black" style="background-color: rgb(255, 255, 255)"><u>List of Customers</u></font></H2><BR><BR>
<table align=center cellpadding=0 border=3 width="60%" bgcolor="white">
<colgroup span=4 align=center width="20%" bordercolor="#FFCCCC">
<tr>
	<td align=center><b><font color="black">A/C Number</font></b> </td>
	<td align=center><b><font color="black">Customer id</font></b> </td>
		<td align=center><b><font color="black">A/C Name</font></b> </td>
			<td align=center><b><font color="black">Balance</font></b></td>
				<td align=center><b><font color="black">A/C Type</font></b></td>
				<td align=center><b><font color="black">DebitAmount</font></b></td>
				</tr>
<%
int count=0;
String bname=request.getParameter("bname");
 
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();

Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs=st.executeQuery("select * from customer where bname='"+bname+"'");
while(rs.next())
{
	count++;
	String cid=rs.getString(2);
	 
	%>

<tr>
	<td align=center><font color="blue"><%=rs.getString(4)%></font> </td>
	<td align=center ><font color="blue"><%=rs.getString(2)%></font> </td>
		<td align=center><font color="blue"><%=rs.getString(6)%></font> </td>
		<td align=center><font color="blue"><%=rs.getFloat(8)%></font> </td>
		<td align=center><font color="blue"><%=rs.getString(5)%></font> </td>
	<td><a href="addamount.jsp?cid=<%=cid%>"><font color="red">ADD</font></a></td></tr>
	 
	 	<%
}
if(count==0)
response.sendRedirect("bmain.jsp");
rs.close();
st.close();
con.close();

}catch(Exception e){}
%>
</table>
<br> <BR><BR>
 <center><input type="button" value="BACK" onClick="window.location='bmain.jsp'">  