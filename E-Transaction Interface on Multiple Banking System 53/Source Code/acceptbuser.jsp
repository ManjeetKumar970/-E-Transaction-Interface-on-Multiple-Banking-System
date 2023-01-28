<%@ page import ="java.sql.*,beans.*,com.et.beans.*" %>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<%
  /* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amarDSN","system","amar");*/
try{
//Connection con=DBConn.getConn();  
  Connection con=new AbstractDataAccessObject().getConnection();
  // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   float bal=200;
   int id=Integer.parseInt(request.getParameter("id"));
     String bid="";
	 String pwd="";
	   String bname="";
	   int status=1;String i="";int ind=0;
  // Connection con=DriverManager.getConnection("jdbc:odbc:amarDSN","system","amar");
PreparedStatement ps2=con.prepareStatement("select * from blogin where id=?");
 ps2.setInt(1,id);
 ResultSet rs3=ps2.executeQuery();
 if(rs3.next()){
bid=rs3.getString(2);
pwd=rs3.getString(3);
bname=rs3.getString(4);

 }
 PreparedStatement ps3=con.prepareStatement("select * from bank where bname=?");
 ps3.setString(1,bname);
 ResultSet rs4=ps3.executeQuery();
 if(rs4.next()){}else{	 PreparedStatement st1=con.prepareStatement("select max(id) from bank");
 ResultSet rs5=st1.executeQuery();
 if(rs5.next()){
 i=rs5.getString(1);
 if(i==null){ind=0;}else{ind=Integer.parseInt(i)+1;
}
 }
	 PreparedStatement st=con.prepareStatement("insert into bank values(?,?)");
  
    st.setInt(1,ind);
	    st.setString(2,bname);
st.executeUpdate();
 }


PreparedStatement ps=con.prepareStatement("update blogin set bid=?,pwd=?,bname=?,status=? where id=?");
    System.out.println("hi");
	ps.setString(1,bid);
	//ps.setString(2,psw);
	ps.setString(2,pwd);
 ps.setString(3,bname);
 ps.setInt(4,status);
 ps.setInt(5,id);
	ps.executeUpdate();
response.sendRedirect("acceptbsuccess.jsp");
con.close();
}catch(Exception e){
	System.out.println(e);
	}
%>
