<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>
*
{
   
}
.full-page
{
    height: 100%;
	width: 100%;
	background-position: center;
	background-size: cover;
	position: absolute;
}
.navbar
{
    display: flex;
    align-items: center;
    padding: 10px;
    padding-left: 30px;
    padding-right: 0;
    padding-top: 30px;
    background-color: rgb(51,83,130);
}
.cname
{
	font-family:'Lucida Sans';
	font-style:oblique;
}
nav
{
    flex: 1;
    text-align: right;
}
nav ul 
{
    display: inline-block;
    list-style: none;
}
nav ul li
{
    display: inline-block;
    margin-right: 50px;
}
nav ul li a
{
    text-decoration: none;
    font-size: 18px;
    color: white;
    font-family: sans-serif;
}
nav ul li button
{
    font-size: 18px;
    color: white;
    outline: none;
    border: none;
    background: transparent;
    cursor: pointer;
    font-family: sans-serif;
}
nav ul li button:hover
{
    color:#C2EDCE;
}
nav ul li a:hover
{
    color:#C2EDCE;
}
a
{
    text-decoration: none;
    color:white;
    font-size: 28px;
}
.a1
{
    text-decoration: none;
    color: rgb(51,83,130);
    font-size: 20px;
}
#col .col1
{
    float:left;
	width: 30%;
	padding-top: 40px;
	padding-left: 10px;
}
#col .col2
{
	font-size: 22px; 
	font-style: oblique;
	float:right;
	width: 70%;
	padding-top: 200px;
	padding-left:30px;
	padding-right:20px;
	color:rgb(51,83,130);
	font-family: 'Lucida Sans';
}
.tet
{
	font-size:35px ;
	font-family: 'Lucida Sans';
	padding-left: 30px;
	padding-right:10px;
	font-style: oblique;
}
.row:after
{
  content: "";
  display: table;
  clear: both;
}


.form-box
{
    width:100%;
	height:2000px;
	position:relative;
	margin:2% auto;
	background:rgb(235, 247, 250);
	padding:20px;
    overflow: hidden;
    padding-top: 3px;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
	border-radius: 2px;
}
.button-box
{
	width:220px;
	margin:35px auto;
	position:relative;
	box-shadow: 0 0 20px 9px rgba(0, 0, 0, 0.178);
	border-radius: 30px;
}
.toggle-btn
{
	padding:10px 30px;
	cursor:pointer;
	background:transparent;
	border:0;
	outline: none;
	position: relative;
    color:white;
}
#btn
{
	top: 0;
	left:0;
	position: absolute;
	width: 100%;
	height: 100%;
	background: rgb(51,83,130);
	border-radius: 30px;
	transition: .5s;
    color:white;
	text-align: center;
}
.input-group-login
{
	top: 100px;
	position:absolute;
	width:280px;
	transition:.5s;
}
.input-group-register
{
    top: 90px;
	position:absolute;
	width:280px;
	transition:.5s;
}
.input-field
{
	width: 100%;
	padding:10px 0;
	margin:5px 0;
	border-left:0;
	border-top:0;
	border-right:0;
	border-bottom: 1px solid #999;
	outline:none;
	background: transparent;
}
.submit-btn
{
	width: 85%;
	padding: 10px 30px;
	cursor: pointer;
	display: block;
	margin: auto;
	background: rgb(51,83,130);
	border: 0;
	outline: none;
	border-radius: 30px;
    color:white;
}

#login
{
top:200px;
	left:550px;
}
#login input
{
	color:black;
	font-size:18;
}
#register
{
	left:450px;
}
#register input
{
	color:black;
	font-size: 18;
}
.switch
{
    color:black;
    font-size:15px;
}
h1 {
	margin-bottom: 10px;
	margin-top: 20px;
	font-weight: normal;
	text-align: left;
  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif
}</style>

 </head>
 <body>
 <div class="full-page">
 <div id='login-form'class='login-page'>
            <div class="form-box">
 <%=session.getAttribute("uname")+"'s Profile" %>
 
<% 
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://database-1.cavmoaj89fnk.ap-south-1.rds.amazonaws.com:3306/courierservice","admin","khushi212");

String username=session.getAttribute("uname").toString();
String id = null;
String origin=null;
String destination=null;
String service=null;
String days=null;
String amount=null;
String status=null;
String Productname=null;


String date = null;
String deldate = null;
String shipment=null;
String fullname = null;
String add1 = null;
String add2 = null;
String contact = null;
String dfullname = null;
String dadd1=null;
String dadd2=null;
String dcontact =null;
String Payment=null;
String sql1 = "SELECT productID,pincode1,pincode2,servicetype,deliverytime,amount,status,productname,registerdate,deliverydate,shipmenttype,username,fullname,add1,add2,contact1,dfullname,dadd1,dadd2,contact2,payment FROM nondocument";
Statement stm = con.createStatement();
ResultSet rs = stm.executeQuery(sql1);

while(rs.next()){
	
id = rs.getString("productID");
 origin=rs.getString("pincode1");
 destination=rs.getString("pincode2");
 service=rs.getString("servicetype");
 
 days=rs.getString("deliverytime");
 amount=rs.getString("amount");
 status=rs.getString("status");
 status=rs.getString("productname");


 date = rs.getString("registerdate");
 deldate = rs.getString("deliverydate");
 shipment=rs.getString("shipmenttype");
 fullname = rs.getString("fullname");
 add1 = rs.getString("add1");
 add2 = rs.getString("add2");
 contact = rs.getString("contact1");
 dfullname = rs.getString("dfullname");
 dadd1=rs.getString("dadd1");
 dadd2=rs.getString("dadd2");
 dcontact = rs.getString("contact2"); 
 Payment = rs.getString("payment"); 

%>



 <p> Username: <%=username %></p>
  <p> Reference Code: <%=id %></p>
 
  <p> Origin:<%=origin %></p>
  <p>Destination : <%=destination %></p>
   <p> Service: <%=service %> </p>
   <p> Days: <%=days %> </p>
   <p> 	Amount: <%=amount %> </p>
   <p> status: <%=status %> </p>
      <p> status: <%=Productname %> </p>
   
   <p> Date: <%=date %> </p>
   <p> Delivery Date: <%=deldate %> </p>
   <p> shipment: <%=shipment %> </p>
   <p><h1>PickUp Details</h1></p>
   <p> Fullname: <%=fullname %> </p>
   <p> Address Line 1: <%=add1 %> </p>
   <p> Address Line 2: <%=add2 %> </p>
   <p> Contact: <%=contact %> </p>
      <p><h1>Delivery Details</h1></p>
   
   <p> Fullname: <%=dfullname %> </p>
   <p> Address Line 1: <%=dadd1 %> </p>
   <p> Address Line 2: <%=dadd2 %> </p>
   <p> Contact: <%=dcontact %> </p>
      <p> Payment Method: <%=Payment %> </p>
   <button type="submit" value="Confirm" name="button1" OnClick="window.location='Website/Website/index.html'">Confirm</button>
   
      
    </div>
        </div>
    </div>
   
  <br>
  
<%} %>

</body>
</html>
