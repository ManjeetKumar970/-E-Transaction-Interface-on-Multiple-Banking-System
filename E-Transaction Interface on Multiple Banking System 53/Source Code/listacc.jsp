<%@page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<head>
<script>
function call()
{
document.forms[0].action="listacc.jsp";
document.forms[0].submit();
}
</script>
		<BODY bgcolor="white"><BR><CENTER>
		<h2><font color="black" style="background-color: rgb(255, 255, 255)"><u>List of Accounts</u></font></H2><BR><BR> 
		<BR>
<form action=""> 
<CENTER>
 <%String atype=request.getParameter("la");
 System.out.println(atype);
 %>
 
<table align=center cellpadding=0 width="35%" border=15 bgcolor="white">
<colgroup   span=2 align=left >
<tr><td align=center>
	<b><font color="black">SELECT ACCOUNTS  &nbsp;&nbsp;&nbsp; : </td><td><SELECT NAME="la" onChange="call()"> <option>Select a type</option>
	<option>Savings Account</option>
	<option>Current Account</option>
	<option>Others</option></SELECT></td></tr>
	</table>

		<BR><BR><BR>
<CENTER>

<table align=center cellpadding=0 border=3 bgcolor="white">
<colgroup span=4 align=center width="20%">
<tr>
	<td align=center><font color="black"><b>A/C Number</b></font> </td>
		<td align=center><font color="black"><b>A/C Name </b></font></td>
			<td align=center><font color="black"><b>Balance</b></font></td>
				<td align=center><font color="black"><b>A/C Type</b></font></td>
				</tr>
<%
int count=0;
String bn=(String)session.getAttribute("bname");
System.out.println(bn);
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();

Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs=st.executeQuery("select * from customer where atype='"+atype+"' and bname='"+bn+"'");
while(rs.next())
{
	count++;
	%>

<tr>
	<td align=center><font color="blue"><%=rs.getString(4)%><%System.out.println("run1"); %></font> </td>
		<td align=center><font color="blue"><%=rs.getString(6)%><%System.out.println("run2"); %></font> </td>
		<td align=center><font color="blue"><%=rs.getFloat(8)%><%System.out.println("run3"); %></font> </td>
		<td align=center><font color="blue"><%=rs.getString(5)%><%System.out.println("run4"); %></font> </td></tr>
	<%
}
if(count==0)
{ session.setAttribute("lat",atype);
	response.sendRedirect("norec.jsp");
}
//Jdbc.cleanup(rs,st,con);
rs.close();
st.close();
con.close();
}catch(Exception e){}
%>

</table>
<br> <BR><BR>
<center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">  