<%@page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
		<BODY bgcolor="white"><BR><BR><BR>
<CENTER>
<h2><font color="green" style="background-color: rgb(255, 255, 255)"><u>List of Accounts</u></font></H2><BR><BR><BR><BR>
<table align=center cellpadding=0 bgcolor="white">
<colgroup span=4 align=center width="20%">
<tr>
	<td align=center><b><font color="black">A/C Number</font></b> </td>
		<td align=center><b><font color="black">A/C Name</font></b> </td>
			<td align=center><b><font color="black">Balance</font></b></td>
				<td align=center><b><font color="black">A/C Type</font></td>
				</tr>
<%
String bname=(String)session.getAttribute("bname");
System.out.println("bank name  "+bname);

/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer where bname='"+bname+"'");
while(rs.next())
{   
	%>

<tr>
	<td align=center><font color="blue"><%=rs.getString(4)%></font> </td>
		<td align=center><font color="blue"><%=rs.getString(6)%></font> </td>
		<td align=center><font color="blue"><%=rs.getFloat(8)%></font> </td>
		<td align=center><font color="blue"><%=rs.getString(5)%></font> </td></tr>
	<%
}
rs.close();
st.close();
con.close();

}catch(Exception e){}
%>
</table>
<br> <BR><BR>
 <center><input type="submit" value="     OK     ">  