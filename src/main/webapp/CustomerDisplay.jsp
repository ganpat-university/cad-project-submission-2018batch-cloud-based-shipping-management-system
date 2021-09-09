<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
 <div class="full-page">
        <div class="navbar">
            <div class="cname">
                <b><a href='index.html'>Sprightly Go</a></b>
            </div>
            <nav>
                <ul id='MenuItems'>
                    <li><a href="Website/Website/index.html">Home</a></li>
                  

                    </ul>
            </nav>
        
        </div>
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
			Connection connection = DriverManager.getConnection("jdbc:mysql://database-1.cavmoaj89fnk.ap-south-1.rds.amazonaws.com:3306/courierservice","admin","khushi212");
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
      
      </table>
</body>
</html>