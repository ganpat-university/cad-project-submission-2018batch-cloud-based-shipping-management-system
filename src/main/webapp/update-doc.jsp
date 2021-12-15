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
String pin1=request.getParameter("pincode1");
String pin2=request.getParameter("pincode2");
String servicetype=request.getParameter("servicetype");
String status=request.getParameter("status");
String amountpaid=request.getParameter("amountpaid");
String usename=request.getParameter("usr");

String email=null;
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
String sql="Update productdetails set productID=?,pincode1=?,pincode2=?,servicetype=?,status=?,amountpaid=?,username=? where productID="+productID;
ps = con.prepareStatement(sql);

ps.setString(1,productID);
ps.setString(2, pin1);
ps.setString(3, pin2);
ps.setString(4, servicetype);
ps.setString(5, status);

ps.setString(6, amountpaid);
ps.setString(7, usename);

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
statement1.setString(1, usename);

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
   <button type="submit" class="submit-btn" value="Confirm" name="button1" OnClick="window.location='Website/Website/index.html'">Go back</button>
<%



 
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
        message.setSubject("Updated Document Shipment Details");

        message.setText("\nUsername:"+usename+"\nReference Code:"+productID+"\nOrigin Pincode:"+pin1+"\nDestination Pincode:"+pin2+"\nService Type:"+servicetype+"\nStatus:"+status+"\nAmount:"+amountpaid);
        Transport.send(message);
       
        
    } catch (MessagingException mex) {
        mex.printStackTrace();
        result = "Error: unable to send mail....";
    }
    response.sendRedirect("updatedocshipment.jsp");
%>
  