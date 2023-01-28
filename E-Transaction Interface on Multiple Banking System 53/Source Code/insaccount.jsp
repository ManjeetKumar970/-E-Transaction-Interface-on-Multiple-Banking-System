<%@ page import ="java.sql.*,beans.*" %>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<%
   
 try{
	//Connection con=DBConn.getConn();
	Connection con=new AbstractDataAccessObject().getConnection(); 
   //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   float bal=200;int status=0;
   //Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");
    String uid=(String)session.getAttribute("id");
   String name=request.getParameter("name");
   String pwd=request.getParameter("password");
   String tpwd=request.getParameter("tpassword");
   String accno=request.getParameter("accno");
      String cid=request.getParameter("cid");
	     String bname=(String)session.getAttribute("bname");
		       String atype=request.getParameter("atype");
   PreparedStatement st=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?,?,?)");
  
    st.setString(1,uid);
	 st.setString(2,cid);    
	 st.setString(3,pwd);
     st.setString(4,accno);
     st.setString(5,atype);
     st.setString(6,name);
  	 st.setString(7,bname);
	 st.setFloat(8,bal);
	   st.setString(9,tpwd);
	   st.setInt(10,status);
  
      response.sendRedirect("accsuccess.jsp");
      con.close();
      st.close();
   }catch(Exception e){}
   
  %>
