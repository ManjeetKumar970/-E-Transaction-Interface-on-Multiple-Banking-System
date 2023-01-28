<%@page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
	
<%
int count=0;
String acc=request.getParameter("accno");
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amarDSN","system","amar");*/
try{
//Connection con=DBConn.getConn();
Connection con=new AbstractDataAccessObject().getConnection(); 
Statement st=con.createStatement();
int i=st.executeUpdate("delete from reject where accno='"+acc+"'");
 if(i>0)
 {System.out.println("This ia if");}
 con.close();
 }catch(Exception e){}
%>
<body bgcolor="white">
<BR><BR><BR><BR><center> <h2><font color="red" style="background-color: rgb(255, 255, 255)">Record is Deleted</font></h2>
<br> <BR><BR>
 <center><input type="button" value="     BACK    " onClick="window.location='bmain.jsp'">
 </center>
 </center></body>  