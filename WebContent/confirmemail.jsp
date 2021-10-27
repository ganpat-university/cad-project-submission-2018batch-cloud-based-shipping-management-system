<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
<%
    String result;
	
    final String to = request.getParameter("mail");
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
        message.setSubject("Hello");
        message.setText("Hello");
        Transport.send(message);
       
        
    } catch (MessagingException mex) {
        mex.printStackTrace();
        result = "Error: unable to send mail....";
    }
%>

<h1 style = "padding-top:45px;"><center><b>send </b></h1>>