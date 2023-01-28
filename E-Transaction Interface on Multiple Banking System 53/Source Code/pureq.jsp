<%@ page import="java.sql.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
 <BODY bgcolor="white"><BR><BR><br><br>
 <center>
 <h2><u><center><font size="+2" color="black" style="background-color: rgb(255, 255, 255)">  New User Requests </font></u></h2>
  <table width="60%" border="1" align="center" bgcolor="white">
<tr align="center">

<td><b><font size="4" color="blue">User ID</font></b></td>
<td><b><font size="4" color="blue">Password</font></b></td>

 <td colspan="2"><b><font size="4" color="blue">Operations</font></b></td> 


</tr><%    
int s=0;
Connection con=null;
PreparedStatement st=null;
ResultSet rs=null;
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn(); 
con=new AbstractDataAccessObject().getConnection(); 
	   st=con.prepareStatement("select * from clogin where status=?");
	st.setInt(1,s);
	rs=st.executeQuery();
	while(rs.next()){

%>
<tr align="center">

	<% 
 int id=rs.getInt(1);
%>
<td><font size="3" color="black"><%=rs.getString(2)%></font></td>
<td><font size="3" color="black"><%=rs.getString(3)%></font></td>
<td><a href="acceptuser.jsp?id=<%=id%>"><font size="3" color="black">Accept</font></a></td>
<td><a href="deleteuser.jsp?id=<%=id%>"><font size="3" color="black">Decline</font></a></td>
</tr> 
<%}
	rs.close();
	st.close();
	con.close();
}catch(Exception e){
	e.printStackTrace();
}finally{
	 		try{
			 if(rs!=null) rs.close();
			 if(st!=null) st.close();
			 if(con!=null) con.close();
		 }catch(Exception e){}
	 
}
%><center></table><BR><BR>
	<input type="button" name=back  value="   BACK   " onClick="window.location='adminhome.jsp'">
 

</center></BODY>
 

