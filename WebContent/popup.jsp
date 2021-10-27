<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Sprightly Go</title>
    <link rel="stylesheet" href="Website/Website/css/view.css" >
<style>

table {
  
  font-size: .9em;
  box-shadow: 0 2px 5px rgba(0,0,0,.25);
  width: 100%;
  
  overflow: hidden;
}

th {
  text-align: middle;
}
  
thead {
  font-weight: bold;
  color: #fff;
  background: #73685d;
}
  
 td {
  padding:7px;
  vertical-align: middle;
  text-align: middle;
}
  
 td {
 
  background: #fff;
   text-align: middle;
   
}

th
{
padding:15px;
  vertical-align: middle;
  text-align: middle;

  }

 
  
body {
  font-family: "Roboto", sans-serif;
  padding: 0;
  margin: 0;
  background-color: #f5f5f5;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.cookiesContent {
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: #fff;
  color: #000;
  text-align: center;
  border-radius: 20px;
  padding: 20px 30px 40px;
  padding-bottom:10px;
  
  }
  button.close {
    width: 30px;
    font-size: 20px;
    color: #c0c5cb;
    align: left;
    background-color: transparent;
    border: none;
    margin-bottom: 10px;
    margin-left:500px;
    
    
  }
  .container
{
	align-items: center;
    justify-content: center;
	width:50%;
	display:flex;
	margin:0 auto;
	height:72.5%;
	padding-top:100px;
		font-family:Lucida Sans;
}
  img {
    width: 82px;
    margin-bottom: 15px;
  }
  p {
    margin-bottom: 40px;
    font-size: 18px;
  }
  a.accept {
    background-color:  rgb(51,83,130);
    border: none;
    border-radius: 5px;
    width: 200px;
    padding: 14px;
    font-size: 16px;
    color: white;
    box-shadow: 0px 6px 18px -5px  rgb(51,83,130);
    text-decoration: none;
    
  }
.accept:hover{
  color:#C2EDCE;
 
  }
</style>
<meta charset="ISO-8859-1">
<title>Sprightly Go</title>

<body>
<div class="full-page">
    <div class="navbar">
		<div class="cname">
            <a href="Website/Website/index.html">Sprightly Go</a>
        </div>
        <nav>
            <ul id='MenuItems'>
                    <li><a href="trackpopup.jsp">Track Shipment</a></li>
                    <li><a href='TermandCondition.jsp'>Terms & Conditions</a></li>
                    <li><a href="Website/Website/index.html">Home</a></li>
                    <li class="wel"><% String username=session.getAttribute("uname").toString(); %><%=username%></li>        
            </ul>
        </nav>
    </div>
<div class="container">
  <div class="cookiesContent" id="cookiesPopup">
   <h1>What type of Shipment you want?</h1>
   
   <br>
 <table>
<tr>
<th>
   <a href="Doc.jsp" class="accept" type="button">Document</a></th>
   <th><a href="Nondoc.jsp" class="accept" type="button">Non Document</a></th></tr>
   <tr>
   <td> Driving License</td>
   <td>Clothing</td></tr>
   <tr>
   <td> Aadhar Card</td>
   <td>Elecrtonics</td></tr>
   <tr>
   <td> Passport</td>
   <td>Phone</td></tr>
   <tr>
   <td> Pan Card</td>
   <td>Household Appliances</td></tr>
   <tr>
   <td> Voter Id </td>
   <td>Books</td></tr>
   <tr>
   <td>Company Registration Certificates </td>
   <td>Shoes</td></tr>
   <tr>
   <td>Business Agreement Papers</td>
   <td>Bags</td></tr>
   <tr>
   <td> MOUs </td>
   <td>Chocolates</td></tr>
   <tr>
   <td>NDAs</td>
   <td>Boxes</td></tr>
   <tr>
   <td> Cheques</td>
   <td>Dry Fruits</td></tr>
   <tr>
   <td> Debit or Credit Cards </td>
   <td>Earphones</td></tr>
   <tr>
   <td>Bank Draft </td>
   <td>Magazines</td></tr>
   <tr>
   <td>Bill of exchange</td>
   <td>Computer Parts</td></tr>
   
   </table>
  
</body></html>