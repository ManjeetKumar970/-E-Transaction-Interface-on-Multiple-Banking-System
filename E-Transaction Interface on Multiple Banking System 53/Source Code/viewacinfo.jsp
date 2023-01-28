<%@page import="com.et.beans.AbstractDataAccessObject"%><html>
<head><title></title></head>
<body bgcolor="white">
<center><BR><BR><BR><BR>

<%@ page import="java.sql.*,beans.*" %>
<%String bname=(String)session.getAttribute("bname");


String cid=(String)session.getAttribute("cid");
String pwd=(String)session.getAttribute("pwd");
 	/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
	    System.out.println(cid);
%><center><h2><font color="red"><u>Account Information</u></font><BR><BR>
<table border="2" align="center" width="70%" bgcolor="white">
<tr>
<td align="center"><font color="black"><h3>Customer Id</h3></font></td>
<td align="center"><font color="black"><h3>Account Number</h3></font></td>
<td align="center"><font color="black"><h3>Account Type</h3></font></td>
<td align="center"><font color="black"><h3>Balance</h3></font></td>
<td align="center"><font color="black"><h3>Status</h3></font></td>
</tr>
<%
  PreparedStatement st=con.prepareStatement("select * from customer where bname=? and cid=?");
	st.setString(1,bname);
	st.setString(2,cid);
	ResultSet rs=st.executeQuery();
	while(rs.next()){
	%><tr><td align="center"><font color="blue"><%=rs.getString(2)%></font></td>
		<td align="center"><font color="blue"><%=rs.getString(4)%></font></td>
		<td align="center"><font color="blue"><%=rs.getString(5)%></font></td>
		<td align="center"><font color="blue"><%=rs.getString(8)%></font></td>
		<%int sta=rs.getInt(10);
		if(sta==1){%><td align="center"><font color="red">Created</font></td>
			<%}else{%><td align="center"><font color="red">in process</font></td><%}%>
		</tr>
<%}
	rs.close();
	st.close();
	con.close();
}catch(Exception e){}%></table></center><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='userhome.jsp'">

</center>

</body></html>

