<%@ page import ="java.sql.*,beans.*" %>
<%@ page import ="java.util.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<%
   
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
   //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   Statement stt=null;
    
   int ind=0;
  // Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");
   String uid=(String)session.getAttribute("id");
   String pwd=(String)session.getAttribute("pwd");
   System.out.println(uid);
   String name=request.getParameter("name");
   System.out.println(name);
    
   System.out.println(pwd);
   String tpwd=request.getParameter("tpassword");
   System.out.println(tpwd);
   String city=request.getParameter("city");
   System.out.println(city);
      String cid=(String)session.getAttribute("cid");
   System.out.println(cid);     
   String bname=request.getParameter("bname");
   System.out.println(bname);	      
   String atype=request.getParameter("atype");
   System.out.println(atype);	
   String phone=request.getParameter("phone");
   long ph=Long.parseLong(phone);
   System.out.println(phone);
   float bal=2000;int status=0;
   
   PreparedStatement ps2=con.prepareStatement("select * from customer where cid=? and bname=? and atype=?");
   ps2.setString(1,cid);
   ps2.setString(2,bname);
   ps2.setString(3,atype);
      ResultSet rs3=ps2.executeQuery();
   if(rs3.next()){
	 response.sendRedirect("acexist.jsp");
	  rs3.close();
	   ps2.close();
	  con.close();
   }
   else{
	    
	 String accno="91"+new Random().nextInt(100)+new Random().nextInt(999999);
 
	    session.setAttribute("accno",accno);
   PreparedStatement st=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?,?,?,?,?)");
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
	   st.setLong(11,ph);
	   st.setString(12,city);
   System.out.println(st);
    st.executeUpdate();
   con.close();
   response.sendRedirect("acprocess.jsp");
   con.close();
   st.close();
   }
   }catch(Exception e){
	   e.printStackTrace();
   }
  %>
