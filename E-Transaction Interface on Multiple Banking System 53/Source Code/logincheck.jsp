<%@ page import="java.sql.*,beans.*" %>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<%

 /* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn();
Connection con=new AbstractDataAccessObject().getConnection(); 
	int ind=0;
    String cid=request.getParameter("cid");
    String pwd=request.getParameter("pwd");
	session.setAttribute("cid",cid);
	session.setAttribute("pwd",pwd);
    PreparedStatement st=con.prepareStatement("select * from clogin where cid=? and pwd=?");
	st.setString(1,cid);
	st.setString(2,pwd);
	ResultSet rs=st.executeQuery(); 
	if(rs.next()){
 		ind=rs.getInt(4);
 if(ind==1){		 
	session.setAttribute("id",cid);
	response.sendRedirect("user.jsp");
}else{response.sendRedirect("process.jsp");}

}else{ response.sendRedirect("loginfailure.jsp");}
rs.close();
st.close();
con.close();
}catch(Exception e){}
	%>