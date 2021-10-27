<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>   
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sprightly Go</title>
<link rel="stylesheet" href="Website/Website/css/enterdetails.css" >
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
    <div class="full-page">
        <div class="navbar">
            <div class="cname">
                <a href='Website/Website/index.html'>Sprightly Go</a>
            </div>
            <nav>
                <ul id='MenuItems'>
                	
                    <li><a href="trackpopup.jsp">Track Shipment</a></li>
                    <li><a href='TermandCondition.jsp'>Terms & Conditions</a></li>
                    <li><a href="Website/Website/index.html">Home</a></li>
              <li class="wel"><% String username=session.getAttribute("uname").toString(); %>
<%=username%></li>
                </ul>
            </nav>
        </div>
        <div>
            <div class="form-box">
               <h3><center>Document Shipment</center></h3>
                <!--
<form id='login' class='input-group-login' action ="Document.jsp" method="post">
<input type="text" class='input-field' placeholder="Enter Origin Pincode" name="pincode1" required/><br><br>
<input type="text" class='input-field' placeholder="Enter Destination Pincode" name="pincode2" required/><br><br>

<ul class="ul">
<li class="list">
<label><h4>Service Type :Premium<br><br>Delivery Time: 2 days<br><br>Amount : Rs. 130</h4></label>
<input type="radio"  class='input-field' name="option" value="Premium" /></li>
<li class="list"><label><h4>Service Type :Gold<br><br>Delivery Time: 3 days<br><br>Amount : Rs. 120</label></h4>
<input type="radio" class='input-field' name="option" value="Gold" /></li>

 <li class="list"><label><h4>Service Type :Silver<br><br>Delivery Time: 2 days<br><br>Amount : Rs. 100</label></h4>
<input type="radio" class='input-field' name="option"  value="Silver" /></li>
</ul>
<br><br>

<h1>PickUp Address</h1>

<input type="text" class='input-field' placeholder="Enter Full Name" name="fullname" required/><br><br>
<input type="text" class='input-field' placeholder="Enter Contact" name="con" required/><br><br>
<input type="text"class='input-field'  placeholder="Enter Block/Flat no., Society name" name="add1" required/><br><br>
<input type="text" class='input-field' placeholder="Enter area name" name="add2" required/><br><br>

<br><br>
<h1>Delivery Address</h1>

<input type="text" class='input-field' placeholder="Enter Full Name" name="dfullname" required/><br><br>
<input type="text"  class='input-field'placeholder="Enter Contact" name="dcon" required/><br><br>
<input type="text"  class='input-field'placeholder="Enter Block/Flat no., Society name" name="dadd1" required/><br><br>
<input type="text" class='input-field' placeholder="Enter area name" name="dadd2" required/><br><br>

 <button type="submit" name="display" class='submit-btn' value='Submit'>Submit</button><br>
</form>
    
  </div>
        </div> -->
        <div class="content">
        <form action="Document.jsp" method="post">
        <div class="user-details">
        	<div class="input-box">
        		<span class="details"><center class="he">Sender's Details</center>Origin Pincode</span>
   				<input type="text" class='input-field' placeholder="Enter Origin Pincode" name="pincode1" required/>
   			</div>
   			<div class="input-box">
        		<span class="details"><center class="he">Reciver's Details</center>Destination Pincode</span>
   				<input type="text" class='input-field' placeholder="Enter Destination Pincode" name="pincode2" required/>
   			</div>
   			<div class="input-box">
        		<span class="details">Name</span>
   				<input type="text" class='input-field' placeholder="Enter Name" name="fullname" required/>
   			</div>
   			<div class="input-box">
        		<span class="details">Reciver's Name</span>
   				<input type="text" class='input-field' placeholder="Enter Name" name="dfullname" required/>
   			</div>
   			<div class="input-box">
        		<span class="details">Contact No</span>
   				<input type="text" class='input-field' placeholder="Enter Contact" name="con" required/>
   			</div>
   			<div class="input-box">
        		<span class="details">Reciver's Contact No</span>
   				<input type="text"  class='input-field'placeholder="Enter Contact" name="dcon" required/>
   			</div>
   			<div class="input-box">
        		<span class="details">Address</span>
   				<input type="text"class='input-field'  placeholder="Enter Block/Flat no., Society name" name="add1" required/>
   				<input type="text" class='input-field' placeholder="Enter Area Name" name="add2" required/>
   			</div>
   			<div class="input-box">
        		<span class="details">Reciver's Address</span>
   				<input type="text"  class='input-field'placeholder="Enter Block/Flat no., Society name" name="dadd1" required/>
				<input type="text" class='input-field' placeholder="Enter Area Name" name="dadd2" required/>
   			</div>	</div>
   			<div class="pay-details">
   				<input type="radio" name="option" value="Premium"id="dot-1">
          		<input type="radio" name="option" value="Gold"id="dot-2">
          		<input type="radio" name="option" value="Silver"id="dot-3">
   				<span class="pay-title">Service Type</span>
   				<div class="category">
   					<label for="dot-1">
   					<span class="dot one"></span>
   					<span class="pay">Platinum<br>Delivery Time: 2 days<br>Amount : Rs. 130</span>
   					</label>	
   					<label for="dot-2">
   					<span class="dot two"></span>
   					<span class="pay">Gold<br>Delivery Time: 3 days<br>Amount : Rs. 120</span>
   					</label>
   					<label for="dot-3">
   					<span class="dot three"></span>
   					<span class="pay">Silver<br>Delivery Time: 2 days<br>Amount : Rs. 100</span>
   					</label>
   				</div>
   			</div>
   			<div>
   				<button type="submit" name="display" class="submit-btn" value='Submit'>Submit</button><br>
        </div>
 
        </form>
        </div></div>
</body>
</html>