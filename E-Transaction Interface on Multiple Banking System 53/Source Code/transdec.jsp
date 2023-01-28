<%@page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
		<BODY bgcolor="white"><BR><BR><BR>
<CENTER>
<h2><font color="red" style="background-color: rgb(255, 255, 255)"><U>List of Transfer Declines</U></font></H2>
<BR><BR>
<table align=center cellpadding=0 border=6 width="60%" border=6 bgcolor="white">
<colgroup span=4 align=center width="20%" bordercolor="#FFCCCC">
<tr>
	<td align=center><font color="black"><b>Customer id</b></font></td>
		<td align=center><font color="black"><b>A/C Number</b></font></td>
			<td align=center><font color="black"><b>A/C Type</b></font></td>
				<td align=center><font color="black"><b>Bank Name</b></font></td>
				<td align=center><font color="black"><b>Operation</b></font></td>
				</tr>
<%
int count=0;
String bname=request.getParameter("bname");
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reject");
while(rs.next())
{
	count++;
	String acc=rs.getString(2);
	%>

<tr>
	<td align=center><font color="blue"><%=rs.getString(1)%></font></td>
		<td align=center><font color="blue"><%=acc%></font></td>
		<td align=center><font color="blue"><%=rs.getString(3)%></font></td>
		<td align=center><font color="blue"><%=rs.getString(4)%></font></td><td align=center><a href="dec.jsp?accno=<%=acc%>">Delete</a></td></tr>
	<%
}
if(count==0)
response.sendRedirect("norec1.jsp");
rs.close();
st.close();
con.close();
}catch(Exception e){}
%>
</table>
<br> <BR><BR>
 <center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">
 </center></CENTER></BODY>  