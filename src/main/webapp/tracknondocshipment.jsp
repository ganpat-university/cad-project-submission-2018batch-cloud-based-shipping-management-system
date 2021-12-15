<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<HTML>
    <HEAD>
      <link rel="stylesheet" href="Website/Website/css/main.css" >
  <title>Sprightly Go</title>
       <style> 
        .wel
{
	color: white;
	font-style:oblique;
	font-size:20px;
}
</style>
        
    </HEAD>
    <body>
 <div class="full-page">
    <div class="navbar">
		<div class="cname">
            <a href="Website/Website/index.html">Sprightly Go</a>
        </div>
        <nav>
            <ul id='MenuItems'>
                  
                    <li><a href='TermandCondition.jsp'>Terms & Conditions</a></li>
                    <li><a href="Website/Website/index.html">Home</a></li>
                    <li class="wel"><% String username=session.getAttribute("uname").toString(); %><%=username%></li>        
            </ul>
        </nav>
    </div>
     <div id='login-form'class='login-page'>
            <div class="form-box">
                 <center><h1>Track Non Document Shipment</h1></center> 
            
            <form id='login' class='input-group-register'ACTION="displaytracknondoc.jsp" METHOD="POST">
             <br><br><br>
           <h3> Please enter the Reference Code :</h3>
            <BR>
            <INPUT class='input-field'TYPE="TEXT" NAME="id">
            <BR><br>
            <INPUT class='submit-btn' style="color:white;" TYPE="SUBMIT" value="Submit">
        </FORM>
        </div></div>
    </BODY>
<HTML>