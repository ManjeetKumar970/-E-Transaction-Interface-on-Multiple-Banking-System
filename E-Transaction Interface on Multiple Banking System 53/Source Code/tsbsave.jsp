<%@ page import ="java.sql.*,beans.*" %>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<%
   boolean d1=false;   boolean s1=false; boolean s2=false; boolean d2=false;
   
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
//   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   int ind=0;int ind1=0;String uid="";int ii=0;
  // Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");
  // String uid=(String)session.getAttribute("id");
  String cid1=(String)session.getAttribute("cid");
  //PreparedStatement ps1=con.prepareStatement("select nvl(MAX(id),1) from transfer");
 PreparedStatement ps1=con.prepareStatement("select nvl(MAX(id),1) from transfer");
 System.out.println(ps1+"-------------mmmm---");
 ResultSet rs2=ps1.executeQuery();
 System.out.println(rs2+"----------------mahesh---------");
 if(rs2.next()){
	 String s=rs2.getString(1);
	 if(s==null){
	 ii=1;}else{ii=Integer.parseInt(s)+1;}
uid=String.valueOf(ii);}
   String pwd=request.getParameter("password");
   System.out.println(pwd);
   String accno=request.getParameter("accno");
   System.out.println(accno);
      String amt=request.getParameter("amt");
      System.out.println(amt);
	float am=Float.parseFloat(amt);
	System.out.println(am);
	     String sbname=(String)session.getAttribute("bname");
	     System.out.println(sbname);
		       String atype=request.getParameter("atype");
		       System.out.println(atype);
			   String daccno=request.getParameter("daccno");
			   System.out.println(daccno);
			    String dtype=request.getParameter("dtype");
			    System.out.println(dtype);
			    String cid=null;
			    
			     
PreparedStatement st1=con.prepareStatement("select * from customer where accno=? and  atype=? and bname=?");
 	
st1.setString(1,daccno);
	st1.setString(2,dtype);
	st1.setString(3,sbname);
	ResultSet rs=st1.executeQuery();
	System.out.println("hiiii...1+st1");
	if(rs.next()){
		cid=rs.getString(2);
		ind=rs.getInt(10);
		if(ind==1){d2=true;
		}else{ d2=false;}
d1=true;
	}
	Statement ss=con.createStatement();
ResultSet rs1=ss.executeQuery("select * from customer where cid='"+cid1+"' and accno='"+accno+"' and  atype='"+atype+"' and bname='"+sbname+"'");
System.out.println("hiiii...2");
	if(rs1.next()){ind1=rs1.getInt(10);if(ind1==1){s2=true;
		}else{ s2=false;}
s1=true;}
if(d1&&s1){
	if(d2&&s2){
	 PreparedStatement st=con.prepareStatement("insert into transfer values(?,?,?,?,?,?,?,?,?,?,?)");
     st.setString(1,uid);
	    st.setString(2,accno);
		 st.setString(3,daccno);
   st.setFloat(4,am);
      st.setString(5,atype);
	  st.setString(6,dtype);
 st.setString(7,pwd);
  st.setString(8,sbname);
    st.setString(9,sbname);
    st.setString(10,cid);
    st.setString(11,cid1);
   st.executeUpdate();
   st.close();
   System.out.println(st);
   /* rs1.close();
   ss.close();
   st1.close();
   rs2.close();
   ps1.close();
   con.close(); */
     response.sendRedirect("trfprocess.jsp");
	}else{
		if(d2){response.sendRedirect("sacprocess.jsp");}
		if(s2){response.sendRedirect("dacprocess.jsp");}
		if(!(s2||d2)){response.sendRedirect("sdacprocess.jsp");}
		}
}else{
	if(!(d1||s1)){
			response.sendRedirect("nosourcedest1.jsp");
		}else{
if(d1){  response.sendRedirect("nosource1.jsp");}else{  response.sendRedirect("nodest1.jsp");}}

}

}catch(Exception e){}
	
	
  %>