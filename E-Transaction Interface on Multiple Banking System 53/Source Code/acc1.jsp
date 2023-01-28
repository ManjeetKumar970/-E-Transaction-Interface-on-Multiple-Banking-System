<%@ page import="java.sql.*"%>
<%
 String id1=request.getParameter("id");
String ch=request.getParameter("ch");
String bname=(String)session.getAttribute("bn");
int in=1; 
if(ch.equalsIgnoreCase("true"))
{ 
	%>
 <center><BR><BR><BR>	<h2>The Transaction for the customer ID<%=id1%> has been Accepted</h2>
 <BR><BR>
 <input type="submit" value="     back     " onclick="2window.location='bmain.jsp'">  
<%
}
else
{
%>
	 <center><BR><BR><BR>	<h2>The Transaction Password for the customer ID<%=id1%> is Invalid </h2>
	 <BR><BR>
<input type="submit" value="     back     " onclick="2window.location='bmain.jsp'">  
 

 <%}%>

