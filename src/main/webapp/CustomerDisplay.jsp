<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
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
   text-align: middle;
}


 @media all and (max-width: 768px) {
    
  table, thead, tbody, th, td, tr {
    display: block;
     text-align: middle;
  }
  
  th {
    text-align: right;
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
  
    </style>
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
                			<li><a href="empdelete.jsp">Remove Employee</a></li>
                		</ul>
                	</li>
                    <li><a href="Website/Website/index.html">Home</a></li>
                </ul>
            </nav>
        
        </div>
        <center>
<table BORDER="1">
     <tr>
     <th>Customer ID</th>
    
     <th>Username</th>
     <th>Password</th>
     <th>Customer Name</th>
     <th>Email</th>
     <th>City</th>
     <th>Contact Number</th>
   </tr>
   
<% 
	
	  		Class.forName("com.mysql.cj.jdbc.Driver");	
			Connection connection = DriverManager.getConnection("jdbc:mysql://myawsab.cql0p9qpgbpg.ap-south-1.rds.amazonaws.com:3306/userdb","root","rootroot");
			String sql= "select * from customerdetails";
			PreparedStatement preparedStatement = connection.prepareStatement(sql); 
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();
	         while(rs.next()){ 
	        	 int id=rs.getInt(1);
	        	 
	        	
	             
	           	 String Username = rs.getString(2);
	     		 String Password = rs.getString(3);
	             String Customername = rs.getString(4);
	             String Email =rs.getString(5);
	             String City = rs.getString(6);
	             String Contact = rs.getString(7);
	            
      %>
      <tr>
       <td> <%=id%></td>
       
       <td> <%=Username%></td>
       <td> <%=Password%></td>
       <td> <%=Customername%></td>
       <td> <%=Email%></td>
       <td> <%=City%></td>
       <td> <%=Contact%></td>
      
       
      <% } %>
      
      </table></center></div>
</body>
</html>