<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://database-1.cavmoaj89fnk.ap-south-1.rds.amazonaws.com:3306/courierservice";%>
<%!String user = "admin";%>
<%!String psw = "khushi212";%>
<%
String productID = request.getParameter("id");
String pin1=request.getParameter("pincode1");
String pin2=request.getParameter("pincode2");
String servicetype=request.getParameter("servicetype");
String status=request.getParameter("status");
String amountpaid=request.getParameter("amountpaid");


if(productID != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(productID);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update productdetails set productID=?,pincode1=?,pincode2=?,servicetype=?,status=?,amountpaid=? where productID="+productID;
ps = con.prepareStatement(sql);
ps.setString(1,productID);
ps.setString(2, pin1);
ps.setString(3, pin2);
ps.setString(4, servicetype);
ps.setString(5, status);

ps.setString(6, amountpaid);

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
   <button type="submit" class="submit-btn" value="Confirm" name="button1" OnClick="window.location='Website/Website/index.html'">Go back</button>
