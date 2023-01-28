<%@page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
		<BODY bgcolor="white">
		<form><BR><BR><BR>
<CENTER>
<h2><font color="black" style="background-color: rgb(255, 255, 255)"><U>List of Transfer Pendings</U></font></H2><BR><BR><BR><BR>
<table border=6 align=center cellpadding="0" border=1 width="90%" cellspacing="0" bgcolor="white">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><font color="black"><b>Source A/C No</b></font></td>
		
			<td align=center ><font color="black"><b>Transfer To Bank</b></font></td>
	<td align=center><font color="black"><b>Name of Bank</b></font></td>
	<td align=center><font color="black"><b>Destination A/C No</b></font></td>
	<td align=center><font color="black"><b>Amount</b></font></td>
	<td align=center><font color="black"><b>Balance</b></font></td>
	<td align=center ><font color="black"><b>Transaction Password</b></font></td>
	<td align=center colspan=2><font color="black"><b>Transfer</b></font></td>
				</tr>
<%
	 String sacno="";
String rtpwd="";
String tpwd="";
 String acname="";
float bal=0;
int id=0;
 String atype="";
 String cid="";
 String scid="";
String bname=(String)session.getAttribute("bname");
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
 PreparedStatement st=con.prepareStatement("select * from transfer where sbank='"+bname+"'");
ResultSet rs=st.executeQuery();
while(rs.next())
{
	id=rs.getInt(1);
	cid=rs.getString(10);
	scid=rs.getString(11);
	//out.println(id);
	String id1=String.valueOf(id);
	//out.println(id1);
	  sacno=rs.getString(2);
	  atype=rs.getString(5);
	    tpwd=rs.getString(7);
	    System.out.println(tpwd);
	   PreparedStatement st1=con.prepareStatement("select * from customer where cid=? and bname=? and accno=? and atype=?");
	  st1.setString(1,scid);
	   st1.setString(2,bname);
	   st1.setString(3,sacno);
	   st1.setString(4,atype);
ResultSet rs1=st1.executeQuery();
while(rs1.next())
{
	rtpwd=rs1.getString(9);
    acname=rs1.getString(4);
	bal=rs1.getFloat(8);
	System.out.println(rtpwd);
}

	%>

<tr>
	<td align=center><font color="blue"><%=sacno%></font></td>
	
	<%

String sbn=rs.getString(8);
String dbn=rs.getString(9);
if(sbn.equalsIgnoreCase(dbn))
	{
	%>
	<td align=center><font color="black"><b>Same</b></font></td>
		<td align=center ><font color="black"><%=bname%></font></td>
		<%}else
		{
		%>
<td align=center><font color="black"><b>Other</b></font></td>
		<td align=center disabled><font color="black"><%=dbn%></font> </td>
		<%
		}
		%>
		<td align=center><font color="blue"><%=rs.getString(3)%></font> </td>
		<td align=center><font color="blue"><%=rs.getFloat(4)%></font> </td> 
			<td align=center><font color="blue"><%=bal%></font></td> 
			<td align=center><font color="blue"><%=tpwd%></font></td> 
			<%
			boolean check=false;
			if(rtpwd.equals(tpwd))
				check=true;

			else
				check=false;
			%>
<!-- rs.close();
rs1.close();
st1.close();
con.close(); -->
			<td align=center><font color="blue"><a href="acc.jsp?ch=<%=check%>&id=<%=id1%>"><font color="red">Accept</font></a></font> </td>
				<td align=center><font color="blue"><a href="rej.jsp?id=<%=id1%>"><font color="red">Reject</font></a></font> </td></tr>
	<%
	 
}

}catch(Exception e){}
%>
</table></form>
<br> <BR><BR>
 <center><input type="button" value="     back     " onclick="window.location='bmain.jsp'">  