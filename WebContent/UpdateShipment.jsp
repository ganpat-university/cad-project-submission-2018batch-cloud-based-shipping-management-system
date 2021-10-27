<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("productID");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "courierservice";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sprightly Go</title>
    <link rel="stylesheet" href="Website/Website/css/view.css" >
<style>
body {
  overflow: hidden; /* Hide scrollbars */
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
  margin-top:20px;
  background: rgb(51,83,130);
}
tr
{
	
	padding:1.5em;
  background: rgb(51,83,130);
 
}
th {
  text-align: middle;
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
.wel
{
	color: white;
	font-style:oblique;
	font-size:20px;
}
</style>
</head>
<body>
<div class="full-page">
         <div class="navbar">
            <div class="cname">
                <a href="index.html">Sprightly Go</a>
            </div>
        
            <nav>
                <ul id='MenuItems'>
                   
                    <li><a href='#'>Terms & Conditions</a></li>
                        <li><a href="Website/Website/index.html">Home</a></li>
                <li class="wel"><% String username=session.getAttribute("uname").toString(); %><%=username%></li> 
                </ul>
            </nav>
        
        </div>
<center>
<h1>NonDocument Shipment</h1>
<table border="1">
<tr style="background-color: rgb(51,83,130);;color:white;">
<th>Reference Code</th>
<th>Amount Paid</th>
<th>Origin Pincode</th>
<th>Destination Pincode</th>
<th>Service Type</th>
<th>Delivery Time</th>
<th>Amount</th>
<th>Status</th>
<th>Product Name</th>
<th>Registered Date</th>
<th>Delivery Date</th>
<th>Shipment Type</th>
<th>Username</th>
<th></th>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select productID,amountpaid,pincode1,pincode2,servicetype,deliverytime,amount,status,productname,registerdate,deliverydate,shipmenttype,username from nondocument";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("productID") %></td>
<td><%=resultSet.getString("amountpaid") %></td>
<td><%=resultSet.getString("pincode1") %></td>
<td><%=resultSet.getString("pincode2") %></td>
<td><%=resultSet.getString("servicetype") %></td>
<td><%=resultSet.getString("deliverytime") %></td>
<td><%=resultSet.getString("amount") %></td>
<td><%=resultSet.getString("status") %></td>
<td><%=resultSet.getString("productname") %></td>
<td><%=resultSet.getString("registerdate") %></td>
<td><%=resultSet.getString("deliverydate") %></td>
<td><%=resultSet.getString("shipmenttype") %></td>
<td><%=resultSet.getString("username") %></td>








<td><a class="link" href="updatedata.jsp?id=<%=resultSet.getString("productid")%>">Update</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table></center></div>
</body>
