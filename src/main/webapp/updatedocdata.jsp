<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://database-1.cavmoaj89fnk.ap-south-1.rds.amazonaws.com:3306/";
String database = "courierservice";
String userid = "admin";
String password = "khushi212";
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
String sql ="select productID,amountpaid,pincode1,pincode2,servicetype,amount,status from productdetails where productID="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="Website/Website/css/main.css">
</head>
<body>
<div class="full-page">
 <div id='login-form'class='login-page'>
            <div class="form-box">
<h1>Update Document Shipment</h1>
<form  id='login' class='input-group-login' method="post" action="update-doc.jsp">
Reference Code:
<input  class='input-field' type="hidden" name="id" value="<%=resultSet.getString("productID") %>">
<input  class='input-field' type="text" name="id" value="<%=resultSet.getString("productID") %>">
<br>
Origin Pincode<br>
<input class='input-field' type="text" name="pincode1" value="<%=resultSet.getString("pincode1") %>">
<br>
Destination pincode:<br>
<input class='input-field' type="text" name="pincode2" value="<%=resultSet.getString("pincode2") %>">
<br>
 Service Type
 
<!-- <input type="text" name="producttype"  id="myText" /> -->
<input class='input-field' type="text" class='input-field'  name="servicetype" value="<%=resultSet.getString("servicetype")%>" required/>



 Status<br>
<select name="status" class='input-field' value="<%=resultSet.getString("status")%>" >
<option>Pending</option>

<option>Confirmed</option>
<option>Pickup</option>
<option>In Transit</option>
<option>Delivered</option></select>
<br>
Amount Paid <br>
<select name="amountpaid" class='input-field' value="<%=resultSet.getString("amountpaid")%>" >
<option>Yes </option>

<option>No</option>
</select><br>

<input type="submit" style="color:white;" class='submit-btn' value="Update">
</form>
    </div>
        </div>
    </div>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>