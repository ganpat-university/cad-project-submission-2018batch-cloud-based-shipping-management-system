<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
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
  width: 320px;
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: #fff;
  color: #000;
  text-align: center;
  border-radius: 20px;
  padding: 30px 30px 70px;
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
    font-size: 16px;
    color: white;
    box-shadow: 0px 6px 18px -5px  rgb(51,83,130);
    text-decoration: none;
  }

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<body>
<div class="container">
  <div class="cookiesContent" id="cookiesPopup">
   <a href="Website/Website/index.html"> <button class="close">X</button></a>
   <h1>What type of Shipment you want?</h1>
   <a href="Doc.jsp" class="accept" type="button">Document</a><br><br>
   <a href="Nondoc.jsp" class="accept" type="button">Non Document</a>
    
  </div>
</div>
</body></html>