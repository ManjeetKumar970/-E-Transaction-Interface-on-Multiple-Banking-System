<%@ page import ="java.sql.*,beans.*" %>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<%
     // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  /* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amarDSN","system","amar");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
int id=Integer.parseInt(request.getParameter("id"));
System.out.println(id);
session.setAttribute("id",id);
     String bid="";
	 String pwd="";
	 	   int status=1;
  // Connection con=DriverManager.getConnection("jdbc:odbc:amarDSN","system","amar");
PreparedStatement ps2=con.prepareStatement("select * from clogin where id=?");
 ps2.setInt(1,id);
 ResultSet rs3=ps2.executeQuery();
 if(rs3.next()){
bid=rs3.getString(2);
pwd=rs3.getString(3);


 }

PreparedStatement ps=con.prepareStatement("update clogin set cid=?,pwd=?,status=? where id=?");
    System.out.println("hi");
	ps.setString(1,bid);

	ps.setString(2,pwd);

 ps.setInt(3,status);
 ps.setInt(4,id);
	ps.executeUpdate();
response.sendRedirect("acceptsuccess.jsp");
con.close();
}catch(Exception e){
	System.out.println(e);
	}
%>
