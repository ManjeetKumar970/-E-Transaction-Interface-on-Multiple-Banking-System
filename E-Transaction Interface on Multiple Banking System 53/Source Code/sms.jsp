<%@page import="com.et.beans.AbstractDataAccessObject"%>
 <%@ page import ="java.io.File"%>
<%@ page import ="java.util.Date"%>
<%@ page import ="java.util.List"%>
<%@ page import ="java.util.Properties"%>
<%@ page import ="java.io.*"%>
<%@ page import ="javax.activation.DataHandler"%>
<%@ page import ="javax.activation.DataSource"%>
<%@ page import ="javax.activation.FileDataSource"%>
<%@ page import ="javax.mail.*"%>
<%@ page import ="javax.mail.Message.RecipientType"%>
<%@ page import ="javax.mail.PasswordAuthentication"%>
<%@ page import ="javax.mail.internet.*"%>
<%@ page import ="java.sql.*,beans.*" %>

<%
String email=null;
String text=null;
final String UNAME="shailendra.rocket@gmail.com";
final String PASSWORD="sonh@064131626";
Connection con=null;
ResultSet rs3=null;
PreparedStatement ps2=null;
try{
	//Connection con=DBConn.getConn(); 
	con=new AbstractDataAccessObject().getConnection();
	   int id=Integer.parseInt(request.getParameter("id"));
	   System.out.println(id);
	   session.setAttribute("id",id);
	    String bid="";
		 String pwd="";
		 	   int status=1;
	  // Connection con=DriverManager.getConnection("jdbc:odbc:amitDSN","system","amit");
	ps2=con.prepareStatement("select * from clogin where id=?");
	 ps2.setInt(1,id);
	 rs3=ps2.executeQuery();
	 if(rs3.next()){
	bid=rs3.getString(2);
	pwd=rs3.getString(3);
	email=rs3.getString(6);
	 }
	 System.out.println(email);
	 text="Hi "+bid+"<br>Thanks for registering with E-Transaction.<br>Your information has verified and account has activated.";
	  }
	 catch(Exception e){
		 e.printStackTrace();
	 }finally{
		 try{
			 if(rs3!=null) rs3.close();
			 if(ps2!=null) ps2.close();
			 if(con!=null) con.close();
		 }
		 catch(Exception e){
			 e.printStackTrace();
		 }
	 }
	  %>
	  <%
	 
		
	//public static void sendMail(String to,String sub,String text){
		System.out.println("first");
		 Properties p=new Properties();
		p.put("mail.smtp.host","localhost");
		p.put("mail.smtp.socketFactory.port","1234");
		p.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.auth","true");
		p.put("mail.smtp.port","465");
		Session sess=Session.getDefaultInstance(p,new javax.mail.Authenticator(){
			protected PasswordAuthentication getPasswordAuthentication(){
				System.out.println("Authenticator called");
				return new PasswordAuthentication(UNAME,PASSWORD);
			}
		});
		Message msg=new MimeMessage(sess);
		try{
			InternetAddress toAdd=new InternetAddress(email);
			//InternetAddress ccAdd=new InternetAddress("shailucusat@gmail.com");
			InternetAddress fromAdd=new InternetAddress(UNAME);
			msg.setRecipient(RecipientType.TO,toAdd);
			//msg.setRecipient(RecipientType.CC,ccAdd);
			msg.setFrom(fromAdd);
			msg.setSubject("Registration information from E-Transaction site");
			System.out.print("cled");
			msg.setContent(text,"text/html");
			//msg.setContent(text,"text/plain");
			msg.setSentDate(new Date());
			Transport.send(msg);
			System.out.print("cled111");
			response.sendRedirect("acceptuser.jsp");
					}
		catch(Exception ex){
			ex.printStackTrace();
			response.sendRedirect("pusrfail.jsp");
		}
	//} 
%>
 