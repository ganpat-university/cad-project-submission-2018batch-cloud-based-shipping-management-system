<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="Website/Website/css/view.css" >
<style>



</style>
<meta charset="ISO-8859-1">
<title>Sprightly Go</title>

<body>
<div class="full-page">
         <div class="navbar">
            <div class="cname">
                <a href="Website/Website/index.html">Sprightly Go</a>
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
                    <li class="wel"><% String username=session.getAttribute("adminname").toString(); %><%=username%></li>
                </ul>
            </nav>
        
        </div>
<div class="container">
  <br><br><br><B>ADMIN</B>   
  </div>
</div>
</body></html>