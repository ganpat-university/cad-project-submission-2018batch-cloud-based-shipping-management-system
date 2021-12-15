<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,javax.mail.*"%>
    <%@ page import="java.sql.*" %>

<%@ page import="javax.mail.internet.*" %>
<% 
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://myawsab.cql0p9qpgbpg.ap-south-1.rds.amazonaws.com:3306/userdb","root","rootroot");

String uname=session.getAttribute("uname").toString();

String id = null;
String origin=null;
String destination=null;
String service=null;
String days=null;
String amount=null;
String status=null;

String date = null;
String deldate = null;
String shipment=null;
String fullname = null;
String add1 = null;
String add2 = null;
String contact = null;
String dfullname = null;
String dadd1=null;
String dadd2=null;
String dcontact =null;
String Payment=null;
String email = null;
/* String sql1 = "SELECT productID,pincode1,pincode2,servicetype,deliverytime,amount,status,registerdate,deliverydate,shipmenttype,username,fullname,add1,add2,contact1,dfullname,dadd1,dadd2,contact2,payment FROM productdetails WHERE username="+uname;
Statement stm = con.createStatement();

ResultSet rs = stm.executeQuery(sql1); */
PreparedStatement statement = con.prepareStatement("SELECT productID,pincode1,pincode2,servicetype,deliverytime,amount,status,registerdate,deliverydate,shipmenttype,username,fullname,add1,add2,contact1,dfullname,dadd1,dadd2,contact2,payment FROM productdetails WHERE username=?");
statement.setString(1, uname);

ResultSet rs = statement.executeQuery();
PreparedStatement statement1 = con.prepareStatement("SELECT email FROM customerdetails WHERE username=?");
statement1.setString(1, uname);

ResultSet rs1 = statement1.executeQuery();

while(rs.next()){
	
id = rs.getString("productID");
 origin=rs.getString("pincode1");
 destination=rs.getString("pincode2");
 service=rs.getString("servicetype");
 
 days=rs.getString("deliverytime");
 amount=rs.getString("amount");
 status=rs.getString("status");


 date = rs.getString("registerdate");
 deldate = rs.getString("deliverydate");
 shipment=rs.getString("shipmenttype");
 fullname = rs.getString("fullname");
 add1 = rs.getString("add1");
 add2 = rs.getString("add2");
 contact = rs.getString("contact1");
 dfullname = rs.getString("dfullname");
 dadd1=rs.getString("dadd1");
 dadd2=rs.getString("dadd2");
 dcontact = rs.getString("contact2"); 
 Payment = rs.getString("payment"); 



while(rs1.next()){
	email = rs1.getString("email");
}
%>
    
<%} 
    String result;
    final String to = (email);
    session.setAttribute("email",to);  
    final String from = "khushijani18@gnu.ac.in";
    final String pass = "2122000@gnu";
    String host = "smtp.gmail.com";
    Properties props = new Properties();
    props.put("mail.smtp.auth","true");
	props.put("mail.smtp.starttls.enable","true");
	props.put("mail.smtp.host","smtp.gmail.com");
	props.put("mail.smtp.port","587");
	props.put("mail.smtp.ssl.protocols", "TLSv1.2");
    
    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, pass);
        }
    });
    try {
        MimeMessage message = new MimeMessage(mailSession);
		message.setFrom(new InternetAddress(from));
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
        message.setSubject("Your Shipment Details");
        message.setText("\nUsername:"+uname+"\nReference Code:"+id+"\nOrigin Pincode:"+origin+"\nDestination Pincode:"+destination+"\nType of Service:"+service+"\n\n\n\nRegistered Date:"+date+"\nDelivery Date:"+deldate+"\nDelivery Time:"+days+"\nStatus:"+status+"\nService Type:"+service+"\nShipment Type:"+shipment+"\nAmount:"+amount+"\n\n\n\nPickUp Person's Name:"+fullname+"\nPickUp Person's Address:"+add1+","+add2+"\nPickUp Person's Contact Number:"+contact+"\nDelivery Person's Name:"+dfullname+"\nDelivery Person's Address:"+dadd1+","+dadd2+"\nDelivery Person's Contact number:"+dcontact+"\nPayment Method:"+Payment);
        Transport.send(message);
       
        
    } catch (MessagingException mex) {
        mex.printStackTrace();
        result = "Error: unable to send mail....";
    }
%>
<% 
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://myawsab.cql0p9qpgbpg.ap-south-1.rds.amazonaws.com:3306/userdb","root","rootroot");


String email1 = null;
PreparedStatement statement2 = con.prepareStatement("SELECT email FROM employee");

ResultSet rs2 = statement2.executeQuery();

while(rs2.next()){
	
email1 = rs2.getString("email");
}
%>

<%
String result1;
final String to1 = (email1);
session.setAttribute("email",to);  
final String from1 = "khushijani18@gnu.ac.in";
final String pass1 = "2122000@gnu";
String host1 = "smtp.gmail.com";
Properties props1 = new Properties();
props1.put("mail.smtp.auth","true");
props1.put("mail.smtp.starttls.enable","true");
props1.put("mail.smtp.host","smtp.gmail.com");
props1.put("mail.smtp.port","587");
props1.put("mail.smtp.ssl.protocols", "TLSv1.2");

Session mailSession1 = Session.getInstance(props1, new javax.mail.Authenticator() {
    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(from1, pass1);
    }
});
try {
    MimeMessage message = new MimeMessage(mailSession);
	message.setFrom(new InternetAddress(from1));
    message.addRecipient(Message.RecipientType.TO, new InternetAddress(to1));
    message.setSubject("New Document Shipment");
    message.setText("New Document Shipment Entered");
    Transport.send(message);
   
    
} catch (MessagingException mex) {
    mex.printStackTrace();
    result1 = "Error: unable to send mail....";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sprightly Go</title>
<link rel="stylesheet" href="Website/Website/css/email.css" >
<style>
.wel
{
	color: white;
	font-style:oblique;
	font-size:20px;
	font-family:sans-serif;
}
</style>
 </head>
 <body>
<div class="full-page">
        <div class="navbar">
            <div class="cname">
                <a href='Website/Website/index.html'>Sprightly Go</a>
            </div>
            <nav>
                <ul id='MenuItems'>
                    <li><a href="trackpopup.jsp">Track Shipment</a></li>
                    <li><a href='TermandCondition.jsp'>Terms & Conditions</a></li>
                    <li><a href="Website/Website/index.html">Home</a></li>
              		<li class="wel"><% String username=session.getAttribute("uname").toString(); %><%=username%></li>
                </ul>
            </nav>
        </div>
        <div class="msg">
        	<center>  <img src="Website/Website/image/thank.png" class="im" width="250" ><br>
        	Thank You for using our service.<br>
        	We will update you through registered Mail.</center>
        </div>
        </div>
        </body>
        </html>