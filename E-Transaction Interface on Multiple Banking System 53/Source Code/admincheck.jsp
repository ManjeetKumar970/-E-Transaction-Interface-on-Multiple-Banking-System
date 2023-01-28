<%@ page import="java.sql.*"%>

<%
	String uname=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
   
  if((uname.equals("admin"))&&(pwd.equals("admin"))){
	
 		response.sendRedirect("adminhome.jsp");
 	}else{
 		response.sendRedirect("adminfailure.jsp");
 		}

%>