<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Sprightly Go</title>
<link rel="stylesheet" href="Website/Website/css/displays.css" >

<meta charset="ISO-8859-1">
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
                    <li><a href='#'>Terms & Conditions</a></li>
                    <li><a href="Website/Website/index.html">Home</a></li>
              		<li class="wel"><% String username=session.getAttribute("uname").toString(); %><%=username%></li>
                </ul>
            </nav>
        </div>
        
 <div id='login-form'class='login-page'>
          

<% 

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courierservice","root","root");
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
PreparedStatement statement = con.prepareStatement("SELECT productID,pincode1,pincode2,servicetype,deliverytime,amount,status,registerdate,deliverydate,shipmenttype,username,fullname,add1,add2,contact1,dfullname,dadd1,dadd2,contact2,payment FROM productdetails WHERE username=?");
statement.setString(1, uname);

ResultSet rs = statement.executeQuery();
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

%>
<table border="1">
<tr style="background-color: rgb(51,83,130);color:white;font-style:Serif">
  <th> Username </th>
  <th> Reference Code</th> 
  <th> Origin</th>
  <th>Destination </th>
  <th> Service</th> 
  <th> Days</th>
  <th> Amount</th>
  <th> status</th>
  <th> Product name</th> 
  <th> Date</th> 
  <th> Delivery Date</th> 
  <th> Shipment Type</th> 
  <th>Pickup Person's  Fullname</th> 
  <th>Pickup Person's  Address Line 1</th>
  <th> Pickup Person's Address Line 2</th> 
  <th> Pickup Person's Contact</th> 
  <th> Delivery Person's Fullname</th> 
  <th> Delivery Person's Address Line 1</th>
  <th> Delivery Person's Address Line 2</th> 
  <th> Delivery Person's Contact</th> 
  <th> Payment Method</th> 
</tr>

<tr>
 <td>  <%=uname %></td>
  <td> <%=id %></td>
 
 <td> <%=origin %></td>
 <td><%=destination %></td>
 <td> <%=service %> </td>
 <td><%=days %> </td>
 <td>	 <%=amount %> </td>
  <td> <%=status %> </td>
  <td>  <%=date %> </td>
  <td>  <%=deldate %> </td>
   <td>  <%=shipment %> </td>
  
   <td><%=fullname %> </td>
  <td>  <%=add1 %> </td>
   <td> <%=add2 %> </td>
  <td>  <%=contact %> </td>
 
   
   <td>  <%=dfullname %> </td>
   <td>  <%=dadd1 %> </td>
  <td>  <%=dadd2 %> </td>
   <td><p> <%=dcontact %> </td>
   <td>  <%=Payment %> </td>
</tr>
  </table>
   <button type="submit" value="Confirm" name="button1" OnClick="window.location='email.jsp'" class="submit-btn" id="btn2">Confirm</button>
    
        </div>
    </div>
  <br>
  
<%} %>

</body>
</html>
