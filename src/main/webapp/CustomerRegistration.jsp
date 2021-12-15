<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://myawsab.cql0p9qpgbpg.ap-south-1.rds.amazonaws.com:3306/userdb","root","rootroot");

String username = request.getParameter("username");
String password = request.getParameter("pass");
String name = request.getParameter("uname");
String email = request.getParameter("email");
String address = request.getParameter("address");
String phone = request.getParameter("contact");
String data ="";


String sql1 = "select * from customerdetails where username='"+username+"'";

Statement stm = con.createStatement();
ResultSet rs = stm.executeQuery(sql1);
int count=0;

while(rs.next())
{

count++;
}

if(count>0)
{



%>

<script type="text/javascript">
	

    alert("Username Already Exist");
	window.location.replace("CustomerRegistration.html");

   
</script>

   

<% 
}
else{
	
	session.setAttribute("username", username);
	
	String sql2 = "insert into customerdetails(username,password,customername,email,address,phone) values(?,?,?,?,?,?)";
	PreparedStatement ptrm = con.prepareStatement(sql2);
	ptrm.setString(1, username);
	ptrm.setString(2, password);
	ptrm.setString(3, name);
	ptrm.setString(4, email);
	ptrm.setString(5, address);
	ptrm.setString(6, phone);

	
	ptrm.executeUpdate();
	%>

	<script type="text/javascript">
	    alert("Success");
	    window.location.replace("CustomerLogin.html");

	</script>

	   

	<% 
}
out.println(data);
System.out.println(data);

%>

</body>
</html>
