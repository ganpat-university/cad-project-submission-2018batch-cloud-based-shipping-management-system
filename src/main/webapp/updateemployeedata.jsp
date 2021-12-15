<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://myawsab.cql0p9qpgbpg.ap-south-1.rds.amazonaws.com:3306/userdb";%>
<%!String user = "root";%>
<%!String psw = "rootroot";%>
<%
String empid = request.getParameter("id");
String name=request.getParameter("namee");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String email=request.getParameter("email");
String username=request.getParameter("username");
String password=request.getParameter("password");


if(empid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(empid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update employee set empid=?,name=?,phone=?,address=?,email=?,username=?,password=? where empid="+empid;
ps = con.prepareStatement(sql);
ps.setString(1,empid);
ps.setString(2, name);
ps.setString(3, phone);
ps.setString(4, address);
ps.setString(5, email);

ps.setString(6, username);
ps.setString(7, password);


int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");

}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
<button type="submit" value="Go back" name="button1" OnClick="window.location='adminview.jsp'">Go back</button>