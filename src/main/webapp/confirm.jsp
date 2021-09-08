<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>   
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://database-1.cavmoaj89fnk.ap-south-1.rds.amazonaws.com:3306/courierservice","admin","khushi212");

String username=session.getAttribute("uname").toString();

if(request.getParameter("submit")!=null)
{
String pid =null;
String sql= "select productId from nondocument where username =?";
Statement stm = con.createStatement();
ResultSet rs = stm.executeQuery(sql);


while(rs.next()){
	

	 pid =rs.getString("productId");




%>

<h1>Thank You For using our service</h1><br>
<h1>You can track your order by the reference code</h1><br>
 <p> Code: <%=pid %></p>
<%}} %>
</body>
</html>