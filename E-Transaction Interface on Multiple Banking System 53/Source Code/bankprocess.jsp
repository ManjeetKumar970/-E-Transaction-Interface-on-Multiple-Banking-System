<%@ page import ="java.sql.*,beans.*" %>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<%
	
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
   int i=0;int ii=0;
   //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   float bal=200;
  // Connection con=DriverManager.getConnection("jdbc:odbc:amarDSN","system","amar");
 PreparedStatement st1=con.prepareStatement("select MAX(id) from blogin");
 ResultSet rs1=st1.executeQuery();
 if(rs1.next()){
	 String s=rs1.getString(1);
	 if(s==null){
	 i=1;}else{i=Integer.parseInt(s)+1;}
 }
   String bid=request.getParameter("id");

  // String name=request.getParameter("name");
   String pwd=request.getParameter("pwd");
  String phone=request.getParameter("phone");
  long ph=Long.parseLong(phone);
     // String cid=request.getParameter("cid");
//String bname=(String)session.getAttribute("bname");
		       String bname=request.getParameter("bname");
			   int ind=0;



PreparedStatement ps2=con.prepareStatement("select * from bank where bname=?");
 ps2.setString(1,bname);
 ResultSet rs3=ps2.executeQuery();
 if(rs3.next()){
 }else{
 PreparedStatement ps1=con.prepareStatement("select MAX(id) from bank");
 ResultSet rs2=ps1.executeQuery();
 if(rs2.next()){
	 String s=rs2.getString(1);
	 if(s==null){
	 ii=1;}else{ii=Integer.parseInt(s)+1;}
 }
 
PreparedStatement st3=con.prepareStatement("insert into bank values(?,?)");
  st3.setInt(1,ii);
    st3.setString(2,bname);
	    st3.executeUpdate();

 }
   PreparedStatement st=con.prepareStatement("insert into blogin values(?,?,?,?,?,?)");
  st.setInt(1,i);
    st.setString(2,bid);
	    st.setString(3,pwd);
		st.setString(4,bname);
		st.setInt(5,ind);
		st.setLong(6,ph);
		st.executeUpdate();
 response.sendRedirect("process.jsp");
 con.close();
 }catch(Exception e){
 	System.out.println(e);
 	}
 %>