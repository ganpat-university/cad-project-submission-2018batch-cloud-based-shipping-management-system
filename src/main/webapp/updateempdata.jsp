<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select empid,name,phone,address,email,username,password from employee where empid="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="Website/Website/css/finalempdataupdate.css">
    <style>
body {
  overflow: hidden; /* Hide scrollbars */
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
                		
                			<li><a href="empdelete.jsp">Remove Employee</a></li>
                		</ul>
                	</li>
                    <li><a href="Website/Website/index.html">Home</a></li>
                     <li class="wel"><% String username=session.getAttribute("username").toString(); %>
<%=username%></li>
                </ul>
            </nav>
        
        </div>
 <div id='login-form'class='login-page'>
            <div class="form-box">
<h1>Update Employee</h1>
<br><br>
<form method="post" id='login' class='input-group-login' action="updateemployeedata.jsp">
<input type="hidden"  class='input-field' name="id" value="<%=resultSet.getString("empid") %>"/>
<input type="text"  class='input-field' name="id" value="<%=resultSet.getString("empid") %>"/>

<input type="text"  class='input-field' name="namee" value="<%=resultSet.getString("name") %>"/>

<input type="text"   class='input-field' name="phone" value="<%=resultSet.getString("phone") %>"/>

<!-- <input type="text" name="producttype"  id="myText" /> -->
<input type="text" class='input-field'  name="address" value="<%=resultSet.getString("address")%>" />
<input type="email" class='input-field'  name="email" value="<%=resultSet.getString("email")%>" />
<input type="text" class='input-field'  name="username" value="<%=resultSet.getString("username")%>" />
<input type="text" class='input-field'  name="password" value="<%=resultSet.getString("password")%>" />



<%-- <input type="text" class='input-field'  name="status" value="<%=resultSet.getString("status")%>" required/><br> --%>


<input type="submit" style="color:white;" class='submit-btn' value="Update">
</form>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>