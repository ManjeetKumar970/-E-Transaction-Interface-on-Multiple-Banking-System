<%@ page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY bgcolor="white">
 
<%
 String id1=request.getParameter("id");
  String accno="";
   String scid="";
  String atype="";
  String sbname="";String cid="";
 int id=Integer.parseInt(id1);
  System.out.println("rej   "+id);

//out.println(id1);
//out.println(ch);
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();
  PreparedStatement st=con.prepareStatement("select * from transfer where id='"+id1+"'");
ResultSet rs=st.executeQuery();
while(rs.next())
{
	accno=rs.getString(2);
		atype=rs.getString(5);
		sbname=rs.getString(8);
		scid=rs.getString(11);
		
}
	   PreparedStatement st5=con.prepareStatement("select * from customer where bname=? and    accno=? and atype=? and cid=?");
	   st5.setString(1,sbname);
	   st5.setString(2,accno);
	   st5.setString(3,atype);
	   st5.setString(4,scid);
ResultSet rs1=st5.executeQuery();
while(rs1.next())
{
	cid=rs1.getString(1);
}
 PreparedStatement st1=con.prepareStatement("insert into reject values(?,?,?,?)");
 st1.setString(1,cid);
  st1.setString(2,accno);
   st1.setString(3,atype);
    st1.setString(4,sbname);
int i=st1.executeUpdate();
PreparedStatement st2=con.prepareStatement("delete from transfer where id=?");
 st2.setString(1,id1);
 
int j=st2.executeUpdate();
if(j>0)
	%>
 <center><BR><BR><h2><font color="red" style="background-color: rgb(255, 255, 255)">The Transaction for the customer ID <%=cid%>is Rejected</font></h2>
 <BR><BR><input type=hidden name="bname" value="<%=sbname%>">
 <input type="button" value="     back     " onclick="window.location='bmain.jsp'">  
<%
st2.close();
st1.close();
rs1.close();
st5.close();
rs.close();
con.close();
}catch(Exception e){} %> 
</BODY>
</HTML>
