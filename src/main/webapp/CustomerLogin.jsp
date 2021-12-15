<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*"%>
    <html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login</title>

</head>

<body>

<%! String username;

String password;


%>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.cj.jdbc.Driver";

String url = "jdbc:mysql://myawsab.cql0p9qpgbpg.ap-south-1.rds.amazonaws.com:3306/userdb";

String user = "root";

String dbpsw = "rootroot";



String sql = "select * from customerdetails where username=? and password=?";



String name = request.getParameter("uname");

String password = request.getParameter("passcode");




if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || 
password.equals(""))))

{

try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

ps = con.prepareStatement(sql);

ps.setString(1, name);

ps.setString(2, password);


rs = ps.executeQuery();

if(rs.next())

{ 

username = rs.getString("username");

password = rs.getString("password");


if(name.equals(username) && password.equals(password))

{

session.setAttribute("uname",username);



response.sendRedirect("popup.jsp"); 

} 

}

else

response.sendRedirect("CustomerLogin.html");

rs.close();

ps.close(); 

}

catch(SQLException sqe)

{

out.println(sqe);

} 

}

else

{

%>

<center><p style="color:red">Invalid Username or Password</p></center>

<% 


}

%>

</body>

</html>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/courierservice","root","Khushi@212");
String CustName=request.getParameter("uname");
String Password=request.getParameter("passcode");
String sql="Select username, password from customerdetails where username=? and password=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,CustName);
ps.setString(2,Password);
ResultSet rs=ps.executeQuery();
session.setAttribute("uname","");


if ( rs.next())
{
	
	%>
<script type="text/javascript">


alert("Success");
window.location.replace("/Website/Website/index.html");


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
session.setAttribute("username", request.getParameter("username"));


</script>
<%

 	System.out.println("Username and Password doesnot Match");
 	ServletContext sc = getServletContext();
 	sc.getRequestDispatcher("/CustomerLogin.html").forward(request,response);
	
	
	
}
session.setAttribute("uname", request.getParameter("uname"));
RequestDispatcher rn = request.getRequestDispatcher("/popup.jsp");
rn.forward(request, response);
session.setAttribute("uname", request.getParameter("uname"));
RequestDispatcher rd = request.getRequestDispatcher("/Nondoc.jsp");
rd.forward(request, response);
session.setAttribute("uname", request.getParameter("uname"));
RequestDispatcher rp = request.getRequestDispatcher("/Doc.jsp");
rp.forward(request, response);




%>

</body>
</html>
 --%>