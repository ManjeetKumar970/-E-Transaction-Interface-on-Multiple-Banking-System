<%@ page import ="java.sql.*,beans.*" %>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<%
   
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
  // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   float bal=200;
  // Connection con=DriverManager.getConnection("jdbc:odbc:amarDSN","system","amar");
    String id=request.getParameter("id");
  int ii=0;
   String pwd=request.getParameter("pwd");
   String phone=request.getParameter("phone");
   String email=request.getParameter("email");
   long ph=Long.parseLong(phone);
   PreparedStatement ps3=con.prepareStatement("select *  from clogin where cid=? ");
				ps3.setString(1,id);
							
 ResultSet rs3=ps3.executeQuery();
// System.out.println("hiii");
 if(rs3.next()){System.out.println("hiii22");
 response.sendRedirect("exist.jsp");
 }
 else{
      PreparedStatement ps1=con.prepareStatement("select MAX(id) from clogin");
 ResultSet rs2=ps1.executeQuery();
 if(rs2.next()){
	 String s=rs2.getString(1);
	 if(s==null){
	 ii=1;}else{ii=Integer.parseInt(s)+1;}
 }
		      
			   int ind=0;
   PreparedStatement st=con.prepareStatement("insert into clogin values(?,?,?,?,?,?)");
    st.setInt(1,ii);
    st.setString(2,id);
	    st.setString(3,pwd);
		st.setInt(4,ind);
		st.setLong(5,ph);
		st.setString(6,email);
		st.executeUpdate();
 response.sendRedirect("process1.jsp");
 }
 //st.close();
 
con.close();
}


catch(Exception e){}
 %>