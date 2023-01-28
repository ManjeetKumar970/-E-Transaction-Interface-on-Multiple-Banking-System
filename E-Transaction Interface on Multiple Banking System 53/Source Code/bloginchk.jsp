<%@page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<%
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amarDSN","system","amar");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
Statement st=con.createStatement();
con.close();
}catch(Exception e){
	
 System.out.println(e);
 }
//int i=st.executeUpdate(); 