<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sprightly Go</title>
</head>
<body>
<% Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://myawsab.cql0p9qpgbpg.ap-south-1.rds.amazonaws.com:3306/userdb","root","rootroot");
String CustName=request.getParameter("adminname");
String Password=request.getParameter("adminpass");
String sql="select username,password from admin where username=? and password=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,CustName);
ps.setString(2,Password);
ResultSet rs=ps.executeQuery();
session.setAttribute("adminname",CustName);
if ( rs.next())
{

	%>
	<script type="text/javascript">

alert("Success");
window.location.replace("adminview.jsp");
</script>
<%
}
else
{%>
	<script type="text/javascript">
alert("Username and Password doesnot Match");
window.location.replace("adminlogin.html");
</script>
<%
// 	System.out.println("Username and Password doesnot Match");
// 	ServletContext sc = getServletContext();
// 	sc.getRequestDispatcher("/CustomerLogin.html").forward(request,response);	
}
%>
</body>
</html>
