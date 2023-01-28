<%@page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<head><script>
function call()
{
	alert("fjhsfjhsdf");
}
		</script>
		<BODY bgcolor="white">
		<form><BR><BR><BR>
<CENTER>
<h2><font color="black" style="background-color: rgb(255, 255, 255)"><U>List of Transfer Pendings</U></font></H2>
<BR><BR><BR><BR>
<table align=center cellpadding="0" border=1 width="90%" cellspacing="0" border=15 bgcolor="white">
<colgroup span=4 align=center width="10%">
<tr>
	<td align=center><font color="black"><b>Source A/C Number </b></font></td>
		<td align=center><font color="black"><b> A/C Name</b></font> </td>
			<td align=center ><font color="black"><b>Transfer To Bank</b></font></td>
	<td align=center><font color="black"><b>Name of Bank</b></font></td>
	<td align=center><font color="black"><b>Destination A/C No</b></font></td>
	<td align=center><font color="black"><b>Amount</b></font></td>
	<td align=center><font color="black"><b>Balance</b></font></td>
	<td align=center ><font color="black"><b>Transaction Password</b></font></td>
	<td align=center colspan=2><b>Trasfer</td>
				</tr>
<%
	 String sacno="";
String rtpwd="";
String tpwd="";
 String acname="";
float bal=0;
 
String bname=request.getParameter("bname");
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
 PreparedStatement Ps=con.prepareStatement("select * from tranfer where sbank=?");
Ps.setString(1,bname);
ResultSet rs=Ps.executeQuery();

while(rs.next())
{
	int id=rs.getInt(1);
	  sacno=rs.getString(2);
}
 PreparedStatement st1=con.prepareStatement("select * from customer where accno=?'");
	  st1.setString(1,sacno);
ResultSet rs1=st1.executeQuery();
while(rs1.next())
	{
	rtpwd=rs1.getString(9);
    acname=rs1.getString(6);
	bal=rs1.getFloat(8);
	}
PreparedStatement st=con.prepareStatement("select * from tranfer where sbank=?");
st.setString(1,bname);
ResultSet rs2 = st.executeQuery();

while(rs2.next())
{
	int id=rs2.getInt(1);
	  sacno=rs2.getString(2);
	  tpwd=rs2.getString(7);
	 
	 
	%>

<tr>
	<td align=center><font color="black"><%=sacno%></font></td>
	<td align=center><font color="black"><%=acname%></font></td>
	<%

String sbn=rs.getString(8);
String dbn=rs.getString(9);
if(sbn.equalsIgnoreCase(dbn))
	{
	%>
	<td align=center><b><font color="black">Same</font></td>
		<td align=center disabled>  </td>
		<%}else
		{
		%>
<td align=center><b><font color="black">Other</font></td>
		<td align=center disabled><font color="black"><%=dbn%></font>  </td>
		<%
		}
		%>
		<td align=center><font color="blue"><%=rs2.getString(3)%></font> </td>
		<td align=center><font color="blue"><%=rs2.getFloat(4)%></font> </td> 
			<td align=center><font color="blue"><%=bal%></font></td> 
			<td align=center><font color="blue"><%=tpwd%></font></td> 
			<td align=center><a href="acc.jsp"><font color="red">Accept</font></a> </td>
				<td align=center><a href="rej.jsp"><font color="red">Reject</font></a> </td></tr>
	<%
	 
}
rs2.close();
st.close();
rs1.close();
st1.close();
con.close();
}catch(Exception e){}
%>
</table></form>
<br> <BR><BR>
 <center><input type="submit" value="     OK     ">  