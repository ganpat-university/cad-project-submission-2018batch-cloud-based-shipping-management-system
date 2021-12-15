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
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://myawsab.cql0p9qpgbpg.ap-south-1.rds.amazonaws.com:3306/userdb","root","rootroot");

String username = request.getParameter("empname");
String password = request.getParameter("emppass");
String name = request.getParameter("empuname");
String email = request.getParameter("empemail");
String address = request.getParameter("empaddress");
String phone = request.getParameter("empcontact");
String data ="";


String sql1 = "select * from employee where username='"+username+"'";

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
	window.location.replace("EmployeeRegistration.html");

   
</script>

   

<% 
}
else{
	
	session.setAttribute("username", username);
	
	String sql2 = "insert into employee(name,phone,address,email,username,password) values(?,?,?,?,?,?)";
	PreparedStatement ptrm = con.prepareStatement(sql2);
	ptrm.setString(1, name);
	ptrm.setString(2, phone);
	ptrm.setString(3, address);
	ptrm.setString(4, email);
	ptrm.setString(5, username);
	ptrm.setString(6, password);

	
	ptrm.executeUpdate();
	%>

	<script type="text/javascript">
	    alert("Success");
	    window.location.replace("adminview.jsp");

	</script>

	   

	<% 
}
out.println(data);
System.out.println(data);

%>

</body>
</html>
