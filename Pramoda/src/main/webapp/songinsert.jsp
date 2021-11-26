<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Add songs</title>

<!-------CSS------>
<link href="assets/css/songinsert.css" rel="stylesheet" />

</head>

<style>
   body {
      background-image: url("assets/images/back2.jpg");
      background-repeat: no-repeat;
      background-size:cover;
      background-attachment: fixed;
    
   }
</style>


<body >

   <!---------- header --------------->
   <header>
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
    </header>
    
<br><br>

<center>

 <div class="frame">


   <form  action="insert" method="post" >

     <h1 style="color:#F80000 "> Add New Song </h1>

      <h3 class="font">

         <img  src="assets/images/add.png" style="float:center;" width=200 height=150 >

         <br>

		   Song Name  <br>
             <input type="text" class="log" name="name"><br><br>
		   Artist Name  <br>
		     <input type="text" class="log" name="artist"><br><br>
		   Song Type  <br>
		     <input type="text" class="log" name="type"><br><br>
		   Language  <br>
		     <input type="text" class="log" name="language"><br>

	  </h3>

	   <input class="set" type="submit" name="submit" value="Add Song">

	   <br><br>
   </form>

	    <button class="button3"  type="submit"   name="view"  onclick="location.href='playview.jsp';"> View Play List</button> 
	   <br><br>




  </div>

</center>

<!---------- footer --------------->
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
        margin: 240px 0 0 220px;
        font-size: 15px;">    Copyrights @2021  4Music Digital Media Entertaintment Pvt Ltd All Right Reserved <br>View more at https://www.4Mus.com
    </h3>

    <div class="socialmedia">
    
            <a href="#">
               <img src="assets/images/insta.png" alt="instagram" style="width: 25px;
                    height: 25px;
                    margin: -1000px 0 0 58px;">
            </a>
        
        
            <a href="#">
               <img src="assets/images/twi.png" alt="twitter" style="width: 25px;height: 25px; margin: -500px 0 0 46px;">
            </a>
            
        
            <a href="#">
               <img src="assets/images/fb.png" alt="facebook" style="width: 17px;
                    height:26px; margin: -500px 0 0 46px;">
            </a>
      
   </div>

</footer>

</body>
</html>