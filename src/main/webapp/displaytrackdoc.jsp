<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sprightly Go</title>
<link rel="stylesheet" href="Website/Website/css/track.css" >
<style>
body {
  overflow: hidden; /* Hide scrollbars */
}
#btn2
{
	width:15%;
}
.he
{
	font-size:20px;
}
.wel
{
	color: white;
	font-style:oblique;
	font-size:20px;
	font-family:sans-serif;
}
table {
  
  font-family: sans-serif;
  text-decoration: none;
  font-size: 18px;
  border: 1px #a39485 solid;
  box-shadow: 0 2px 5px rgba(0,0,0,.25);
  width:80%;
  border-collapse: collapse;
  border-radius: 5px;
  overflow: hidden;
  margin-top:30px;
  background: rgb(51,83,130);
}
tr
{
	
	padding:1.5em;
  background: rgb(51,83,130);
 
}
th {
  text-align: middle;
  color:white;
}
  
thead {
  font-weight: bold;
  color: #fff;
  background: #73685d;
}
  
 td, th {
  padding: 1em .5em;
  vertical-align: middle;
  text-align: middle;
}
  
 td {
  border-bottom: 1px solid rgba(0,0,0,.1);
  background: #fff;
   text-align: center;
}


 @media all and (max-width: 768px) {
    
  table, thead, tbody, th, td, tr {
    display: block;
     text-align: middle;
  }
  
  
  table {
    position: relative; 
    padding-bottom: 0;
    border: none;
    box-shadow: 0 0 10px rgba(0,0,0,.2);
  }
  
  thead {
    float:center;
    white-space: nowrap;
  }
  
  tbody {
    overflow-x: auto;
    overflow-y: hidden;
    position: relative;
    white-space: nowrap;
  }
  
  
  th {
    border-bottom: 1px solid #a39485;
  }
  
  td {
    border-bottom: 1px solid #e5e5e5;
text-align: middle;
  }
 
  tr{
  background-color:blue;
  }
  
  }
   .link {
  background-color:#FF5733;
  border: none;
  color: white;
  padding: 10px 15px ;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  
  cursor: pointer;
}
h1
{
	display: inline-block;
  font-family: sans-serif;
padding-top:15px;
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
                  
                    <li><a href='TermandCondition.jsp'>Terms & Conditions</a></li>
                    <li><a href="Website/Website/index.html">Home</a></li>
              		<li class="wel"><% String username=session.getAttribute("uname").toString(); %><%=username%></li>
                </ul>
            </nav>
        </div>
        
 
<% 
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://myawsab.cql0p9qpgbpg.ap-south-1.rds.amazonaws.com:3306/userdb","root","rootroot");

String id = request.getParameter("id");
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

%><center>
<h2>Document Shiment</h2>
  <table border="1">
    <tr style="background-color: rgb(51,83,130);color:white;font-style:Serif">
    <th> Username</th>
     <th>Reference Code</th>
      <th>Origin</th>
       <th>Destination</th>
        <th>Service </th>
    <th>Days</th> 
    <th>Amount</th> 
    <th>status</th> 
    <th> Date</th>
         <th> Delivery Date </th>
         <th>Shipment Type</th>
	</tr>
<tr>
 <td><%=username %></td>
  <td> <%=id %></td>
 
  <td> <%=origin %></td>
  <td> <%=destination %></td>
   <td> <%=service %> </td>
   <td><%=days %> </td>
   <td><%=amount %> </td>
   <td>  <%=status %> </td>
   <td> <%=date %> </td>
   <td><%=deldate %> </td>
   <td>  <%=shipment %> </td>
    <table border="1">
    <tr>
    <th>Fullname</th>
    <th>Address Line 1</th>
    <th>Address Line 2</th>
    <th>Contact</th>
  
    </tr>
     <tr>
   <td><%=fullname %> </td>
   <td>  <%=add1 %> </td>
   <td>  <%=add2 %> </td>
   <td>  <%=contact %> </td>
   </tr></table>
    <table border="1">
     <tr>
       <th>Fullname</th>
    <th>Address Line 1</th>
    <th>Address Line 2</th>
    <th>Contact</th>
      <th>Payment Method</th>
    </tr>
    <tr>
   <td><%=dfullname %> </td>
   <td>  <%=dadd1 %> </td>
   <td>  <%=dadd2 %> </td>
   <td>  <%=dcontact %> </td>
      <td> <%=Payment %> </td>
      </tr>
      </table></center><br>
   <button type="submit" class="submit-btn" value="Confirm" name="button1" OnClick="window.location='Website/Website/index.html'" id="btn2">Go back</button>
  <br>
<%} %>

</body>
</html>
