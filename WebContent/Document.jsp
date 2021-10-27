<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException,java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sprightly Go</title>
</head>
<body>


<%
String username=session.getAttribute("uname").toString(); 

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courierservice","root","root");

String origin = request.getParameter("pincode1");
String destination = request.getParameter("pincode2");
String producttype = request.getParameter("producttype");

String service = request.getParameter("option");
String days="";
String amount ="";
String status = "pending";
String data;
String amountpaid="No";
String Payment="Cash On Delivery";
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
String date = sdf.format(new Date());
int num = 0;


String fullname = request.getParameter("fullname");
String add1 = request.getParameter("add1");
String add2 = request.getParameter("add2");
String contact = request.getParameter("con");
String dfullname = request.getParameter("dfullname");
String dadd1 = request.getParameter("dadd1");
String dadd2 = request.getParameter("dadd2");
String dcontact = request.getParameter("dcon");
Statement stm = con.createStatement();


if (service.equals("Premium"))
{
	amount = "130" ; 

	days="2 days" ;
	num= 2;
	
	
}
 if (service.equals("Gold"))
{
		amount = "120" ; 
		days="3 days" ;

		num= 3;
	
	
}
 if (service.equals("Silver"))
{
		amount = "100" ; 

	days="4 days" ;
	
	num= 4;

}
	
	Calendar c = Calendar.getInstance();
	   c.setTime(sdf.parse(date));
		c.add(Calendar.DAY_OF_MONTH, num);  
		String deldate = sdf.format(c.getTime());  



	String Shipment = "Document";
	String sql2 = "insert into productdetails(amountpaid,pincode1,pincode2,servicetype,deliverytime,amount,status,registerdate,deliverydate,shipmenttype,username,fullname,add1,add2,contact1,dfullname,dadd1,dadd2,contact2,payment) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement ptrm = con.prepareStatement(sql2);
	ptrm.setString(1, amountpaid);

	ptrm.setString(2, origin);
	ptrm.setString(3, destination);
	ptrm.setString(4, service);
	ptrm.setString(5, days);
	ptrm.setString(6 , amount);
	ptrm.setString(7, status);
	

	ptrm.setString(8, date);
	ptrm.setString(9, deldate);
	ptrm.setString(10, Shipment);
	ptrm.setString(11,username);

	ptrm.setString(12, fullname);
	ptrm.setString(13, add1);
	ptrm.setString(14, add2);
	ptrm.setString(15, contact);
	ptrm.setString(16, dfullname);
	ptrm.setString(17, dadd1);
	ptrm.setString(18, dadd2);
	ptrm.setString(19, dcontact);
	ptrm.setString(20, Payment);

	
	ptrm.executeUpdate();
	response.sendRedirect("docdisplay.jsp");
	  
	%>

	

	   

	



</body>
</html>
