<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>4MUSIC Search song</title>

<link href="assets/css/search.css" rel="stylesheet" />

 <style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
		
 </style>
	
</head>

<style>
  body {
     background-image: url("assets/images/back4.jpg");
     background-repeat: no-repeat;
     background-size:cover;
     background-attachment: fixed;
    
 }
 
</style>


<body>

   <nav>
   
      <img src="assets/images/4.png" alt="" class="logo">
      
      <ul>
          <li><a href="">HOME</a></li>
          <li><a  href="">MUSIC</a></li>
          <li><a href="">ABOUT</a></li>
          <li><a href="">CONTACT US</a></li>
          <li><a href="">PLANS</a></li>
     </ul>
     
     <a  target="_blank"><img src="assets/images/user3.png" style=" width: 40px;
          height: 40px;
          position: absolute;
          margin-top: 12px;
          margin-left: -60px;">
    </a>
    
  </nav>
  
  

<center>

 <br><br><br>

   <div class="box">
      <h1 class="font1"> Song was added successfully!! </h1>

       <button  type="submit" class="button"   name="submit"  onclick="location.href='playview.jsp';"> View Play List</button> <br><br>

        <h2 style="color:orange";> View Songs </h2>


	  <form action="search" method="post">

		<input type="text" class="log" name="name" placeholder="Enter song name here">
		    <br><br>
        <input type="submit" class="set" name="submit" value="Search">

     </form>

  </div>
 </div>
</center>

<br><br><br>

 <footer>
          <div class="footer"> </div>
  
          <div class="logobox">
          
                  <a href="">
                      <img src="assets/images/4.png" alt="logo" style="width: 152px;
                      height: 152px;
                      margin-top: -30%;">
                  </a>
                  
          </div>
  
          <h3 style="position: absolute;
            color: white;
            text-align: center;
            margin: 5% 0 0 31%;
            font-size: 13px;">Copyrights @2021 4Music Digital Media Entertaintment Pvt Ltd All Right Reserved <br>View more at https://www.4MuS.com
          </h3>
  
          <div class="socialmedia">
          
              <a href="">
                  <img src="assets/images/insta.png" alt="instagram" style="width: 25px;
                  height: 25px;
                  margin: 10px 0 0 58px;">
              </a>
              
              <a href="">
                  <img src="assets/images/twi.png" alt="twitter" style="width: 25px;height: 25px; margin: 0 0 0 46px;">
              </a>
              
              <a href="">
                  <img src="assets/images/fb.png" alt="facebook" style="width: 17px;
                  height:26px; margin: 0 0 0 46px;">
              </a>
              
         </div>
   </footer>

</body>
</html>