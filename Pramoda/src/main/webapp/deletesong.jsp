<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
 <head>
   <meta charset="ISO-8859-1">
   <title>4MUSIC Delete song</title>
   <link href="assets/css/deletesong.css" rel="stylesheet" />
 </head>

 <style>
 
   body {
      background-image: url("assets/images/remove.jpg");
      background-repeat: no-repeat;
      background-size:cover;
      background-attachment: fixed
    
   }

 </style>


 <body>
 
  <nav>
      <img src="assets/images/4.png" alt="" class="logo">
      
      <ul>
          <li><a href="">HOME</a></li>
          <li><a href="">MUSIC</a></li>
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

<br><br>
 
 <div class="box">
 
     <div class="productData" >
     
       <center>

          <%
		       String id = request.getParameter("id");
		       String name = request.getParameter("name");
		       String artist = request.getParameter("artist");
		       String type = request.getParameter("type");
		       String language = request.getParameter("language");
	      %>


          <h1 style="color: orange";> Do you really want to Remove this Song from your Play List ? </h1>

          <input type="image" img  src="assets/images/delete.png" style="float:center;" width=200 height=130 >

          <br><br>

          <form action="delete" method="post">

              <input class="set1" type="text" name="sid" value="<%= id %>" readonly>
	               	<br><br>
	          <input class="set2" type="text" name="name" value="<%= name %>" readonly>
		            <br><br>
	          <input class="set2" type="text" name="artist" value="<%= artist %>" readonly>
	                <br><br>
              <input class="set3" type="text" name="type" value="<%= type %>" readonly>
		            <br><br>
	          <input class="set3" type="text" name="language" value="<%= language %>" readonly>
		            <br><br><br>
  	          <input onclick="myFunction1()" class="set" type="submit" name="submit" value="Remove">

         </form>

        <script>

			function myFunction1() {
				var txt;
				if (confirm("This song will be deleted permenantly...!!!!")) {
				     txt = "Song has been deleted!!!";
				}

				else  {
				    txt = "You pressed Cancel!";
				}

				document.getElementById("demo").innerHTML = txt;
			}

		</script>

      </center>
      
   </div>
   
 </div>

<br><br>


<!--------footer--------->
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
                           height: 25px; margin: 0 0 0 46px;">
                   </a>
              
                   <a href="">
                       <img src="assets/images/fb.png" alt="facebook" style="width: 17px;
                             height:26px; margin: 0 0 0 46px;">
                   </a>
              
             </div>
          
   </footer>
   
</body>
</html>
