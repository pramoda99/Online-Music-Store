<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">

  <title>4MUSIC Play List </title>

  <link href="assets/css/playview.css" rel="stylesheet" />
</head>

<body bgcolor="black">

 <nav>
      <img src="assets/images/4.png" alt="" class="logo">
      
      <ul>
          <li><a href="">HOME</a></li>
          <li><a  href="">MUSIC</a></li>
          <li><a href="">ABOUT</a></li>
          <li><a href="">CONTACT US</a></li>
          <li><a href="">PLANS</a></li>
      </ul>
      
      <a   target="_blank"><img src="assets/images/user3.png" style=" width: 40px;
           height: 40px;
           position: absolute;
           margin-top: 12px;
           margin-left: -60px;">
      </a>
      
  </nav>

<br><br>

<center>

   <h1 style="color:#AF00AF ";>4MUSIC    Play Lists</h1>
   *******************

   <table>

   <tr>

     <td><a  href=""><img src="assets/images/list.png"style="width:165px;height:230;padding :18px;"></td></a><br><br><br>
     <td><a  href=""><img src="assets/images/list.png"style="width:165px;height:230;padding :18px;"></td></a>
     <td><a  href=""><img src="assets/images/list.png"style="width:165px;height:230;padding :12px;"></td></a>
     <td><a  href=""><img src="assets/images/list.png"style="width:165px;height:230;padding :12px;"></td></a>


   </tr>

   <tr>
          <td style="text-align:center;" >Recently added <br>23 tracks</td>
          <td style="text-align:center;">Most played <br>8 tracks</td>
          <td style="text-align:center;">Recently played <br>13 tracks</td>
          <td style="text-align:center;">Favourite tracks <br>10 tracks</td>

   </tr>

   <td> <br><br> </td>


  </table>

</center>
   
<table>       

 <h1 style="color:#F80000  ";>Favourite</h1>

 <form action="search" method="post">
  
	<input type="text" class="log" name="name" placeholder="Enter song name here">
		
    <input type="submit" class="set" name="submit" value="Search">

 </form> <br> <br>


            <div class="row">
            
              <div class="column">
                <a  href="">
                  <img src="assets/images/heymama.jpg" style="width:100%">
                </a>
              </div>
              
              <div class="column">
                <a  href="">
                   <img src="assets/images/ice.png" style="width:100%">
                </a>
              </div>
              
              <div class="column">
                <a  href="">
                   <img src="assets/images/kathirina.jpg" style="width:100%">
                </a>
              </div>
              
              <div class="column">
                <a  href="">
                   <img src="assets/images/numb.jpg" style="width:100%">
                </a>
              </div>
              
              <div class="column">
                <a  href="">
                   <img src="assets/images/sansarini.jpg" style="width:100%">
                </a>
              </div>
              
              <div class="column">
                <a  href="">
                    <img src="assets/images/panda.jpg" style="width:100%">
                </a>
              </div>
              
           </div>
           
            <button class="button1">View More+</button>
            
            
            <br>
            <center>

                <a href="songinsert.jsp" target="_blank">
                    <img src="assets/images/new.png"  style="width: 150px" " height=50;"> 
                </a> 

            </center>
            
            <br><br>  <hr style="width: 1000px;">  <br><br><br>
      
               
            
            </td><br><br><br>  
               
               
            <h1 style="color:#F80000 ";>Old Songs</h1>
            
            <form action="search" method="post">
            
		      <input type="text" class="log" name="name" placeholder="Enter song name here">
		
              <input type="submit" class="set" name="submit" value="Search">

            </form> <br> <br>
      

            <div class="row">
            
              <div class="column">
              
                <a href="">
                    <img src="assets/images/pandama.jpg" style="width:100%">
                </a>
                
              </div>
              
              <div class="column">
              
                <a href="">
                    <img src="assets/images/prada.jpg" style="width:100%">
                </a>
                
              </div>
              
              <div class="column">
              
                <a href="">
                   <img src="assets/images/prathihari.jpg" style="width:100%">
                </a>
                
              </div>
              
              <div class="column">
              
                <a  href="">
                   <img src="assets/images/sanam.jpg" style="width:100%">
                </a>
                
              </div>
              
              <div class="column">
              
                <a  href="">
                    <img src="assets/images/sada.jpg" style="width:100%">
                </a>
                
              </div>
              
              <div class="column">
              
                <a  href="">
                    <img src="assets/images/teri.jpg" style="width:100%">
                </a>
                
             </div>
              
           </div>
           
            <button class="button1"> View More+ </button>
            
            <br>
              <center>

                 <a href="songinsert.jsp" target="_blank">
                   <img src="assets/images/new.png"  style="width: 150px" " height=50;"> 
                 </a>

             </center>
              
            <br><br>
            
            <hr style="width: 1000px;">
            
            <br><br><br>
      

            </td><br><br><br>  
                
</table>



<br><br><br><br><br><br><br><br>

 <footer>
          <div class="footer"></div>
  
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
              font-size: 13px;">Copyrights @2021 4Music Digital Media Entertainment Pvt Ltd All Right Reserved <br>View more at https://www.4MuS.com
          </h3>
  
          <div class="socialmedia">
          
              <a href="">
                  <img src="assets/images/insta.png" alt="instagram" style="width: 25px;
                       height: 25px;
                       margin: 10px 0 0 58px;">
              </a>
              
              <a href="">
                  <img src="assets/images/twi.png" alt="twitter" style="width: 25px;
                       height: 25px; 
                       margin: 0 0 0 46px;">
              </a>
              
              <a href="">
                 <img src="assets/images/fb.png" alt="facebook" style="width: 17px;
                      height:26px;
                      margin: 0 0 0 46px;">
              </a>
              
          </div>
          
    </footer>

</body>
</html>
