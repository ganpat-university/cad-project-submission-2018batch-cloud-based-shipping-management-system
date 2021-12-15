<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("empid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://myawsab.cql0p9qpgbpg.ap-south-1.rds.amazonaws.com:3306/";
String database = "userdb";
String userid = "root";
String password = "rootroot";
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
}</style>
</head>
<body>
<div class="full-page">
        <div class="navbar">
            <div class="cname">
                <a href='index.html'>Sprightly Go</a>
            </div>
         <nav>
                <ul id='MenuItems'>
                	<li><a href="#">Shipment</a>
                		<ul class="sub1">
                			<li><a href="ShowDocShipment.jsp">Document Shipment</a></li>
                			<li><a href="ShwNondocShipment.jsp">Non Document Shipment</a></li>
                		</ul>
                	</li>
                 <li><a href="ShowCustomer.jsp">Customer Details</a></li>
                    <li><a href="#">Employee</a>
                   		<ul class="sub">
                   			<li><a href="showemployee.jsp">Display Employee</a></li>
                			<li><a href="EmployeeRegistration.html">Add Employee</a></li>
                			<li><a href="updateemp.jsp">Update Employee</a></li>
                		
                		</ul>
                	</li>
                    <li><a href="Website/Website/index.html">Home</a></li>
                     <li class="wel"><% String username=session.getAttribute("adminname").toString(); %>
<%=username%></li>
                </ul>
            </nav>
        
        </div>
<center>
<table border="1">
<tr style="background-color: rgb(51,83,130);;color:white;">
<th>Employee ID</th>
<th>Employee Name</th>
<th>Contact No.</th>
<th>Address</th>

<th>Email Address</th>
<th>Username</th>
<th>Password</th>
<th>
</th>



</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select empid,name,phone,address,email,username,password from employee";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("empid") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>
<td><a class="link" href="deleteempdata.jsp?id=<%=resultSet.getString("empid")%>">Delete</a></td>






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
