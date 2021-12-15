<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://myawsab.cql0p9qpgbpg.ap-south-1.rds.amazonaws.com:3306/userdb","root","rootroot");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM employee WHERE empid="+id);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%><button type="submit" value="Go back" name="button1" OnClick="window.location='adminview.jsp'">Go back</button>