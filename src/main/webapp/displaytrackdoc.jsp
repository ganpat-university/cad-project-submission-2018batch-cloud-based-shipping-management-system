<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>

<style>

{
   
}

.submit-btn
{
	width: 25%;
	padding: 10px 30px;
	cursor: pointer;
	display: block;
	margin: auto;
	background: rgb(51,83,130);
	border: 0;
	outline: none;
	border-radius: 30px;
    color:white;
}

</style>
 </head>
 <body bgcolor="#EBF7FA">
 
<% 
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://database-1.cavmoaj89fnk.ap-south-1.rds.amazonaws.com:3306/courierservice","admin","khushi212");

String id = request.getParameter("id");
String origin=null;
String destination=null;
String service=null;
String days=null;
String amount=null;
String status=null;
String username=null;


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
String sql1 = "SELECT productID,pincode1,pincode2,servicetype,deliverytime,amount,status,registerdate,deliverydate,shipmenttype,username,fullname,add1,add2,contact1,dfullname,dadd1,dadd2,contact2,payment FROM productdetails where productID="+id;
Statement stm = con.createStatement();
ResultSet rs = stm.executeQuery(sql1);

while(rs.next()){
	
id = rs.getString("productID");
 origin=rs.getString("pincode1");
 destination=rs.getString("pincode2");
 service=rs.getString("servicetype");
 
 days=rs.getString("deliverytime");
 amount=rs.getString("amount");
 status=rs.getString("status");
 username=rs.getString("username");


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

%>



 <p> Username: <%=username %></p>
  <p> Reference Code: <%=id %></p>
 
  <p> Origin:<%=origin %></p>
  <p>Destination : <%=destination %></p>
   <p> Service: <%=service %> </p>
   <p> Days: <%=days %> </p>
   <p> 	Amount: <%=amount %> </p>
   <p> status: <%=status %> </p>
   <p> Date: <%=date %> </p>
   <p> Delivery Date: <%=deldate %> </p>
   <p> shipment: <%=shipment %> </p>
   <p><h1>PickUp Details</h1></p>
   <p> Fullname: <%=fullname %> </p>
   <p> Address Line 1: <%=add1 %> </p>
   <p> Address Line 2: <%=add2 %> </p>
   <p> Contact: <%=contact %> </p>
      <p><h1>Delivery Details</h1></p>
   
   <p> Fullname: <%=dfullname %> </p>
   <p> Address Line 1: <%=dadd1 %> </p>
   <p> Address Line 2: <%=dadd2 %> </p>
   <p> Contact: <%=dcontact %> </p>
      <p> Payment Method: <%=Payment %> </p>
   <button type="submit" class="submit-btn" value="Confirm" name="button1" OnClick="window.location='Website/Website/index.html'">Go back</button>
   
      
   
  <br>
  
<%} %>

</body>
</html>
