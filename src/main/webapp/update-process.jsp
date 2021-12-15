<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
    <%@ page import="java.util.*,javax.mail.*"%>
    <%@ page import="java.sql.*" %>

<%@ page import="javax.mail.internet.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>

<%!String url = "jdbc:mysql://myawsab.cql0p9qpgbpg.ap-south-1.rds.amazonaws.com:3306/userdb";%>
<%!String user = "root";%>
<%!String psw = "rootroot";%>
<%
String productID = request.getParameter("id");
String username = request.getParameter("usr");

String pin1=request.getParameter("pincode1");
String pin2=request.getParameter("pincode2");
String servicetype=request.getParameter("servicetype");
String status=request.getParameter("status");
String amountpaid=request.getParameter("amountpaid");

String email = null;
if(productID != null)
{
Connection con = null;
PreparedStatement ps = null;
PreparedStatement ps1 = null;
int personID = Integer.parseInt(productID);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update nondocument set productID=?,username=?,pincode1=?,pincode2=?,servicetype=?,status=?,amountpaid=? where productID="+productID;
ps = con.prepareStatement(sql);
ps.setString(1,productID);
ps.setString(2,username);

ps.setString(3, pin1);
ps.setString(4, pin2);
ps.setString(5, servicetype);
ps.setString(6, status);

ps.setString(7, amountpaid);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");

}
else
{
out.print("There is a problem in updating Record.");
}
PreparedStatement statement1 = con.prepareStatement("SELECT email FROM customerdetails WHERE username=?");
statement1.setString(1, username);

ResultSet rs1 = statement1.executeQuery();
while(rs1.next()){
	email = rs1.getString("email");
}

}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
<button type="submit" value="Go back" name="button1" OnClick="window.location='Website/Website/index.html'">Go back</button>
<%




Class.forName(driverName);
Connection con = DriverManager.getConnection(url,user,psw);
PreparedStatement statement1 = con.prepareStatement("SELECT email FROM customerdetails WHERE username=?");
statement1.setString(1, email);

ResultSet rs1 = statement1.executeQuery();
while(rs1.next()){
	email = rs1.getString("email");
}




%>
<%





String result;

final String to = (email);
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
    MimeMessage message = new MimeMessage(mailSession1);
	message.setFrom(new InternetAddress(from1));
    message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
    message.setSubject("Updated Non Document Shipment Details");
    message.setText("\nUsername:"+username+"\nReference Code:"+productID+"\nOrigin Pincode:"+pin1+"\nDestination Pincode:"+pin2+"\nService Type:"+servicetype+"\nStatus:"+status+"\nAmount:"+amountpaid);
    Transport.send(message);
   
    
} catch (MessagingException mex) {
    mex.printStackTrace();
    result = "Error: unable to send mail....";
}
response.sendRedirect("UpdateShipment.jsp");
%>
