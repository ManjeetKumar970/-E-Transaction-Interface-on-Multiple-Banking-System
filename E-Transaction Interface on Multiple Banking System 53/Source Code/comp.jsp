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

<BODY bgcolor="white">
  
<%
    try{
//String id=request.getParameter("id");
String id = (String)session.getAttribute("id");
String bname1=(String)session.getAttribute("bname");
int in=0;
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amarDSN","system","amar");*/
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();	 

Statement st=con.createStatement();
int i=st.executeUpdate("update customer set status=1 where id='"+id+"' and bname='"+bname1+"'");
con.close();
}catch(Exception e){}
 %>
 <center><BR><BR><BR><h2><font color="green" style="background-color: rgb(255, 255, 255)">The Request for the Account is Granted</font></h2>
 <BR><BR>
 <input type="button" value="     back     " onclick="window.location='bmain.jsp'">  
 
</BODY>
</HTML>
