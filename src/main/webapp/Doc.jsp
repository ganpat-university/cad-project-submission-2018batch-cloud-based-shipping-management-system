<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>   
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	top: 150px;
	position:absolute;
	width:70%;
	transition:.5s;
	left:15%;
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
li
{
display: inline-block;

}

#login
{
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
.list{
padding:60px;}
h1 {
	margin-bottom: 10px;
	margin-top: 20px;
	font-weight: normal;
	text-align: center;
  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif
}</style>
</head>
<body>
    <div class="full-page">
        <div class="navbar">
            <div class="cname">
                <b><a href='index.html'>Sprightly Go</a></b>
            </div>
            <nav>
                <ul id='MenuItems'>
                    <li><a href="Website/Website/index.html">Home</a></li>
                  

                    </ul>
            </nav>
        
        </div>
        
        <div>
            <div class="form-box">
                <h1> Document Shipment</h1>

<% String username=session.getAttribute("uname").toString(); %>

<h1>welcome <%=username%></h1>
<form id='login' class='input-group-login' action ="Document.jsp" method="post">
<input type="text" class='input-field' placeholder="Enter Origin Pincode" name="pincode1" required/><br><br>
<input type="text" class='input-field' placeholder="Enter Destination Pincode" name="pincode2" required/><br><br>

  
<!-- <input type="text" name="producttype"  id="myText" /> -->
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
        </div>
    </div>

</body>
</html>