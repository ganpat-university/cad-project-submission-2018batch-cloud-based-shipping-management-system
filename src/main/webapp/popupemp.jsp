<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sprightly Go</title>
    <link rel="stylesheet" href="Website/Website/css/view.css" >
<style>

.container
{
	align-items: center;
    justify-content: center;
	padding-left:35%;
	float:left;
	display:flex;
	margin:0 auto;
	height:70%;
	padding-top:83px;
	font-family:Lucida Sans;

}
.cookiesContent {
  width: 320px;
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: #fff;
  color: #000;
  text-align: center;
  border-radius: 20px;
  padding: 30px 30px 70px;
  box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
  }
  button.close {
    width: 30px;
    font-size: 20px;
    color: #c0c5cb;
    align: left;
    background-color: transparent;
    border: none;
    margin-bottom: 10px;
    margin-left:300px;
    
    
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
    font-size: 20px;
    color: white;
    box-shadow: 0px 6px 18px -5px  rgb(51,83,130);
    text-decoration: none;
  }
  .accept:hover{
  color:#C2EDCE;
  }
b{
padding-right:10px;
padding-left:10px;
font-size:25px;
}
.wel
{
	color: white;
	font-style:oblique;
	font-size:20px;
	 font-family: sans-serif;
}
</style>

<body>
 <div class="full-page">
         <div class="navbar">
            <div class="cname">
                <a href="index.html">Sprightly Go</a>
            </div>
        
            <nav>
                <ul id='MenuItems'>
         
                    <li><a href='TermandCondition.jsp'>Terms & Conditions</a></li>
                        <li><a href="Website/Website/index.html">Home</a></li>
        <li class="wel"><% String username=session.getAttribute("uname").toString();%><%=username%></li>        
                </ul>
            </nav>
        
        </div>
<center>
<div class="container">
  <div class="cookiesContent" id="cookiesPopup">
   <b>Which type of Shipment you want to Update?</b><br>
   <a href="updatedocshipment.jsp" class="accept" type="button">Document</a><br><br>
   <a href="UpdateShipment.jsp" class="accept" type="button">Non Document</a>
    
  </div>
</div></center></div>
</body></html>