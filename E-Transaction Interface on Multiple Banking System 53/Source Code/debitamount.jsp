<%@page import="java.sql.*,beans.*"%>
<%@page import="com.et.beans.AbstractDataAccessObject"%>
<html>
<BODY bgcolor="white">
<%
float amount=0;
String numb=request.getParameter("number");

String amt=request.getParameter("amount");
String cid=(String)session.getAttribute("cid");
System.out.println(cid);
float f=Float.parseFloat(amt);
/* Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:amarDSN","system","amar");*/
try{
//Connection con=DBConn.getConn(); 
Connection con=new AbstractDataAccessObject().getConnection();

Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
Statement st1=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs=st.executeQuery("select bal from customer where cid='"+cid+"' and ACCNO="+numb);
if(rs.next())
{
	float bal=rs.getFloat(1);
	amount=bal+f;
	int x=st1.executeUpdate("update customer set bal="+amount+" where cid='"+cid+"' and ACCNO="+numb);
	if(x>0){
		%>
		<h1 align="center"><font color="green" style="background-color: rgb(255, 255, 255)">Amount Added Successfully</font></h1><br><br>
		<h1 align="center"><a href="lcustomer.jsp"><font color="black">Back</font></a></h1>
	<%}else{
		%>
		<h1 align="center" ><font color="red" style="background-color: rgb(255, 255, 255)">Amount Not Added</font></h1><br><br>
		<h1 align="center"><a  href="lcustomer.jsp"><font color="#80ffff">Back</font></a></h1>
	<%}
	%>
	<%
	
	}
}catch(Exception e){
	e.printStackTrace();
}
	%>
</body>



</html>