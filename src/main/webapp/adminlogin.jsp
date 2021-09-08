<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.01:3306/courierservice","root","Khushi@212");
String CustName=request.getParameter("adminname");
String Password=request.getParameter("adminpass");
String sql="Select username, password from admin where username=? and password=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,CustName);
ps.setString(2,Password);
ResultSet rs=ps.executeQuery();
session.setAttribute("adminname","");


if ( rs.next())
{
	
	%>
	<script type="text/javascript">


alert("Success");
window.location.replace("EmployeeRegistration.html");


</script>
<%
	session.setAttribute("uname",CustName);

    con.close();

	

}
else
{%>
	<script type="text/javascript">


alert("Username and Password doesnot Match");
window.location.replace("CustomerLogin.html");


</script>
<%

// 	System.out.println("Username and Password doesnot Match");
// 	ServletContext sc = getServletContext();
// 	sc.getRequestDispatcher("/CustomerLogin.html").forward(request,response);
	
	
	
}
	



%>

</body>
</html>
