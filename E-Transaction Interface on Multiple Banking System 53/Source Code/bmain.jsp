<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY bgcolor="white"><BR>
<CENTER>

<%
//String bid=request.getParameter("bid");
//String pwd=request.getParameter("pwd");
String bn=(String)session.getAttribute("bname");
//out.println(bn);
%>
<h3><marquee behavior="alternate"><h2><font color="green" style="background-color: rgb(255, 255, 255)">Welcome To <%=bn%> Bank</font></marquee></h2><BR><BR><BR>
 
<table align=center cellspacing="5" cellpadding="5" border=0 bgcolor="white">
<colgroup span=1 align=center>
<tr><td align="left"><a href="lcustomer.jsp?bname=<%=bn%>"><h2><font color="black">List of Customers</font></h2></a></td></tr>
<tr><td align="left"><a href="lacconts.jsp?bname=<%=bn%>"><b><h2><font color="black">List of Accounts</font></h2></a></td></tr>
<tr><td align="left"><a href="transpen.jsp?bname=<%=bn%>"><b><h2><font color="black">Transfer Pending</font></h2></a></td></tr>
<tr><td align="left"><a href="transdec.jsp?bname=<%=bn%>"><b><h2><font color="black">Transfer Declines</font></h2></a></td></tr>
<tr><td align="left"><a href="newaccpen.jsp?bname=<%=bn%>"><b><h2><font color="black">New Accounts Pending?</font></h2></a></td></tr>
<tr><td align="left"><a href="lout.jsp"><b><h2><font color="red">Signout</font></h2></a></td></tr>
</table>
</BODY>
 <BR><BR><BR>
 